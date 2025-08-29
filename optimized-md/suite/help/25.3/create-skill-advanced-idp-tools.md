---
source_url: https://docs.appian.com/suite/help/25.3/create-skill-advanced-idp-tools.html
original_path: create-skill-advanced-idp-tools.html
version: "25.3"
title: "Create an Advanced IDP Tools AI Skill"
page_id: "create-skill-advanced-idp-tools"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create an Advanced IDP Tools AI Skill

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Overview

This topic covers how to create an AI skill to process complex documents.

An Advanced IDP Tools AI skill takes documents as inputs via the [**Advanced IDP Tools** smart service](Advanced_IDP_Tools_Smart_Service.html), analyzes the content, and returns a map of comprehensive data according to the tools selected.

Here's a high-level breakdown of how to create and use an Advanced IDP Tools AI skill:

1.  [Create an AI skill](#create-an-ai-skill)
2.  [Choose tool types](#choose-tool-types)
3.  [Test selected tools](#test-selected-tools)
4.  [Use the skill!](#use-the-skill)

## Create an AI skill

1.  In the [**Build** view](build-view.html), click **NEW > AI Skill**.

    ![new-menu-ai-skill](images/new-ai-skill.png)

2.  In the **Extraction** section, select **Documents** > **Advanced IDP Tools**. The configuration screen displays.

    ![create-skill](images/create-ai-skill-advanced-idp.png)

3.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#rule-objects). |
    | **Description** | (Optional) Enter a brief description of the AI skill. |

4.  Click **CREATE**.
5.  On the **Review AI Skill Security** window, [configure security](ai-skill-object.html#security).
6.  Click **SAVE**. The AI skill opens in a new dialog or window.

## Choose tool types

Select as many tools as you need to extract data.

**Note:**  Some tools are subject to usage limits and can incur additional expenses if used beyond license limits. Unsure about your license tier? Contact your administrator.

| Tool | Description | Usage Limits? |
| --- | --- | --- |
| Text | Extract plain text from documents (lines, words or both) | No |
| Expense Data | Extract costs and line items from documents such as invoices | Yes |
| Key-Value Pairs | Extract data as matched labels and values | Yes |
| Checkboxes | Extract checkbox values and their associated labels | Yes |
| Tables | Extract structured data contained in tables, such as column headers and cells | Yes |
| Signatures | Detect handwritten and digital signatures in documents | Yes |
| [Search Queries](#create-search-queries-for-testing) | Extract additional data by asking questions or looking for specific terms or phrases in the document | Yes |

To see what data each tool returns, see [output examples](#output-examples).

### Create search queries for testing

When you select Search Queries as a tool, you can create search queries within the AI skill for [testing](#test-selected-tools) purposes. A search query can be phrased as a question, or you can include a specific term or phrase you'd like the AI skill to find within the document.

To add a search query for testing:

1.  Select the **Search Queries** tool within the AI skill object.
2.  In the **Test Selected Tools** pane, under **Search Queries**, type a word, phrase, or question.
3.  Click **ADD SEARCH QUERY**. When the query is added, a key is automatically created. The key is used in the map of data returned as a response.
4.  Repeat the process for each search query you want to add. You can add up to 15 queries for each document.

You can also edit or delete existing search queries.

[![create search queries](images/search-queries-ai-skill.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img897)

[![](images/search-queries-ai-skill.png)](#_)

## Test selected tools

Before you integrate the AI skill into a process, you want to be confident the model extracts data properly and returns the results you expect. You can test the AI skill using sample documents to verify it works as you expect directly within the AI skill object.

To test the skill:

1.  Within the AI skill, locate the **Test Selected Tools** area.
2.  Upload a document into the **Document** field.
3.  Click **GENERATE OUTPUT**. The AI model returns a response based on the tools you selected and test input.

Output will vary based on the type of tool you selected. As you test, you can select or deselect tools to get results that you find most useful.

### Output examples

**Tip:**  These output examples are simplified for demonstration purposes. In practice, these maps will contain every occurrence of the given data structure that appears in the document. The output may be longer or more complex than what you see here.

##### Text output

Returns a map of text values and types (such as line, word, or both), the position of where the text was found in the document, confidence scores, and page locations.

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
a!map{
  data:
    {
      text: "People",
      type: "line",
        a!map(
          width: 0.1607328,
          height: 0.097553568,
          left: 0.2871447,
          top: 0.387261
        ),
      confidenceScore: 25,
      pageNumber: 1
    }
}
```

##### Expense Data output

Returns a map of data containing expense information such as line item types and values, as well as document reference numbers such as invoice numbers. Contains confidence scores and page locations.

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
a!map(
  flatTextFields: {
    a!map(
      normalizedKey: "PO_NUMBER",
      documentKey: "PO #",
      value: "12345",
      keyConfidenceScore: 99,
      valueConfidenceScore: 98,
      pageNumber: 1
    ),
    a!map(
      /*<Other fields here>*/

    )/*<Maps of all identified fields>*/

  },
  lineItemGroups: {
    a!map(
      lineItems: {
        a!map(
          lineItemExpenseFields: {
            a!map(
              type: a!map(text: "ITEM", confidence: 70, ),
              labelDetection: a!map(text: "Usage Charges", confidence: 79),
              valueDetection: a!map(text: "AZ Prem Files", confidence: 98)
            ),
            a!map(
              type: a!map(text: "UNIT_PRICE", confidence: 70),
              labelDetection: a!map(text: "Unit Price", confidence: 80),
              valueDetection: a!map(text: "13.12", confidence: 99)
            )
          },
          pageNumber: 1
        )
      },

    )},
    a!map(
      lineItems: {
        a!map(lineItemExpenseFields: {}, pageNumber: 2)
      }
    )
)
```

##### Key-Value Pairs output

Returns a map of data containing matched labels and values, confidence scores, and page location.

```
1
2
3
4
5
6
7
8
a!map(
  key: "First Name",
  value: "John",
  keyConfidenceScore: 97,
  valueConfidenceScore: 99,
  pageNumber: 1
  ),
  /*<All other KVPs found in document>*/
```

##### Checkboxes output

Returns a map of data containing the checkbox label, whether the box was checked, confidence scores, and page location.

```
1
2
3
4
5
6
7
8
a!map(
  key: "Other (Specify)",
  value: true,
  keyConfidenceScore: 97,
  valueConfidenceScore: 99,
  pageNumber: 1
  ),
  /*<All other checkboxes found in document>*/
```

##### Tables output

Returns a map of data containing table data and information on table structure.

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
a!map(
  data: {
    a!map(
      c3: "DATA Requested by client"),
      a!map(c1: "2015", c3: "2016"),
      a!map(
        c1: a!map(value: "the value", confidence: 95),
        c2: a!map(value: "the value", confidence: 95),
        c3: a!map(value: "the value", confidence: 95),
        c4: a!map(value: "the value", confidence: 95)
        ),
      a!map(
        c1: a!map(value: "the value", confidence: 95),
        c2: a!map(value: "the value", confidence: 95),
        c3: a!map(value: "the value", confidence: 95),
        c4: a!map(value: "the value", confidence: 95)
        )
    },
  pageNumber: 1,
  tableTitleRows: { 1 },
  tableHeaderRows: { 2, 3 },
  tableSectionTitleRows: { 15 },
  tableSummaryRows: { 7 },
  tableFooterRows: {}
  tableType: "SEMI_STRUCTURED_TABLE" // or 'STRUCTURED_TABLE'``
),
/*<list of Maps for all other tables found in document>*/
```

##### Signatures output

Returns a map of data on the position of signatures detected in the document.

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
a!map{
  data:
    {
      a!map(
        width: 0.1607328,
        height: 0.097553568,
        left: 0.2871447,
        top: 0.387261
        ),
      confidenceScore: 25,
      pageNumber: 1
    }
}
```

##### Search Queries output

Returns a map of data containing the original query and maps of answers. Each answer contains the value, the position of relevant content detected in the document, confidence scores, and page location.

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
a!map(
  searchQuery: "Who is the manufacturer of the 2nd dose?",
  key: "whoIsTheManufacturerOfThe2ndDose",
  values: {
    a!map(
      value: "ACME Pharma",
     	valueBoundingBox: a!map(
       	top: 0.10982168,
        left: 0.075827464,
        width: 0.6908191,
        height: 0.340923
        ),
     	valueConfidenceScore: 99,
     	pageNumber: 1
    ),
  /*<All responses for the same query>*/
  }
),
a!map(
  searchQuery: "What is the lot number of the 1st dose?",
  key: "whatIsTheLotNumberOfThe1stDose",
  values: {
    a!map(
      value: "AA1234",
     	valueBoundingBox: a!map(
       	top: 0.90,
        left: 0.19,
        width: 0.29,
        height: 0.64
      ),
     	valueConfidenceScore: 99,
     	pageNumber: 1
    ),
  /*<All responses for all the queries found in the document>*/
  })
a!map(
  searchQuery: "What is patient's first name?",
  key: "whatIsThePatientsFirstName",
  values: {
    a!map(
      value: "John",
     	valueBoundingBox: a!map(
       	top: 0.90,
        left: 0.19,
        width: 0.29,
        height: 0.64
      ),
     	valueConfidenceScore: 99,
     	pageNumber: 1
    ),
  /*<All responses for all the queries found in the document>*/
  })
```

## Use the skill

Once the test results return output you're looking for, you're ready to use advanced IDP tools in a process.

Add the [**Advanced IDP Tools** smart service](Advanced_IDP_Tools_Smart_Service.html) and configure it to call your new skill.

Review [the feature's compliance](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a) to ensure it aligns with your organization's security requirements.

## Supported languages

Appian can extract data from documents in the following languages:

-   English
-   French
-   German
-   Italian
-   Portuguese
-   Spanish

**Tip:**  Additional languages may be supported using the **Document Extraction** AI skill to [extract data from unstructured documents](create-skill-doc-extraction.html#unstructured-documents) using generative AI. In the **Identify Document Type** section, select **Visual elements and text**.

## Usage considerations

Keep in mind the following requirements when using the Advanced IDP Tools AI skill:

When using the Search Queries tool, you can add up to 15 search queries for each document. Each search query can be up to 200 characters.

Refer to the table below to see the requirements for each input type.

| Input Type | PDF | JPEG | PNG | TIFF (single page) | TIFF (multi-page) |
| --- | --- | --- | --- | --- | --- |
| **Max file size** | 25 MB | 10 MB | 10 MB | 10 MB | -   18 MB (file)
-   10 MB (image) |
| **Max pages** | 20 | N/A | N/A | N/A | 20 |
| **Max image dimensions** | N/A | 10k x 10k px | 10k x 10k px | 10k x 10k px | 4k x 4k px |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...