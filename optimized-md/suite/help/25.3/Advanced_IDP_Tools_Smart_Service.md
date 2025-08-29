---
source_url: https://docs.appian.com/suite/help/25.3/Advanced_IDP_Tools_Smart_Service.html
original_path: Advanced_IDP_Tools_Smart_Service.html
version: "25.3"
title: "Advanced IDP Tools Smart Service"
page_id: "Advanced_IDP_Tools_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Advanced IDP Tools Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Advanced IDP Tools smart service lets you integrate the [Advanced IDP Tools AI skill](create-skill-advanced-idp-tools.html) into your process, to help you tackle your most complex document processing challenges. This smart service takes content as its input, uses artificial intelligence models to process that content, and then returns a map of comprehensive data according to the tools selected in the AI skill.

The smart service takes PDF, JPEG, PNG, and TIFF files as input, including multi-page TIFFs.

### Permissions

The user who executes the process model doesn't need to have access to the AI skill being called by the Advanced IDP Tools smart service. However, without those permissions, the user won't have access to some smart service configuration options.

To properly view the results, you need to have permission to the content being analyzed.

### Properties

-   **Category**: AI Skills
-   **Icon**: ![](images/Smart_Service_Icons/Extract_From_Document.png)
-   **Assignment options**: Unattended

## Configuration options

### Setup tab

The **Setup** tab allows you to select an AI skill.

-   **Select AI Skill**: Search or browse for an AI skill to use with this smart service.

### Data tab

#### Node inputs

| Name | Data Type | Multiple | Required | Description |
| --- | --- | --- | --- | --- |
| Document | Document | N | Y | File to extract data from. |
| Search queries | List of Map | Y | N | List of questions, phrases, or specific terms to extract additional information from the document. Use only when Search Queries is a selected tool in the [corresponding AI skill](create-skill-advanced-idp-tools.html#choose-tool-types). Limited to 15 queries. |

##### Formatting search queries

The **Search queries** parameter accepts input in a specific format. When passing data into this parameter, format it as a list of maps. For example:

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
{
    a!map(
    searchQuery: "What is the invoice date?",
    key: "invoice_date"
    ),
    a!map(
    searchQuery: "What is the due date",
    key: "due_date"
    ),
}
```

#### Node outputs

The smart service returns a map of data based on the tool types selected in the AI skill.

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

## Usage considerations

Activity chaining is supported.

Keep in mind the following requirements when using this smart service:

-   Max number of search queries as input: 15
-   Max length of each search query: 200 characters
-   Max number of pages in a PDF: 20 pages
-   Max file size for PDF: 25 MB
-   Max file size for images or page size for PDF: 10MB
-   Max image dimensions: 10K x 10K pixels
-   Number of concurrent AI Skill smart services you can have running across all skills in an environment: 100

If any of these guardrails are limiting, please reach out to your Appian contact.

### Autoscaled process models and application performance

Using this smart service in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Runtime behavior

At run-time, the smart service calls the AI skill configured in the **Setup** tab.

## Possible error messages

| Error message | Cause | Remedy |
| --- | --- | --- |
| `The underlying AI Skill object has been deleted or is otherwise invalid. Please confirm the node's configuration and try again.` | The Advanced IDP Tools smart service is referring to an AI skill design object that no longer exists. | Reconfigure the smart service to use an existing AI skill. |
| `The underlying AI Skill object has an invalid analysis type or the analysis type is empty.` | The AI skill does not have a tool type selected. | Edit the AI skill and select at least one tool type to use. |
| `The parameter Input Document has an invalid value or is missing.` | The smart service input is empty. | Edit the smart service **Document** input on the **Data** tab. |
| `An unexpected error occurred while executing the Smart Service.` | Unknown error. | Try again later. |
| `The service took too long to respond and timed out.` | The AI model took too long to respond or otherwise timed out. | Try again later. |
| `The parameter Search Queries can process a maximum of 15 queries per document.` | The **Search Queries** input contains more than 15 queries. | Reduce the number of queries in the **Search Queries** parameter to 15 or fewer. |
| `The parameter Search Queries has an invalid value.` | The smart service search queries input text is invalid. | Edit the **Search Queries** parameter to use a valid format. |
| `The parameter Search Queries has a value but is not selected in the AI Skill configuration.` | The smart service has a value in the **Search Queries** input, but the AI skill does not have **Search Queries** selected as a tool. | Edit the AI skill and select **Search Queries**. |
| `The 'searchQuery' and 'key' fields are mandatory and must not exceed 200 characters.` | One or more search queries or keys are missing or too long. | Add missing values and ensure they're 200 characters or shorter. |
| `The 'searchQuery' and 'key' fields must be unique. Duplicate values are not allowed.` | One or more search queries or keys are duplicated. | Remove duplicate search queries and keys. |
| `The 'searchQuery' or 'key' fields contain unsupported characters. Use only letters, numbers, space, and these symbols: _!#$%?&()*+,-./\:;=?@[]^"{}/~><` | One or more search queries or keys contain unsupported characters. | Revise search queries and keys to remove unsupported characters. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...