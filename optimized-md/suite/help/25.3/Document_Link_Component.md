---
source_url: https://docs.appian.com/suite/help/25.3/Document_Link_Component.html
original_path: Document_Link_Component.html
version: "25.3"
title: "Document Download Link"
page_id: "Document_Link_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Document Download Link

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!documentDownloadLink**( _label, document, showWhen_ )

Defines a link used to download a document. Links can be used in charts, grids, hierarchy browsers, images, link fields, milestones, pickers, and rich text.

**See also**:

-   [Link](Link_Component.html)
-   [Read-Only Grid](Paging_Grid_Component.html)
-   [Images](Image_Component.html)
-   [About Document Management](about-doc-management.html)
-   [Buttons and links design guidance](sail/ux-buttons-vs-links.html)

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

Text displayed as the link name the user clicks on.

 |
|

Document

 |

`document`

 |

_Document_

 |

The ID of the document that downloads when the user clicks the link.

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

## Usage considerations

### Using document links with the link field component

To display a single link or an array of links, use this component inside the [Link component](Link_Component.html).

You can display the document download link in the following places:

-   To display a link in a grid, use inside a [Read-Only Grid Column component](Grid_Column_Component.html).
-   To add a link in a chart, use inside the [Chart Series component](Chart_Series_Component.html).
-   To add a link to an image, use inside a [document image](Document_Image_Component.html) or [web image](Web_Image_Component.html) component.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Configure a link using a record field reference

This example uses a rule input (`ri!record`) to access the specific document to display from the Case Document record type.

Record type references are specific to each environment. If you copy and paste this example into your interface, it will not evaluate. Use it as a reference only.

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
{
  a!linkField(
    label: "Download document",
    labelPosition: "ABOVE",
    links: {
      a!documentDownloadLink(
        label: ri!record[recordType!Case Document.relationships.documentProperties.fields.name]
        document: ri!record[recordType!Case Document.fields.document]
      )
    }
  )
}
```

### Configure a link using a constant

This example uses the `document()` function to access the name of the document to display in the interface.

To test this example, replace `cons!myDocument` with a constant that points to a document in your environment.

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
{
  a!linkField(
    label: "Download document",
    labelPosition: "ABOVE",
    links: {
      a!documentDownloadLink(
        label: document(
          documentId: cons!myDocument,
          property: "name"
        ),
        document: cons!myDocument
      )
    }
  )
}
```

### Add a link to an icon

This example displays a download icon that users can click to download a specific document. It uses a rule input (`ri!record`) to access the specific document to display from the AT Invoice record type.

Record type references are specific to each environment. If you copy and paste this example into your interface, it will not evaluate. Use it as a reference only.

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
a!richTextDisplayField(
  value: {
    a!richTextIcon(
      icon: "download",
      caption: ri!record[recordType!AT Invoice.relationships.documentProperties.fields.name],
      link: a!documentDownloadLink(
        label: "Document Link",
        document: ri!record[recordType!AT Invoice.fields.document]
      )
    )
  }
)
```

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
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

The following patterns include usage of the Document Download Link.

-   [Display Multiple Files in a Grid](/suite/help/25.3/recipe-display-multiple-files-in-a-grid-for-editing.html) (_Document Management, Grids_): Show a dynamic number of files in a grid and edit certain file attributes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...