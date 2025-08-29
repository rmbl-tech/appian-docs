---
source_url: https://docs.appian.com/suite/help/25.3/Document_Image_Component.html
original_path: Document_Image_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Document Image

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-images.html">SAIL Design System guidance available for Images</a><p class="ds-release-notice-p">A picture is worth a thousand words. Learn how to use images in your interface designs to say more than words ever could.</p></td></tr></tbody></table>

## Function

**a!documentImage**( _document, altText, caption, link, showWhen_ )

Displays an image from document management for use in an [image](Image_Component.html), [rich text display](Rich_Text_Component.html), [tree browser](Tree_Browser_Component.html), [billboard](Billboard_Layout.html) layout component, or in a [grid column](Grid_Column_Component.html) component in a Read-Only Grid.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Document

 |

`document`

 |

_Document_

 |

The image to display. Supported document types:

-   JPG
-   JPEG
-   PNG
-   GIF
-   SVG
-   BMP

 |
|

Alternate Text

 |

`altText`

 |

_Text_

 |

Alternate text of the image used for the image's alt attribute and read by screen readers; see accessibility considerations for more information.

 |
|

Caption

 |

`caption`

 |

_Text_

 |

Optional text to display in the mouseover text for the image and when the images is viewed in slideshow mode.

 |
|

Link

 |

`link`

 |

_Link_

 |

Link that determines the behavior of an image when clicked. Create links with:

-   [a!authorizationLink()](authorization_link_component.html)
-   [a!documentDownloadLink()](Document_Link_Component.html)
-   [a!dynamicLink()](Dynamic_Link_Component.html)
-   [a!newsEntryLink()](News_Entry_Link_Component.html)
-   [a!processTaskLink()](Process_Task_Link_Component.html)
-   [a!recordLink()](Record_Link_Component.html)
-   [a!reportLink()](Report_Link_Component.html)
-   [a!startProcessLink()](Start_Process_Link_Component.html)
-   [a!submitLink()](Submit_Link_Component.html)
-   [a!userRecordLink()](User_Record_Link_Component.html)
-   [a!safeLink()](Web_Link_Component.html)

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the image is displayed in the component. When set to false, the image is hidden and is not evaluated. Default: true.

 |

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Displaying a document image using a constant

To test this example, replace `cons!MY_PNG` with a constant that points to a document in your environment.

Note that this uses the `document()` function to access the name of the document to display in the interface.

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
a!imageField(
  label: document(
    documentId: cons!MY_PNG,
    property: "name"
  ),
  labelPosition: "ABOVE",
  images: {
    a!documentImage(
      document: cons!MY_PNG
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

The following patterns include usage of the Document Image.

-   [Browse Hierarchical Data](/suite/help/25.3/recipe-configure-a-columns-browser.html) (_Hierarchical Data_): Display a hierarchical data browser.

-   [Call to Action Pattern](/suite/help/25.3/call-to-action-pattern.html) (_Formatting_): Use the call to action pattern as a landing page when your users have a single action to take.

-   [Display Processes by Process Model with Status Icons](/suite/help/25.3/recipe-display-processes-by-process-model-with-status-icons.html) (_Grids, Images, Reports_): Use an interface to display information about instances of a specific process model.

-   [Milestone Patterns](/suite/help/25.3/milestone_bar.html) (_Looping_): There are two options for milestone patterns which all display some form of a progress indicator to guide users through a series of steps.

-   [Refresh Until a Background Action Completes](/suite/help/25.3/recipe-refresh-until-asynchronous-action-completes.html) (_Auto-Refresh_): Use a refresh interval to display the results of a background action automatically.

-   [Track Adds and Deletes in Inline Editable Grid](/suite/help/25.3/recipe-track-adds-and-deletes-in-an-inline-editable-grid.html) (_Grids_): In an inline editable grid, track the employees that are added for further processing in the next process steps.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...