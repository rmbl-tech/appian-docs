---
source_url: https://docs.appian.com/suite/help/25.3/gss-25.2.2.4/gss-creating-new-evaluation.html
original_path: gss-25.2.2.4/gss-creating-new-evaluation.html
version: "25.3"
title: "Creating a New Evaluation"
page_id: "gss-25.2.2.4/gss-creating-new-evaluation"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Creating a New Evaluation

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

Source Selection is the process of creating, reviewing, and completing a vendor evaluation for goods and services needed to conduct business. This involves collecting and maintaining vendor information and evaluation factors that are assessed by different teams. The Government Source Selection (GSS) solution provides a guided, automated experience for collecting this information. After an evaluation is created, simple, informative record interfaces, enabled by Appian Records, allow end users to view and update this information.

This page provides instructions for creating a new evaluation.

## Create evaluations

Creating a new evaluation is a guided experience that walks you through entering the information you need to start a vendor evaluation.

To create a new evaluation, you must be part of the `AS GSS Create or Update Evaluation PM Access` security group. The evaluation chairs and contracting groups are automatically included in this security group.

To create an evaluation:

1.  Navigate to the **My Workspace** or **Evaluations** page.
2.  Click **CREATE NEW EVALUATION** to open the **Create Evaluation** wizard.

    ![Navigate to create a new evaluation](images/create_evaluations.png)

