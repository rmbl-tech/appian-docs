---
source_url: https://docs.appian.com/suite/help/25.3/Document_Viewer_Component.html
original_path: Document_Viewer_Component.html
version: "25.3"
title: "Document Viewer Component"
page_id: "Document_Viewer_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Document Viewer Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!documentViewerField**( _label, labelPosition, instructions, helpTooltip, document, showWhen, height, altText, disabled, accessibilityText, marginAbove, marginBelow_ )

Displays a document from document management on an interface.

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

Determines where the label appears. Valid values: `"ABOVE"` (default), `"ADJACENT"`, `"COLLAPSED"`, `"JUSTIFIED"`.

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

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

 |
|

Document

 |

`document`

 |

_Document_

 |

The document to display.

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

Height

 |

`height`

 |

_Text_

 |

Determines the field height. Valid values: `"SHORT"`, `"MEDIUM"` (default), `"TALL"`.

 |
|

Alternative Text

 |

`altText`

 |

_Text_

 |

Equivalent alternate text provided to assistive technology. On Appian Mobile, this value is used for the downloadable link label.

 |
|

Disabled

 |

`disabled`

 |

_Boolean_

 |

Determines if the user is prevented from interacting with the document. Default: false.

 |
|

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |
|

Margin Above

 |

`marginAbove`

 |

_Text_

 |

Determines how much space is added above the layout. Valid values: `"NONE"` (default), `"EVEN_LESS"`, `"LESS"`, `"STANDARD"`, `"MORE"`, `"EVEN_MORE"`.

 |
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the layout. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"`, `"STANDARD"` (default), `"MORE"`, `"EVEN_MORE"`.

 |

## Usage considerations

### Displaying documents

This component displays documents uploaded and stored in Appian. To display documents from another system use the [Web Content Field](Web_Content_Component.html).

You can display a document using a:

-   [Record field reference](manage-docs-with-records.html#display-documents). For example, `recordType!Case Document.fields.document`.
-   Constant. For example, `cons!document`.
-   a rule input or local variable that contains the document identifier. For example, `local!document`.

If a document is invalid, has been deleted, or the user does not have access to view it, the component will display `Document not available`.

### Unsupported document types

This component is not intended for displaying images or videos.

-   To display an image from a document in Appian use a [Document Image](Document_Image_Component.html).
-   To display a video use a [Video Field](Video_Component.html).

### Viewing documents on different devices

Document viewing behavior differs depending on the document type and browser. Some browsers may render documents inline, while other browsers or file types may be downloaded. Browser plug-ins or extensions may impact this behavior. Consider the browsers that your users will be using to access your application.

### Security

For security purposes, documents are loaded using the static content URL.

The message `Missing system configuration` will be displayed if this domain is not configured on your Appian instance. See [Post-Install Configurations](Post-Install_Configurations.html#configure-your-static-and-dynamic-content-urls) for more details on this configuration.

### Appian Mobile considerations

On Appian Mobile applications, the document viewer component appears as a document download link. The value provided in `altText` is used for the link label.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Displaying a document from a record type

This example uses a rule input (`ri!record`) to pass in a specific document from the Case Document record type.

Replace the record type references with valid record type references in your environment.

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
  a!documentViewerField(
    label: ri!record[recordType!Case Document.relationships.documentProperties.fields.name],
    document: ri!record[recordType!Case Document.fields.documentId],
    height: "TALL",
    altText: ri!record[recordType!Case Document.relationships.documentProperties.fields.name]
  )
}
```

This expression displays the following:

[![images/display-record-document.png](images/display-record-document.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img56)

[![](images/display-record-document.png)](#_)

### Displaying a blank document

Replace the `document` field value with a valid document in your environment.

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
  a!documentViewerField(
    label: "Appian Whitepaper",
    document: 282578,
    height: "TALL",
    altText: "5 Digital Transformation Predictions for 2018 and Beyond"
  )
}
```

### Displaying a document image using a constant

To test this example, replace `cons!MY_PDF` with a constant that points to a document in your environment.

Note that this uses the `document()` function to access the name of the document to display in the interface.

```
1
2
3
4
5
6
7
a!documentViewerField(
  label: document(
    documentId: cons!MY_PDF,
    property: "name"
  ),
  document: cons!MY_PDF
)
```

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
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

## Related Patterns

The following patterns include usage of the Document Viewer Component.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...