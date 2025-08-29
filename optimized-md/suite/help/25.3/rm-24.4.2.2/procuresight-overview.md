---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/procuresight-overview.html
original_path: rm-24.4.2.2/procuresight-overview.html
version: "25.3"
title: "ProcureSight Overview"
page_id: "rm-24.4.2.2/procuresight-overview"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# ProcureSight Overview

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Requirements Management, which must be purchased separately from the Appian base platform. This content was written for Appian 24.4 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The service that your organization uses for searching past procurements, maintaining research for one or more procurement collections, identifying vendors who provide the required products and services, and learning about critical past procurement evaluations either speeds up or slows down your procurement process.

Suppose you need to know which requirements were included in the statement of work documents for past ground maintenance services purchases, the vendors offering these services, and the completion timeline of contracts associated with these purchases. Current public data services run by the government, such as [SAM.gov](https://www.SAM.gov), [USASpending.gov](https://www.usaspending.gov), and agencies' legacy procurement systems, provide subpar search interfaces and results. Even when data is discovered, it frequently lacks the necessary completeness and contextual information to make it truly valuable, resulting in an unnecessarily inefficient and frustrating procurement process; this is because the current structure uses a data warehouse model of accumulating years of data but does not provide users with effective searching capabilities.

You need a tool that can help you find this information quickly, allowing you to write better statements of work and performance work statements and improving your ability to categorize purchases, evaluate proposals, and research and evaluate vendors. The right data service can do all this and more, driving better outcomes, saving time, and reducing costs.

**_What if you could quickly and efficiently find past procurements to help you accelerate your new purchase?_**

[ProcureSight](https://procuresight.com), a standalone data service integrated into RM, leverages Appian AI, data fabric, and semantic search to allow your organization to efficiently search, retrieve, and process public procurement data sets from sources like [USASpending.gov](https://www.usaspending.gov) and [SAM.gov](https://www.SAM.gov). It is designed for US Federal government procurement employees, including:

-   Contracting Manager
-   Contracting Officer
-   Contract Specialist
-   Contracting Officer Representative
-   Agency Purchasers
-   Program office users

Using ProcureSight in RM, search past procurements to speed up your procurement process. Once the data is retrieved, ProcureSight organizes and centralizes the data into readable and actionable records displayed in one unified view, giving users access to prior solicitations and awards to find and reuse previous contracts, identify best vendors for particular goods and services, and create solicitations that are compliant with strict regulations required for government procurement.

![ProcureSight: unified view of procurement search results for 'Professional services' with filters.](images/ps_search_results.png)

By combining the best public data sets with an intuitive search tool, ProcureSight helps you quickly and efficiently capture existing procurement information to accelerate your procurement processes, including:

-   Gaining powerful insights into past contracts with our enhanced data integration of multiple public data sets into one.
-   Creating and managing collections of past procurements to swiftly access information on procurement timelines, average contract values, small business awards, competition types, best-in-class vehicle usage, and specific vendors selected.
-   Creating new draft documents based on the documents found in the searches and identified by users as being relevant to their needs.

This guide outlines the use case for ProcureSight, including its benefits and how it helps streamline your procurement processes.

## A research and discovery use case

In today's digitally connected world, organizations rely increasingly on efficient data collection services to streamline their procurement processes. For example, Acme Agency, a government agency, needs to find a new contractor to handle their ground maintenance. With ProcureSight, the contracting manager logs in to the service and performs a search on ground maintenance.

![ProcureSight search screen with a search query.](images/a_research_and_discovery_use_case.png)

Within seconds, ProcureSight returns the results of all created and completed ground maintenance solicitations from other agencies for the past five years. In addition, ProcureSight shows the associated awards for these solicitations in a centralized view, giving users a quick synopsis of results, including a similarity percentage. All related documentation for the solicitation is attached to the search result.

![ProcureSight search interface, showing search field and previously searched terms.](images/a_research_and_discovery_use_case_2.png)

The contracting manager scans the search results and finds a solicitation with the SOW and RFI documents attached in PDF format. He opens the solicitation to engage with AI Copilot to gain insights about specific procurement requirements, evaluation criteria, and other important details within the attached PDFs. Within a few minutes of finding several solicitations that matched his needs, the contracting manager created a collection of results to prepare for future procurements and exported them to save as evidence of market research to share with his director.

![ProcureSight: Add to Collection dialog with collection list and search.](images/a_research_and_discovery_use_case_3.png)

## What does ProcureSight in RM offer?

Now that you understand the use case for ProcureSight, let us discuss the key benefits of integrating it into the RM solution.

Requirements Management users with an agency-wide subscription to ProcureSight [Enterprise](https://docs.appian.com/suite/help/25.2/pspd-25.2.1.1/procuresight-enterprise-landing-page.html) or [Plus](https://docs.appian.com/suite/help/25.3/procuresight-plus-landing-page.html) benefit from seamless integration, directly embedding ProcureSight into the RM solution. This integration provides users full access to ProcureSight without needing separate sign-ins.

### Seamless data collection and integration

ProcureSight search results include more than just SAM opportunities. By incorporating information about contracts issued, ProcureSight eliminates the need for users to search multiple sites to find related award data. The goal of the service is to allow users to search generated records to find the complete historical procurement data they need to create new procurements and any required documentation. Users use this data to generate market reports that speed decision-making in their procurement process and provide timely notifications via emails and alerts.

![ProcureSight: Unified view of a procurement record, showing summary and documents.](images/ps_seamless_data_collection_and_integration.png)

### Semantic search technology

A search on SAM.gov often yields results that are completely unrelated to the procurement at hand. Users resort to tweaking search terms, hoping to find even a handful of relevant procurements. ProcureSight leverages semantic search technology that transforms this experience by promptly returning numerous results closely aligned with the original search, even when expressed differently. The semantic similarity ensures automatic relevance, marking a distinctive shift in user engagement with our more sophisticated solution.

![ProcureSight: Search for Procurement page for public data.](images/semantic_search_technology.png)

#### Search procurements

To search and filter procurement data from public sources:

1.  Click the **PROCURESIGHT** dropdown and select the **SEARCH PROCUREMENTS** option to navigate to the **Search for Procurement** page.
2.  Enter the procurement keywords in the search bar.
3.  Click **SEARCH** to list the procurement search results.
4.  Filter the procurements’ list:
    1.  Select the **Agency** and **Procurement** **Type** using the dropdowns.
    2.  Check the **Has Related Awards** checkbox to list only awarded procurements.
    3.  Check the **Has Attached Documents** checkbox to list only procurements with attachments.
    4.  Check the **Fiscal Year** checkbox options to list procurements from the specified fiscal years.
    5.  Set the **Posted** date range using the date pickers to list procurements from the specified dates.
    6.  Enter the **Award Amount** to list procurements within the entered award amount range.
    7.  Select the Similarity: High to Low radio button to sort procurements by matching search keywords.
    8.  Select the **Posted date: Most Recent First** radio button to sort procurements by the latest date.

#### Add procurements to collection

To add a procurement to a [collection](procuresight-overview.html#collections):

1.  Click the **PROCURESIGHT** dropdown and select the **SEARCH PROCUREMENTS** option to navigate to the **Search for Procurement** page.
2.  Enter the procurement keywords in the search bar.
3.  Click **SEARCH** to list the procurement search results.
4.  Click Vertical Ellipsis icon on a procurement and select **Add to Collection** to open the **Add to Collection** wizard.
5.  Check the collection checkbox(es) and click **ADD** to add the procurement to the selected collection(s).

![ProcureSight: Context menu to add procurement to collection or save to requirement.](images/add_procurement_to_collection.png)

#### Save procurements to requirement

To save a procurement to a requirement:

1.  Click the **PROCURESIGHT** dropdown and select the **SEARCH PROCUREMENTS** option to navigate to the **Search for Procurement** page.
2.  Enter the procurement keywords in the search bar.
3.  Click **SEARCH** to list the procurement search results.
4.  Click Vertical Ellipsis icon on a procurement and select **Save to Requirement** to open the **Save to Requirement** wizard.
5.  Check the requirement checkbox(es) and click **SAVE** to add the procurement to the selected requirement(s).

### Chat with documents

SAM opportunities contain a wealth of unstructured data, including solicitation documents, statements of work, requests for information, and performance work statements. Reading through these documents to find specific details needed to aid your procurement process is like searching for a needle in a haystack. ProcureSight includes an AI Copilot integration that allows users to engage with an AI chatbot to gain insights into PDF documents attached to a search result. The chatbot acts as a knowledge assistant, allowing users to obtain the critical procurement information they need without the cost of reading lengthy documents.

To chat with a document:

1.  Click the **PROCURESIGHT** dropdown and select the **SEARCH PROCUREMENTS** option to navigate to the **Search for Procurement** page.
2.  Enter the procurement keywords in the search bar.
3.  Click **SEARCH** to list the procurement search results.
4.  Click a procurement to navigate to its **SUMMARY** tab.
5.  Click **Chat with Document** to initiate the chat about the document.

![Procurement summary tab with documents and AI chat options.](images/chat_with_documents.png)

You can also initiate the chat, view the list of procurement documents, and preview each document using the DOCUMENTS tab.

![ProcureSight AI Copilot with a procurement document for quick insights.](images/chat_with_documents_2.png)

### Collections

Procurement teams often lack the time to manually connect and analyze data from multiple procurements to identify common patterns, trends, and insights. ProcureSight’s Collections feature solves this problem by providing a way for users to group similar or related procurements to extract valuable insights or store them for future use. With Collections, users can swiftly access information on procurement timelines, average contract values, small business awards, competition types, best-in-class vehicle usage, and specific vendors selected.

![ProcureSight Collections screen showing named procurement groups and details.](images/collections.png)

#### View collections

To view procurement collections:

1.  Click the **PROCURESIGHT** dropdown and select the **PROCUREMENT COLLECTIONS** option to navigate to the **Collections** page.
2.  Enter the collection keywords in the search bar.
3.  Click **SEARCH** to list the collection search results.

#### Add collections

To add procurement collections:

1.  Click the **PROCURESIGHT** dropdown and select the **PROCUREMENT COLLECTIONS** option to navigate to the **Collections** page.
2.  Click **+ADD** to open the **Create Collection** wizard.
3.  Enter a collection **Name** of your choice.
4.  Enter a **Description** of the collection.
5.  Click **CREATE** to add the collection.

#### Update collections

As new procurements and documents are added to ProcureSight's data sets, users can refine their search results at any point and add the results to an existing collection.

To update procurement collections:

1.  Click the **PROCURESIGHT** dropdown and select the **PROCUREMENT COLLECTIONS** option to navigate to the **Collections** page.
2.  Click Vertical Ellipsis icon on a collection and select **Update Collection** to open the **Update Collection** wizard.
3.  Update the collection **Name** of your choice.
4.  Update the **Description** of the collection.
5.  Click **UPDATE** to update the collection.

#### Delete collections

1.  Click the **PROCURESIGHT** dropdown and select the **PROCUREMENT COLLECTIONS** option to navigate to the **Collections** page.
2.  Click Vertical Ellipsis icon on a collection and select **Delete Collection** to open the **Delete Collection** wizard.
3.  Click **DELETE** to delete the collection.

    **Caution:**  Deleting a collection deletes all search results and insights associated with the collection. This action is irreversible.

## Get started now

Ready to get started? Check out the [Setting up ProcureSight Integration](setting-up-procuresight.html) to configure the ProcureSight integration for your Requirements Management solution.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...