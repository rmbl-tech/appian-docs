---
source_url: https://docs.appian.com/suite/help/25.3/Execute_Generative_AI_Skill_Smart_Service.html
original_path: Execute_Generative_AI_Skill_Smart_Service.html
version: "25.3"
title: "Execute Generative AI Skill Smart Service"
page_id: "Execute_Generative_AI_Skill_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Execute Generative AI Skill Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Execute Generative AI Skill smart service lets you integrate your AI skill into your process. This smart service takes input and appends it to the prompt you created in the relevant AI skill. Then, the smart service sends the compiled prompt to a generative artificial intelligence model, which returns an output.

The smart service takes a document, email, or text as input. Review the [list of generative AI skills](gen-ai-skills.html) you can use with this smart service.

### Permissions

The user who executes the process model doesn't need to have access to the AI skill being called by the Execute Generative AI Skill smart service. However, without those permissions, some smart service configuration options are masked.

### Properties

-   **Category**: AI\_Skills
-   **Icon**: ![](images/Smart_Service_Icons/Execute_Prompt.png)
-   **Assignment options**: Unattended

## Configuration options

### Setup tab

The **Setup** tab allows you to select an AI skill.

-   **Select AI Skill**: Search or browse for an AI skill to use with this smart service.

### Data tab

#### Node inputs

Inputs change based on the AI skill you use with this smart service.

##### Document inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Input Document | Document | Runtime document that will be appended to the prompt configured in the selected AI skill. | Y | N |
| Runtime Prompt | Text | An optional runtime prompt that is used instead of the prompt configured in the AI Skill. | N | N |

##### Email inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Input Email | Document | Runtime email that will be appended to the prompt configured in the selected AI skill. | Y | N |
| Runtime Prompt | Text | An optional runtime prompt that is used instead of the prompt configured in the AI Skill. | N | N |

##### Text inputs

Ensure your input format matches the format specified in the prompt. For example, if the prompt includes instructions for the AI to format a list or map into JSON, ensure the input is in list or map format.

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Input Text | Text | Runtime text that will be appended to the prompt configured in the selected AI skill. | Y | N |
| Runtime Prompt | Text | An optional runtime prompt that is used instead of the prompt configured in the AI Skill. | N | N |

#### Node outputs

The smart service returns the model's response as text. If the model encounters an error, details are returned in the `Error Message` output.

| Output | Data Type | Multiple | Description |
| --- | --- | --- | --- |
| Success | Boolean | N | Returns `true` if the execution was successful or `false` if it was unsuccessful. |
| Response | Text | N | The model's response. |
| Error Message | Text | N | When applicable, the error message returned by the model. |
| Input Tokens | Number (Integer) | N | The number of generative AI tokens used by the smart service input and the prompt from the associated AI Skill. |
| Output Tokens | Number (Integer) | N | The number of generative AI tokens used by the _Response_ field. |

## Usage considerations

Activity chaining is supported.

The AI model has a maximum limit of 100,000 tokens to analyze per call. If the combined prompt and input text exceed this limit, you may encounter an error.

If any of these guardrails are limiting, please reach out to your Appian contact.

### Autoscaled process models and application performance

Using this smart service in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

### Input requirements

Input requirements correspond to the type of AI skill you're using with the smart service. Refer to the table below to see the requirements for each input type.

Different requirements apply for each input type:

-   **Text**: Only plain text is supported for text input, so file size, page count, and image limits do not apply.
-   **Email**: EML files are supported with a maximum file size of 25 MB. Page and image size limits do not apply.
-   **Document**: See the following table for the Document input type requirements.

### Document input type requirements

| File Type | Mode | Max File Size | Page Limit | Max Image Size |
| --- | --- | --- | --- | --- |
| **PDF** | Text only | 25 MB | 100 pages | N/A |
| Visual elements and text | 25 MB | 20 pages | N/A |
| **JPEG, PNG** | Text only | 10 MB | N/A | 10k x 10k pixels |
| Visual elements and text | 3.75 MB | N/A | 8k x 8k pixels |
| **TIFF (single-page)** | Text only | 10 MB | 1 page | 10k x 10k pixels |
| Visual elements and text | 3.75 MB | 1 page | 8k x 8k pixels |
| **TIFF (multi-page)** | Text only | 10 MB | 100 pages | 4k x 4k pixels |
| Visual elements and text | 3.75 MB | 20 pages | 4k x 4k pixels |

### Using the runtime prompt

The **Runtime Prompt** is an optional prompt that the smart service can use instead of the prompt configured in the AI Skill. Use a runtime prompt when the prompt needs to dynamically adjust based on user input, data, or context captured during the process execution.

This approach is helpful when you can't define all of the instructions during design time. For example, you can use a runtime prompt to automatically review and evaluate outputs generated earlier in the process. This approach helps improve straight-through processing and reduces the need for manual review.

The following process model example uses a runtime prompt to automate document evaluation and reduce manual review:

