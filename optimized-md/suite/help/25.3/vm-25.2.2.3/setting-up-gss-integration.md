---
source_url: https://docs.appian.com/suite/help/25.3/vm-25.2.2.3/setting-up-gss-integration.html
original_path: vm-25.2.2.3/setting-up-gss-integration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting up GSS Integration

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

The integration between Vendor Management (VM) and [Government Source Selection](../gss-25.2.2.4/gss-appian-government-source-selection.html) (GSS) connects the two solutions, providing contracting personnel, evaluators, and vendors with more visibility into the entire solicitation process. This integration enables seamless data exchange between the two solutions and helps interoperability. When this integration is enabled, contracting officers can see evaluation information directly in their VM environment.

**Caution:**  To use the GSS integration, you must toggle the `AS_VM_BOL_SOURCE_SELECTION_INTEGRATION_TOGGLE` constant value to `true` in Designer. Appian recommends keeping the **State and Local Government Toggle** values the same in both solutions. Go to [Enable or disable State and Local Government Toggle](sol-custom-suite-user-guide.html#business-logic) to learn more about enabling or disabling the SLG toggle.

### System Requirements

This section details the minimum requirements your system must meet to set up the GSS integration.

-   Appian version 25.1 or greater
-   Vendor Management 2.0.0 or greater
-   Government Source Selection 2.2.0 or greater

## Set up Government Source Selection integration

To utilize this integration, you need to generate an API Key in the same environment you imported your GSS application. Please note that if your GSS and VM applications were imported into the same environment, you still need to generate an API key.

1.  In the target environment, sign in as the system admin user.
2.  Navigate to the **Admin Console** and select **Web API Authentication**.
3.  From the **API Key** tab, click **CREATE**.

    ![vm_gss_integration_setup_createapi.png](images/vm_gss_integration_setup_createapi.png)

4.  In the **Description** field, add a unique description for the API key.
5.  Click next to the **Service Account** field to create a new service account.
6.  Enter `gssvmintegration` in the **Username** field.

    ![vm_gss_integration_setup_createservice.png](images/vm_gss_integration_setup_createservice.png)

7.  In the **Groups** field, enter `AS GSS Service Accounts for VM Access` to add it to the appropriate group.
8.  Click **CREATE** to apply the new service account to the API key.
9.  Click **CREATE** to create the new API key and copy and save it to use in the next section.
10.  Navigate to the environment where the Vendor Management application was imported.
11.  Go to **Appian Designer** > **Applications** and select `AS VM Full Application`.
12.  Under **Object Type**, select **Connected System**.
13.  Select `AS VM CS Source Selection`.
14.  Find the **Value** field and click the **Clear** link next to it.
15.  Paste the API key you saved in **step 9** in the cleared **Value** field.
16.  In the **Base URL** field, enter the URL of the environment where Government Source Selection was imported in the following format: https://sample-url.com/suite/webapi/.
17.  Click **SAVE**.

     ![vm_gss_integration_setup_systemproperties.png](images/vm_gss_integration_setup_systemproperties.png)

18.  Set up [VM integration in GSS](../gss-25.2.2.4/gss-setting-up-vm.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...