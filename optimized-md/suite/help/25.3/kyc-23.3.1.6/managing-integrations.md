---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/managing-integrations.html
original_path: kyc-23.3.1.6/managing-integrations.html
version: "25.3"
title: "Managing Integrations"
page_id: "kyc-23.3.1.6/managing-integrations"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Managing Integrations

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

Appian's Connected KYC solution provides the ability to integrate with the following applications:

-   [Companies House](#integrating-with-company-house)
-   [DocuSign](#integrating-with-docusign)
-   [OFAC](#integrating-with-ofac)
-   [Dun & Bradstreet](#integrating-with-dun-&-bradstreet)
-   [IDP](#integrating-with-idp)
-   [Northrow](#integrating-with-northrow)

This page walks you through the steps for setting up each integration. After setting up the integrations you need for your Connected KYC solution, you can manage them through the Connected KYC System Administration Center.

## Accessing the System Administration Center

The **System Administration Center** is a separate site in the Connected KYC solution that allows administrators:

-   Turn on/off connected integrations.
-   View and update properties for connected integrations.
-   Test integration connections.

Only administrators with the appropriate group membership are able to access this site. This ensures that only a select few have access to sensitive processes and information.

To access the **System Administration Center**:

1.  Make sure you are in the `AS FS Appian Administrators` security group. See the [Groups Reference Page](groups-reference-page.html) for more information about security groups.
2.  From the Connected KYC site, select the navigation menu ![navigation menu](images/onb_process_navigation_menu.png) > **System Administration Center**.

The Welcome to the System Administration Center page displays. You can click on the integrations card to view and update any connected integrations.

![system_admin_center.jpg](images/system_admin_center.jpg)

## Integrating with Company House

Appian's Connected KYC application includes the ability to populate customer data from UK company registration service, [Companies House](https://www.gov.uk/government/organisations/companies-house). Connecting to Companies House helps users reduce data entry by pulling in any of the public registration information available from the Companies House service. Using Companies House is optional and requires some minimal configuration in the [System Administration Center](#accessing-the-system-administration-center) site after the Companies House prerequisites are completed.

![companies_house_admin_center_properties.jpg](images/companies_house_admin_center_properties.jpg)

### Prerequisites

The Companies House is a public API, but your organization must still generate an authorization key before the service can be used.

To obtain an authorization key:

1.  From the Companies House website, [create](https://developer.company-information.service.gov.uk/get-started) a Companies House account.
2.  Follow Companies House instructions to obtain an [API key](https://developer.company-information.service.gov.uk/authentication/) and save this key.

Once you have your Companies House API key:

1.  From Appian Designer, open `AS EI CHS CS Companies House` connected system.
2.  Click **Clear** next to the **Value** field.
3.  Enter your authentication token in the **Value** field.
4.  Click **SAVE**.

### Using the Companies House integration

Companies House provides registration information about a customer. Any Companies House information gathered is displayed on the **Basic Info** tab on customer profile.

When creating or updating, you can provide a **Customer Number**. A **Customer Number** is the company registration / incorporation number a company was assigned upon registration. To find a **Customer Number**, you can search by name on the Companies House website by clicking **Search Companies House** link.

![search_for_company_number.jpg](images/search_for_company_number.jpg)

If the [Companies House](#updating-companies-house-properties) integration is connected and a **Company Number** is entered, Companies House will be called and any available information will be automatically populated.

The fields that can be pulled in for Companies House are:

1.  **Customer Information**:
    -   **Class type**: The class type of the customer. Possible values include LTD, PLC, LLP, etc.
    -   **Class sub-type**: The subtype of the company. Possible values are: community interest company and private fund limited partnership.
    -   **Jurisdiction**: The jurisdiction specifies the political body responsible for the company.
    -   **Date of creation**: The date a company was created.
    -   **External registration number**: The number given by an external registration body.
    -   **Foreign company account information**
        -   **Foreign Account type**: Legal form of the customer in the country of incorporation.
        -   **Account from**: Date account period starts under parent law.
        -   **Account to**: Date account period ends under parent law.
        -   **Originating registry name**: Identity of register in country of incorporation.
        -   **Originating registry country**: Country in which customer was incorporated.
        -   **Credit/Finance Institution**: Is it a financial or credit institution. Valid values: Yes or No.
        -   **Must file within**: Number of months within which to file disclosure of accounts under parent law.
        -   **Governed by**: Law governing the customer in country of incorporation.
        -   **Registration number**: Registration number in customer of incorporation.
        -   **Terms of account publication**: Describes how the publication date is derived.
        -   **Company Type**: Legal form of the company in the country of incorporation.
    -   **Company status**: The status of the customer. Valid values include: active, dissolved, liquidation, receivership, administration, voluntary arrangement, converted closed, and insolvency proceedings.
    -   **Company status details**: Extra details about the status of the company. Valid values include: transferred from UK, active proposal to strike off, petition to restore dissolved, transformed to SE, converted to PLC, converted to UK SOCIETAS, converted to UKEIG.
    -   **Business Activity**: Type of business undertaken by the UK establishment.
2.  **Previous customer names**: The previous names of this customer.
    -   **Effective from**:The date from which the customer name was effective.
    -   **Ceased on**: The date on which the customer name ceased.
3.  **Customer links**: A set of URLs related to the resource.
4.  **Registered office address**: The address of the customer's registered office.

If Companies House is disconnected or a **Company Number** is not provided, you can enter these fields manually.

#### Refreshing Companies House information

A user can manually check for changes to the information from Companies House from the customer record by clicking **REFRESH COMPANIES HOUSE** on the **BASIC INFO** tab of the customer profile.

![refresh_companies_house.jpg](images/refresh_companies_house.jpg)

The refresh button is not available if the Companies House integration is disconnected.

### Updating Companies House properties

From the **System Administration Center**, you can determine whether or not the Companies House integration is connected. When Companies House is disconnected you will need to manually enter a customer's registration information.

![update_ch_prop.jpg](images/update_ch_prop.jpg)

To update the Companies House properties:

1.  After accessing the [System Administration Center](#accessing-the-system-administration-center), click **Integrations**.
2.  On the left, select **Companies House**.
3.  Click **UPDATE PROPERTIES**.
4.  Update **Status**.
5.  Click **SAVE PROPERTIES**.

### Testing Companies House integration

If you suspect that the Companies House integration is not working, you can test to see if this integration is working from the **System Administration Center**.

To test the Companies House connection:

1.  After accessing the [System Administration Center](#accessing-the-system-administration-center), click **Integrations**.
2.  On the left, select **Companies House**.
3.  Click **TEST INTEGRATION**.
4.  Click **REQUEST COMPANY INFORMATION**.
    -   You are able to see what is returned, either **Integration Successful** or **Integration Error**.
    -   You are also able to see the Companies House service response details.

![test_companies_house.jpg](images/test_companies_house.jpg)

## Integrating with DocuSign

Appian's Connected KYC solution includes electronic signature capture powered by a DocuSign integration. With DocuSign, users can sign documents and attach them directly to the Investigation and customer records. DocuSign is optional integration and requires some minimal configuration in both the [Connected FS Settings](using-fs-settings.html) and [System Administration Center](#accessing-the-system-administration-center) sites after the DocuSign prerequisite configuration is set up.

![docusign_admin_center.jpg](images/docusign_admin_center.jpg)

### Prerequisites

If you would like to use the DocuSign tasks during your Investigation, you must have a DocuSign account and be able to retrieve your organization's credentials.

To generate or find your DocuSign authentication information:

1.  Follow [these instructions](https://developers.docusign.com/platform/auth/jwt-get-token/) to generate the proper credentials for JWT authentication for DocuSign.

Once you have your DocuSign authentication information:

1.  From Appian Designer, open the `AS EI Docusign Connected System`.
2.  Enter the **Instance URL**, **API Account ID**, **API Username**, **Integration Key**, and **Private RSA Key**.
3.  Click **SAVE**.
4.  Open the `AS_IO_DOCUSIGN_generateDocusignTaskEnvelope` expression rule.
5.  Update the JSON structures, if applicable.

### Creating a DocuSign Task

The DocuSign integration sends documents to internal and external users to collect a signature. In order to have a document signed via DocuSign within Connected KYC, a user must receive a DocuSign task.

If the DocuSign integration is not connected in the [DocuSign properties](#updating-docusign-properties) of the **System Administration Center**, this task type is not accessible.

DocuSign tasks can be created and added to Investigation process templates in the Connected KYC settings page or can be sent ad-hoc during an active Investigation.

#### Sending an ad-hoc DocuSign task

To send an ad-hoc DocuSign Task:

1.  Open the Investigation and go to the **Tasks** tab.
2.  Click **New Task**.
3.  Enter **Task Name**, **Task Category**, **Assigned Group**, and **Due Date**.
    -   To assign the DocuSign task to an external customer, in the **Assigned Group** dropdown, select the customer name.
4.  For **Task Type**, select **Collect DocuSign Signature**.
5.  Enter the additional required fields:

    -   **Document Type**: The document type of document to sign.
    -   **New or Existing**: Whether or not you would like to use a document template that has already been uploaded to the system or a upload a new template.
    -   **Document to be Signed**: The document template to be signed.
        -   **Note**: If **New** is selected, this will be a document upload field. If **Existing** is selected, this will be a dropdown list.

    ![create_docusign_task.jpg](images/create_docusign_task.jpg)

#### Creating a DocuSign task for Investigation process templates

To create a DocuSign task to use in Investigation process templates:

1.  From the Connected FS Settings site, click **PROCESS**.
2.  On the left navigation pane, select **Tasks**.
3.  Click **NEW TASK**.
4.  Enter the **Task Name**, **Task Category**, and **Assigned Group**.
    -   **Note**: To assign the DocuSign task to an external customer, in the **Assigned Group** dropdown, select the **Customers** group. When the task is generated, the **Assigned Group** will automatically be updated to the customer that is being onboarded.
5.  For **Task Type**, select **Collect DocuSign Signature**.
6.  Enter the additional required fields:
    -   **Document Type**: The type of document to be signed.
    -   **Document to be Signed**: The document template that the user will be sign via DocuSign.
7.  Click **CREATE TASK**.

![create_docusign_task_in_settings.jpg](images/create_docusign_task_in_settings.jpg)

When a user goes to edit or [update process templates](setting-up-processes.html), this task will now be available for use.

### Completing a DocuSign Task

When a user receives a DocuSign task, it will appear on their task list with a task type **Collect DocuSign Signature**.

To complete a DocuSign Task:

1.  From the task list, click on the task name.
2.  Click **GET SIGNING URL**.

    ![get_signing_url.jpg](images/get_signing_url.jpg)

3.  Click **Sign Document**.
    -   **Note**: Clicking **Sign Document** opens a new tab that contains the document for the user to sign.
4.  Use DocuSign to provide an e-signature.
    -   **Note**: Once you click **FINISH** in DocuSign this tab will navigate to your home page.
5.  Once signed, return to the task tab.
6.  Check the **DOCUMENT SIGNED** box.
    -   **Note**: A preview of the signed document will appear.
7.  Click **Submit**.

![signed_docusign_task.jpg](images/signed_docusign_task.jpg)

The signed document will also be available on the **DOCUMENTS** tab of the Investigation and customer records.

### Completing a DocuSign Error Task

If there is an issue with the DocuSign integration while a task is opened or assigned and the system will generate a DocuSign task and assign it to the user who the original DocuSign task was assigned to.

To complete a DocuSign Error Task:

1.  From the task list, click on the task name.
2.  Choose an option, either **Yes - Retry** or **No - Do not retry**.
    -   If you choose **Yes - Retry** and the connection issue has been resolved, the original DocuSign task will be opened. If it has not, a subsequent error task will be generated.
    -   If you choose **No - Do not retry**, the error task will be closed and any tasks dependent on the original DocuSign task will be kicked off.
3.  Click **SUBMIT**.

![docusign_error_task.jpg](images/docusign_error_task.jpg)

### Updating DocuSign properties

From the **System Administration Center**, a user can determine whether or not the DocuSign integration is connected. When DocuSign is disconnected a user will not be able to use DocuSign tasks to gather signatures on documents during the Investigation process.

![update_docusign.jpg](images/update_docusign.jpg)

To update the DocuSign properties:

1.  From the System Administration Center, click **Integrations**.
2.  On the left, select **DocuSign**.
3.  Click **UPDATE PROPERTIES**.
4.  Update **Status**.
5.  Click **SAVE PROPERTIES**.

## Integrating with OFAC

Verifying a customer's identity to comply with Know Your Customer (KYC) requirements is an important part of every financial institution's processes. Connected KYC helps to automate part of this process by integrating with the [OFAC Consolidated Screening List API](https://api.trade.gov/apps/store/apis/info?name=ConsolidatedScreeningListAPI&version=v1&provider=dataservices@trade.gov) from Trade.gov. This integration searches customer names against eleven export screening lists of the Departments of Commerce, State, and Treasury to help institutions screen potential parties to regulated transactions.

Using OFAC is optional and requires some minimal configuration in both the [Connected FS Settings](using-fs-settings.html) and [System Administration Center](#accessing-the-system-administration-center) sites after the OFAC prerequisites are completed.

![ofac_admin_center_props.jpg](images/ofac_admin_center_props.jpg)

If you would like to change the OFAC integration further, see the [Modifying OFAC Integration](modifying-ofac-integration.html) page for additional customization options.

### Prerequisites

The OFAC Consolidated Screening API is a free, public API, but your organization must still generate access tokens before the service can be used.

To obtain an access token, subscribe to the [Consolidated Screening List API](https://api.trade.gov/apps/store/ita#subcribing-to-an-api).

Once you have your OFAC authentication information:

1.  From Appian Designer, open the `AS IO Trade.gov Consolidated Screening` connected system.
2.  In the **Value** field, enter the **Primary Key** value that was automatically generated for you in your ITA Developer account.
3.  Click **SAVE**.

### Using the OFAC integration

The OFAC integration uses the customer's name to search against the OFAC consolidated screening list. An OFAC check is completed with a **Consolidated Screening Check** task during an Investigation.

If the OFAC integration is not connected in the [OFAC properties](#updating-ofac-properties) of the System Administration Center, this task type is not accessible.

**Caution:**  There can be a time lag of up to one hour between the time a Source has updated a screening list and when that update appears in the Consolidated Screening List API.

#### Creating an OFAC consolidated screening check task

OFAC tasks can be created for Investigation process templates in the Connected FS Settings page.

To create an OFAC task for Investigation process templates:

1.  From the [Connected FS Settings](using-fs-settings.html) site, click **PROCESS**.
2.  On the left, select **Tasks**.
3.  Click **NEW TASK**.
4.  Enter the **Task Name**, **Task Category**, and **Assigned Group**.
5.  For **Task Type**, select **Consolidated Screening Check**.
6.  Click **CREATE TASK**.

#### Completing an OFAC consolidated screening results task

An OFAC consolidated screening check task will run as an automated task and only require user action if the customer's name has been found on the consolidated screening list or if the connection to OFAC failed. In the scenarios where user action is required, a task will be opened for the **Assigned Group** designated during [task creation](#creating-an-ofac-consolidated-screening-check-task).

When there are consolidated screening results or an error occurs, a **Consolidated Screening Results** OFAC task will appear on the task list.

**Caution:**  The Consolidated Screening List API is not the system of record for these screening lists. Users are strongly encouraged to refer to the website of the source agency for further instructions when finding a potential match.

To complete a **Consolidated Screening Results** task with results:

1.  From the task list, click on the task name.
2.  Check the box next to any results in the list that are relevant to the Investigation or customer.
    -   **Note:** The selected relevant results will available on the **OFAC Check Results** tab of the customer and Investigation records, after the task is completed.
    -   **Note:** The OFAC APIs return a maximum of 100 results per request. Only the first 100 most relevant results of a search will display.
3.  Click **SUBMIT**.

![OFAC_results.jpg](images/OFAC_results.jpg)

**Caution:**  If a party to a user's transaction matches the name of a party on the consolidated list, the user must check the official publication of restricted parties in the Federal Register or the official lists of restricted parties maintained on the websites of the Departments of Commerce, State and the Treasury to ensure full compliance with all of the terms and conditions of the restrictions placed on the parties on this list. Links to these websites are found in the "Source List URL" and "Source Information URL" fields that accompany each party returned in the API. These links connect users to the specific webpage that contain additional information about how to use each specific list.

#### Completing an OFAC Error Task

If there is an issue with the OFAC integration while a task is opened or assigned, the system will generate a Review OFAC-Consolidated Screening Errors task and assign it to the user who the original Consolidated Screening Check task was assigned to.

To complete a Review OFAC-Consolidated Screening Errors task:

1.  From the task list, click on the task name.
2.  Choose an option, either **Yes - Retry** or **No - Do not retry**.
    -   If you choose **Yes - Retry** and the connection issue has been resolved, the original OFAC task will be completed and if necessary a **Consolidated Screening Results** task will be opened. If it has not, a subsequent error task will be generated.
    -   If you choose **No - Do not retry**, the error task will be closed and any tasks dependent on the original OFAC task will be kicked off.
3.  Click **SUBMIT**.

![manual_ofac.jpg](images/manual_ofac.jpg)

#### Viewing Relevant OFAC Results

If while [completing an OFAC task](#completing-an-ofac-consolidated-screening-results-task) a user selects relevant results, these results will be available for all users to view on both the customer and Investigation records.

To view the relevant OFAC results from either the **CUSTOMER** or **Investigation** record, click the **OFAC CHECK RESULTS** tab. The selected results will be listed along with the details on this page.

![ofac_check_results_record.jpg](images/ofac_check_results_record.jpg)

#### Updating OFAC properties

From the **OFAC**, a user can determine whether or not the OFAC integration is connected. If OFAC is disconnected, a user will not be able to add consolidated screening report tasks to Investigation processes.

![ofac_properties.jpg](images/ofac_properties.jpg)

To update the OFAC properties:

1.  After accessing the [System Administration Center](#accessing-the-system-administration-center), click **Integrations**.
2.  On the left select, **OFAC**.
3.  Click **UPDATE PROPERTIES**.
4.  Update **Status**.
5.  Click **SAVE PROPERTIES**.

## Integrating with Dun & Bradstreet

Appian's Connected KYC application includes gathering Ultimate Beneficial Owners (UBO) from a Dun & Bradstreet integration. Using Dun & Bradstreet allows users to see the most up to date information about a customer's UBOs. Using Dun & Bradstreet is optional and requires some minimal configuration in the [System Administration Center](#accessing-the-system-administration-center) site after the Dun & Bradstreet prerequisite configuration is set up.

![dun_and_bradstreet_properties.jpg](images/dun_and_bradstreet_properties.jpg)

### Prerequisites

If you would like to use the Dun & Bradstreet functionality during your Investigation, you must have a Dun & Bradstreet account and be able to retrieve your organization's credentials.

Once you have your Dun & Bradstreet authentication information:

1.  From Appian Designer, open the `AS EI DNB Bearer Token Connected System`.
2.  Enter **User** and **Password**.
3.  Click **SAVE**.

### Using the Dun & Bradstreet integration

When a customer is created, a user can enter search for a customer, which will then pull back and store a company's DUNS number. A DUNS number is a unique nine-digit identifier for businesses given by Dun & Bradstreet. If a DUNS number is available and the Dun & Bradstreet integration is connected, Connected KYC will retrieve UBOs and display them on the customer profile.

A user can manually check for changes to the UBO in the customer profile by clicking the refresh button next to the **BENEFICIAL OWNERS** section.

![beneficial_owners.jpg](images/beneficial_owners.jpg)

The refresh button is disabled if the Dun & Bradstreet integration is disconnected or a DUNS number is not saved, but a user can search for the DUNS number using the **GET DUNS NUMBER** button on the customer record.

![get_duns.jpg](images/get_duns.jpg)

### Updating Dun & Bradstreet properties

From the **System Administration Center**, a user can determine whether or not the Dun & Bradstreet integration is connected. When Dun & Bradstreet is disconnected a user will not be able to use Dun & Bradstreet to gather or refresh the beneficial owners.

![update_db_prop.jpg](images/update_db_prop.jpg)

To update the Dun & Bradstreet properties:

1.  From the [System Administration Center](#accessing-the-system-administration-center), click **Integrations**.
2.  Select Dun & Bradstreet on the left hand navigation pane.
3.  Click **UPDATE PROPERTIES**.
4.  Update **Status**.
5.  Click **SAVE PROPERTIES**.

### Testing Dun & Bradstreet integration

If you suspect that the Dun & Bradstreet integration is not working, you can test to see from the **System Administration Center**.

To test the Dun & Bradstreet connection:

1.  From the [System Administration Center](#accessing-the-system-administration-center), click **Integrations**.
2.  Select Dun & Bradstreet on the left hand navigation pane.
3.  Click **TEST INTEGRATION**.
4.  Click **REQUEST ULTIMATE BENEFICIAL OWNERS**.
    -   You are able to see what is returned, either **Integration Successful** or **Integration Error**.
    -   You are also able to see the Dun & Bradstreet service response details.

![DB_test_integration.jpg](images/DB_test_integration.jpg)

If both of these tests work, the service is up and connecting properly.

## Integrating with IDP

Appian's Connected KYC application includes automated document classification powered by Appian's Intelligent Document Processing (IDP). This process is used to help save users time by automatically classifying the types of documents that are uploaded to Connected KYC. Using IDP is optional and requires some minimal configuration in both the Connected KYC Settings and [System Administration Center](#accessing-the-system-administration-center) sites after the prerequisites are complete.

![IDP_system_admin.jpg](images/IDP_system_admin.jpg)

### Prerequisites

In order to use this functionality as shipped, make sure that Google Cloud is set up.

#### Google Cloud set up for Appian AI customers

If you have opted in to being an Appian AI customer, contact your Appian technical contact administrator. The technical contact will have received the service account credentials, bucket names, and region information in the License Management site on Appian Community.

Your technical contact administrator is listed on the [Accounts](https://forum.appian.com/suite/sites/support/page/accounts/) page on Community, under Administrators. Note that you must be registered with your company on [Community](https://community.appian.com/support/w/kb/462/kb-1247-how-to-register-new-forum-community-users) to access this site.

#### Google Cloud set up for Non-Appian AI customers

If you have purchased Google Cloud separately, follow these steps to set up AutoML Natural Language and create your Google Service Account and key.

**Tip:**  AutoML Natural Language and Document AI can share Google service accounts (for authentication) and storage buckets (for prediction and extraction).

To set up Google Cloud AutoML Natural Language:

1.  **Create or select project:** As the Project Owner, log in to the [Google Cloud console](https://console.cloud.google.com/) and select an [existing project](https://console.cloud.google.com/projectselector2/home/dashboard) or [create a new project](https://cloud.google.com/resource-manager/docs/creating-managing-projects#creating_a_project).
2.  **Enable billing:** Ensure that [billing is enabled](https://cloud.google.com/billing/docs/how-to/modify-project) for your project.
3.  **Enable APIs:** [Enable](https://cloud.google.com/apis/docs/getting-started#enabling_apis) the `Cloud AutoML API`, `Google Cloud Storage JSON API`, and `Cloud Document AI API`.
4.  **Create storage buckets:** [Create Cloud Storage buckets](https://cloud.google.com/storage/docs/creating-buckets) that follow the [bucket requirements](https://cloud.google.com/storage/docs/creating-buckets) to store the AutoML Natural Language files:
    -   For us-central1:
        -   Location type: `Region`
        -   Location: `us-central1`
        -   Storage class: `Standard` (sometimes displayed in the Cloud Storage browser as Regional)
    -   For eu:
        -   Location type: `Multi-region`
        -   Location: `eu`
        -   Storage class: `Standard` (sometimes displayed in the Cloud Storage browser as Multi-Regional)

**Note:**  You may choose to have two buckets: one for the training documents and one for the prediction documents. Or, you can use the same storage bucket for both. If you use two buckets, then they must be in the same regional location.

To create your Google Service Account and key:

1.  Create a [Google Service Account](https://cloud.google.com/iam/docs/creating-managing-service-accounts) in the Google Cloud Console with AutoML Admin and Storage Admin permissions
2.  [Create the service account key](https://cloud.google.com/iam/docs/creating-managing-service-account-keys#creating_service_account_keys) and save the file as a JSON document.

#### Updating IDP specific constants

You will need update the constants to match your configuration from your Google Cloud set up.

Constants to update from Appian Designer are:

1.  `AS_FS_IDP_CLOUD_REGION` - value should be your Google Cloud region.
2.  `AS_FS_IDP_CLOUD_PROJECT_ID` - value should be your Google Cloud project ID.
3.  `AS_FS_IDP_AUTOML_CLOUD_BUCKET` - value should be your Google Cloud Auto ML bucket.
4.  `AS_FS_IDP_STORAGE_CLOUD_BUCKET` - value should be your Google Cloud storage bucket.

#### Updating the connected system (only EU storage buckets)

If your storage bucket is in the `eu` multi-region, you will need to update the compute region for two of the connected systems.

To update the connected systems:

1.  From **Appian Designer**, open the `AS FS IDP Google Cloud AutoML` connected system.
2.  Update the **Compute Region** to `eu`.
3.  Open the `AS FS IDP Google Cloud Storage` connected system.
4.  Update the **Compute Region** to one of the Europe regions. These region options start with `europe-`.

### Document classification with IDP process overview

When a user uploads a document in Connected KYC, the system:

1.  Checks if IDP is turned on.
2.  Determines if the document uploaded matches an uploaded example document.
3.  Assigns matching example document type to the uploaded document and determines **TYPE CONFIDENCE** level.
4.  If a **TYPE CONFIDENCE** level is below the **CONFIDENCE THRESHOLD**, a document reconciliation task is assigned to a user.
    -   **Note:** the **CONFIDENCE THRESHOLD** can be [changed](#updating-idp-properties).

If IDP is not turned on, users will need to manually select **DOCUMENT TYPE** for an uploaded document.

### Updating IDP Properties

There are several IDP properties users can update from the **System Administration Center** including:

1.  **Status:** Whether or not IDP is connected.
    -   **Note:** When IDP is disconnected a user will not be able to add classification files for document types.
2.  **Classification Confidence Threshold:** The percentage of confidence that the data must meet when it is extracted from a document. If it doesn't meet this threshold, the value will not be automatically populated. During the reconciliation task, a user will need to provide the value.
    -   **Tip**: As with the classification threshold, a higher confidence percentage will increase auto-extraction accuracy, but it will also increase the number of fields that need to be populated by the user.
    -   **Note:** This will only show when IDP is connected.
3.  **Documents for Retraining:** The number of documents that will need to be classified before triggering the retraining of the AI classification machine learning model. This enables the AI classification model to improve over time. A lower number allows the model to learn more quickly, but also increases the Google Cloud Platform costs. This could cause you to hit your Appian AI or Google account limits more quickly.
    -   **Note:** This will only show when IDP is connected.

![update_idp.jpg](images/update_idp.jpg)

To update the IDP properties:

1.  From the **System Administration Center**, click **Integrations**.
2.  Select **Intelligent Document Processing (IDP)** on the left hand navigation pane.
3.  Click **UPDATE PROPERTIES**
4.  Update either **Status**, **Classification Confidence Threshold:**, or **Documents for Retraining**.
5.  Click **SAVE PROPERTIES**.

Once your IDP properties are set, be sure to add classification files in the Connected KYC Settings site. If no classification files are updated, a **[Document Reconciliation](managing-tasks.html#complete-document-reconciliation-tasks)** task will be assigned for a user to manually select the **Document Type**.

## Integrating with Northrow

Appian's Connected KYC application includes the ability to display a customer risk score and show alerts generated by Northrow's customer profiles. Using Northrow is optional and requires some minimal configuration in both the [Connected KYC Settings](using-fs-settings.html) and [System Administration Center](#accessing-the-system-administration-center) sites after the Northrow prerequisite configuration is set up.

![northrow_system_admin_properties.jpg](images/northrow_system_admin_properties.jpg)

### Prerequisites

If you would like to use the Northrow functionality during your Investigation, you must have a Northrow account and be able to retrieve your organization's credentials and profile unique IDs (UIDs).

Once you have your Northrow authentication information:

1.  From Appian Designer, open the `AS EI NORTHROW Bearer Token Connected System`.
2.  Enter **Organisation UID** and **Access Key**.
3.  Click **SAVE**.
4.  Open the `AS_EI_NORTHROW_TXT_PROFILE_UID_COMPANY_CHECK_INTERNATIONAL` constant.
5.  Update the **Value** to your organizations international profile unique ID.
6.  Click **SAVE**.
7.  Open the `AS_EI_NORTHROW_TXT_PROFILE_UID_COMPANY_CHECK_UK` constant.
8.  Update the **Value** to your organizations UK profile unique ID.
9.  Click **SAVE**.

### Using the Northrow integration

When a customer is created, the Northrow integration is called using the company name and domicile to retrieve a company's risk score and any alerts about the customer. The risk score and alerts are displayed on the [customer](managing-customers.html) record.

When the Northrow company check is called, Northrow also provides a detailed risk score report. Once generated, the report is available for download from the **DOCUMENTS** tab of the customer record.

#### Using Northrow tasks

Northrow's company check can also be included as a task in Investigation process configuration.

The task type is called **Northrow Risk Score Check**. When the task is triggered, Connected KYC will make an integration call to Northrow and update the customer record automatically. If there is an error connecting to or retrieving the results from Northrow, a follow up task will be opened. The Northrow error tasks are by default assigned to the Client Investigation group.

To [complete](managing-tasks.html#complete-northrow-error-tasks) the **Northrow Risk Score Error** tasks, the user can choose to either retry the Northrow check or to skip the risk score check entirely.

To complete the **Northrow Risk Score Error** task:

1.  Select either **Yes - Retry** or **No - Do not retry**.
    -   Selecting **Yes - Retry** will attempt to retrieve the risk score data from Northrow again. If the integration fails again, another **Northrow Risk Score Error** task will be opened.
2.  Click **SUBMIT**.

![retry_northrow.jpg](images/retry_northrow.jpg)

#### Refreshing Northrow company check

Each customer can have their risk score refreshed automatically on a regular schedule or manually.

After a customer is created, a user can select whether or not to automatically refresh the Northrow company check.

To update the automatic Northrow check settings:

1.  From the **Related Actions** tab on the Investigation record, Click **Update Risk Score Settings**. ![update_risk_score_action.jpg](images/update_risk_score_action.jpg)
2.  Determine if you want the Northrow company check to refresh automatically.
3.  If the answer to the previous question is **YES**, decide if the refresh should be the default refresh scheduled for this customer.
4.  If the answer to the previous question is **NO**, determine the frequency of days that the refresh should take place on. ![update_risk_score_settings.jpg](images/update_risk_score_settings.jpg)

A user can manually check for changes to the risk score or alerts from the customer record by clicking the refresh button. The refresh button is not available if the Northrow integration is disconnected..

### Updating Northrow properties

There are several Northrow properties users can update from the **System Administration Center** including:

1.  **Status**: Whether or not Northrow is connected.
    -   **Note**: When Northrow is disconnected a user will not be able to use Northrow tasks in the Investigation process, have flags triggered by Northrow, or refresh the risk score.
2.  **Default Company Check Refresh Frequency (Days)**: Determines the frequency at which a Northrow company check will be executed when the frequency is not set explicitly for an individual customer. When blank, no default checks will be initiated.
3.  **Medium Risk Threshold**: The minimum risk score numerical value that will qualify a customer to be medium risk.
4.  **High Risk Threshold**: The minimum risk score numerical value that will qualify a customer to be high risk.

![update_northrow_properties.jpg](images/update_northrow_properties.jpg)

To update the Northrow properties:

1.  From the [System Administration Center](#accessing-the-system-administration-center), click **Integrations**.
2.  On the left, select **Northrow**.
3.  Click **UPDATE PROPERTIES**.
4.  Update either **Status**, **Default Company Check Refresh Frequency (Days)**, **Medium Risk Threshold**, or **High Risk Threshold** available.
5.  Click **SAVE PROPERTIES**.

### Testing the Northrow integration

If you suspect that the Northrow integration is not working, you can test to see if this integration is working from the **System Administration Center**.

To test the Northrow connection:

1.  After accessing the [System Administration Center](#accessing-the-system-administration-center), click **Integrations**.
2.  On the left, Select **Northrow**.
3.  Click **TEST INTEGRATION**.
4.  To check the connection to Northrow, click **CLICK TO REQUEST CHECK**.
    -   You are able to see what is returned either **Integration Successful** or **Integration Error**.
    -   You are also able to see the Northrow service response details.
5.  To check that the data retrieval is working, click **CLICK TO RETRIEVE CHECK**.
    -   You are able to see what is returned either **Integration Successful** or **Integration Error**.
    -   You are also able to see the Northrow service response details. ![test_northrow_integration.jpg](images/test_northrow_integration.jpg)

If both of these tests work, the service is up and connecting properly.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...