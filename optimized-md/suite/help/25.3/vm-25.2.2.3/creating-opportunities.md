---
source_url: https://docs.appian.com/suite/help/25.3/vm-25.2.2.3/creating-opportunities.html
original_path: vm-25.2.2.3/creating-opportunities.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Creating Opportunities

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Vendor Management, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Vendor Management is the process of creating and updating an opportunity, as well as allowing vendors to submit proposals to be considered for an opportunity. This involves collecting and maintaining opportunity information and documents from both contracting professionals and vendors. The Vendor Management (VM) solution provides a guided, automated experience for collecting this information. After an opportunity is created, simple, informative record interfaces, enabled by Appian Records, allow end users to view and update this information.

This page provides instructions for creating a new opportunity.

### Creating and navigating a new opportunity

Creating a new opportunity is a guided experience that walks you through the process of entering the information you need to start the procurement process. Once initiated, you are guided through the following steps:

1.  [Import from SAM.gov](#import-from-samgov).
2.  [Enter general information](#enter-general-information).
3.  [Provide additional details](#provide-additional-details).
4.  [Upload opportunity attachments](#upload-opportunity-attachments).
5.  [Specify required proposal documents](#specify-required-proposal-documents).
6.  [Post the opportunity](#post-the-opportunity).
7.  [Post an opportunity to ESBD](#post-an-opportunity-to-esbd).
8.  [Post an opportunity to SAM.gov](#post-an-opportunity-to-samgov).

You must be a member of the **AS VM Create or Update Opportunity PM Access** security group to create a new evaluation. By default, the **Contracting** groups belong to this security group.

## Create a new opportunity

To start a new requirement, click **\+ CREATE OPPORTUNITY** from the **Home** or **Opportunities** page. The left side of the screen contains the various data collection steps required to create a new evaluation. You can click **NEXT** at the bottom of the form to go to the next step or **SAVE & CLOSE** to save a draft of the opportunity.

![Create an opportunity](images/Create_Opportunity_Home.png)

Note that after the information is entered, it will populate on the Opportunity record.

### Import from SAM.gov

When creating an opportunity, you have the option to import an existing opportunity using SAM.gov and auto-populate your Create Opportunity wizard. Click **SKIP STEP 1** to skip the import from SAM.gov and create your opportunity manually.

![Import an opportunity from SAM.gov](images/create_opportunity_samgov.png)

To pull in opportunity information from SAM.gov:

1.  Enter the opportunity ID in the search box and click **SEARCH**.
2.  If an opportunity is found, verify with the information.
3.  Click on the opportunity to confirm the selection.
4.  Click **NEXT**.

### Enter general information

Next, enter details relevant to the new opportunity, such as the ID, opportunity title, description, and instructions. If you imported from SAM.gov, some fields will already be populated.

![Provide general information of the opportunity](images/create_opportunity_general_information.png)

To enter general information about the opportunity:

1.  Enter **ID**, **Title**, **Description**, and **Instructions** for the goods or services you are procuring.
2.  Select your **Department/Ind. Agency**, **Division/Sub-Tier**, and **Office**. These fields provide context about who the contract is for.
3.  Select a **Type**, **Response Due Date**, **Response Due Timezone**, **Question Due Date**, and **Question Due Timezone**. These will determine how long vendors have to submit their proposals and questions about the opportunity.

    -   **Note**: The response due date and time must be later than question due date and time.
4.  If the new opportunity needs to be a sealed bid, select **Yes** in the **Sealed Bid** field.

    1.  Select a **Proposal Opening Date**, **Proposal Opening Time**, and **Proposal Opening Timezone**.

        -   **Note**: The proposal opening date and time must be later than the response due date and time.

        ![Make the opportunity as a sealed bid](images/vm_create_opportunity_sealed_bid.png)

5.  Select the **Opportunity Visibility**. This is used to determine whether your opportunity will be visible to all vendors, or only selected vendors.

    -   If **Private** is selected, you can choose which vendors and vendor groups the opportunity will be visible to.

    ![Make the opportunity as private](images/Create_Opportunity_Private.png)

6.  Click **NEXT**.

### Provide additional details

The Details page is where you'll add details about the opportunity. You can provide an address for the Place of Performance, input NAICS, and NIGP or PSC codes, and select Set Aside Codes for the opportunity.

![Provide additional details of the opportunity](images/create_opportunity_details.png)

To provide additional details for the opportunity:

1.  Add **NAICS Code** and **NAICS Code Description**.
2.  Add **NIGP Code** and **NIGP Code Description** or **PSC Code** and **PSC Code Description**.

    -   **Note**: The NIGP codes are applicable for State and Local Government only. Atleast one NIGP code and description is mandatory for Texas ESBD. The PSC codes are applicable for Federal only.
3.  Select **Set Aside Codes** from the dropdown.
4.  Provide an address for the **Place of Performance**.
5.  Click **NEXT**.

### Upload opportunity attachments

The Attachments page allows you to upload documents and forms to the opportunity for vendors to view and fill out.

![Upload attachments for the opportunity](images/create_opportunity_attachments.png)

To set up the factors for your vendor evaluation:

1.  Using the **Upload** button, upload up to 15 documents. Your users and vendors can view and download these documents from the Opportunity Summary page.
2.  Click **NEXT**.

### Specify required proposal documents

The Required Proposal Documents page allows you to add documents that vendors need to submit with their proposal and indicate whether there are forms that need to be completed.

![Specify the required documents for the opportunity response](images/create_opportunity_require_docs.png)

To add a required proposal document to your opportunity:

1.  Click **\+ Add Required Document**.
2.  Enter a **Document Name**.
3.  If the document is a **Form** vendors should fill out, select one of the uploaded attachments.
4.  To add more documents, repeat **step 1** or use to remove entries.

## Create an opportunity from a solicitation in AM

**Note:**  This content is applicable only when you have both the Vendor Management (VM) and Award Management (AM) solutions in the same environment.

You can create an opportunity in VM from a solicitation that is in _Released_ status in AM.

To create an opportunity from a solicitation in AM:

1.  Access AM solution and open a solicitation that is in _Released_ status.
2.  From the **Solicitation Summary** page, in the **Posted Solicitation** section, click **Create Opportunity**.

    ![vm_am_integration_create_opportunity.png](images/vm_am_integration_create_opportunity.png)

    -   **Note**: When the Create Opportunity wizard opens, notice that the solicitation data from AM is pre-populated in the applicable fields in the Create Opportunity screen in VM, including the ID, Title, Description, Department, Response Due Date, and Response Due Timezone fields will display the solicitation data.
3.  Enter other necessary data in the **General Information** section.
4.  Click **NEXT**.
5.  In the **Details** section, notice the NIGP or PSC and NAICS codes display data from solicitation.
6.  Enter other necessary data in the **Details** section.
7.  Click **NEXT**.
8.  In the **Attachments** section, notice the documents from the solicitation are already available. You can delete those document if not required.

    1.  In case if you need those solicitation documents, click **IMPORT FROM SOLICITATION**, select the checkbox associated with the documents you want to import, and click **IMPORT**.
9.  Click **UPLOAD** to browse, select, and upload any documents needed for the opportunity, then click **UPLOAD**.
10.  Click **NEXT**.
11.  In the **Required Proposal Documents** section, click **\+ Add Required Document** to upload the required documents.
12.  Click **NEXT** to complete the create and [post the opportunity](#post-the-opportunity).

## Create an opportunity from a solicitation in GCW

**Note:**  This content is applicable only when you have both the Vendor Management (VM) and Government Contract Writing (GCW) solutions in the same environment. Appian recommends disabling the [SLG toggle](sol-custom-suite-user-guide.html#business-logic) when creating an opportunity from a solicitation in GCW.

You can create an opportunity in VM from a solicitation that is in _Released_ status in GCW.

To create an opportunity from a solicitation in GCW:

1.  In the GCW solution, navigate to **MY WORKSPACE** or **PROCUREMENTS**.
2.  Select the **Solicitations** tab to view the Solicitations list.
3.  Locate the solicitation that you want to create an opportunity for and click the link to open it.

    -   **Note**: You can only create an opportunity from a solicitation that is in _Released_ status.
4.  From the **Solicitation Summary** page, go to **Integrations > Vendor Management** and click **Create**.

    ![vm_gcw_integration_create_opportunity_2dot0.png](images/vm_gcw_integration_create_opportunity_2dot0.png)

    -   **Note**: When the Create Opportunity wizard opens in VM, the solicitation data from GCW is automatically pre-populated in the related opportunity fields and those fields appear disabled.

        A message appears with a link to the solicitation in GCW, where you can make changes to those fields if needed.

        ![vm_gcw_integration_createopp_disabledfields.png](images/vm_gcw_integration_createopp_disabledfields.png)

        The Sealed Bid field appears disabled when creating an opportunity from a solicitation in GCW.

5.  Enter other necessary data in the **General Information** section and click **NEXT**.

    -   **Note**: In the **Details** section, notice the NIGP or PSC and NAICS codes display data from solicitation.
6.  Enter other necessary data in the **Details** section and click **NEXT**.
7.  In the **Attachments** section, delete any documents that are not required for this opportunity.

    -   **Note**: When the Create Opportunity wizard opens in VM, the solicitation documents from GCW are made available in the new opportunity.

    -   If the available solicitation documents are required for this opportunity, click **IMPORT FROM SOLICITATION**, select the checkbox associated with the documents you want to import, and click **IMPORT**.

8.  Click **UPLOAD** to browse, select, and upload any documents needed for the opportunity, then click **UPLOAD**.
9.  Click **NEXT**.
10.  In the **Required Proposal Documents** section, click **\+ Add Required Document** to upload the required documents.
11.  Click **NEXT** to create and [post the opportunity](#post-the-opportunity).

## Post the opportunity

To post the evaluation:

1.  Review the details you have entered.

    -   **Note**: For sealed bid opportunities, the **Sealed Bid** and **Opportunity Visibility** fields cannot be changed after the opportunity is posted.
2.  Verify that there is no missing information and there are no validation messages.
3.  When you are ready, click **CREATE** or **POST** to finish creating the opportunity and make it visible to vendors.

    -   **Note**: When the opportunity is created directly in VM, the **CREATE** button appears. When the opportunity is created from a solicitation in AM or GCW, the **POST** button appears.

Once you have posted the evaluation, a confirmation will display indicating that the opportunity has been started. From here, you can close out and track vendors' progress.

## Public opportunity posting to ESBD

**Note:**  The posting of public opportunities to the Texas ESBD site is applicable when your agency is within Texas, USA. If applicable, make sure the [ESBD integration is enabled](setting-up-vm.html#step-8-set-up-esbd-integration). Private opportunities cannot be posted to ESBD.

### Post an opportunity to ESBD

Once an opportunity is created and made public, you can post it to ESBD site, if applicable.

To post a public opportunity to ESBD:

1.  From the **Opportunities** List, locate and click the opportunity to drill down to the **Summary View**.

    -   **Note**: Atleast one NIGP code and description is mandatory for Texas ESBD.
2.  From the **Summary** view, in the **ESBD Solicitation** section, click **Post**.

    ![ESBD option in opportunity summary](images/vm_createopportunity_esbd_post.png)

    1.  On the **Post to ESBD** dialog, select the **ESBD Posting Requirement** from the dropdown.
    2.  Enter a **Contact Number**.
    3.  Click **POST**.

    ![Post to ESBD dialog](images/vm_createopportunity_esbd_fields.png)

3.  Notice that the opportunity is posted to ESBD.

    ![Status of ESBD posting](images/vm_createopportunity_esbd_posted.png)

4.  Click the link to view the posted opportunity in ESBD site.

Once an opportunity is posted to Texas ESBD site, the DAT file containing the details of the posted opportunity is created and stored in your SFTP folder.

### View details of ESBD post

Once an opportunity is posted to Texas ESBD site, you can view its details in VM.

To view the ESBD posting details of a public opportunity:

1.  From the **Opportunities** List, locate and click the opportunity to drill down to the **Summary View**.
2.  From the **Summary** view, in the **ESBD Solicitation** section, click .
3.  Click **View Details**.

    ![View details option for ESBD post](images/vm_viewopportunity_esbd_posted_view.png)

    1.  On the **View Details** dialog, view the details of the ESBD posting, such as **ESBD Posting Requirement**, **Contact Number**, and **Original Post Date**.
    2.  Click **CLOSE**.

    ![Details of ESBD posting](images/vm_viewopportunity_esbd_posted_viewdetails.png)

## Public opportunity posting to SAM.gov

**Note:**  The posting of public opportunities to SAM.gov is applicable for Federal agencies only. If applicable, make sure to [enable SAM.gov toggle](setting-up-vm.html#step-9-enable-samgov-toggle).

### Post an opportunity to SAM.gov

An active public opportunity can be posted to SAM.gov. Private opportunities cannot be posted to ESBD.

To post a public opportunity to SAM.gov:

1.  From the **Opportunities** List, locate and click the opportunity to drill down to the **Summary View**.
2.  From the **Summary** view, in the **SAM.gov Solicitation** section, click **Publish**.

    ![SAM.gov option in opportunity summary](images/vm_samgov_post.png)

    1.  On the **Publish to SAM.gov** dialog, select the **Archival Type** from the dropdown.

        1.  If **Archival Type** is `Autocustom`, select the **Archival Date**.

            -   **Note**: Archival Date must be greater than the opportunity response due date.
    2.  Select the **Additional Reporting** from the dropdown.
    3.  Click **Publish**.

        ![Post to SAM.gov dialog](images/vm_samgov_post_filldetails.png)

### Viewing details of SAM.gov post

Once an opportunity is posted to SAM.gov, you can view its details in VM.

To view the SAM.gov posting details of a public opportunity:

1.  From the **Opportunities** List, locate and click the opportunity to drill down to the **Summary View**.
2.  From the **Summary** view, in the **SAM.gov Solicitation** section, click .
3.  Click **View Details**.

    ![View details option for SAM.gov post](images/vm_samgov_post_viewdetails.png)

    1.  On the **View Details** dialog, view the details of the SAM.gov posting, such as **Archive Type**, **Additional Reporting**, and **Original Post Date**.
    2.  Click **CLOSE**.

    ![Details of SAM.gov posting](images/vm_samgov_post_details.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...