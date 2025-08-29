---
source_url: https://docs.appian.com/suite/help/25.3/Data-Fabric-Chatbot-Component.html
original_path: Data-Fabric-Chatbot-Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Data Fabric Chatbot

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

**Tip:**  **Data fabric chatbot is available as a preview.**
Preview features are fully supported; however, they do not reflect the full functionality or performance of the feature yet. Appian will respond to support issues and will maintain backwards compatibility in future updates.

## Function

**a!dataFabricChatField**( _title, instructions, helpTooltip, suggestedQuestions, recordTypes, userNameFormat, showWhen, placeholder, debugMode_ )

Creates a chatbot for chatting with your data fabric.

This component uses [Appian AI Copilot](appian-ai-copilot.html) to answer questions about your data fabric, enabling users to interact with conversational AI to get quick insights. This component requires no third-party integration to get started. All you need to do is configure the parameters to begin chatting with your data fabric.

[![images/data-fabric-chatbot.png](images/data-fabric-chatbot.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img55)

[![](images/data-fabric-chatbot.png)](#_)

**See also**:

-   [About Record Types](Record_Type_Object.html)
-   [Data fabric insights](allow-users-to-build-reports.html)
-   [AI Copilot](appian-ai-copilot.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Title

 |

`title`

 |

_Text_

 |

The title to be displayed in the bar above the chat. Default: Data Fabric Chatbot

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Provide optional instructions asking the model to return output specific to your business's preferred format, logic, or other requirements.

 |
|

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip.

 |
|

Suggested Questions

 |

`suggestedQuestions`

 |

_List of Variant_

 |

Displays up to three suggested questions for users when they first use the chat. If not specified, no questions are shown. You can provide an array of questions using the [a!suggestedQuestion()](#using-the-suggestedquestions-parameter) function.

 |
|

Record Types

 |

`recordTypes`

 |

_List of Variant_

 |

A reference to one or more record types. You can reference up to 250 record types using the `recordType!` domain. This component answers questions only about the record types specified in this parameter. If the data spans across related record types, ensure you include all relevant record types in the parameter. For example, to determine which customer has purchased the most products, you must reference the Customer, Order, and Product record types.

 |
|

User Name Format

 |

`userNameFormat`

 |

_Text_

 |

The format of the username used in Appian. For example: `firstName.lastName`, or `firstName.lastName@myCompany.com`. Works when conversing across multiple record types. Default: `firstName.lastName`.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true.

 |
|

Placeholder

 |

`placeholder`

 |

_Text_

 |

Initial text shown in the paragraph where the user enters a question. Default message: Ask a question about your data.

 |
|

Debug Mode

 |

`debugMode`

 |

_Boolean_

 |

Outputs the large language model's thoughts as it answers a question. This can help when trying to improve accuracy.

 |

## Best practices

Use these best practices to set up your chatbot's record types and relationships clearly and consistently. Following these recommendations will help ensure better maintainability, improve performance, and create a smoother experience when building and updating your chatbot.

### Add lookup record types

Add lookup record types if you are using defined values like status or priority. Lookup record types help standardize values and improve data consistency.

### Use good field descriptions

-   **Avoid adding field descriptions** if the field name is self-explanatory to keep the interface clean and easy to scan.
-   **Avoid duplicating context** by including synonyms or shared information in the record type description instead of in individual field descriptions. This keeps field descriptions focused and prevents unnecessary repetition.

### Relationship names

-   **Name mapping record types using the pattern Xs to Ys**, where both X and Y are the plural form of the related record types. Use nouns in the record type name. This naming convention makes it clear that the record type represents a relationship between two entities.
    -   For example, a record type that maps "Product" records to "Supplier" records should be named **Products to Suppliers**.
-   **Remove app prefixes from relationship names** to avoid redundancy and make relationship names more readable.
-   **Ensure relationship names match the names of the related record types** and use the pattern xToYMapping or yToXMapping where X and Y are the singular forms of the related record types. This improves clarity when building and maintaining record data models.
    -   For example, a relationship from the Supplier record type to the mapping record type could be named **supplierToProductMapping**.
        ![relationship name](images/automation/relationshipName.png)

## Usage considerations

### Referencing related record types

This component answers questions only about the record types specified in the `recordTypes` parameter. If the data spans across related record types, ensure you include direct references to all relevant record types in the parameter. For example, to determine which customer has purchased the most products, you must reference the Customer, Order, and Product record types.

This component doesn't support references to record type relationships. [See an example below](#related-record-types).

### Using the suggestedQuestions parameter

The _suggestedQuestions_ parameter allows you to display up to three suggested questions for users when they first use the chat. These suggested questions can be helpful examples for users who aren't sure what kind of questions to ask of their data fabric.

To configure these questions, you must use the `a!suggestedQuestions()` function. This function includes the following parameters:

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
| Icon name | `iconName` | Text | Icon to display. See the [Rich Text Icon](Styled_Icon_Component.html) page for available icons. |
| Icon color | `iconColor` | Text | Specifies the color of the icon. Valid values: any valid hex color or predefined values like `"STANDARD"` (default), `"ACCENT"`, `"POSITIVE"`, `"NEGATIVE"`, or `"SECONDARY"`. |
| Question | `question` | Text | Displays a suggested question. Users can click the question to submit it. |

[See an example below](#related-record-types).

### Unsupported characters in record type names

The data fabric chatbot doesn't support record types with certain characters in their names.

Characters like `[`, `]`, `}`, `)`, and `,` are technically allowed; however, record types with these characters can't be used with the data fabric chatbot. These characters prevent the chatbot from responding.

Names that begin and end with a quote are also unsupported. You can include quotes—single ('), double ("), or backtick (\`)—in record type names, but the name can't be fully enclosed in quotes.

### Enriching chat queries with smart search

The data fabric chatbot can provide more relevant and comprehensive answers by going beyond simple keyword matching. This enhanced capability is powered by [smart search](records-smart-search.html), which uses semantic matching to understand a user's intent.

A traditional keyword search looks for exact matches to the words in a query. For example, a search for "car" will only find records containing the word "car". It would miss records that use related terms like "vehicle" or "automobile".

In contrast, smart search understands the meaning behind the words. It recognizes that "car", "vehicle", and "automobile" are conceptually related. This allows the chatbot to return more accurate and complete results, even if the user's query doesn't contain the exact keywords present in the data.

#### How to use smart search

[Smart search](records-smart-search.html) is automatically applied to data fabric chat queries. For this capability to work, you must first configure the source record type. The fields you want to be searchable must be enabled for smart search and be indexed . If you have already configured smart search for your record type, no additional changes are needed for the chatbot component to use it.

**Smart search example**

Imagine you are using the data fabric chatbot to search through IT support cases and you want to find all cases related to computer monitors not working.

-   **User query**: `Cases about a display being broken`

-   **Keyword search results**: A keyword search would look for the exact words "display" and "broken". It might miss relevant cases with descriptions like "The screen is black" or "My monitor won't turn on".

-   **Smart search results**: Smart search understands the user's intent. It recognizes that "display being broken" is semantically related to concepts like "screen", "monitor", "black screen", and "won't turn on". The chatbot would therefore return a more complete list of relevant cases, providing a more helpful and intuitive user experience.

#### Common questions

| Question | Answer |
| --- | --- |
| **Why isn't smart search working?** | If your chat queries are not returning semantic results, verify the configuration of the source record type. The fields you are searching against must be selected for smart search and be indexed. |
| **Can I disable smart search?** | No, you can't disable smart search for the chatbot directly. It is automatically applied to queries using the `includes` operator whenever a searched field is correctly configured for smart search in the record type. |

### Mobile devices

This component is supported on mobile devices when accessed via web browsers, but not supported on [Appian Mobile](Appian_for_Mobile_Devices.html).

### Reliability of responses

Generative AI features are designed to assist you, but like any tool, they might occasionally produce responses that are inaccurate or unexpected. While we strive for accuracy, it's a good idea to double-check the information in chat responses to ensure it meets your needs.

This component may not provide consistent answers. In other words, the response the component provides today might differ from an answer to the same question with the same data tomorrow.

**Note:**  AI tools are primarily designed for language-based tasks, such as generating text, answering questions, or providing insights. While AI Copilot for data fabric can assist with obtaining numerical answers, other AI Copilot tools are not optimized for performing precise mathematical calculations or for scenarios that require numerical accuracy.

### Compliance

This component is powered by [private AI](private-ai.html), meaning that your inputs and outputs are protected and remain within the boundaries of your Appian Cloud site at all times.

This component is available only on Appian Cloud. Self-managed customers don't have access to this feature.

You will receive the following error until the feature is enabled on your site: `This function is currently unavailable. Please contact your system administrator if this problem persists.`

This feature is available for environments in [select regions](security-compliance.html).

If your Appian environment isn't in a supported region, you can elect to send your data to a supported region. This doesn't change your environment's region. Contact [Appian Support](https://forum.appian.com/) to learn more.

### Security

This function enforces [object security](object-security.html), [record-level security](record-level-security.html), and [field-level security](field-level-security.html), ensuring that users can only interact with data they are authorized to access when using the data fabric chatbot.

### Design recommendations and compatibility

This component can't be used in a [side by side layout](Side_By_Side_Layout.html).

This component works best when it takes up the full height of a page. We recommend using it inside a pane component ([see example below](#related-record-types)). If you add other components above or below this one, the page will expand instead of showing a toolbar inside the component. This behavior is intentional and aligns with the recommendation.

## Examples

To experiment with examples, copy and paste the expression into an interface object.

### Related record types

This example demonstrates how you could enable your users to answer questions about the `Support Case` record type and its related record types.

**Note:**  This component answers questions only about the record types specified in the `recordTypes` parameter. If the data spans across related record types, ensure you include direct references to all relevant record types in the parameter. This component doesn't support references to record type relationships.

The following SAIL shows this component inside a pane and using full screen. Because this component appears best in a larger layout, you may want to integrate controls that show or hide the chat window. For example, you may have the main content on one pane and a button or link that shows and hides `a!dataFabricChatField` in another pane.

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
/* We recommend implementing this component using a pane layout */
a!paneLayout(
  panes: {
    a!pane(
      contents: {
        a!dataFabricChatField(
          title: "Chat with Support Cases",
          recordTypes: {
            recordType!SupportCase,
            recordType!SupportCaseStatus,
            recordType!SupportCasePriority,
            recordType!SupportCaseType,
            recordType!SupportCaseComments
          },
          suggestedQuestions: {
            a!suggestedQuestion(
              iconName: "list",
              iconColor: "#000000",
              question: "List all in progress support cases"
            ),
            a!suggestedQuestion(
              iconName: "calculator",
              iconColor: "#000077",
              question: "Provide a count of support cases by priority"
            ),
            a!suggestedQuestion(
              iconName: "clock",
              iconColor: "#0000FF",
              question: "Provide a count of support cases by year and month"
            )
          },
          placeholder: "Ask a question about your data"
        )
      }
    )
  }
)
```

### Related record types that are multiple relationships away

This example demonstrates how to enable users to answer questions about `SupportCases` and multiple nested relationships.

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
a!paneLayout(
  panes: {
    a!pane(
      contents: {
        a!dataFabricChatField(
          title: "Chat with Support Cases",
          recordTypes: {
            recordType!SupportCase,
            recordType!SupportCaseStatus,
            recordType!SupportCasePriority,
            recordType!SupportCaseType,
            recordType!SupportCaseComments,
            recordType!User,  /* Related to the SupportCase record type */
            recordType!Department,  /* Related to the User record type */
            recordType!Task  /* Related to the SupportCase record type */
          },
          suggestedQuestions: {
            a!suggestedQuestion(
              iconName: "list",
              iconColor: "#000000",
              question: "List all in progress support cases"
            ),
            a!suggestedQuestion(
              iconName: "calculator",
              iconColor: "#000077",
              question: "Provide a count of support cases by priority"
            ),
            a!suggestedQuestion(
              iconName: "clock",
              iconColor: "#0000FF",
              question: "Provide a count of support cases by year and month"
            )
          },
          placeholder: "Ask a question about your data"
        )
      }
    )
  }
)
```

### Record types that aren't related

This example demonstrates how to enable users to answer questions about `SupportCases` and record types that aren't related. This may be useful when your users are looking for information that spans across multiple applications and no relationships exist between the record types and data of interest.

For example, in the example below, the component is configured to primarily give information about support cases, but it also includes record types that aren't related to `SupportCase`, such as `Employee` and `Location`. Users can ask questions about support cases, but they can also specifically ask for support cases related to products, employees, departments, and locations. With this component, the app developer doesn't need to create these relationships to enable customers to ask these types of specific questions.

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
a!paneLayout(
  panes: {
    a!pane(
      contents: {
        a!dataFabricChatField(
          title: "Chat with Support Cases",
          recordTypes: {
            recordType!SupportCase,
            recordType!SupportCaseStatus,
            recordType!SupportCasePriority,
            recordType!SupportCaseType,
            recordType!SupportCaseComment
            /* Examples of unrelated record types */
            recordType!Product,
            recordType!Employee,
            recordType!Department,
            recordType!Location
          },
          suggestedQuestions: {
            a!suggestedQuestion(
              iconName: "list",
              iconColor: "#000000",
              question: "List all support cases the CIO department has in progress"
            ),
            a!suggestedQuestion(
              iconName: "calculator",
              iconColor: "#000077",
              question: "Provide a count of support cases by location"
            ),
            a!suggestedQuestion(
              iconName: "clock",
              iconColor: "#0000FF",
              question: "Provide a count of high-priority support cases by employee"
            )
          },
          placeholder: "Ask a question about your data"
        )
      }
    )
  }
)
```

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