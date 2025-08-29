---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-setup-ai-chat-with-claims.html
original_path: cc-25.1.1.0/cc-setup-ai-chat-with-claims.html
version: "25.3"
title: "Setting Up AI Chat with Claims Module"
page_id: "cc-25.1.1.0/cc-setup-ai-chat-with-claims"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up AI Chat with Claims Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Introduction

After installing the [AI Chat with Claims](cc-install-ai-comment-summary.html) module, you need to set it up before using it with the Connected Claims Base application. This guide walks you through the incorporation steps.

### System Prerequisites

-   Appian platform running version 25.1 or greater with the Record Chat feature enabled.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Claims Base application version 1.0 or higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`
-   Imported AI Chat with Claims module application containers, including:
    -   `CCM Add On: Claim Chat AI (CCM_CCAI)`

## Add Record Chat display to Claim Summary

To incorporate the AI Chat with Claims module with your Connected Claims solution, you need to add the Record Chat display to the Claim Summary.

1.  Open the **CCM\_Claim\_RecordView\_Summary** interface.

    1.  In the interface expression and above the call to `rule!CCM_Claim_ClaimDetailsSummary` (around line ~230) , add the following call to `rule!CCM_CCAI_Claim_RecordChatDisplay`, as shown:

    ![cc_claim_recordview_summary_interface](images/cc_claim_recordview_summary_interface.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...