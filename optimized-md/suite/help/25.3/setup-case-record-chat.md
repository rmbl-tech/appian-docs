---
source_url: https://docs.appian.com/suite/help/25.3/setup-case-record-chat.html
original_path: setup-case-record-chat.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setup the Case Record Chat Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

After [installing](installing-case-record-chat.html) the Case Record Chat module, you need to incorporate it with Case Management Studio. This page walks you through the recommended incorporation steps.

## Incorporate Record Chat

To incorporate Record Chat with Case Management Studio, you need to add it to the Case Summary by performing the following steps:

1.  In **Appian Designer**, navigate to the **CMGT Case Management Studio Base** application.
2.  Search for **CMGT\_Case\_RecordView\_Summary** interface.
3.  In the **Expression Editor**, find the columnLayout with the **CMGT\_Case\_CaseDetailsSummary** expression rule.
4.  Above **CMGT\_Case\_CaseDetailsSummary**, add the **CMGT\_SS\_AI\_AppianSmartSuggestionsWrapper\_Display** interface.
5.  In the contents parameter of **CMGT\_SS\_AI\_AppianSmartSuggestionsWrapper\_Display** call the **CMGT\_RC\_AI\_RecordChatCases\_Display** interface and pass in the the `case` parameter.

    ![cms_chat_with_case_record_incorporation](images/cms_chat_with_case_record_incorporation.png)

## Optional setup steps

The setup steps in this section are optional, allowing you to adjust the prompt for Case Record Chat prompt to return responses that adhere to your content requirements and apply any custom fields you added to the Case Management Studio base records to your Case Record Chat component.

### Add additional instructions to the chat prompt

The [Records Chat component](Records_Chat_Component.html) has an `additional instructions` parameter that receives optional instructions that ask the AI model to return output specific to your business's preferred format, logic, or other requirements.

We’ve included these additional instructions in the `CMGT_RC_AI_PromptForAdditionalInstructions` expression rule. This optional setup step allows you to modify the expression rule to best meet your specific use case and requirements.

### Add more fields to Record Chat

If you add new fields via customization to the Case Management Studio base records, including case, tasks, or comments, you can add them in `CMGT_RC_AI_chooseRecordChatParameters` expression rule.

To add new fields for chat, simply follow the pattern that is already available in the `CMGT_RC_AI_chooseRecordChatParameters` expression rule.

## Next step

Now that you have set up the [Case Record Chat](cm-case-record-chat-overview.html) module, you can engage with an AI chatbot to gain additional insights on a case.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...