[![images/automation/ex-runtime-prompt-process.png](images/automation/ex-runtime-prompt-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img121)

[![](images/automation/ex-runtime-prompt-process.png)](#_)

| Step | Description |
| --- | --- |
| 1 | **Extract case details**: Extracts the customer name and case number from the document. |
| 2 | **Build runtime prompt**: Uses the extracted values to create a runtime prompt dynamically. |
| 3 | **Verify extracted case details**: Uses the runtime prompt to check if the extracted case number is valid. |
| 4 | **Flag invalid extractions**: If the extracted values are not valid, flags them for review. |
| 5 | **Route based on results**:
\- If extracted values are not valid, assigns a review task for manual confirmation.
\- If extracted values are valid, writes to the database. |

#### Include examples

To get the best results with the runtime prompt, always provide clear instructions in plain text and include a few examples. Including examples in the runtime prompt helps guide the AI model to consistently provide a response in the format you want, which makes the output more predictable. Predictable output is easier to parse and use in later steps of a process.

**Note:**  When a runtime prompt is configured, the examples you added while designing the AI Skill won't be used. To influence the AI model's behavior, add examples directly in the runtime prompt.

In this example runtime prompt, we ask the AI model to verify the customer number and case number are in a valid format.

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
<Role>
You are an expert at validating customer and case numbers
using defined format rules.
</Role>

<Context>
A valid customer number follows the format: CUST-#####
A valid case number follows the format: CASE-#####
</Context>

<Instructions>
1) Confirm if each number matches its required format.
2) Return in JSON format as:
  {
  customerNumber: valid/not valid
  caseNumber: valid/not valid
   }
</Instructions>
```

**Tip:**  See the Generative AI Skills page for more information about [writing a good prompt](gen-ai-skills.html#what-makes-a-good-prompt?).

## Examples

### Using JSON

You can pass JSON as input to the smart service, or have JSON returned as output as defined in the prompt. JSON is a common format to create key-value pairs of data that interests you, and it is easily understood by AI models. Therefore, JSON is an easy way to ask the AI skill to return structured data. Once the output is passed to the process model, you can use functions such as [`a!fromJson`](fnc_system_a_fromjson.html) to cast the data to Appian data types.

**Example prompt**

In this example prompt, we ask the AI to find information within an unstructured document, such as a contract.

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
<role>
You are an expert at sifting through large amounts of information and finding the entities of interest. Find the below entities from the input information. Here are the entities you need to return:
</role>

Use the <input> to fill out all <entities>:
<entities>
{
  "invoiceNumber" (type: text)
  "orderNumber" (type: text)
  "invoiceDate" (type: date)
  "dueDate" (type: date)
  "totalDue" (type: decimal)
  "items" (type: list of objects):
        "Hours/Qty" (type: decimal)
        "Service" (type: text)
        "Rate/Price" (type: decimal)
        "Adjust" (type: decimal)
        "Subtotal" (type: decimal)
}
</entities>

<instructions>
- Only output <entities> listed above from the <input>.
- Provide output in valid JSON format, make sure to not include trailing commas at the end of lists
- For fields of 'date' type, return value using ISO 8601 format yyyy-MM-dd, do not return time if present
</instructions>
```

When executed via the smart service, the prompt returns the following output:

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
{
  "invoiceNumber": "INV-3337",
  "orderNumber": "12345",
  "invoiceDate": "2016-01-25",
  "dueDate": "2016-01-31",
  "totalDue": "93.50",
  "items": [
    {
      "Hours/Qty": "1.00",
      "Service": "Web Design",
      "Rate/Price": "$85.00",
      "Adjust": "0.00%",
      "Subtotal": "$85.00"
      }
  ]
}
```

Configure the smart service to store the output as a process variable such as `pv!jsonOuput`, so you can work with it more easily in later nodes.

Using a [script task](Smart_Services.html) and the `a!fromJson` function, you can then cast this data to a record type:

```
1
2
3
4
cast(
  recordType!Orders,
  a!fromJson(pv!jsonOutput)
)
```

Finally, add and configure a [Write Records smart service](Write_Records_Smart_Service.html) to save the data to the record type.

## Runtime behavior

At run-time, the smart service calls a machine learning model that is associated with the AI skill configured in the **Setup** tab.

## Possible error messages

Consult the following table to learn how to fix common errors when using this smart service:

| Error message | Reason | Remedy |
| --- | --- | --- |
| `Invalid input. The combination of the prompt and input text may exceed the maximum size accepted by the AI model. Reduce the prompt or input text size and try again.` | The prompt and input are too large for the AI model to analyze. | Reduce the size of either the prompt or the input and try again. |
| `There is a problem with the task "Execute Prompt" in the process "process_model_name". The underlying AI Skill object has been deleted or is otherwise invalid. Please confirm the node's configuration and try again.` | The Execute Generative AI Skill smart service is referring to an AI skill design object that no longer exists. | Reconfigure the smart service to use an existing AI skill. |
| `The parameter Input Text has an invalid value or is missing.` | The smart service input is empty. | Reconfigure the smart service to pass a value into the input variable. |
| `The underlying AI Skill object has an invalid prompt or the prompt is empty.` | The AI skill does not have the prompt defined. | Edit the AI skill and add a prompt. |
| `An unexpected error occurred while executing the Smart Service.` | Unknown issue communicating with the AI model. | Try again later. |
| `The AI model took too long to respond and timed out.` | The AI model takes too long to respond to the request. | Try again later. |
| `The number of requests exceeds the service quota. Try again later.` | The number of requests to the AI model exceeds the service quota. | Reduce the number of calls to the AI model and try again. |
| `The number of requests and tokens exceeds the limit allowed per minute. Reduce usage or try again later.` | The number of requests and tokens per minute exceeds the limit. | Reduce the size of each prompt and number of calls to the AI model and try again. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...