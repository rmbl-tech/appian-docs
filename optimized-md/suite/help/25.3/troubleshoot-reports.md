---
source_url: https://docs.appian.com/suite/help/25.3/troubleshoot-reports.html
original_path: troubleshoot-reports.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Troubleshoot Data Fabric Insights

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [developers](processhq.html#-developers). It describes how to troubleshoot certain behavior in data fabric insights.

## Overview

As a developer, you may be asked to troubleshoot or explain certain aspects of data fabric insights to your users. Use this page to troubleshoot and address user questions.

## Unavailable datasets

There may be scenarios when a user is unable to access a dataset in the [Data Catalog](data-catalog-page.html) or in an existing report or dashboard.

There are a few reasons why a dataset may be unavailable:

|
Reason

 |

Business User Impact

 |

Troubleshooting

 |
| --- | --- | --- |
|

The record type failed to sync.

 |

Users cannot select the corresponding dataset, use the data in a report or dashboard, or view the data in a report or dashboard.

 |

Review the [status and history of syncs](monitoring_view.html#sync-history) associated with your record type to ensure your data is syncing successfully. See [troubleshooting data sync](Records_Monitoring_Details.html) for information on how to resolve sync issues.

 |
|

The user does not have access to view the record type.

 |

Users cannot see the record type as a dataset in the Data Catalog, or view or edit a report that uses the record data.

 |

[Review security on the record type](secure-records-for-reporting.html#review-security-on-record-types) to ensure users have the correct record type security, record-level security, and field-level security.

 |
|

The record type or a related record type is not configured to show as a dataset.

 |

Users cannot see the record type as a dataset in the Data Catalog or in any other datasets where the record type is configured as a related record type.

 |

[Show the record type and any related record types as datasets in the Data Catalog of Process HQ](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets).

 |

## Troubleshoot AI Copilot

If AI Copilot isn't available, ensure your environment meets the [security and compliance](security-compliance.html) requirements and that these features are enabled in the [Admin Console](Appian_Administration_Console.html#process-hq).

If AI Copilot doesn't appear in the data catalog, it may be because:

-   Your environment doesn't have the appropriate license. Contact your administrator.
-   More than 250 records types are configured to [display as datasets in the data catalog](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets). Configure between 1 and 250 records types to display in the Data Catalog.

If AI Copilot cannot analyze a report, it may be because:

-   The report does not contain any aggregated data. Users must either group data or apply a calculation (like sum, count, or average) to aggregate data for analysis.
-   The report is too large. Users should remove fields or apply a filter to reduce the number of rows.
-   The user has exceeded the [token limit](troubleshoot-reports.html#sessions-and-token-limits). This will require the user to start a new conversation.

If AI Copilot cannot answer a question in the data catalog, it may be because:

-   The service that powers AI Copilot is down or experiencing high usage. Users should wait and try again later.
-   Questions are too vague. Users should be more specific about their questions so AI Copilot can query the appropriate datasets.
-   AI Copilot doesn't recognize usernames in the configured format. Contact Appian Support to request an update to your site's properties to use a different format.
-   The user has exceeded the [token limit](troubleshoot-reports.html#sessions-and-token-limits). This will require the user to start a new conversation.

**Note:**  To make AI Copilot available in the data catalog of data fabric insights, configure 1-250 record types to [display as a dataset in the data catalog](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets). Keep in mind, as you add more record types, performance and accuracy might drop. If that happens, try reducing the number of record types for better results.

AI Copilot will not be available if there are more than 250 record types configured to display in the data catalog.

### Sessions and token limits

A session is a conversation between a user and AI Copilot. During a session, a user can ask AI Copilot questions about their data. At some point, a user may receive a message from AI Copilot indicating that the conversation has reached its limit. This occurs when the user exceeds the [token limit](Appian_Administration_Console.html#what-is-a-token-limit) on a given session.

If a user hits the limit, they will need to start a new session to continue asking questions. Users will either be prompted to start a new session, or they can click **Restart your conversation with AI Copilot** in their report or **Clear conversation** in the data catalog to manually start a new session.

AI Copilot won't remember questions from a previous session. If a user starts a new session, AI Copilot won't have any context about the previous conversation. This means AI Copilot won't have answers to follow-up questions from a previous session. Users will need to provide AI Copilot with the necessary context at the beginning of each session.

Learn more about [AI Copilot](appian-ai-copilot.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...