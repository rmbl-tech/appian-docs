---
source_url: https://docs.appian.com/suite/help/25.3/Documents_Chat_Component.html
original_path: Documents_Chat_Component.html
version: "25.3"
title: "Documents Chat"
page_id: "Documents_Chat_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Documents Chat

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

**Tip:**  **The Documents Chat component is available as a preview.**
Preview features are fully supported; however, they do not reflect the full functionality or performance of the feature yet. Appian will respond to support issues and will maintain backwards compatibility in future updates.

## Function

**a!documentsChatField**( _label, labelPosition, instructions, showWhen, helpTooltip, documents, height_ )

Creates a chat for users to ask questions about a curated set of documents.

This component uses [Appian AI Copilot](appian-ai-copilot.html) to answer questions about a curated set of documents, enabling users to interact with conversational AI to get quick insights. This component requires no third-party integration to get started. All you need to do is configure the parameters to begin chatting with your documents.

**See also**:

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

Determines where the label appears. Valid values: "ABOVE" (default), "COLLAPSED".

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text about this field.

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

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The help icon does not show when the label position is "COLLAPSED".

 |
|

Document

 |

`documents`

 |

_List of Document_

 |

Array of currently selected documents to chat with. Supported document types include PDF (not scanned), HTML, DOC, DOCX, MD, or TXT. Documents Chat doesn't support scanned PDFs or image-based text. Use text-based PDFs for the best experience.

 |
|

Height

 |

`height`

 |

_Text_

 |

Determines the layout height. Valid values: "SHORT", "MEDIUM", "TALL", "AUTO" (default).

 |

## Usage considerations

### Documents

-   This component requires documents to exist in Appian as a [document object](about-doc-management.html).
-   This component doesn't support scanned PDFs or image-based text. Use text-based PDFs for the best experience.
-   This component supports chatting with multiple documents if their total size is less than 25MB.
-   Only English documents and questions are supported at this time.

### Retention

Documents that haven't been accessed in 30 days become inactive. When a person hasn't chatted with a document in the last 30 days, responses might take a little longer to load the next time you chat with the document. To keep a document ready for quick use, simply access it within 30 days.

### Mobile devices

This component is supported on mobile devices when accessed via web browsers, but not supported on [Appian Mobile](Appian_for_Mobile_Devices.html).

### Reliability of responses

As with any generative AI feature, this component may produce invalid or undesirable answers. Generative AI models sometimes produce "hallucinations," or responses that contain inaccurate information. Users should verify information in chat responses for accuracy.

This component may not provide consistent answers. In other words, the response the component provides today might differ from an answer to the same question with the same data tomorrow.

**Note:**  AI tools are primarily designed for language-based tasks, such as generating text, answering questions, or providing insights. While AI Copilot for data fabric can assist with obtaining numerical answers, other AI Copilot tools are not optimized for performing precise mathematical calculations or for scenarios that require numerical accuracy.

### Compliance

This component is powered by [private AI](private-ai.html), meaning that your inputs and outputs are protected and remain within the boundaries of your Appian Cloud site at all times.

This component is available only on Appian Cloud. Self-managed customers don't have access to this feature.

You will receive the following error until the feature is enabled on your site: `This function is currently unavailable. Please contact your system administrator if this problem persists.`

This feature is available for environments in [select regions](security-compliance.html).

If your Appian environment isn't in a supported region, you can elect to send your data to a supported region. This doesn't change your environment's region. Contact [Appian Support](https://forum.appian.com/) to learn more.

### Security

This function enforces [object security](object-security.html), ensuring that users can only interact with data they are authorized to access when using this component. In other words, users must have at least _Viewer_ permission on a document to ask questions and receive responses regarding that document

## Examples

To experiment with examples, copy and paste the expression into an interface object.

```
1
2
3
4
5
6
7
8
{
  a!documentsChatField(
    label: "Documents Chat",
    labelPosition: "COLLAPSED",
    documents: ri!record[recordType!SMRT Document Collection.relationships.smrtDocument.fields.documentId],
    height: "AUTO"
  )
}
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