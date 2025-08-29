---
source_url: https://docs.appian.com/suite/help/25.3/user-copilot.html
original_path: user-copilot.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian AI Copilot for Business Users

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

With Appian AI Copilot, end users can:

-   [Ask questions about record data](#ask-questions-about-your-record-data) using natural language.
-   [Ask questions about their custom-built reports](#ask-questions-about-end-user-reports) or [your whole data catalog in Process HQ](#ask-questions-about-your-data-fabric) and get real-time answers with new insights.
-   [Quickly and easily create a process view](#quickly-create-a-relevant-process-view) in Process HQ.
-   [Find what you need faster with smart search](#smart-search) for record types.
-   [Easily access institutional knowledge](#enterprise-copilot) specific to your organization, rather than having to search and browse files themselves.

**Note:**  AI tools are primarily designed for language-based tasks, such as generating text, answering questions, or providing insights. While AI Copilot for data fabric can assist with obtaining numerical answers, other AI Copilot tools are not optimized for performing precise mathematical calculations or for scenarios that require numerical accuracy.

## Ask questions about your record data

The [Records Chat](Records_Chat_Component.html) and [Data Fabric Chatbot](Data-Fabric-Chatbot-Component.html) components, powered by AI Copilot, allow you to interact with records and their related data through a conversational AI chatbot. Add this input field to any interface and you can simply chat in your own words; there's no need to craft the perfect prompt. AI Copilot understands what you need. For example, if you use Appian for case management, you can use this component to synthesize case information, understand its history, and suggest or summarize next steps. And when [smart search](records-smart-search.html) is enabled, AI Copilot automatically applies semantic matching in Data Fabric Chatbot to understand the intent behind your questions, providing more relevant results than a keyword search alone.

Your inputs and chatbot outputs are all protected with private AI; no third-party integrations needed to get started.

[![images/automation/records-chat-2.png](images/automation/records-chat-2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img891)

[![](images/automation/records-chat-2.png)](#_)

## Ask questions about end user reports

[AI Copilot for reports](allow-users-to-build-reports.html#ai-copilot-for-reports) empowers any user to gain real-time insights about their data. When business users build reports with [data fabric insights](allow-users-to-build-reports.html), they can use AI Copilot to uncover new patterns, trends, or outliers in their data.

Users can ask questions about their reports using a familiar chat experience. To help them get started, AI Copilot provides a list of suggested questions to uncover potential areas of improvements and next steps. AI Copilot will then analyze the report data and provide users with immediate answers.

[![images/dfi-report-ai-copilot.png](images/dfi-report-ai-copilot.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img892)

[![](images/dfi-report-ai-copilot.png)](#_)

## Chat with your documents directly in your app

You can embed AI-driven assistance directly into your application, enabling real-time, context-aware conversations with your documents. The [Documents Chat](Documents_Chat_Component.html) component is your gateway to document-driven conversations directly within your application. Engage with curated document sets, ask intelligent questions, and uncover actionable insights in real time—no environment switching needed.

## Ask questions about your data fabric

Also available within Process HQ, [AI Copilot for data fabric](allow-users-to-build-reports.html#ai-copilot-for-data-fabric) lets users ask questions and get insights from all of the available datasets in the [Data Catalog](data-catalog-page.html). By querying multiple datasets, AI Copilot gives you more information about your enterprise data and helps you to make more informed decisions.

Users can ask their questions using natural language. Answers include details on how and where AI Copilot found the information in the data fabric, ensuring trust and accuracy.

[![images/ai-copilot-df.gif](images/ai-copilot-df.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img893)

[![](images/ai-copilot-df.gif)](#_)

## Quickly create a relevant process view

An important step towards exploring your enterprise data in Process HQ is to [create a view](process-views.html#create-a-view). But knowing which attributes, details, and filters to choose can be intimidating and time-consuming.

Using AI Copilot, you can create views more easily, spending less time configuring your process and more time exploring your data. AI Copilot uses what it knows about your process data to provide multiple suggestions for new views. As you explore each suggested view, you're able to edit the suggested attributes, process details, and filters.

## Find what you need faster with smart search

[Smart search](records-smart-search.html) transforms how you find records by using AI-powered semantic search to uncover connections, detect patterns, and surface related cases across thousands of records. Smart search understands your intent and returns better results because it's not just using keywords. With smart search, you can find what truly matters and act on it with confidence.

[![images/automation/smart-search-example.gif](images/automation/smart-search-example.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img894)

[![](images/automation/smart-search-example.gif)](#_)

## Easily access institutional knowledge with Enterprise Copilot

Your organization contains immense amounts of information. But what good is that information if no one knows where to find it? Essential information may be buried in long or complex documents. Basic search is only as effective as the terms or phrases a person uses to look for something.

Enterprise Copilot is a site within your Appian environment that provides a generative AI chat experience where users can ask questions about curated sets of information specific to your business. Enterprise Copilot administrators create a knowledge set to collect and house information relevant to a particular audience and topic. For example, you might create a knowledge set for HR policies and benefits information for each country you do business in.

Appian's private AI models index the files within each knowledge set to learn about the contents. After they're finished, these models can provide deeper, more specific answers to your users' questions all while protecting data within the files and conversations.

### Considerations

Keep the following considerations in mind when creating a knowledge set:

-   Only English documents and questions are supported at this time.
-   Files must be PDF (not scanned), HTML, DOC, DOCX, MD, or TXT. Enterprise copilot doesn't support scanned PDFs or image-based text. Use text-based PDFs for the best experience.
-   Each file must be 10MB or less.
-   In total, you can upload up to 100MB worth of files for each knowledge set.

**Tip:**  Prefer to chat with your documents directly in your app? You can embed AI-driven assistance directly into your application, enabling real-time, context-aware conversations with your documents. The [Documents Chat](Documents_Chat_Component.html) component is your gateway to document-driven conversations directly within your application.

### Access Enterprise Copilot

This feature is available for environments in [select regions](security-compliance.html).

If your Appian environment isn't in a supported region, you can elect to send your data to a supported region. This doesn't change your environment's region. Contact [Appian Support](https://forum.appian.com/) to learn more.

Ready to get started? Contact Appian Support to enable Enterprise Copilot. Or, if you want to learn more about how Enterprise Copilot can address the challenges unique to your organization, contact your account executive.

After Enterprise Copilot is enabled, system administrators are the only users who can access it. Learn more about [user roles and permissions in Enterprise Copilot](#roles-and-permissions).

### Explore Enterprise Copilot

The following image highlights the elements that make up Enterprise Copilot:

![Enterprise Copilot](images/enterprise_copilot/enterprise-copilot-tour.png)

|
#

 |

Element

 |

Available actions

 |

[Required role](#roles-and-permissions)

 |
| --- | --- | --- | --- |
|

1

 |

Knowledge sets

 |

Collections of files that house information relevant to a particular audience and topic. For example, you might create a knowledge set for HR policies and benefits information for each country you do business in.

 |

View a knowledge set:

-   Knowledge set viewer

[Create a knowledge set](#create-a-knowledge-set):

-   Enterprise Copilot Administrator
-   System administrator

 |
|

2

 |

Manage knowledge sets

 |

Administrators can [create new knowledge sets](#create-a-knowledge-set), [manage files within existing knowledge sets](#manage-files-within-a-knowledge-set), and delete knowledge sets.

 |

-   Knowledge set administrator
-   Enterprise Copilot Administrator
-   System administrator

 |
|

3

 |

Provide and view feedback

 |

Give feedback for your overall experience with Enterprise Copilot. And, if you're an administrator, review feedback users have submitted for specific chat responses or for all of Enterprise Copilot.

 |

Submit feedback:

-   Knowledge set viewer

View feedback:

-   Knowledge set administrator
-   Enterprise Copilot Administrator
-   System administrator

 |
|

4

 |

Chat history

 |

Review your previous conversations within the last 30 days. You can refer to any responses or citations previously provided.

 |

-   Knowledge set viewer
-   Knowledge set administrator
-   Enterprise Copilot Administrator
-   System administrator

 |
|

5

 |

New chat

 |

Start a new chat about the selected knowledge set. Choose this option whenever you switch between available knowledge sets.

 |

-   Knowledge set viewer
-   Knowledge set administrator
-   Enterprise Copilot Administrator
-   System administrator

 |
|

6

 |

Chat input

 |

Ask a question about the selected knowledge set.

 |

-   Knowledge set viewer
-   Knowledge set administrator
-   Enterprise Copilot Administrator
-   System administrator

 |

### Create a knowledge set

**Required role**: Enterprise Copilot administrator or System administrator

**Note:**  Create up to 20 knowledge sets in Enterprise Copilot.

Create and manage knowledge sets so each one contains relevant and related information. For example, you'll want to create separate knowledge sets for human resources policies, IT troubleshooting, marketing brand guidelines, and legal requirements.

To create a knowledge set:

1.  Select **Enterprise Copilot** in the navigation menu.
2.  Click **Manage Knowledge Sets**.
3.  Click **CREATE NEW KNOWLEDGE SET**.
4.  Give the knowledge set a **Name** and **Description**. Users will see the name and description for each knowledge set, so be sure to make these meaningful.
5.  Click **NEXT**.
6.  (Optional) Upload files to the knowledge set. If you choose to skip uploading files at this point, you can return or [assign a knowledge set administrator](#roles-and-permissions) to complete this step later. If you choose to upload files, keep these requirements in mind:
    -   Files must be PDF (not scanned), HTML, DOC, DOCX, MD, or TXT.
    -   In total, you can upload up to 100MB worth of files for each knowledge set.
    -   Each file must be 10MB or less.
7.  Click **NEXT**.
8.  Configure security for the knowledge set by selecting the **User or Group** and their corresponding **Permission Level**. We recommend [adding a knowledge set administrator](#roles-and-permissions) here to take over the maintenance of the knowledge set after you've created it.
9.  Click **CREATE**.
    -   If you uploaded files to the knowledge set during creation, the status appears as **IN PROGRESS** while it analyzes the files you uploaded.
    -   If you didn't upload any files to the knowledge set during creation, the status appears as **SAVED**.

**Tip:**  The model takes a few minutes to analyze any new or changed files in a knowledge set. Users might not get accurate or up-to-date results during this time.

#### Statuses

Knowledge sets and the files within knowledge sets have a status to indicate whether the model has analyzed the content and it's available to users:

-   **PUBLISHED**: The model has completed processing the file or knowledge set. Users can chat with published knowledge sets.
-   **ERRORED**: The model encountered an error when processing the knowledge set or file.
-   **SAVED**: The knowledge set has been created, but contains no files for the model to analyze.
-   **IN PROGRESS**: The model is analyzing the files you uploaded to the knowledge set.

### Manage files within a knowledge set

**Required role**: Knowledge set administrator, Enterprise Copilot administrator, or System administrator

It's important to regularly maintain the files within each knowledge set. As always, good data is the foundation of an AI model that performs well and provides useful outputs. If your knowledge sets contain inaccurate or outdated information, then the model will use that information to provide answers and potentially mislead your users.

To maintain files in a knowledge set:

1.  Select **Enterprise Copilot** in the navigation menu.
2.  Click **Manage Knowledge Sets**.
3.  Open the knowledge set you want to edit.
4.  Within the knowledge set, you can:
    -   **Delete files**: Select the checkbox next to the files you want to delete, and click **DELETE**.
    -   **Upload files**: Click **UPLOAD** to select files from your computer.
    -   **Configure security**: Open the overflow menu and click **Configure security**. You can add users or groups and grant them [permissions](#roles-and-permissions) for the knowledge set.
    -   **Delete the knowledge set**: Open the overflow menu and click **Delete knowledge set**. This action is permanent. Any conversations users have had with this knowledge set will also be deleted.
5.  When you're finished, the model automatically analyzes the most recent version of files within the knowledge set.

### What do users see?

Users interact with Enterprise Copilot in the same way they're used to interacting with any other AI-powered assistant. When a user opens Enterprise Copilot, they can choose which knowledge set to chat with or select the option to chat with all knowledge sets. Then, they type in a question. Enterprise Copilot returns information based on the files contained in that knowledge set(s). Responses also include citations, in case the user wants to access the file that the answer was based on. With citations, your users can have confidence in the answers they see.

Users start a new chat for each knowledge set they interact with. For example, if they need to ask a question regarding HR policies, they click **NEW CHAT** and select the HR knowledge set. If the same user has a question about the referral program at their company, they click **NEW CHAT** and select the recruiting knowledge set.

The **All Knowledge Sets** option lets users chat with all available knowledge sets at once, according to what they are permitted to see. This makes it easier for users to get help without needing to figure out which specific knowledge set to select before starting a chat. As you add more knowledge sets, the **All Knowledge Sets** option provides a handy entry point, ensuring users can effortlessly access the information they need.

[![images/EnterpriseCopilot.gif](images/EnterpriseCopilot.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img895)

[![](images/EnterpriseCopilot.gif)](#_)

A user starts a new chat with each knowledge set they interact with. For example, if they need to ask a question regarding HR policies, they click **NEW CHAT** and select the HR knowledge set. If the same user has a question about the referral program at their company, they will click **NEW CHAT** and select the recruiting knowledge set.

### Submit and review user feedback

The feedback tool makes it easy for users to share their opinions on specific chat responses or their overall experience with Enterprise Copilot. As an administrator, you can view all feedback in a centralized feedback dashboard, allowing you to monitor user sentiment, spot trends, and take appropriate action. User privacy is protected, and feedback is securely stored for internal use by Enterprise Copilot administrators only.

No setup is required; the feedback options are automatically ready for you to use.

#### Submitting feedback

Feedback can be submitted in two places.

-   To submit feedback for a specific chat response, click the thumbs up or thumbs down icon next to the chat response you want to provide feedback on. Then enter your comments in the text box that displays.
    ![enterprise-copilot-feedback-window.png](images/enterprise_copilot/enterprise-copilot-feedback-window.png)

-   To submit feedback for your overall experience with Enterprise Copilot, click the feedback button then enter your comments on the Provide Feedback tab.
    ![sitewide-feedback.png](images/enterprise_copilot/sitewide-feedback.png)

#### Reviewing feedback

Only administrators can review feedback. Once logged in, a feedback tab appears in the site navigation for authorized users. Selecting this button opens the feedback dashboard. Select the **VIEW FEEDBACK** tab, then click the **RESPONSE FEEDBACK** button to view feedback on specific chat responses, or click the **SITE WIDE FEEDBACK** button to see feedback on the overall experience.

[![images/enterprise_copilot/feedback-adminview.png](images/enterprise_copilot/feedback-adminview.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img896)

[![](images/enterprise_copilot/feedback-adminview.png)](#_)

### Roles and permissions

You can configure user roles when you create or edit a knowledge set. The role you assign to a user or group grants them permission to complete these actions:

**Enterprise Copilot administrators** are a [system group](System_Groups.html#enterprise-copilot-administrators). Add users to this group to grant them permissions.

**Knowledge set administrators** and **viewers** are assigned per knowledge set, so their actions pertain only to those knowledge sets where they've been granted permission. Administrators can assign users as knowledge set administrators or viewers when [managing knowledge sets](#manage-files-within-a-knowledge-set).

![assign-permissions.png](images/enterprise_copilot/assign-permissions.png)

| Actions | System administrators | Enterprise Copilot administrator | Knowledge set administrator | Knowledge set viewer | All other users |
| --- | --- | --- | --- | --- | --- |
| Access Enterprise Copilot in Navigation Menu | Yes | Yes | Yes | Yes | No |
| Access chat interface | Yes | Yes | Yes | Yes | No |
| Manage files within a knowledge set | Yes | Yes | Yes | No | No |
| Manage knowledge sets | Yes | Yes | Yes | No | No |
| Add knowledge sets | Yes | Yes | No | No | No |
| Manage knowledge set administrators | Yes | Yes | No | No | No |
| Review response feedback | Yes | Yes | Yes | No | No |
| Review site wide feedback | Yes | Yes | No | No | No |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...