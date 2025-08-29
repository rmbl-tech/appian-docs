---
source_url: https://docs.appian.com/suite/help/25.3/vm-25.2.2.3/managing-opportunities.html
original_path: vm-25.2.2.3/managing-opportunities.html
version: "25.3"
title: "Managing Opportunities"
page_id: "vm-25.2.2.3/managing-opportunities"
section: "Managing opportunities"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Managing Opportunities

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Vendor Management, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Managing opportunities

After you [create an opportunity](creating-opportunities.html), VM makes it simple and easy to manage existing opportunities from the Opportunities list by allowing you to view additional information about the opportunity and take action on the clause set if you are a contracting user.

### Viewing opportunities

To view the full list of opportunities, simply navigate to the **OPPORTUNITIES** tab. There, you will see a grid with basic information about each opportunity. You can also search and filter the opportunity list to find a specific opportunity that you're looking for including sealed opportunity.

![Opportunity_Record_List.png](images/Opportunity_Record_List.png)

#### Viewing an opportunity

To view an individual opportunity, locate and click the opportunity you want to view in the Opportunities list. This will take you to the Opportunity Summary view where you can see details about the opportunity, updates, and any documents submitted by vendors.

![View the opportunity summary](images/opportunity_summary_contracting.png)

For sealed bid opportunities, the **Messages** tab in the Opportunity Summary view is hidden and in the **Vendors** tab, the date and time until the proposals are sealed is shown in the **Vendors** section. You cannot view the vendors who have submitted the proposals until the bids are unsealed.

![vm_view_opportunity_sealed_bid_vendors.png](images/vm_view_opportunity_sealed_bid_vendors.png)

#### View vendor questions

To view questions or question documents, click **Questions** tab.

![View vendor questions about the opportunity](images/opportuntiy_summary_questions.png)

