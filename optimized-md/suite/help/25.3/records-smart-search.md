---
source_url: https://docs.appian.com/suite/help/25.3/records-smart-search.html
original_path: records-smart-search.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

 [Give feedback on this page. We'd love to hear your thoughts!](https://docs.google.com/forms/d/e/1FAIpQLScgPeUOPzAMIyIltQ5oj0ihnl1OZEvIwzXmT6MWla-mo66NHg/viewform?usp=header)

# Configure Smart Search

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

5 Ways to Use Smart Search in Appian

Discover how smart search can transform how you find information within your Appian applications by enabling powerful, semantic search capabilities.

## Overview

Smart search transforms how you find records in a synced [record type](Record_Type_Object.html) by using AI-powered semantic search to uncover connections, detect patterns, and surface related records across thousands of records. Smart search understands your intent and returns better results because it's not just using keywords.

After you [enable smart search](#enable-smart-search) on your synced record type, you can [add smart search](#add-smart-search) to any [query in your data fabric](reference-records.html) by using the _search_ operator in the [a!queryFilter](fnc_system_a_queryfilter.html) function combined with the [a!queryRecordType](fnc_system_queryrecordtype.html) function. This includes queries used in [read-only grids](Paging_Grid_Component.html#using-smart-search). This allows you to apply smart search directly to your record type and start finding the information that matters most.

[![images/automation/smart-search-example.gif](images/automation/smart-search-example.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img561)

[![](images/automation/smart-search-example.gif)](#_)

## What is smart search?

Smart search is an AI-powered way to find information in a [record type](Record_Type_Object.html). Instead of just looking for exact matches to the words you type, it understands the meaning behind your search. This means it understands what you're really looking for, not just the words you used.

For example, if you search for "electricity outage," smart search might also show results that mention "power failure" or "electricity is down." When combined with filters, smart search makes it easier to uncover connections, detect patterns, and find the information that truly matters to you.

Here's what makes smart search so powerful:

-   **Uncovers hidden connections**: Smart search identifies records even when different terminology is used; for example, "overdue bill" or "pending payment."
-   **Investigate patterns**: Smart search can help you recognize trends across records, such as similar cases logged at the same time by different users.
-   **Searches across text**: You can use smart search on text and document type fields. For example, smart search helps you locate the exact records you need, whether the information is in detailed titles or extended descriptions.
-   **Find what you need faster**: Smart search uses [similarity scores](#similarity-score) to automatically prioritize your search results. Higher scores show closer matches, helping you quickly locate the most relevant information. For best results, sort by similarity score in descending order to surface the best matches first.
-   **Accelerate your workflows**: Smart search highlights the most closely related records, making it easier to detect duplicates, related cases, and recurring patterns. These insights help you act faster, whether you are merging duplicate entries or resolving high-priority issues with the help of AI-driven smart search and AI skills.
-   **Integrate into data-driven processes**: Use additional AI features to make smart search even more powerful. Using one or two records as an example of what information you're looking for, you can [use generative AI skills to generate the most specific search strings](#identify-and-act-on-similar-cases) to help uncover additional relevant records.

## When to use smart search

Smart search is most useful when your users may not know the exact value they are looking for, such as finding related cases or similar requests. Review the following use cases to see how smart search solves real problems in everyday processes, where it works best, and how it adds value to your application.

**Note:**  Smart search works when you search for the same term across multiple fields. It doesn't support searching for different terms in different fields.

For example:
**Works**: Searching for "power outage" in both the case title and description.
**Doesn't work**: Searching for "power outage" in the title and "case closed" in the description.

### Find records faster in grid components

Business users often work with large data sets in [read-only-grid components](Paging_Grid_Component.html#using-smart-search)(a!gridField). Without a search feature, you need to scroll or apply manual filters to find what they need. Smart search simplifies this by letting your users enter search terms or sentences. Then smart search finds related sentences with similar meaning and quickly locates the right records, even when your users search with incomplete or imprecise search terms.

See the [Read-Only Grid Component](Paging_Grid_Component.html#using-smart-search) page for more details.

### Identify and act on similar cases

Smart search can surface similar records to support faster decision-making. For example, when you search for a case, Appian can automatically suggest other cases with similar names and descriptions. If those cases describe the same issue, like multiple reports of a power outage, you can choose to merge them into a single case. This reduces duplication and keeps your data clean.

This approach combines AI-powered suggestions with your judgment, improving efficiency without removing control.

**Example**

[![images/automation/mergeSimilarCases.gif](images/automation/mergeSimilarCases.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img562)

[![](images/automation/mergeSimilarCases.gif)](#_)

### Automate decision making

Smart search can work behind the scenes in a process model to support automated decision-making. By combining smart search with [AI skills](ai-skills-intro.html), you can deliver next-step suggestions without user input. This approach helps you automate common decisions and deliver consistent, informed actions across similar cases.

For example, when a new case is created, Appian can use smart search to find similar cases based on the case name and description. Appian can then query the notes from resolved cases and send them to a [prompt builder AI skill](create-skill-prompt-builder.html), along with custom instructions. The AI skill uses that context to generate recommended next steps for the current case.

[![images/automation/streamline-with-ai.png](images/automation/streamline-with-ai.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img563)

[![](images/automation/streamline-with-ai.png)](#_)

### Power smart conversations in data fabric chatbot

Smart search supports semantic matching in [data fabric chat](Data-Fabric-Chatbot-Component.html). This capability allows the chatbot to understand the intent behind a user's question, not just the specific keywords they use. For semantic matching to function, the fields you want to search must be indexed and selected for smart search in the record type.

## Key concepts

To get the most out of smart search, it's helpful to understand a few key concepts.

### Keyword search and smart search

Keyword search and smart search work differently to find matches in your data.

-   A **keyword search** looks for each word you enter and finds matches in any text, number (integer), user, or group field inside a read-only grid. For example, the search phrase "order proceed" matches: "press refresh in `order` to `proceed` with my development." You'll see results that include any or all of the words you type. Keyword matches are always available when using a read-only grid. By default, the `similarityScoreThreshold` is set to `1`, so only search results that are a keyword match are returned.
-   **Smart search** is limited to text and document fields inside the `a!queryRecordType()` parameter or `a!gridColumn`. For more information about adding smart search to your read-only grids and queries, see the [Add smart search to any query to your data fabric](records-smart-search.html#add-smart-search) topic.

### Similarity score

A similarity score is a number that shows how closely a field matches your search. In smart search, every [search result](#search-results-returns) gets a similarity score, with higher scores meaning the result is more relevant to what you're looking for.

You can use the similarity score to filter or sort results, making it easier to focus on the information that matters most.

How it works:

-   When you search, smart search compares the meaning of your search to the text in your records.
-   It ranks the search results based on how similar they are, so the most useful matches appear at the top.

For example, if you search for "overdue bill," a record with the term "unpaid invoice" might get a high similarity score because it's closely related, while a record about "billing system updates" might score lower. This helps you quickly find the best matches without having to sift through unrelated results.

**Tip:**  You don't need to include the similarityScore field in the fields parameter to filter a query successfully. However, include it if you also want to display the field in the query results.

You can also reference similarityScore through a field reference:

`recordType!<<record type name>>.searchResults.<<field name>>.similarityScore`

#### Similarity Score Threshold parameter behavior

The `similarityScoreThreshold` parameter controls how closely results must match the search term. Higher values return fewer, more relevant results. Lower values return more results with a broader range of relevance. Adjust the `similarityScoreThreshold` parameter based on how precise you want the results to be. The default value of `similarityScoreThreshold` is `1`, which returns only keyword matches. To include broader results, adjust this value.

**Tip:**  The read-only grid component uses a [keyword search](#keyword-search-and-smart-search) by default because the similarity score threshold defaults to 1. To enable smart search, lower this value.

#### Primary similarity score

The primary similarity score represents the highest similarity score Appian finds from any searched field or section of content for a given record.

To retrieve how and where the match occurred, use:

-   `searchResults.allSearchFields.similarityScore`: This field provides the primary similarity score for a record when a smart search is performed across multiple fields.
-   `searchResults.allSearchFields.sourceContent`: This field indicates the specific content that matched the search term and resulted in the highest similarity score for that record.
-   `searchResults.allSearchFields.sourceField`: The field where the search term with the highest similarity score was found. Use this to access the contents of the matched field.

For example, imagine you have a grid displaying case information where the fields **title** and **description** are enabled for smart search. When you enter a search term:

-   If the **title** in the first row is a better semantic match than the **description**, `allSearchFields.similarityScore` and `sourceContent` will match `searchResults.title.similarityScore` and `searchResults.title.sourceContent` for that row.
-   If, in the second row, the better match is found in the **description** field, then `allSearchFields.similarityScore` and `sourceContent` will match `searchResults.description.similarityScore` and `searchResults.description.sourceContent` for that row.

### Source content

The piece of text where the search term was found. This is useful if you want to send the matched search term and its surrounding text to an AI skill.

-   `sourceContent` appears inside `recordType!<<recordTypeName>>.searchResults`
-   You can also reference `sourceContent` through a field reference:
    `recordType!<<record type name>>.searchResults.<<field name>>.sourceContent`

### Multiple matches per field

Smart search can return multiple matches per field when searching extra-long text and document fields. These matches appear in the `searchMatches` field and help you understand why a record was returned. This feature is especially useful for [AI Skills](ai-skills-intro.html) that rely on highly relevant results to drive automation and decision-making.

For example, an insurance company uses Appian to process claims. When a claim comes in, the system needs to quickly find relevant clauses in a complex policy document (which can be very long) to determine coverage and liability. Searching on a text field only returns the single highest semantic match, which could mean missing other slightly less similar but still relevant clauses within the same policy document that could impact the claim decision. By using the `searchMatches` field, smart search can retrieve multiple relevant sections of the policy document.

#### What is searchMatches?

`searchMatches` is a list of maps that show where your search matched the field content. Each item in the list includes:

-   `similarityScore`: A number between 0 and 1 that shows how closely the content matches the search query.
-   `sourceContent`: The piece of text where the search term was found, helping you understand the context.
-   `page`: The page number where the match was found. This is only available for PDF documents.

By default, smart search includes up to 10 matches per field.

**Tip:**  Use `searchMatches` to power AI Skills that analyze or summarize relevant text. These detailed matches allow you to feed only the most relevant content into your AI models.

#### Sorting and filtering searchMatches

The contents in the `searchMatches` list are sorted by `similarityScore` in descending order by default, so the most relevant matches appear first. However, you can sort or filter the contents of `searchMatches` to meet your needs.

For example, you might sort the list of matches by `page` number to review matches in document order, or sort by `similarityScore` in ascending order to see broader matches. The `searchMatches` field gives you greater control over how you organize and analyze search results in your DataSubset.

See the [Sorting and filtering searchMatches example](#sorting-and-filtering-searchmatches-example) for details on how this is done.

#### Partial retrieval

Partial retrieval lets you fetch only the fields you need from the `searchMatches` results. For example, you can request just the top similarity score and the list of match scores for a document field without pulling in full match details. By retrieving only the necessary data, you can improve performance and reduce the amount of data transferred and processed, which is crucial when dealing with large documents and potentially numerous search matches.

This example query returns only each contract's ID, its highest document similarity score, and a list of similarity scores for all individual matches:

```
1
2
3
4
5
6
7
8
a!queryRecordType(
  recordType: recordType!Contract,
  fields: {
    recordType!Contract.id,
    recordType!Contract.searchResults.document.topSimilarityScore,
    recordType!Contract.searchResults.document.searchMatches.similarityScore
  }
)
```

### How smart search indexes data

Indexing is how smart search prepares your data so it can appear in search results. When you enable a field for smart search, Appian syncs the record type and indexes your smart search fields, organizing them for quick retrieval.

Think of indexing like building a table of contents. Without it, smart search wouldn't know what data is available or where to find it. Each time your data changes—when records are added or updated—Appian re-indexes the content to keep search results accurate.

[![images/automation/indexing-flow.png](images/automation/indexing-flow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img564)

[![](images/automation/indexing-flow.png)](#_)

### Keeping smart search data current

Whenever a [full sync](records-data-sync.html#schedule-full-syncs) or [smart service sync](records-data-sync.html#use-smart-services-that-automatically-sync-data) occurs on the record type, those changes are automatically reflected in the smart search as well.

Smart search doesn't use [incremental syncs](records-data-sync.html#schedule-incremental-syncs). If you use smart search on a record type with incremental syncs, also configure full syncs. This ensures that data added or updated by incremental syncs appears in search results and keeps smart search results current with your source data.

**Tip:**  When you update your data model, don't forget to revisit the **Smart Search** tab to ensure the fields you want to enable for smart search are selected.

### Passing search results to a process model

When passing search results to a process model, ensure that the full context of the search is preserved. If you extract specific fields from the search results (e.g., `searchResults.allSearchFields.similarityScore`) before passing them to the process model, the associated search metadata may be lost. This can lead to issues where the process model cannot access the necessary search context, potentially causing errors downstream.

To maintain the complete search context:

-   Pass the entire record, including the `searchResults`, to the process model.
-   Avoid indexing into specific search result fields before passing the data.
-   In the process model, store the incoming data into a variable for the appropriate record type.

By passing the full record, the process model retains access to all search-related metadata, such as similarity scores and source content, ensuring that any logic dependent on this information functions correctly.

## Considerations

Keep these considerations in mind when enabling smart search to ensure optimal performance and compatibility with your data.

| Category | Details |
| --- | --- |
| **Search result limits** | Smart search can return up to 100 results per search. To refine results, filter by a [similarity score](#similarity-score) above a set threshold, sort by similarity score in descending order, and use a batch size of 10 or 20 to focus on the most relevant matches. |
| **Record size limits** |
Smart search supports up to:

-   1.5 million records per record type for text fields
-   500,000 records per record type for extra long text fields
-   100,000 records per record type for document fields

 |
| **Field limitations** |

You can configure one of the following per record type:

-   Up to three text fields
-   One extra long text field and one text field
-   One document field and one text field

Note that enabling document or extra long text fields reduces the maximum supported number of indexed rows compared to using only text fields.

This limit helps ensure smart search runs efficiently. Choose the fields that will provide the most value for your searches.

 |
| **Supported field types** |

-   **Text fields**: Text fields usually contain less data than document fields, so they index more quickly. For example, indexing one million records with 4,000 characters each can take about 9 to 10 hours the first time they are indexed.
-   **[Extra long text fields](about-data-sync.html#use-extra-long-text-fields-to-store-large-volumes-of-data)**: Extra long text fields can store up to 64,000 characters, which is significantly more data than text fields. Because they contain more data than text fields but less than document fields, they index more slowly than text fields but more quickly than document fields. To improve indexing performance, consider using text fields when full extra long text content is not required.
-   **[Document fields](manage-docs-with-records.html)**: Document fields typically contain more data than text fields, so they may take longer to index. For example, indexing 100,000 records that each include a 3 MB PDF may take up to 24 hours. Larger documents may take even longer. To improve indexing performance, consider using text fields when full document content is not required.

A full indexing of all rows occurs only when you deploy record types or update the fields enabled for smart search. Scheduled syncs after that are typically faster because they only index data that has changed since the last data sync.

While document files up to 5MB are technically supported, performance is not guaranteed and should be validated in your environment. Documents over 5MB or in unsupported formats are automatically skipped during data updates.

 |
| **Smart search data updates** | When you enable smart search on a field in your record type, Appian indexes the data shortly after a successful data sync, except for incremental syncs. To learn how smart search indexes data and how to keep it current, see [How smart search indexes data](#indexing) and [Keeping smart search data current](#data-updates). |
| **Supported document formats** |

-   [DOC (structured and unstructured)](how-doc-ex-works.html#document-structure)
-   DOCX
-   HTML
-   MD
-   PDF (not image-based or scanned)
-   TXT

**Note:** Documents over 5MB or in unsupported formats are automatically skipped during data updates. |

## Enable smart search

To start using smart search, you need to choose the fields you want to make searchable. These fields should contain the type of information users typically search for, such as detailed descriptions, comments, or notes. Focus on fields with rich, meaningful content to maximize the feature's effectiveness.

To select fields for smart search:

1.  In the record type, go to **Smart Search**.
2.  Choose one of the following:

    -   up to three text fields,
    -   one extra long text field and one text field, or
    -   one [Document type](manage-docs-with-records.html) field and one text field.

        **Tip:**  You can only choose one other text field if you choose an extra long text field or a document field. To enable smart search for documents, the document ID must use the Document field type. See [Manage Documents with Record Types](manage-docs-with-records.html) for more information about and best practices regarding the Document field type.

    [![images/automation/select-smart-search-fields.png](images/automation/select-smart-search-fields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img565)

    [![](images/automation/select-smart-search-fields.png)](#_)

3.  Click **SAVE**.
    **Result**: The fields you selected are indexed automatically. Saving triggers a data sync, which then starts the indexing process for smart search.

**Tip:**  You can check the indexing status on the **Smart Search** tab on the record type's Sync History page or on the [**Record Sync Status** tab](monitoring_view.html#record-sync-status) in the Monitor view.

## Add smart search to read-only grids and query expressions

You can use smart search in two ways: directly in a read-only grid or in a query expression.

### Use the default search box in a read-only grid

When you configure a read-only grid to use a record type as the data source, Appian defaults to showing a search box with the read-only grid. This search box defaults to using only keyword search, but can be configured to use both keyword and smart search with minimal setup.

To enable smart search in a read-only grid:

1.  Set the `similarityScoreThreshold` parameter to a value less than `1`. For example: `0.0026`.
2.  Make sure the `showSearchBox` parameter is set to true.

See the [Using smart search](Paging_Grid_Component.html#using-smart-search) topic on the [Read-Only Grid Component](Paging_Grid_Component.html) page for more detailed information.

### Use smart search in query expressions

If you want to customize how your read-only grid filters data, use the _search_ operator in [a!queryFilter()](fnc_system_a_queryfilter.html). You can apply it within [a!queryRecordType()](fnc_system_queryrecordtype.html) or in [a!recordData()](fnc_system_recorddata.html). This setup gives you more control over the filtering logic.

**Tip:**  The _search_ operator is a specialized operator designed to work with these functions. The _search_ operator is not compatible with other functions or parameters.

To apply smart search in a custom query in [a!queryRecordType()](fnc_system_queryrecordtype.html):

1.  Use `a!queryRecordType()` to build your query.
2.  Include `a!queryFilter()` in the filters parameter.
3.  Use the _search_ operator in the `a!queryFilter()` to define how Appian should interpret the search value.

The search operator is also supported in `a!recordData()` when used as the data source for a read-only grid. To apply smart search in a custom query in [a!recordData()](fnc_system_recorddata.html):

1.  Use `a!recordData()` as the data source in your read-only grid.
2.  Include `a!queryFilter()` with the _search_ operator to perform a smart search on a record field.

    **Tip:**  To compare multiple fields, include a separate search filter for each field you want to search.

3.  Optionally include `searchResults.allSearchFields.similarityScore` to limit results to stronger matches.

    For example `a!queryFilter(field: recordType!Case.searchResults.allSearchFields.similarityScore; operator: ">=", value: 0.0026)`.

See the [Using smart search](fnc_system_recorddata.html#using-smart-search) topic on the [a!recordData() Function](fnc_system_recorddata.html) page for more detailed information.

### Sorting and filtering tips

Keep these key points in mind when sorting and filtering search results:

-   When using `searchResults`, you can only sort or filter by _similarityScore_.
-   To enable sorting on a `searchResults` field, include the `searchResults` fields in the list of selected fields.
-   You don't need to include the _similarityScore_ field in the fields parameter to filter a query successfully. However, include it if you also want to display the field in the query results.
-   We recommend always adding a filter on _searchResults.allSearchFields_ to limit the number of `searchResults`. Alternatively, you can add interface components such as a dropdown with multiple similarity score thresholds, to allow users to specify the _similarityScore_ that meets their needs.

If needed, you can use the `allSearchFields` map from `searchResults` to sort and display search results in an interface. This approach is useful for customizing the presentation of search data. For example, you could sort by _sourceContent_ instead of the _similarityScore_.

The following example shows how to extract the `allSearchFields` map locally using `a!queryRecordType`, then re-sort the results by _sourceContent_ for display purposes:

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
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
a!localVariables(
  local!searchResultsMap: a!queryRecordType(
    recordType: 'recordType!Case',
    fields: {
      recordType!Case.fields.id,
      recordType!Case.fields.title,
      recordType!Case.fields.description,
      recordType!Case.searchResults.allSearchFields
    },
    filters: a!queryLogicalExpression(
      operator: "AND",
      filters: {
        a!queryFilter(
          field: recordType!Case.fields.title,
          operator: "search",
          value: "vpn problems"
        )
      },
      ignoreFiltersWithEmptyValues: true
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 100,
      sort: {
        a!sortInfo(
          field: recordType!Case.searchResults.allSearchFields.similarityScore
        )
      }
    )
+    /* Index into 'allSearchFields' to return a Map */
  ).data[recordType!Case.searchResults.allSearchFields],

+  /* Convert the map to a datasubset and sort by `sourceContent`, which can't be done in a!queryRecordType */
  todatasubset(
    arrayToPage: local!searchResultsMap,
    pagingConfiguration: a!pagingInfo(
      startIndex: 1,
      batchSize: 10,
      sort: a!sortInfo(
        field: "sourceContent",
        ascending: true
      )
    )
  )
)

```

## Examples

You can add smart search to a read-only grid using one of two approaches, depending on your needs and how much control you want over the search experience.

-   [Use the default search box](#default-search-box): This recommended approach enables both keyword and smart search. Use this method when you want a simple way to surface relevant results without building a custom search interface.
-   [Use your own custom search box](#custom-search-box): If you need more control over the UI or search logic, this approach gives you more flexibility over the search experience.

### Using smart search with the default search box

This is the quickest way to add smart search to a grid. We recommend using this approach to implement smart search because it gives you more flexibility and works in more situations.

This approach combines keyword and smart search. Matches found by keyword search will have a similarity score of 1, while semantic matches returned by smart search typically have scores less than 1. For best results, sort your grid by similarity score in descending order.

#### Search behavior in a!gridField

The following points describe how Appian processes search queries in `a!gridField` (read-only grid component).

-   By default, the `a!gridField` component search box uses keyword search.
-   If smart search is enabled, Appian runs both keyword and smart searches.
    -   Keyword search matches return a `similarityScore` of exactly 1.
    -   Smart search matches return a `similarityScore` less than 1.
    -   To use the `similarityScoreThreshold` parameter in the `a!gridField` component, `showSearchBox` must be set to `true`.
    -   To use your own search box, set `showSearchBox` to `false` and apply filters with `a!recordData`.
    -   Once set up, the `a!gridField` component uses keyword search for all integer and text fields in the `a!gridColumn`, and smart search for text or document fields that have smart search enabled and are displayed in the grid.

#### Add the default search box to a read-only grid

In most cases, you should be able to leverage smart search on read-only grids by doing two things:

-   Set the `showSearchBox` parameter to `true`. This is the default.
-   Set the `similarityScoreThreshold` parameter to a value lower than 1. For example: `0.0026` to get semantic matches.

#### Example expression

The following example illustrates how to retrieve a list of support cases logged around the same time by different users. These support cases could potentially share the same root cause, helping you address related issues efficiently.

The expression applies three filters to narrow down the results:

-   The case description must mention "power outage" or related terms (e.g., power failure).
-   The case must have been logged within the past three days.
-   The similarity score of the description must be at least `0.0026`, ensuring the results are relevant.

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
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
a!gridField(
      labelPosition: "ABOVE",
      data: 'recordType!Case',
      /*Enables search, including smart search if available to customer */
      showSearchBox: true,

      /*Filters out smart search matches under this threshold */
      similarityScoreThreshold: 0.0026
      columns: {
        a!gridColumn(
          label: "Id",
          sortField: 'recordType!Case.fields.id',
          value: a!richTextDisplayField(
            value: {
              a!richTextItem(
                text: fv!row['recordType!Case.fields.id'],
                link: a!recordLink(
                  recordType: 'recordType!Case',
                  identifier: fv!identifier
                ),
                linkStyle: "STANDALONE"
              )
            }
          ),
          align: "END"
        ),
        a!gridColumn(
          label: "Title",
          sortField: 'recordType!Case.fields.title',
          value: a!defaultValue(fv!row['recordType!Case.fields.title'], "-")
        ),
        a!gridColumn(
          label: "Description",
          sortField: 'recordType!Case.fields.description',
          value: a!defaultValue(fv!row['recordType!Case.fields.description'], "-")
        ),
        /*Display labels or icons. Avoid displaying score similarity values to end users */
        a!gridColumn(
          label: "Score",
          sortField: 'recordType!Case.searchResults.allSearchFields.similarityScore',
          value: a!localVariables(
            local!scoreValue: fv!row['recordType!Case.searchResults.allSearchFields.similarityScore'],
            local!circleCount: {1,1,1},
            local!color: a!match(
              value: local!scoreValue,
              whenTrue: fv!value = 1,
              then: "#0f90FF",
              whenTrue: fv!value >= 0.00389,
              then: "#0f9037",
              whenTrue: and(fv!value >= 0.0027, fv!value < 0.00389),
              then: "#119f3d",
              whenTrue: and(fv!value >= 0.0025, fv!value < 0.0027),
              then: "#12a740",

              default:"#83f9a8"

            ),
            if(a!isNullOrEmpty(local!scoreValue),
            "---",
            a!richTextDisplayField(
              value: a!forEach(
                items: local!circleCount,
                expression: a!richTextIcon(
                  icon: "circle",
                  color: local!color
                )
              ),
              tooltip: a!match(
                value: local!scoreValue,
                whenTrue: fv!value = 1,
                then: "Keyword Match",
                whenTrue: fv!value >= 0.00389,
                then: "Great",
                whenTrue: and(fv!value >= 0.0027, fv!value < 0.00389),
                then: "Good",
                whenTrue: and(fv!value >= 0.0025, fv!value < 0.0027),
                then: "Ok",

                default:"Not good"

              )
            )
            )
          )
        )
      },
      initialSorts: {
        /*Sorts by similarity score in descending order if applicable*/
        a!sortInfo(
          field: 'recordType!Case.searchResults.allSearchFields.similarityScore',
          ascending: false()
        ),
        /* Defaults to sorting by primary key */
        a!sortInfo(
          field: 'recordType!Case.fields.id',
          ascending: true
        )
      }
    )
```

### Using your own custom search box

If you want more flexibility over the search experience—for example, if you want to add filters, buttons, or custom styling—you can build your own search box. Use this method when you need fine-grained control over the search experience or want to integrate smart search into a larger filtering workflow.

To build a custom smart search experience, use `a!gridField()` with `a!recordData()` and configure your own query logic. Follow these steps:

1.  Hide the default search box.

    ```
    1
    2
    3
    4
     a!gridField(
      showSearchBox: false,
      /* other grid settings */
    )
    ```

2.  Fetch data with `a!recordData()`: Pass in your record type, filters, paging, and sorting.
3.  Enable smart search with the _search_ operator

    ```
    1
    2
    3
    4
    5
    6
    a!queryFilter(
      field: 'recordType!SSTA Case.fields.title',
      operator: "search",
      value: local!searchTerm,
      applyWhen: a!isNotNullOrEmpty(local!searchTerm)
    )
    ```

4.  Add any custom filters (status, priority, date ranges, etc.).

    ```
    1
    2
    3
    4
    5
    6
    a!queryFilter(
      field: 'recordType!Case.relationships.Status.fields.Id',
      operator: "in",
      value: local!statusSelection,
      applyWhen: a!isNotNullOrEmpty(local!statusSelection)
    )
    ```

5.  (Optional) Include a similarity score filter using the _similarityScore_ field to prioritize relevant results. For example:

    ```
    1
    2
    3
    4
    5
    a!queryFilter(
      field: 'recordType!Case.searchResults.document.similarityScore',
      operator: ">=",
      value: 0.00209,
    )
    ```

**Note:**  Do not use the `similarityScoreThreshold` parameter.

_See [Create a Custom Smart Search Box in a Read-only Grid](recipe-add-custom-smart-search-box-in-read-only-grid.html) recipe for more information._

### Sorting and filtering searchMatches example

Below is a hands-on example showing how to take the default `searchMatches` output and apply [custom sorting and paging](#sorting-and-filtering-searchmatches) to build a tailored DataSubset. It's organized into three sections so you can see each step in action:

1.  [**Search rule**](#1-search-rule): The expression rule that performs the search
2.  [**DataSubset configuration**](#2-datasubset-configuration): The expression that extracts and customizes a DataSubset from the searchMatches field
3.  [**Output**](#3-output): The resulting DataSubset returned by the configuration step

#### 1\. Search rule

This is the expression rule that performs the search.

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
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
a!queryRecordType(
  recordType: recordType!Case Knowledge Repository,
  fields: {
    recordType!Case Knowledge Repository.fields.id,
    recordType!Case Knowledge Repository.fields.documentSummary,
    recordType!Case Knowledge Repository.fields.document,
    /* Returns the primary similarity score and source content*/
    recordType!Case Knowledge Repository.searchResults.allSearchFields,

    /*Returns multiple search matches for the document field being searched on */
    recordType!Case Knowledge Repository.searchResults.document.searchMatches
  },
  filters: a!queryLogicalExpression(
    operator: "AND",
    filters: {
      /* Select a single document */
      /* Recommended if we want to return multiple matches */
      /* to avoid a large set of data to be returned */
      /* and to avoid query performance issues */
      a!queryFilter(
        field: recordType!Case Knowledge Repository.fields.id,
        operator: "=",
        value: 2
      ),
      /*Search the contents of the doc */
      a!queryFilter(
        field: recordType!Case Knowledge Repository.fields.document,
        operator: "search",
        /*value: "vector database capabilities"*/
        value: "conversational experiences via agents"
      ),
      /* Return fewer matches. */
      /* They come back sorted by similarity score in descending order */
      a!queryFilter(
        field: recordType!Case Knowledge Repository.searchResults.document.similarityScore,
        operator: ">=",
        value: 0.00209,
      )
    },
    ignoreFiltersWithEmptyValues: true
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 100
  )
 /* Index directly into search matches */
).data
[recordType!Case Knowledge Repository.searchResults.document.searchMatches]
```

#### 2\. DataSubset configuration

This expression returns a customized DataSubset from the `searchMatches` field defined in this expression rule: [Step 1. Search rule](#1-search-rule). It retrieves multiple matches for a single document, limits the results to three, and sorts them by page number in ascending order instead of the default similarity score.

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
a!localVariables(
  /*Get multiple matches for a single document using an expression rule*/
  local!myData: rule!Case_returnMultipleMatches(),
  local!dataSubset: todatasubset(
    /*Extract the list of maps from the searchMatches field*/
    arrayToPage: local!myData[1],
    /* The original search returns 6 items*/
    /* But we only want 3 items */
    /* We also want to sort by page instead of similarity score */
    pagingConfiguration: a!pagingInfo(
      startIndex: 1,
      batchSize: 3,
      /* Each item in searchMatches is a map */
      /* You can sort by 'page' or 'similarityScore' */
      /* In this case, sort by page in ascending order */
      sort: a!sortInfo(
        field: "page",
        ascending: true
      )
    )
  ),
  local!dataSubset
)
```

#### 3\. Output

The returned DataSubset will look like this. Notice that the page is now sorted in ascending order: 2, 5, 15.

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
26
27
28
"DataSubset": [
  {
    "startIndex": 1,
    "batchSize": 3,
    "totalCount": 5,
    "sort": {
      "field": "page",
      "ascending": true
    },
    "data": [
      {
        "similarityScore": 0.0082,
        "sourceContent": "The insured is responsible for duty of care.",
        "page": 2
      },
      {
        "similarityScore": 0.0088,
        "sourceContent": "Premium payments are due annually on the policy anniversary.",
        "page": 5
      },
      {
        "similarityScore": 0.0075,
        "sourceContent": "In the event of loss, notify the insurer within 30 days.",
        "page": 15
      }
    ]
  }
]
```

## Search results (returns)

When you run a query that includes smart search, the returned [DataSubset](Appian_Data_Types.html#datasubset) includes the following fields:

-   `similarityScore`
-   `sourceContent`
-   `searchMatches` (extra-long text and document fields only)

You can access similarity scores and related search information directly from the DataSubset results. For example, suppose you run the following query:

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
26
27
28
29
30
31
32
33
34
35
36
37
38
39
a!queryRecordType(
  recordType: recordType!Case,
  fields: {
    recordType!Case.fields.id,
    recordType!Case.fields.title,
    recordType!Case.fields.description,

   /* Returns similarityScore and sourceContent for the title field */
    recordType!Case.searchResults.title,
   /* Returns similarityScore and sourceContent for the description field */
    recordType!Case.searchResults.description,
    /* Returns similarityScore, sourceContent and sourceField for the field with the best semantic match */
    /* In this case, could be title or description, because we are searching those two fields */
    recordType!Case.searchResults.allSearchFields,
  },
  filters: {
    a!queryFilter(
     field: recordType!Case.fields.title
     operator: "search",
     value: "software update"
   ),
    a!queryFilter(
     field: recordType!Case.fields.description
     operator: "search",
     value: "software update"
   ),
  },
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 2,
    sort: {
      /*Sort by similarity score so the best matches are returned at the top*/
      a!sortInfo(
        field: 'recordType!Case.searchResults.allSearchFields.similarityScore',
        ascending: false
      )
    }
  )
)
```

The results would look something like this:

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
26
27
28
29
data (List of Case)
Case
  id: 2
  title: "Software update failure"
  description: "Attempted to update ERP system, update failed midway. Rolled back to previous version."
  searchResults.allSearchFields
    similarityScore: 0.003823
    sourceContent: "Attempted to update ERP system, update failed midway. Rolled back to previous version."
    sourceField: description
  searchResults.title
    similarityScore: null
    sourceContent: null
  searchResults.description
    similarityScore: 0.003823
    sourceContent: "Attempted to update ERP system, update failed midway. Rolled back to previous version."
Case
  id: 44
  title: "Application errors after update"
  description: "Shortly after applying a software update to one of our internal web apps, users started reporting errors when accessing certain features. We've had to roll back the update but some issues persist."
  searchResults.allSearchFields
    similarityScore: 0.002546
    sourceContent: "Shortly after applying a software update to one of our internal web apps, users started reporting errors when accessing certain features. We've had to roll back the update but some issues persist."
  searchResults.title
    similarityScore: null
    sourceContent: null
  searchResults.description
    similarityScore: 0.002546
    sourceContent: "Shortly after applying a software update to one of our internal web apps, users started reporting errors when accessing certain features. We've had to roll back the update but some issues persist."

```

**Tip:**  A null similarity score in the title field means there was no semantic match. In this case, `searchResults.allSearchFields` matches `searchResults.description` because it contains the highest scoring match. The `sourceField` confirms this by pointing to the description field.

## Tips for using smart search

Use these tips to get the most out of smart search and return more relevant results in your queries.

-   Verify the fields you want to search are [enabled for smart search](records-smart-search.html#enable-smart-search).
-   Make sure the smart search [indexing status](records-smart-search.html#troubleshooting) is _Completed_ and not _Failed_ or _Running_.
-   Search time increases as the number of records and searchable fields grows. To improve performance, limit the number of fields and records being searched when possible. For example, searching 10,000 records is faster than searching 1 million records.
-   Use `allSearchFields.similarityScore` whenever possible to sort and filter. Only use `<<fieldName>>.similarityScore` if your use case requires it. This field behaves like related records and may return unexpected results without a search. Add logic to check for a search term first.
-   Don't filter or sort by `sourceContent`. `sourceContent` is designed to be a result of the search, not a criteria for filtering or sorting.

## Troubleshooting

This topic helps you identify and resolve issues that can prevent smart search from indexing your data correctly.

**Note:**  For important information that might impact troubleshooting, see the [Considerations](#considerations) topic.

### Monitor smart search index statuses

If [indexing](#indexing) fails or hasn't finished, your users might not see the most up-to-date information when they search. After a successful data sync, it may take some time for all the record data to be available for smart search. That's why it's important to monitor the smart search status when something doesn't look right. You can find this information in two places:

-   The **Smart Search** tab on the record type's Sync History page. This view shows the indexing history specific to smart search for that record type.

[![image](images/automation/sync-history.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img566)

[![](images/automation/sync-history.png)](#_)

-   The [**Record Sync Status** tab](monitoring_view.html#record-sync-status) in the Monitoring View. This view shows the latest smart search status for each record type that has smart search enabled.

    [![image](images/automation/ss-column.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img567)

    [![](images/automation/ss-column.png)](#_)

Use these views to confirm that smart search is successfully indexing your data. If the status shows an error or indicates that indexing is incomplete, smart search results may be outdated or missing.

### Indexing statuses

Appian uses indexing statuses to show the current state of smart search indexing.

**Note:**  This status reflects the smart search indexing only, which is separate from the standard data sync process.

| Status | What it means | What to do |
| --- | --- | --- |
| **Not Enabled** | Smart search is not configured for any fields on the record type. | Enable smart search on at least one field in the record type. |
| **Pending** | Smart search is enabled but indexing hasn't started because the initial data sync is still in progress. | Wait for the initial sync to finish. |
| **Running** | The system is currently indexing data for smart search. If the first attempt fails, Appian will retry. During retries, search stays active but may be slightly outdated. | No action needed unless retries fail. If indexing fails completely, investigate errors. |
| **Completed** | Indexing is finished and all data is available for smart search. | No action needed. |
| **Skipped** | Indexing was skipped due to a data sync failure. If _Skip failed syncs_ is enabled, search may still use the last successful index. | Check the smart search status history and sync logs. Resolve the sync failure to resume indexing. |
| **Failed** | Indexing failed and smart search is offline. Queries using smart search will fail. This can happen for reasons like document size limits or exceeding the indexed row limit. | Review system logs or error messages. You can apply a filter on the record type to stay within the limit. |
| **Approaching Limit** | The record type is indexed but is nearing the indexed row limit (90% or more). | Consider applying a filter to the record type to avoid hitting the maximum limit. |
| **Limit Reached** | The record type is indexed and has reached the maximum indexed row limit (100%). | Consider applying a filter to the record type to avoid hitting the maximum limit. |

#### Indexing retries and failures

Smart search automatically retries indexing jobs to improve reliability, similar to how record types handle data sync. If a row fails to index due to an error, Appian retries to index up to three times. If all retries fail, Appian records the primary key of each failed row, marks the rows as failed, and sets the indexing status to failed. Appian also provides an error message to help you understand the issue. For example, the job might fail if the maximum row limit is reached or a certain number of rows cannot be indexed.

If any documents are skipped because they exceed the maximum size limit, their document ID and primary key are also recorded.

[![images/automation/smart-search-index-fail.png](images/automation/smart-search-index-fail.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img568)

[![](images/automation/smart-search-index-fail.png)](#_)

### Fix a sync failure

Smart search can only index a record type after a successful data sync. If a sync fails, indexing will not occur. Additionally, if the data sync failure has taken the record type offline, smart search will also be unavailable.

Resolve the sync failure to update smart search data. For guidance, see the [Troubleshoot Data Sync](#Records_Monitoring_Details.html) page.

### Stay informed when smart search indexing fails

Appian notifies system admins and users with admin permissions on a record type if smart search indexing fails. These email alerts help you respond quickly and are similar to notifications for data sync issues.

Each email includes:

-   The name of the record type with the issue.
-   A link to open the record type directly in the record type designer, so you can jump in and fix the issue right away.

## Feedback

[Give feedback on this page. We'd love to hear your thoughts!](https://docs.google.com/forms/d/e/1FAIpQLScgPeUOPzAMIyIltQ5oj0ihnl1OZEvIwzXmT6MWla-mo66NHg/viewform?usp=header)