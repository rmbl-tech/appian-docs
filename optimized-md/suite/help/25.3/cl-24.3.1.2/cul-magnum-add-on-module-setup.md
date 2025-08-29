---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-magnum-add-on-module-setup.html
original_path: cl-24.3.1.2/cul-magnum-add-on-module-setup.html
version: "25.3"
title: "Setting Up Magnum Pure with CU Life"
page_id: "cl-24.3.1.2/cul-magnum-add-on-module-setup"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up Magnum Pure with CU Life

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting Life, which must be purchased separately from the Appian base platform. This content was written for Appian 24.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

After installing the Swiss Re Magnum Pure add-on module, you need to set it up before using it with your CU Life Workbench. This guide walks you through the required incorporation steps to utilize the Magnum Pure integration with your CU Life Workbench.

## Get and display parent Magnum decision on a case

1.  In the target environment, log in.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **Insurance Life Underwriting (ISL)** application.
4.  Navigate to the **ISL\_Case\_Create** process model.
    -   Add a new synchronous subprocess node to the end of the process, setting the process to be run as **ISL\_MGD\_CaseMagnumDecision\_GetAndStore.**
    -   Set the sole **caseMagnumDecision** process variable by calling the rule **ISL\_MGD\_CaseMagnumDecision\_Initialize** and passing in `pv!case` for the case rule input.
5.  Open the **ISL\_Case\_GeneralInformationSummary** interface and add the following code to the end of the array of columns in the `a!columnsLayout()`.

    ```
    1
    2
    3
    4
    5
    6
    7
    /*Magnum Decision*/
            rule!ISL_MGD_CaseMagnumDecision_DisplaySummaryColumn(
              case: ri!case,
              genBundle: ri!genBundle,
              brandingMap: ri!brandingMap
            )

    ```

6.  Save your changes.

### Display full Magnum decision on case

Perform the steps in this section to display Magnum Decision on the case record.

1.  Log in to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **Insurance Life Underwriting (ISL)** application.
4.  Open the record object **ISL\_Case** and navigate to **Views** tab under **Interfaces**.
5.  Click on **Add New View Manually**, set the following inputs, and save.
    -   **View Name**:

        ```
        1
        2
         rule!ISL_UTILG_GetAndDisplayLabel(
         key:"Case.MGD.RecordView.lbl.MagnumDecision")
        ```

    -   **Interface**:

        ```
        1
        2
        rule!ISL_MGD_Case_RecordView_MagnumDecision(
        case: rv!record)
        ```

6.  Navigate to the **Views and Actions Security** tab of the **ISL\_Case** record and edit the security rule for the **Magnum Decision** view.
7.  Configure the rule to display only when `caseExternalPointer.externalPointerTypeId = cons!ISL_MGD_REFID_EXTERNAL_POINTER_TYPE_MAGNUM \` and `caseExternalPointer.externalPointer` is not _null_.
8.  Open the **ISL\_MGD\_TXT\_URL\_STUB\_MAGNUM\_DECISION\_VIEW** constant and update the value to match the URL stub of the record view created in **step 5**.
9.  Save your changes.

### Display Magnum Decision on the Update Decision form

Perform the steps in this section to display Magnum Decision on the Update Decision form.

1.  Log in to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **Insurance Life Underwriting (ISL)** application.
4.  Navigate to **ISL\_Case\_RecordAction\_UpdateDecision** interface.
5.  Navigate to the read-only **Case Information** section of the **Update Decision** interface.
6.  Below the **Face Amount** field, add the following code to the end of `rule!ISL_UTILG_currencyField`:

    ```
    1
    2
    3
    4
    5
       rule!ISL_MGD_Case_UpdateDecisionMagnumDecisionDisplay(
       case: ri!case,
       genBundle: local!genBundle,
       brandingMap: local!brandingMap
       )
    ```

7.  Save your changes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...