This leads you to a list of questions or submitted question documents, where you can see which vendors have posted questions, uploaded the documents and when, as well as download the documents. To respond to the questions, you can [create an update](#create-updates) or answer each question and submit all the answers.

You can also assign another team member to respond to specific vendor questions by clicking **ASSIGN QUESTIONS**.

![vm_opportunity_questions_assign.png](images/vm_opportunity_questions_assign.png)

Once you select the assignees for the questions, click **ASSIGN** to send the questions to the selected assignees.

![vm_opportunity_questions_assignee_selection.png](images/vm_opportunity_questions_assignee_selection.png)

For sealed bid opportunities, the vendor names are hidden for the questions. You can see the vendor names after the proposals are unsealed.

![vm_view_opportunity_sealed_bid_questions.png](images/vm_view_opportunity_sealed_bid_questions.png)

#### View proposals

To view the vendors who are working on proposals and see the proposal documents, click the **Vendors** tab in the opportunity summary. For sealed bid opportunities, in the **Vendors** section you can only see the date and time until the proposals are sealed. You cannot view the vendors who have submitted the proposals until the bids are unsealed. To unseal bids, see [unsealing a sealed bid](#unseal-a-sealed-bid).

**Note:**  You can only view a vendor's proposal when its status is _Submitted, Interested, In Progress, or Resubmission Requested_.

To view the proposals from the vendors:

1.  From the **Opportunities** List, locate and click the opportunity to drill down to the **Summary View**.
2.  From the **Summary** view, click the **Vendors** tab.

    ![Click the vendors tab in the opportunity summary](images/vm_view_opportunity_vendors.png)

    -   **Note**: The number shown in the **Vendors** tab name indicates the number of vendors who have submitted their proposals for the opportunity. For example, **Vendors (4)** indicates four vendors have submitted the proposals.
3.  From the **Vendors** view, view the list of vendors who have shown interest on the opportunity or submitted their proposals in the **Vendors** section.

    ![List of vendors for the opportunity](images/vm_view_opportunity_vendorstab_vendorslist.png)

4.  From the list of vendors, click a vendor whose proposal you want to view.

    ![Click a vendor from the list of vendors](images/vm_view_opportunity_vendorstab_selectvendor.png)

5.  In the **Vendor Details** section, you can see the selected vendor's details and in the **Submission Details** section, you can see the submitted documents, and details of when and by whom the proposal was submitted.
6.  From the **Submission Details** section, click any of the submitted documents.

    ![Click a submitted document](images/vm_view_opportunity_vendorstab_selectvendordocument.png)

7.  From the document preview page, click **DOWNLOAD** to download the document.

    ![Download the selected document](images/vm_view_opportunity_vendorstab_downloaddocument.png)

8.  Click **Back to Vendor List** to return to the previous page to view and download any proposal documents submitted by other vendors.

If any of the submitted documents is incomplete or you need more information, you can request the vendors to [resubmit their proposals](#request-proposal-resubmission) after the response due date is passed for an opportunity.

##### Request proposal resubmission

Now that you have reviewed the submitted proposal documents, you may find that you need additional information to complete your evaluation or the proposal documents are incomplete. If this occurs you can ask vendors to resubmit their proposals after the opportunity's response due date is passed.

To request for proposal resubmission:

1.  From the **Vendors** tab, click **REQUEST RESUBMISSION**.

    ![Request resubmission button in vendors tab](images/vm_opportunity_requestresubmission_button.png)

    1.  From the **Request Proposal Resubmission** dialog, specify the **Resubmission Due Date** and **Timezone**. By default, the **Resubmission Due Date** field shows the next day, which can be changed.

        ![Specify resubmission date and select vendors](images/vm_opportunity_requestresubmission_step1.png)

    2.  In the **Available Vendors** section, select the checkbox associated with the vendors to whom you need the proposal resubmission.
    3.  Make sure the selected vendors appear in the **Selected Vendors** section.
    4.  Click **NEXT**.
    5.  To post an update on the opportunity about the resubmission and send email notification to all vendors, perform the following sub-steps. To send an email notification only, continue with **step 1f**.

        ![Post update on the opportunity for the resubmission](images/vm_opportunity_requestresubmission_step2.png)

        1.  In the **Post Update** section, select **Yes**.
        2.  In the **Update Details** section, enter the **Title** and **Description** for the update.
        3.  To upload any required documents, click **UPLOAD** then continue to **step 1h**.
    6.  In the **Post Update** section, select **No**.
    7.  In the **Update Details** section, enter the **Title** and **Description** for the resubmission email.
    8.  Click **REQUEST**.

    After requesting a proposal resubmission, you can verify the status of the vendors submission is changed to **Resubmission Requested** by navigating to the **Vendors** tab and viewing the status in the **Vendors** section.

    ![Resubmission status in vendors tab](images/vm_opportunity_requestresubmission_status.png)

### Taking action on an opportunity

Contracting users can perform certain actions like creating updates, updating an opportunity, and closing an opportunity. In case of sealed bid opportunities, contracting users can unseal the vendors proposals on the designated proposal opening date and time.

#### Editing an opportunity

While an opportunity is still in the _Draft_ or _Active_ status, a guided workflow allows you to update the opportunity details, attachments, and required proposal documents. You may also notify the respective vendors. However, which details of the opportunity you can update depends on how the opportunity is created - [directly in Vendor Management](#update-opportunity-created-directly-in-vm) (VM), using a [solicitation in Award Management](#update-opportunity-created-from-a-solicitation-in-am) (AM), or using a [solicitation in Government Contract Writing](#update-opportunity-created-from-a-solicitation-in-gcw) (GCW).

##### Update opportunity created directly in VM

To update an opportunity:

1.  From the **Opportunities** List, locate and click the opportunity to drill down to the **Summary View**.
2.  From the **Summary** view, perform any of the following:

    -   If the opportunity is in _Draft_ status, click **\+ EDIT OPPORTUNITY**.
    -   If the opportunity is in _Active_ status, click **AMEND NOTICE**.
3.  In the **General Information** step, you can update the following information:

    -   **Description**
    -   **Instructions**
    -   **Department/Ind. Agency**
    -   **Division/Sub-Tier**
    -   **Office**
    -   **Type**
    -   **Response Due Date**
    -   **Response Due Timezone**
    -   **Question Due Date**
    -   **Question Due Timezone**

        ![update_opportunity_general.png](images/update_opportunity_general.png)

    -   **Note**: For sealed bid opportunities:

        -   The **Sealed Bid** and **Opportunity Visibility** options cannot be changed once the opportunity is posted.

        -   If the bid is unsealed, the date, time, and timezone options for the proposal opening, questions due, and response due fields are disabled.

4.  Click **NEXT**. In the **Details** step, you can update the following information:

    -   **NAICS Code** and **NAICS Code Description**.
    -   **NIGP Code** and **NIGP Code Description** or **PSC Code** and **PSC Code Description**.

        **Note**: The NIGP codes are applicable for State and Local Government only. The PSC codes are applicable for Federal only.

    -   **Set Aside Codes**
    -   **Place of Performance**

        ![update_opportunity_details.png](images/update_opportunity_details.png)

5.  Click **NEXT**. In the **Attachments** step, you can review the uploaded attachments for the opportunity. You can add or remove attachments as needed.

    ![update_opportunity_attachments.png](images/update_opportunity_attachments.png)

    -   **Note**: If the opportunity was created from a solicitation in AM or GCW and if any of the associated documents are removed in the solicitation, a warning message appears during **AMEND NOTICE** action. You can mouse-over the **exclamation !** icon to see the delete message. To remove those documents, click the **delete x** icon associated with those documents.

        ![vm_am_gcw_integration_amend_opportunity_attachments.png](images/vm_am_gcw_integration_amend_opportunity_attachments.png)

6.  Click **NEXT**. In the **Required Proposal Documents** step, you can review the documents that vendors are required to submit for their proposals. You can add or remove attachments as needed, or update the forms that vendors need to complete.

    ![update_opportunity_documents.png](images/update_opportunity_documents.png)

7.  Click **NEXT**. In the **Notify Vendors** step, define an amendment number and title for the update to the opportunity. You can also enter a more detailed explanation of the update and attach any relevant documents. This step will only appear if the opportunity has already been posted.

    ![update_opportunity_notify_2dot0.png](images/update_opportunity_notify_2dot0.png)

8.  Perform any one of the following:

    -   If the opportunity is a draft, you can also click **CREATE** to make it visible to vendors.
    -   If the opportunity has already been posted, click **AMEND**.

**Note:**  We recommend that you [create an update](#create-updates) to inform vendors about any amendments to an active opportunity.

##### Update opportunity created from a solicitation in AM

If the opportunity was created from a solicitation in Award Management (AM) solution, Appian recommends amending the solicitation directly in AM solution.

1.  From the **Opportunities** List, locate and click the opportunity to drill down to the **Summary View**.
2.  From the **Summary** view, click **AMEND NOTICE**.

    A dialog with a link to the solicitation in AM appears.

3.  Click **VIEW SOLICITATION** to amend the solicitation in AM.

    ![vm_am_integration_opportunity_amendnotice.png](images/vm_am_integration_opportunity_amendnotice.png)

4.  In the AM solution, go to the **Solicitation Summary** page, and in the **Posted Solicitation** section, click **Create Amend Notice**.

    ![vm_am_integration_amend_opportunity.png](images/vm_am_integration_amend_opportunity.png)

5.  Perform the **steps 3 to 8** in [Update opportunity created directly in VM](#update-opportunity-created-directly-in-vm).

##### Update opportunity created from a solicitation in GCW

If the opportunity was created from a solicitation in Government Contract Writing (GCW) solution, Appian recommends amending the opportunity-specific details in VM and the solicitation-specific details of the opportunity directly in GCW.

**To update the opportunity-specific fields in VM:**

1.  From the **Opportunities** List, locate and click the opportunity to drill down to the **Summary View**.
2.  From the **Summary** view, click **UPDATE OPPORTUNITY**.
3.  In the **General Information** step, you can update the following information:

    -   **Instructions**
    -   **Question Due Date**
    -   **Question Due Timezone**

        -   **Note**: The Sealed Bid field appears disabled when updating an opportunity that was created from a solicitation in GCW.
4.  Click **NEXT**.
5.  Click **NEXT**.
6.  In the **Attachments** step, you can upload additional documents needed for the opportunity. However, you will not be able to see the documents originally uploaded when the opportunity was created from the GCW solicitation.
7.  Click **NEXT**.
8.  In the **Required Proposal Documents** step, you can map the newly uploaded documents to the existing list of required documents.
9.  Click **NEXT**.
10.  In the **Notify Vendors** step, define an amendment number and title for the update to the opportunity. You can also enter a more detailed explanation of the update and attach any relevant documents. This step will only appear if the opportunity has already been posted.

     ![update_opportunity_notify_2dot0.png](images/update_opportunity_notify_2dot0.png)

11.  Click **UPDATE**.

     **Note**: We recommend that you [create an update](#create-updates) to inform vendors about any amendments to an active opportunity.

**To update the solicitation-specific details in GCW:**

1.  From the **Opportunities** List, locate and click the opportunity to drill down to the **Summary View**.
2.  From the **Summary** view, in the **Details** section, click the **solicitation link** in the **Solicitation** field.
3.  In the **GCW solution**, post an amendment to update the solicitation-specific details.

#### Create updates

While an opportunity is still in the _Draft_ or _Active_ status, contracting users can create updates that will be posted to the Opportunity Summary view.

![Updates section in opportunity summary](images/opportunity_summary_updates.png)

To create an update:

1.  From the **Opportunities** list, locate and click the opportunity you want to close to drill down into the Opportunity Summary view.
2.  From the **Summary** view, click **\+ CREATE UPDATE** to view the form for creating updates.
3.  Enter a **Title**, **Update Type**, and **Update** to convey the message.

    ![Create update form](images/create_update_form.png)

4.  Upload documents to the **Attachments** field.
5.  Click **CREATE**.

#### Unseal a sealed bid

Contracting users can unseal a bid on the designated proposal opening date and time. The option to unseal the proposals is visible only on the designated proposal opening date and time.

To unseal a sealed bid:

1.  From the **Opportunities** list, locate and click the sealed bid opportunity you want to unseal to drill down into the Opportunity Summary view.
2.  Click the **Vendors** tab.
3.  From the **Vendors** view, in the **Vendors** section, click **UNSEAL PROPOSALS** to unseal the vendors proposals.

    ![Unseal a sealed bid opportunity](images/vm_view_opportunity_sealed_bid_unseal.png)

4.  [View the vendors proposals](#view-proposals).

Once the proposals are unsealed, the date and time and by whom the proposals were unsealed is displayed at the top of the Vendors section in the Opportunity Summary page.

![View the vendors' proposals for the sealed bid opportunity](images/vm_view_opportunity_unsealed_bid_vendors.png)

#### Request clarification

You can request clarification about proposals from the vendors if the opportunity is a sealed bid.

To request clarification from vendors about their sealed bids:

1.  From the **Opportunities** list, locate and click the opportunity to drill down into the Opportunity Summary view.
2.  Click the **Vendors** tab.
3.  From the **Vendors** view, click **REQUEST CLARIFICATION**.

    ![Click request clarification button](images/vm_sealedbid_request_clarification.png)

    1.  From the **Request Proposal Clarification** dialog, specify the **Clarification Due Date** and **Timezone**. The fields show the next day by default, which can be changed.

        ![Specify the clarification due date and select vendors](images/vm_sealedbid_request_clarification_step1.png)

    2.  In the **Available Vendors** section, select the checkbox associated with the vendors from whom you need clarifications.
    3.  Make sure the selected vendors appear in the **Selected Vendors** section.
    4.  Click **NEXT**.
    5.  To post an update on the opportunity about the clarification and send an email notification to all vendors, perform the following sub-steps. To send email notification only, continue with **step 3f**.

        ![Specify the details of the clarification request](images/vm_sealedbid_request_clarification_step2.png)

        1.  In the **Post Update** section, select **Yes**.
        2.  In the **Clarification Details** section, enter the **Title** and **Description** for the update.
        3.  To upload any required documents, click **UPLOAD** then continue to **step 3h**.
    6.  In the **Post Update** section, select **No**.
    7.  In the **Clarification Details** section, enter the **Title** and **Description** for the clarification email.
    8.  Click **REQUEST**.

    After requesting clarification, you can verify the status of the vendors submission is changed to **Clarification Requested** by navigating to the **Vendors** tab and viewing the status in the **Vendors** section.

    ![View the request clarification status](images/vm_sealedbid_request_clarification_status.png)

#### Create an evaluation using opportunity ID

**Note:**  This content is applicable only when you have both VM and Government Source Selection (GSS) solutions integrated in your environment for seamless data exchange between the solutions.

After an opportunity is created in VM, you can use that opportunity ID to create an evaluation in GSS.

To create an evaluation in GSS using an opportunity ID:

1.  From the **Opportunities** list, locate and click the opportunity whose ID you want to copy.
2.  From the **Summary** view, in the **Details** section, copy its opportunity ID.

    ![Opportunity ID in opportunity summary](images/vm_gss_integration_opportunityid.png)

3.  In the GSS solution, navigate to **My Workspace** or **Evaluations**.
4.  Click **\+ CREATE NEW EVALUATION**.
5.  On the **Create Evaluation** page, in the **Solicitation PIID** field, paste the opportunity ID copied in step 1.

    ![Create evaluation using opportunity ID](images/vm_gss_integration_createevaluation.png)

6.  Perform the remaining steps to [create an evaluation in GSS](../gss-25.2.2.4/gss-creating-new-evaluation.html).

Once the evaluation is created in GSS, you can find a link to the opportunity in the **Opportunity** section in the evaluation summary.

![Opportunity link in evaluation summary](images/vm_gss_integration_opportunitylink.png)

After vendors submit their proposals for the opportunity, the vendors and their documents can be pulled into the evaluation in GSS.

![Add vendors from Vendor Management](images/vm_gss_integration_vendorsfromvm.png)

**Note:**  If the opportunity is a sealed bid, vendors and their proposal documents can be pulled into the evaluation in GSS only after the bid is unsealed in VM.

When the status of the evaluation in GSS is `Set up` or `In Progress`, the evaluation status of the opportunity in VM is displayed as `Evaluating Responses`. When the status of the evaluation in GSS is `Completed`, the evaluation status of the opportunity in VM is displayed as `Evaluation Completed`.

![Evaluation status in opportunity summary](images/vm_gss_integration_opportunitystatus.png)

#### Post an amended opportunity to ESBD

**Note:**  The posting of public opportunities to the Texas ESBD site is applicable when your agency is within Texas, USA. If applicable, make sure the [ESBD integration is enabled](setting-up-vm.html#step-8-set-up-esbd-integration).

To post an amended public opportunity to ESBD:

1.  From the **Opportunities** List, locate and click the opportunity to drill down to the **Summary View**.
2.  From the **Summary** view, in the **ESBD Solicitation** section, you can view a message indicating you to post the last updates from the amendment to ESBD.

    ![ESBD option in opportunity summary](images/vm_updateopportunity_esbd_amend.png)

3.  Click **Post**.
4.  Notice the status of the amendments posting to ESBD is indicated as `Addendum Posted`.

    ![ESBD option in opportunity summary](images/vm_updateopportunity_esbd_amend_posted.png)

Once an amended opportunity is posted to Texas ESBD site, the DAT file created earlier for the opportunity is updated and stored in your SFTP folder.

#### Close an opportunity

If you close an opportunity before it automatically closes on its response due date, you will prevent users from updating the opportunity or vendors from continuing to submit proposals.

To close an opportunity:

1.  From the **Opportunities** list, locate and click the opportunity you want to close to drill down into the Opportunity Summary view.
2.  From the **Summary** view, click **CLOSE OPPORTUNITY** to view a confirmation message.
3.  Confirm that you wish to continue and close the opportunity.

## View awards

Vendor Management integrates with Award Management to allow you to see which opportunities have been awarded. From VM, you can see the Awards list, filter and search awards, and drill down into the summary view for more details about an award. Click the **Awards** tab to view awards.

![awards_list.png](images/awards_list.png)

### Summary view

When you click an award, you will see award information such as status, duration, vendor, and award documents.

![award_summary.png](images/award_summary.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...