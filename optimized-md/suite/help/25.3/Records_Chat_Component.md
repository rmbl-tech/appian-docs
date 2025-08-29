---
source_url: https://docs.appian.com/suite/help/25.3/Records_Chat_Component.html
original_path: Records_Chat_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Records Chat Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

**Tip:**  This component supports US English text only.

## Function

**a!recordsChatField**( _label, labelPosition, instructions, additionalInstructions, helpTooltip, initialMessage, suggestedQuestions, recordType, identifier, fields, relatedRecordData, showWhen, height, buttonStyle_ )

Creates a chatbot for chatting on a record summary view.

This component uses [Appian AI Copilot](appian-ai-copilot.html) to answer questions about a record and related record data, enabling users to interact with conversational AI to get quick insights. This component requires no third-party integration to get started. All you need to do is configure the parameters to begin chatting with your data fabric.

**See also**:

-   [Data fabric insights](allow-users-to-build-reports.html)
-   [AI Copilot](appian-ai-copilot.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Label

 |

`label`

 |

_Text_

 |

Text to display as the field label.

 |
|

Label Position

 |

`labelPosition`

 |

_Text_

 |

Determines where the label appears. Valid values: "ABOVE" (default), or "COLLAPSED".

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text that appears for the user when the component is rendered.

 |
|

Additional Instructions

 |

`additionalInstructions`

 |

_Text_

 |

Provide optional instructions asking the model to return output specific to your business's preferred format, logic, or other requirements. Maximum 5,000 characters.

 |
|

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The help icon does not show when the label position is "COLLAPSED".

 |
|

Initial Message

 |

`initialMessage`

 |

_Text_

 |

Initial message shown to the user from the chatbot. This will be the beginning of the chat conversation. Default: "Hi! I'm an AI-powered chatbot who can give you more information on this record. What would you like help with?"

 |
|

Suggested Questions

 |

`suggestedQuestions`

 |

_Text_

 |

Displays up to three questions the user can choose from when first interacting with the chatbot. Default: "What questions can you answer?"

 |
|

Record Type

 |

`recordType`

 |

_Record Type_

 |

A reference to a record type, configured using the recordType! domain. For example, recordType!Case.

 |
|

Identifier

 |

`identifier`

 |

_Any Type_

 |

The record ID (identifier) identifies the individual record within the record type.

 |
|

Fields

 |

`fields`

 |

_Any Type_

 |

The record type's fields to be sent to the chatbot. Use a list of record field or related record field references defined with the recordType! domain. When this parameter is null, only record fields from the specified record type are returned. Learn more about [using the fields parameter](#using-the-fields-parameter).

 |
|

Related Record Data

 |

`relatedRecordData`

 |

_Any Type_

 |

When selecting one-to-many related record data, use a!relatedRecordData() to filter, sort, and limit the related record sets. The maximum number is 100. Learn more about [using the relatedRecordData parameter](#using-the-relatedrecorddata-parameter).

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component/layout is displayed on the interface. When set to false, the component /layout is hidden and is not evaluated. Default: true.

 |
|

Height

 |

`height`

 |

_Text_

 |

height (Text): Determines the layout height. Valid values: "SHORT", "MEDIUM", "TALL", "AUTO" (default).

 |
|

Button Style

 |

`buttonStyle`

 |

_Text_

 |

Determines the style of the chat send button. Valid values: "NORMAL" Displays the label and border in the accent color. "PRIMARY" (Default) Displays the label in white on an accent color background. "LINK" Displays the label in the accent color and has no border until focused.

 |

## Usage considerations

### Reliability of responses

As with any generative AI feature, this component may produce invalid or undesirable answers. Generative AI models sometimes produce "hallucinations," or responses that contain inaccurate information. Users should verify information in chat responses for accuracy.

This component may not provide consistent answers. In other words, the response the component provides today might differ from an answer to the same question with the same data tomorrow.

**Note:**  AI tools are primarily designed for language-based tasks, such as generating text, answering questions, or providing insights. While AI Copilot for data fabric can assist with obtaining numerical answers, other AI Copilot tools are not optimized for performing precise mathematical calculations or for scenarios that require numerical accuracy.

### Compliance

This component is powered by [private AI](private-ai.html), meaning that your inputs and outputs are protected and remain within the boundaries of your Appian Cloud site at all times.

This component is available only on Appian Cloud. Self-managed customers don't have access to this feature.

You will receive the following error until the feature is enabled on your site: `This function is currently unavailable. Please contact your system administrator if this problem persists.`

Customers will need to contact Appian Support to enable this feature, but should [review its compliance](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a) to ensure it aligns with your organization's security requirements before doing so.

This feature is available for environments in [select regions](security-compliance.html).

If your Appian environment isn't in a supported region, you can elect to send your data to a supported region. This doesn't change your environment's region. Contact [Appian Support](https://forum.appian.com/) to learn more.

### Security

This function returns data according to [record-level security](record-level-security.html) you have configured.

### Compatibility

This component can't be used in a Side by Side layout.

### Using the additionalInstructions parameter

Depending on where you plan to make records chat available to your users, you may want to control the component's output. You can do this by including your requirements in the `additionalInstructions` parameter. The text included in this parameter is sent to the model as part of the prompt.

For example, if your users will be interacting with records chat in a dashboard designed for executives, the users will probably want short and succinct replies to their questions. As the developer, you can specify that you want short replies in the `additionalInstructions` parameter so the model powering the component knows what an appropriate response would be in that context.

Use this parameter to specify other logic, format, or other requirements you want the model to apply in the model output.

### Using the fields parameter

By default, this function will return the fields from the base record type. If you also want to return [related record fields](record-type-relationships.html), you can reference the fields or the relationship in the _fields_ parameter.

| To return… | Use… | Example _fields_ value |
| --- | --- | --- |
| A record field | The `recordType!` domain to reference a record field. | `recordType!Case.fields.description` |
| All record fields | No reference. If you don't include the _fields_ parameters, the function will return all record fields from the selected `recordType`. | N/A |
| A related record field | The `recordType!` domain to reference a relationship and related record field. | `recordType!Customer.relationships.cases.fields.status` |
| All related record fields from a relationship | The `recordType!` domain to reference a relationship. | `recordType!Customer.relationships.cases` |

If you are querying a [one-to-many relationship](record-type-relationships.html), a maximum of 100 related records will be returned. For example, when querying customers and their related support cases, the query will return up to 100 related support cases for the customer.

### Using the relatedRecordData parameter

The _relatedRecordData_ parameter allows you to filter, sort, and limit related record data from a [one-to-many relationship](record-type-relationships.html) using the [a!relatedRecordData()](fnc_system_relatedrecorddata.html) function.

For example, let's say you're querying the Customer record type and you only want to return the last three cases associated with each customer. Since a customer can have many cases, by default, the query will return up to 100 cases related to each customer. In the _relatedRecordData_ parameter, you could use the `a!relatedRecordData()` function to limit the result to three and sort the cases so the most recent appears first.

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
a!recordsChatField(
  recordType: recordType!Customer,
  identifier: ri!id,
  fields: {
      recordType!Customer.id,
      recordType!Customer.firstName,
      recordType!Customer.lastName,
      recordType!Customer.relationships.case.id,
      recordType!Customer.relationships.case.title,
      recordType!Customer.relationships.case.description,
      recordType!Customer.relationships.case.createdOn,
      recordType!Customer.relationships.case.createdBy,
  },
  relatedRecordData: a!relatedRecordData(
    relationship: recordType!Customer.relationships.case,
    limit: 3,
    sort: a!sortInfo(
      field: recordType!Case.fields.createdOn,
      ascending: true
    )
  )
)
```

When applying a filter or sort to `a!relatedRecordData()`, your record field or related record field reference must start from the related record type specified in the _relationship_ parameter. See [additional usage considerations](fnc_system_relatedrecorddata.html#usage-considerations) for using the `a!relatedRecordData()` function.

### Aggregating related record data

The `a!aggregationFields()` function is not supported with `a!recordsChatField()`.

If you need to aggregate related record data, use [a!queryRecordType()](fnc_system_queryrecordtype.html#aggregating-data) instead.

### Appian Mobile considerations

This component is not supported in the [Appian Mobile](Appian_for_Mobile_Devices.html) app. To use records chat on a mobile device, view the interface in a mobile browser.

### Improve response quality

To help users get more accurate and relevant answers from the Records Chat Component, make sure your record type is easy for the model to understand. Use clear, descriptive language when configuring the following fields in your record type:

-   **Display names**: Use display names that a non-technical user would recognize. Avoid abbreviations or internal terminology. For example, use `Employee ID` instead of `emp_id`.

-   **Field descriptions**: Add a short description for each field that explains what the data represents. Include an example value when helpful. Example: `A unique ID assigned to each employee, such as 12345 or E1023.`

-   **Record type description**: Write a complete sentence summarizing what the record type contains and how it's used. This helps the chatbot understand the data's context. Example: `This record type stores employee details, such as names, job titles, and contact information, for use in HR processes and employee directory lookups.`

These improvements help the chatbot interpret user questions more accurately and return better answers in chat.

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Incompatible |  |
| Offline Mobile | Incompatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |
Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Incompatible |

Cannot be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...