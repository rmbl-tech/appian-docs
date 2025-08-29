---
source_url: https://docs.appian.com/suite/help/25.3/User_Record_Link_Component.html
original_path: User_Record_Link_Component.html
version: "25.3"
title: "User Record Link"
page_id: "User_Record_Link_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# User Record Link

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!userRecordLink**( _label, user, view, showWhen, openLinkIn, targetLocation_ )

Defines a link to a user record. User record links must be used in a link parameter of another component, such as the links parameter in the link component.

**See also**:

-   [Modify the User Record Type](Configure_Tempo_Users.html)
-   [Link](Link_Component.html)
-   [Read-Only Grid](Paging_Grid_Component.html)
-   [Images](Image_Component.html)
-   [Tag Items](Tag_Item_Component.html)
-   [Buttons and link design guidance](sail/ux-buttons-vs-links.html)

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

Link text that users click to open the link.

 |
|

User

 |

`user`

 |

_User_

 |

The user whose record will be linked.

 |
|

View

 |

`view`

 |

_Text_

 |

The URL stub for the record view that the link will open. Default is `"summary"`. Go to the record type and click **Views** to find the URL stub for each record view.

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

Open Link In

 |

`openLinkIn`

 |

_Text_

 |

Determines how the record link should open, either in the same tab or a new tab. Valid values: `"SAME_TAB"` (default) or `"NEW_TAB"`. This parameter only applies to web browsers.

 |
|

Target Location

 |

`targetLocation`

 |

_Any Type_

 |

The location where the record should open, which can be either a site page or Tempo. To reference a [site page](reference-sites.html), use the following structure: `site![site name].pages.[page web address identifier]`. Valid values: `"TEMPO"` or a reference to a site page.

 |

## Usage considerations

### Changing and deactivating usernames

-   User record links can be created for both active and deactivated users.
-   User record links continue to work when the user's username changes as long as the "user" field was configured by referencing a variable (e.g. process variable) rather than a username string.

### Link use and security

-   Links may be clicked by everyone; however, [security settings](sites_object.html#security) determine what can be seen. If a user tries to open a URL without having at least viewer rights to the record or record type in that URL, they will see an error.
-   When you link to a record from a record list, it's best to use the `"SAME_TAB"` option and open the link in the same page. However, if you're linking to a related record, it's better to use the `"NEW_TAB"` option and have the link open a different tab that fits the related record.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

Site object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only.

### User record link to a user record summary view

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
a!linkField(
  labelPosition: "COLLAPSED",
  links: {
    a!userRecordLink(
      label: "Daniel Nelson",
      /* Replace this user with a user in your environment */
      user: "daniel.nelson",
      view: "summary"
    )
  }
)
```

The following example will open the user record in a new tab and target location.

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
a!linkField(
  labelPosition: "COLLAPSED",
  links: {
    a!userRecordLink(
      label: "Daniel Nelson",
      /* Replace this user with a user in your environment */
      user: "daniel.nelson",
      view: "summary",
      openLinkIn: "NEW_TAB",
      /* For the "targetLocation" parameter below, replace the site page reference (site!CompanyHome.pages.org-chart)
      with a valid site page reference in your environment */
      targetLocation: site!CompanyHome.pages.org-chart

    )
  }
)
```

A user profile card will display when you hover over a user record link. The profile card displays the following fields from the record summary automatically as long as values are specified:

-   Email
-   Supervisor
-   Phone number
-   Address

For example, if the user profile only has an email specified and the phone number, address, and supervisor fields are blank, only an email address will display.

This example shows the profile card that would display when hovering over a user link created with the example expression:

![images/user_record_link_display.png](images/user_record_link_display.png)

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

## Related Patterns

The following patterns include usage of the User Record Link.

-   [Event Timelines](/suite/help/25.3/event-timeline-pattern.html) (_Timeline, Events_): Use the event timeline pattern to display a dated list of events and actions in chronological order. This pattern uses a combination of cards, rich text, and user images to show an easy to navigate list of dated events.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

-   [User List Pattern](/suite/help/25.3/user-list-pattern.html) (_Looping_): The user list pattern retrieves all the users in a specified group and displays them in a single column.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...