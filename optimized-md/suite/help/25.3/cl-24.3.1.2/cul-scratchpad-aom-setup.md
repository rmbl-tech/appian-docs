---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-scratchpad-aom-setup.html
original_path: cl-24.3.1.2/cul-scratchpad-aom-setup.html
version: "25.3"
title: "Setting Up the Scratchpad add-on module"
page_id: "cl-24.3.1.2/cul-scratchpad-aom-setup"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up the Scratchpad add-on module

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

Now that you have installed the Scratchpad add-on module, you must incorporate the application with your CU Life Workbench in order to utilize it. This guide walks you through the setup steps.

## Incorporation with CU Life

The following incorporation steps are required to display and utilize Scratchpad on the Risk Details tab of the Case Record in your CU Life Workbench.

### Display Scratchpad on Risk Details

1.  In the target environment, log in.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **Insurance Life Underwriting (ISL)** application.
4.  Navigate to the **ISL\_RecordView\_RiskDetails** process model add the following code after the column that contains Risk Details Cards.

    ```
    1
    2
    3
    4
    5
    6
    7
    8
    9
    a!columnLayout(
             contents: {
               rule!ISL_SCP_CaseScratchpad_ViewAndEdit(
                 case: ri!case,
                 genBundle: local!genBundle,
                 brandingMap: local!brandingMap
               )
             }
           )
    ```

5.  Save your changes.

### Display Scratchpad on other Case Record tabs

The incorporation steps in this section are optional. If you want to display and utilize Scratchpad on other tabs in the Case Record, perform these steps to expose the Scratchpad component to the relevant interface.

1.  Log in to the target environment.
2.  Navigate to the relevant **ISL\_Case\_RecordView** interface where you want to add Scratchpad.
3.  Add the following code to expose the Scratchpad component to the desired interface.

    ```
    1
    2
    3
    4
    5
       rule!ISL_SCP_CaseScratchpad_ViewAndEdit(
                    case: ri!case,
                    genBundle: local!genBundle,
                    brandingMap: local!brandingMap
                  )
    ```

4.  Save your changes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...