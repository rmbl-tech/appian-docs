---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-case-record-chat-setup.html
original_path: cl-24.3.1.2/cul-case-record-chat-setup.html
version: "25.3"
title: "Setting Up the Case Record Chat Module"
page_id: "cl-24.3.1.2/cul-case-record-chat-setup"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up the Case Record Chat Module

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

After [installing](cul-case-record-chat-install.html) the AI Chat With Case module, you need to set it up before using it with the Connected Underwriting (CU) Life Workbench Base application. This guide walks you through the required incorporation step.

## Expose Record Chat on the case summary

To set up the Case Record Chat add-on with CU Life Workbench you need to update the Case Summary interface to include the [Record Chat Component](../Records_Chat_Component.html).

To update the Case Summary interface:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **Connected Underwriting (ISL)** application.
4.  Search for and open the **ISL\_Case\_RecordView\_Summary** interface.
    1.  Add a `local!isRecordChatCollapsed` local variable with a parameter value of `true()`.
    2.  Add `ISL_CAIC_caseRecordChatCard` by creating a second pane inside the pane layout as shown:

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
        10
        11
        12
        13
        14
        15
        16
        17
        18
        19
        20
        21
        22
        23
        24
        25
         a!pane(
              contents: {
                a!horizontalLine(weight: "THIN"),
                a!cardLayout(
                  contents: rule!ISL_CAIC_caseRecordChatCard(
                    case: ri!case,
                    isRecordChatCollapsed: local!isRecordChatCollapsed,
                    brandingMap: local!brandingMap
                  ),
                  style: local!brandingMap.DefaultBackgroundColor,
                  showBorder: false()
                )
              },
              width: if(
                toboolean(local!isRecordChatCollapsed) = true(),
                "EXTRA_NARROW",
                if(
                  a!isPageWidth({ "DESKTOP", "DESKTOP_NARROW" }),
                  "MEDIUM",
                  "MEDIUM_PLUS"
                )
              ),
              backgroundColor: local!brandingMap.DefaultBackgroundColor,
              padding: "NONE"
            )
        ```

5.  Click **SAVE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...