---
source_url: https://docs.appian.com/suite/help/25.3/Image_Component.html
original_path: Image_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Image Component

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

**a!imageField**( _label, labelPosition, instructions, helpTooltip, images, showWhen, size, isThumbnail, style, align, accessibilityText, marginAbove, marginBelow_ )

Displays an image from document management or the web.

**See also**:

-   [Document Image](Document_Image_Component.html).
-   [User Image](User_Image_Component.html).
-   [Web Image](Web_Image_Component.html).

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

Determines where the label appears. Valid values:

-   `"ABOVE"` (default) Displays the label above the component.
-   `"ADJACENT"` Displays the label to the left of the component.
-   `"COLLAPSED"` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.
-   `"JUSTIFIED"` Aligns the label alongside the component starting at the edge of the page.

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

Images

 |

`images`

 |

_Any Type_

 |

Array of images to display, created with a!webImage(), a!userImage(), or a!documentImage().

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

Size

 |

`size`

 |

_Text_

 |

Determines how the images are sized. Valid values: `"ICON"`, `"ICON_PLUS"`, `"TINY"`, `"EXTRA_SMALL"`, `"SMALL"`, `"SMALL_PLUS"`, `"MEDIUM" (default)`, `"MEDIUM_PLUS"`, `"LARGE"`, `"LARGE_PLUS"`, `"EXTRA_LARGE"`, `"FIT"`, `"GALLERY"`.

 |
|

Image is a thumbnail

 |

`isThumbnail`

 |

_Boolean_

 |

Determines whether the images can be viewed at a larger size when clicked. Multiple images will be visible in a slideshow. Default: false.

 |
|

Style

 |

`style`

 |

_Text_

 |

Determines how the images are rendered. Valid values: `"STANDARD"` (default), `"AVATAR"`.

 |
|

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of the image(s). Valid values: `"START"`, `"CENTER"`, `"END"`. Image fields in grids are center-aligned by default. Image fields outside of grids are start-aligned by default.

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

The maximum display dimensions for each _Size_ are listed below:

| Size | Pixels |
| --- | --- |
| `"ICON_PLUS"` | 40x40 |
| `"TINY"` | 60x120 |
| `"EXTRA_SMALL"` | 80x160 |
| `"SMALL"` | 100x200 |
| `"SMALL_PLUS"` | 150x300 |
| `"MEDIUM"` | 200x400 |
| `"MEDIUM_PLUS"` | 300x500 |
| `"LARGE"` | 400x600 |
| `"LARGE_PLUS"` | 600x800 |
| `"EXTRA_LARGE"` | 800x1000 |
| `"GALLERY"` | 240x80 |
| `"FIT"` | Natural dimensions |

## Usage considerations

### Using the style parameter

-   If _style_ is set to `"STANDARD"`, images are scaled down as necessary to fit the size limit, preserving their natural aspect ratio. Images will never be scaled up with this configuration, so they'll display at their natural size if they are smaller than the configured size.
-   If _style_ is set to `"AVATAR"`, images are scaled down or up as necessary to fit the size limit, preserving their natural aspect ratio, and cropped in a circle.

### Using the size parameter

-   If _size_ is set to `"FIT"`, images display at either their natural width or the width of the container, whichever is smaller.
-   Images look best with the `ICON` size if they are 40 x 40 pixels and have a transparent background. The images display at 20 x 20 pixels but an original size of 40 x 40 pixels is recommend if any users view the images on high-definition screens, like an iPhone, iPad, or Mac.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Display a series of document images

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
a!imageField(
  label: "Image Field Example",
  images: {
    a!documentImage(
      document: a!iconNewsEvent(icon: "HAMMER", color: "BLUE")
    ),
    a!documentImage(
      document: a!iconNewsEvent(icon: "GEARS", color: "GREY")
    ),
    a!documentImage(
      document: a!iconNewsEvent(icon: "BRIEFCASE", color: "GREEN")
    )
  }
)
```

Displays the following:

![screenshot of three icon images](images/ImageField_75.png)

### Display a series of user images with looping

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
a!imageField(
  label: "Images",
  size: "MEDIUM",
  style: "AVATAR",
  images: a!forEach(
    /*
    * Usernames of users in your environment.
    * Please adjust usernames appropriately.
    */
    items: { "james.baker", "karen.anderson", "maria.lopez" },
    expression: a!userImage(
      user: fv!item
    )
  )
)
```

Displays the following:

![screenshot of three user images](images/Image_Field_User_Image_Array.png)

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

## Old versions

There are older versions of this interface component. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!imageField\_17r3](/suite/help/25.3/Image_Component_173.html) |
Now supports a style parameter, a separate configuration for thumbnail functionality, and more sizes.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Image Component.

-   [Call to Action Pattern](/suite/help/25.3/call-to-action-pattern.html) (_Formatting_): Use the call to action pattern as a landing page when your users have a single action to take.

-   [Display Processes by Process Model with Status Icons](/suite/help/25.3/recipe-display-processes-by-process-model-with-status-icons.html) (_Grids, Images, Reports_): Use an interface to display information about instances of a specific process model.

-   [Event Timelines](/suite/help/25.3/event-timeline-pattern.html) (_Timeline, Events_): Use the event timeline pattern to display a dated list of events and actions in chronological order. This pattern uses a combination of cards, rich text, and user images to show an easy to navigate list of dated events.

-   [Leaderboard](/suite/help/25.3/leaderboard-pattern.html) (_Looping_): Use the leaderboard pattern to show a selection of your data in an easy to read ranked display.

-   [Milestone Patterns](/suite/help/25.3/milestone_bar.html) (_Looping_): There are two options for milestone patterns which all display some form of a progress indicator to guide users through a series of steps.

-   [Save a User's Report Filters to a Data Store Entity](/suite/help/25.3/recipe-save-a-users-report-filters-to-data-store-entity.html) (_Grids, Smart Services, Filtering, Reports_): Allow a user to save their preferred filter on a report and automatically load it when they revisit the report later.

-   [Track Adds and Deletes in Inline Editable Grid](/suite/help/25.3/recipe-track-adds-and-deletes-in-an-inline-editable-grid.html) (_Grids_): In an inline editable grid, track the employees that are added for further processing in the next process steps.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

-   [User List Pattern](/suite/help/25.3/user-list-pattern.html) (_Looping_): The user list pattern retrieves all the users in a specified group and displays them in a single column.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...