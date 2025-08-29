---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/managing-integrations.html
original_path: cu-25.2.1.7/managing-integrations.html
version: "25.3"
title: "Manage Integrations"
page_id: "cu-25.2.1.7/managing-integrations"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Integrations

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The Connected Underwriting P&C solution provides the ability to integrate with the following applications:

-   [OFAC](#integrate-with-ofac)
-   [Microsoft PowerBI](#integrating-with-microsoft-powerbi)

## Integrate with OFAC

Verifying a customer's identity for a new submission is an important part of the underwriting process. Connected Underwriting P&C helps to automate part of this process by integrating with the [OFAC Consolidated Screening List API](https://api.trade.gov/apps/store/apis/info?name=ConsolidatedScreeningListAPI&version=v1&provider=dataservices@trade.gov) from Trade.gov. This is an optional integration that requires you to complete the OFAC prerequisites in Appian Designer. See [Prerequisites](#prerequisites) for more information.

This integration searches customer names against eleven export screening lists of the Departments of Commerce, State, and Treasury to help institutions screen potential parties to regulated transactions. After completing the prerequisites, you can use the integration to run sanctions checks in your Connected Underwriting P&C solution.

If you want to make additional changes to your OFAC integration, see [Modifying OFAC Integration](modifying-ofac-integration.html) for additional customization options.

### Prerequisites

The OFAC Consolidated Screening API is a free, public API. In order to use the service, your organization must generate access tokens. Simply, subscribe to the [Consolidated Screening List API](https://api.trade.gov/apps/store/ita#subcribing-to-an-api) to obtain an access token.

Once you have your OFAC authentication information:

1.  From the Connected Underwriting P&C site, select the **navigation menu > Appian Designer**.
2.  From the **ALL APPLICATIONS** list, select the**Insurance Underwriting (ISU)**.
3.  From the **OBJECT TYPE** list, select **Connected System** to filter the object list.
4.  Locate and open the `ISU Trade.Gov Consolidate Screening` connected system.
5.  In the **Value** field, enter the **Primary Key** value that was automatically generated for you in your ITA Developer account.
6.  Click **SAVE**.

### Use the OFAC integration

The OFAC integration uses the customer's name to search against the OFAC consolidated screening list. An OFAC check is completed with a **Run Sanction Check** task during review of submission.

**Caution:**  There can be a time lag of up to one hour between the time a Source has updated a screening list and when that update appears in the Consolidated Screening List API.

#### Complete a sanctions check task

A sanctions check task will be created automatically after a submission is created. The task will appear in the Tasks grid, which you can find on the related Submission record.

![cu_submissions_record_tasks_list](images/cu_submissions_record_tasks_list.png)

Once a user is assigned to a Submission, the sanctions check task will also be assigned to that user.

**Caution:**  The Consolidated Screening List API is not the system of record for these screening lists. Users are strongly encouraged to refer to the website of the source agency for further instructions when finding a potential match.

To resolve a **Run Sanction Check** task:

1.  From the **SUBMISSIONS** page, use **SEARCH** or filters to find and open the Submission record you want.
2.  From the **Tasks** list, click on the record action menu next to the task name to resolve the task.
3.  Verify that the customer name is accurate and select **Search**.
4.  Check the radio button associated with any results in the list that are relevant to the Submission or customer. In addition, check the radio button associated with any results in the list that aren’t relevant. You must mark all search results.
    -   **Note:** The selected relevant results will available on the **Sanction Results** tab of the customer and Submissions records, after the task is completed.
    -   **Note:** The OFAC APIs only allow paging through the first 1026 results per request. Only the first 1026 most relevant results of a search will be visible in the results grid.
5.  Click **SUBMIT**.
    -   **Note:** You can rerun a sanctions check on a Submission after the first task is complete.

If a party matches the party name on the consolidated list, the user must check the official publication of restricted parties in the Federal Register or the official lists of restricted parties maintained on the Departments of Commerce, State and the Treasury websites to ensure compliance with the restrictions terms and conditions placed on the parties.

Links to additional details for parties on Specially Designated Nationals and Blocked Persons list ("SDN List") and all other sanctions lists administered by OFAC can be found in the **Name** field. This includes any of the following sanctions lists:

-   The Foreign Sanctions Evaders List
-   The Non-SDN Iran Sanctions Act List
-   The Sectoral Sanctions Identifications List
-   The List of Foreign Financial Institutions Subject to Correspondent Account
    -   Payable-Through Account Sanctions
    -   The Non-SDN Palestinian Legislative Council List.

The **Source List** field that accompanies each party returned in the API also connects users to the specific webpage that contains additional information about how to use each specific list.

#### View Sanctions Results

If a user selects relevant results while [completing a sanctions check task](#complete-a-sanctions-check-task), these results will be available for all users to view on both the customer and Submission records.

To view the relevant results from either the **CUSTOMER** or **Submission** record, click the **Sanctions RESULTS** tab. The selected results will be listed along with the details on this page.

![ofac_check_results_record.png](images/ofac_check_results_record.png)

## Integrating with Microsoft PowerBI

Connected Underwriting P&C integrates with Microsoft PowerBI to allow you to easily embed coherent, visually immersive, and interactive insights and enterprise-grade, real-time analytics. Easily pull in historical claims information that relates to your submission records and other information from downstream processes like policy quotes, bound policy decisions, and new policy record information.

The PowerBI plug-ins on the [AppMarket](https://community.appian.com/b/appmarket/posts/microsoft-powerbi-component-plug-in) deliver a connected system to easily access some of the most commonly used APIs, as well as Components to PowerBI’s embedded dashboards, tiles, reports, QnA components, and the Report Builder.

### Prerequisites

-   A Microsoft PowerBI subscription or trial

### Using the Microsoft PowerBI integration

To use the Microsoft PowerBI plugin, you must configure the connected system first. By default, Connected Underwriting P&C includes a connected system for PowerBI authentication using Client Credentials Flow (App Owns Data).

For alternative authentication methods, install and configure the [Microsoft PowerBI Connected System Plugin](https://community.appian.com/b/appmarket/posts/microsoft-powerbi-connected-system-plugin) or the [Microsoft PowerBI Auth Code plugin](https://community.appian.com/b/appmarket/posts/microsoft-powerbi-auth-code) and update the `ISU_CS_POWER_BI` constant to point to this new connected System. In addition, `ISU_powerBiPortfolioReports` must be updated to set the `isAppDataConnectedSystem` parameter of `reportField` to _false_.

To configure the Client Credentials connected system:

1.  Complete Steps 1 through 4 of Microsoft’s procedure for [embedding PowerBi Reports with a service principal](https://learn.microsoft.com/en-us/power-bi/developer/embedded/embed-service-principal). At a high level this will involve the following tasks:
    -   Creating an Azure AD App and generating a client secret
        -   Take note of the secret value generated upon creating a client secret. This will not be available upon returning to this page, and it is necessary to provide to Appian later in the setup process.
    -   Create an Azure AD Security group and providing it access to your PowerBI workspace.
        -   Be sure to add your Azure App to the group created.
    -   Enabling embedding via service principles in PowerBI.
        -   This will require admin access rights to your PowerBI instance, which is distinct from Azure AD admin rights (needed for the previous steps).
2.  Navigate to **Appian Designer** and open the **ISU Power BI Client Credential Connected System** object provided in the Underwriting Application.
3.  Update the following values within the connected system using the appropriate values from Azure:
    -   **Client ID**: The application id for the Azure AD app created.
    -   **Client Secret**: The secret value generated when adding a client secret to the Azure AD app.
    -   **PowerBI Subscription ID**: The tenet id or directory id of your Azure instance. This can be found in the properties of the Azure AD app created or within the properties of of Azure Active Directory itself.
4.  Once updated, test connection and save the connected system.
5.  Update the following constants with the group and report ids desired to embed. These values can be found by opening the desired report within PowerBI directly (app.powerbi.com) and inspecting the URL. Report URLs are structured as https://app.powerbi.com/groups//reports//.
    -   `ISU_TXT_POWER_BI_GROUP_ID_PORTFOLIO_VIEW`: Set this to the value of in the report URL
    -   `ISU_TXT_POWER_BI_REPORT_ID_PORTFOLIO_VIEW`: Set this to the value of in the report URL.
6.  Verify the embedded connection by opening `ISU_powerBiPortfolioReports`.
    -   **Note:** If an embedded dashboard is desired instead of a report, update `ISU_powerBiPortfolioReports` to call **dashboardField()** instead of the existing **reportField()**. In addition, replace `ISU_TXT_POWER_BI_REPORT_ID_PORTFOLIO_VIEW` with a new constant for `DASHBOARD_ID`. The underlying connected system configuration will remain unchanged.

After you configure the connected system, you can use the Microsoft PowerBI plugin with your Connected Underwriting P&C to surface your customer and underwriting claims data and reports in the solution by navigating to **REPORTS > Portfolio View**.

**Caution:**  If `ISU_TXT_POWER_BI_GROUP_ID_PORTFOLIO_VIEW` is left null, you will not be able to view the [Portfolio View](viewing-reports.html#portfolio-view-tab) tab under [REPORTS](viewing-reports.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...