3.  Enter a **Solicitation PIID** (Procurement Instrument Identifier), **Title**, and **Description** for the goods or services you are evaluating.
4.  Select the **Start Date** and **Due Date** of the evaluation using the date pickers. These date fields determine when the evaluation starts and ends, and provide validation for any deadlines you define.
5.  Select the **Evaluation Method** using the radio buttons. The evaluation method determines how your organization evaluates the vendor proposals. Choose from:
    -   **Lowest Price Technically Acceptable (LPTA)**: Automatically creates a default evaluation factor and team. Skip to [Create LPTA evaluations](#create-lpta-evaluations) to create an LPTA evaluation.
    -   **Best Value**: Requires you to manually set up each factor and assign a team. Continue with the following steps to create a best value evaluation.
6.  Upload **Reference Documents**.

    1.  Click **UPLOAD** to open the file picker.
    2.  Select the document to upload.
    3.  Click to upload additional documents.

    **Note:**  PDF, DOC, DOCX, XLS, XLSX, PPT, and PPTX files are supported. Up to 15 document(s) can be uploaded at a time.

7.  Select **Contracting Officer**, **Contract Specialist**, and **Evaluation Chief** using the auto-suggest dropdowns.
8.  Select **Yes** or **No** using the **Mask Evaluators during Evaluation** radio button. When masked, evaluator names are substituted with aliases. Privileged users still see the actual names.
9.  Select if **Weighted Factors** are applicable using the radio buttons. Weighted Factors enable you to assign weights to factors and subfactors to specify their level of importance.
10.  Select **Required** or **Not Required** using the **Consensus Report Signatures** radio button to determine if signing the consensus report is required for evaluation completion.
11.  Select **Yes** or **No** using the **On the Spot Consensus** radio buttons.
     -   **Yes**: Skips individual evaluator tasks and proceeds directly to [consensus submission](gss-creating-new-consensus.html#on-the-spot-consensus).
     -   **No**: Follows the standard process where evaluators individually assess and [rate vendors](gss-evaluating-vendors.html#evaluate-vendors).

         **Caution:**  Consensus type cannot be modified once the evaluation starts.

12.  Click **CREATE** to create the evaluation and navigate to the **Evaluation Created** page.

     ![Fill evaluation details and click CREATE.](images/create_evaluations_2.png)

13.  Click **GO TO EVALUATION** to navigate to the created evaluation record and add [phases](#add-phases), [factors](#add-factors), and [vendors](#add-vendors).

     **Tip:**  Once the evaluation is created, you can either complete the setup on the evaluation summary immediately or return to finish it later.

     ![Go to the created evaluation summary](images/create_evaluations_3.png)

### Add phases

A phase is a distinct stage in the process of evaluating vendor proposals. These phases organize the evaluation process into manageable segments, ensuring a thorough, systematic, and transparent review of proposals against the requirements and criteria outlined in the solicitation. Each phase includes specific objectives, activities, and deliverables.

The Phases card enables you to specify the evaluation phases and deadlines. Select one or more phases, which are modified in [Configuring Phases](gss-configuring-phases.html).

To add phases:

1.  Click **ADD** in the Phases card to open the **Add Phases** wizard.

    ![Open Add Phases wizard](images/add_phases.png)

2.  Select the phase(s) for the evaluation using the checkbox(es).
3.  Enter **DURATION** for each phase. Number only.
4.  Select **START DATE** for the phase using the date picker. END DATE is auto-filled based on the defined duration and start date. The solution displays a validation message if the phase's end date exceeds the evaluation's end date.
5.  Click **ADD** to add the phases.

![Select a phase to add and provide schedule.](images/add_phases_2.png)

### Add factors

A factor is a specific criterion or standard used to evaluate vendor proposals during the procurement process. These factors are outlined in the solicitation document (such as a Request for Proposal) and serve as the basis for determining which proposal offers the best value to the government.

The Factors card enables you to add the factors, subfactors, weights, teams, and assign evaluators to evaluate each vendor.

To add factors:

1.  Click **CONTINUE SETUP** to open the **Continue Setup** wizard.

    ![Click CONTINUE SETUP.](images/add_factors.png)

2.  Click **NEW FACTOR**.
3.  Enter factor **ID**, **Title**, **Description**, and **Instructions** using the text fields.
4.  Select the **Due Date** using the date picker.
5.  Select the **Factor Chair** using the auto-suggest dropdown to assign a user as the factor's chair.
6.  Select the **Rating** method to evaluate the factor using the dropdown.

    **Note:**  Select the rating method to reflect the needs of a specific organization. See [Modifying Dropdowns](gss-modifying-dropdown.html) for information on how to update these values.

    See the following table for more information on the pre-configured rating methods and rating values.

    | Rating Method | Rating Values |
    | --- | --- |
    | Color Rating | Blue, Purple, Green, Yellow, Red |
    | Adjective Rating | Outstanding, Good, Acceptable, Marginal, Unacceptable |
    | Risk Adjective Rating | Low, Moderate, High |
    | Number Rating | 1, 2, 3, 4, 5 |
    | Confidence Level Rating | Substantial, Satisfactory, Limited, No, Unknown |
    | Acceptable/Unacceptable Rating | Acceptable, Unacceptable |

7.  Click **SAVE** to add the factor.
8.  Click **NEW FACTOR** to add more factors.
9.  Add subfactors.
    1.  Click **ADD** to add subfactors.
    2.  Enter the subfactor **ID**, **Title**, **Description**, and **Instructions** using the text fields.
    3.  Select **Due Date** using the date picker.
    4.  Select the **Rating** method using the dropdown.

        **Note:**  Select the rating method to reflect the needs of a specific organization. See [Modifying Dropdowns](gss-modifying-dropdown.html) for information on how to update these values.

    5.  Click **SAVE** to add the subfactor.
    6.  Click **ADD** to add more subfactors.
10.  Click **EDIT** and **DELETE** to edit and delete factors and subfactors, respectively.

     **Caution:**  Deleting a factor also deletes the associated subfactors.

11.  Click **NEXT** to save changes and continue to [enter weights](#enter-weights), or click **SAVE AND CLOSE** to save changes and close the wizard to continue the setup later.

![Enter factor details and click NEXT.](images/add_factors_2.png)

#### Enter weights

The Weights tab enables you to enter and assign weights to factors.

On the Weights tab:

1.  Enter weight points for each factor and its subfactors. Numbers only.

    **Note:**  Adjust each factor’s weight to ensure their sum equals 100. Adjust each subfactor weight so their sum equals the total factor weight.

2.  Click **NEXT** to save changes and continue to [add teams](#add-teams), or click **SAVE AND CLOSE** to save changes and close the wizard to continue the setup later.

![Enter factors weights and click NEXT.](images/enter_weights.png)

#### Add teams

The Teams tab enables you to create evaluation teams and add evaluators to the teams.

On the Teams tab:

1.  Click **NEW TEAM** to navigate to the **New Team** section.
2.  Enter a **Team Title** and **Description** that reflects the team's purpose.
3.  Click **SAVE** to save changes.
4.  Select evaluator(s) using the auto-suggest dropdown.
5.  Click **ADD TEAM MEMBERS** to add the selected evaluators to the team.
6.  Select the team members checkbox(es) and click **DELETE TEAM MEMBER** to delete evaluators from the team.
7.  Click **NEW TEAM** to add more evaluator teams.
8.  Click **EDIT** and **DELETE** to edit and delete evaluator teams respectively.
9.  Click **NEXT** to save changes and continue to [assign evaluators to factors](#assign-evaluators-to-factors), or click **SAVE AND CLOSE** to save changes and close the wizard to continue the setup later.

![Wizard screen to add evaluator teams.](images/add_teams.png)

#### Assign evaluators to factors

The Assignment tab enables you to review the factors and subfactors created earlier and assign them evaluators.

On the Assignment tab:

1.  Select the assignment’s **Due Date** using the date picker.
2.  Select the **Evaluation Team** using the dropdown.
3.  Select the **Evaluators** using the multi-select dropdown.
4.  Click **COLLAPSE SUBFACTORS** to hide subfactors and **EXPAND SUBFACTORS** to show them.
5.  Click **ASSIGN EVALUATORS TO SUBFACTORS** to duplicate factor’s evaluators to subfactors.

    1.  Alternatively, select the subfactor's **Due Date**, **Team**, and **Evaluators**.

    **Note:**  Subfactor due date must not occur after factor due date.

6.  Click **SAVE AND CLOSE** to save changes and navigate back to the evaluation record.

![Wizard to assign teams to factors and subfactors.](images/assign_evaluators_to_factors.png)

### Add vendors

The Vendors card enables you to add vendors who have submitted proposals and upload their associated proposals.

**Note:**  If GSS is integrated with VM, vendors are automatically fetched from VM when an evaluation is created using an Opportunity ID in the Solicitation PIID field.

To add vendors:

1.  Click **ADD VENDORS** in the **Vendors** card to open the **Add Vendors** wizard.

    ![Vendors card with +ADD VENDORS button.](images/add_vendors.png)

2.  Enter a vendor **UEI** or **CAGE** in the **Search Vendors** field and click to search for the vendors in internal records and sync data from [SAM.gov](https://sam.gov/) to list the results.
3.  Select a vendor using the checkbox to move it to the **Vendors to Add** section.

    ![Search by UEI or CAGE and select vendors.](images/add_vendors_2.png)

    If the vendor record or SAM.gov contains the vendor's **UEI** or **CAGE** number, GSS displays the vendor and allows you to select it. If a vendor record does not exist in GSS or SAM.gov:

    1.  Click **Create a vendor manually** to open the **Create Vendor** wizard.

        ![Create a vendor manually if UEI and CAGE search does not yield any vendor](images/add_vendors_3.png)

    2.  Enter the vendor and address details in the respective sections.
    3.  Click **CREATE** to create the vendor. The created vendor is now available for search and selection.

        ![Enter details and create vendor](images/add_vendors_4.png)

4.  Search and select additional vendors if required.
5.  Click **NEXT** to open the proposal details section.
6.  Select the **Submission Date** using the date picker.
7.  Select the **Submission Time** using the dropdown.
8.  Upload the vendor's proposal and other evaluation documents.
    1.  Click **UPLOAD** to open the **Document Upload** section.
    2.  Click **UPLOAD** to the document browser.
    3.  Select a document to upload.
    4.  Click to upload additional documents.

        **Note:**  After the files are uploaded, the grid automatically populates with the name of each document. Each vendor document is only visible to evaluation chairs, members of the contracting personnel, and the evaluators assigned to the factors/subfactors associated with it.

    5.  Hover over an uploaded document icon and click to remove it.
    6.  Click **UPLOAD** to upload the documents.
9.  Select the factors and subfactors associated with the vendor evaluation documents using the **Associate with Factors or Subfactors** multi-select dropdown.

    ![Add vendors step for uploading proposal documents and associating factors.](images/add_vendors_5.png)

10.  Enter the **Total Price** of the proposal.
11.  Enter **Price Breakup**.
     1.  Click **+Add Line Item**.
     2.  Enter **Item Description**, **Quantity**, and **Unit Price**. The amount of the item is automatically calculated based on the entered quantity and the unit price.
     3.  Click **+Add Line Item** to add more price breakup items.
     4.  Click corresponding to an item to remove it.
     5.  Drag the grid icon to reorder the items.
12.  Click **NEXT VENDOR** to add proposal details for additional vendors.
13.  Click **ADD VENDORS** to add the vendors.

     ![Review and add vendor pricing details.](images/add_vendors_6.png)

### Review and start evaluation

On the evaluation record:

1.  Review the defined evaluation details. Any missing information is displayed on the evaluation Summary page.
    1.  Click **Show more** to view all the missing information.

        ![Review missing evaluation details.](images/review_evaluation_details.png)

        **Note:**  If no errors appear and the START EVALUATION button is clickable, the evaluation is ready to start.

2.  Click **START EVALUATION** to open the **Start Evaluation** confirmation dialog box.

    ![Start evaluation](images/start_evaluation.png)

3.  Click **START** to start the evaluation.

    ![Confirm start evaluation](images/review_and_start_evaluation_3.png)

### Create LPTA evaluations

**Note:**  The following content applies when creating an LPTA evaluation.

If the Lowest Price Technically Acceptable (LPTA) evaluation method is selected during [evaluation setup](#create-evaluations), the wizard automatically hides configuration fields not relevant to this evaluation type. A default LPTA factor is generated and assigned to an evaluation team consisting of the designated evaluators. All vendor documents and pricing details are automatically mapped to the LPTA factor.

Source Selection introduced support for Lowest Price Technically Acceptable (LPTA) evaluations, enabling a faster and simplified evaluation flow for price-driven decisions. This feature was introduced to support agencies where LPTA evaluations make up a majority of cases and often require minimal coordination.

To create an LPTA evaluation, complete **steps 1 through 5** in [Create evaluations](#create-evaluations), then continue with the following steps:

1.  Upload **Reference Documents**.
    1.  Click **UPLOAD** to open the file picker.
    2.  Select the document to upload.
    3.  Click to upload additional documents.

        **Note:**  PDF, DOC, DOCX, XLS, XLSX, PPT, and PPTX files are supported. Up to 15 document(s) can be uploaded at a time.

2.  Select **Contracting Officer**, **Contract Specialist**, **Evaluation Chief**, and **Evaluators** using the auto-suggest dropdowns.

    **Note:**  Evaluators selected here are added to a team and assigned to the default factor. Further changes to the [team and members](#add-teams) can be done using the [Continue Setup](#add-factors) action in the evaluation summary after the evaluation is created.

3.  Click **CREATE** to create the evaluation and navigate to the **Evaluation Created** page.

    ![Simplified Create Evaluation wizard when LPTA method is chosen.](images/create_lpta_evaluations.png)

4.  Click **GO TO EVALUATION** to navigate to the created evaluation **Summary** tab and use the cards and add [phases](#add-phases) and [vendors](#add-vendors), and manage [factors](#add-factors).

    **Tip:**  Once the evaluation is created, you can either complete the setup on the evaluation summary immediately or return to finish it later.

Upon [starting the evaluation](#review-and-start-evaluation), a single task is generated showing vendor-wise pricing details sorted in ascending order for the evaluator to [select a vendor](gss-evaluating-vendors.html#select-lpta-vendors). The contracting officer can now [close the evaluation](gss-managing-evaluations.html#complete-evaluations). No evaluator tasks or consensus forms are required.

## Next steps

After contracting personnel start an evaluation, all assigned evaluators receive their evaluation tasks.

See [Managing Evaluations](gss-managing-evaluations.html) to learn how contracting personnel manage evaluations. See [Evaluating Vendors](gss-evaluating-vendors.html) to learn how evaluators evaluate and rate vendors.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...