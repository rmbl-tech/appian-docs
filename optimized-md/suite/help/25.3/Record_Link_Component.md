---
source_url: https://docs.appian.com/suite/help/25.3/Record_Link_Component.html
original_path: Record_Link_Component.html
version: "25.3"
title: "Record Link"
page_id: "Record_Link_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Record Link

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-record-actions.html">SAIL Design System guidance available for Record Actions</a><p class="ds-release-notice-p">Make taking action on your data quick, easy, and painless with record actions. Learn how to launch actions directly from any interface to save time and get your work done faster.</p></td></tr></tbody></table>

## Function

**a!recordLink**( _label, recordType, identifier, dashboard, showWhen, openLinkIn, targetLocation_ )

Defines a link to a record view. Record links must be used in a link parameter of another component, such as the links parameter in the link component.

**See also**:

-   [Record Type](Appian_Data_Types.html#record-type)
-   [Link](Link_Component.html)
-   [Read-Only Grid](Paging_Grid_Component.html)
-   [Images](Image_Component.html)
-   [Tag Item](Tag_Item_Component.html)
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

Record Type

 |

`recordType`

 |

_RecordType_

 |

The reference to the record type. Reference the record type using the `recordType!` domain or a constant that points to a record type.

 |
|

Identifier

 |

`identifier`

 |

_Any Type_

 |

The identifier of the record. This is typically the primary key field.

 |
|

View

 |

`dashboard`

 |

_Text_

 |

The URL stub for the record view that the link will open. Default is "summary". Go to the record type and click **Views** to find the URL stub for each record view.

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

Determines where the record view should open, which can be either a site page or Tempo. To reference a [site page](reference-sites.html), use the following structure: `site![site name].pages.[page web address identifier]`. Valid values: `"SAME_PAGE"` (default) or a reference to a site page.

 |

## Usage considerations

### Link use and security

-   Links may be clicked by everyone; however, [security settings](sites_object.html#security) determine what can be seen. If a user tries to open a URL without having at least viewer rights to the record or record type in that URL, they will see an error.
-   When you link to a record from a record list, it's best to use the `"SAME_TAB"` option and open the link in the same page. However, if you're linking to a related record, it's better to use the `"NEW_TAB"` option and have the link open a different tab that fits the related record.
-   Consider using the `targetLocation` parameter to ensure the link opens a site page that is predictable and familiar to your users.

## Examples

_Copy and paste an example into an interface object to experiment with it._

Record type and site object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only.

### Record link that links to the summary dashboard of an entity-backed record

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
a!linkField(
  links: {
    a!recordLink(
      label: "Employee",
      /* For the "recordType" parameter below, replace the record type reference (recordType!Employee) with a
      * valid record type reference in your environment.
      */
      recordType: recordType!Employee,
      identifier: "5"
    )
  }
)
```

### Record link that links to a specific record view

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
a!linkField(
  links: {
    a!recordLink(
      label: "Employee",
      /* For the "recordType" parameter below, replace the record type reference (recordType!Employee)
      with a valid record type reference in your environment */
      recordType: 'recordType!Employee',
      identifier: "5",
      dashboard: " _KcRefg",
      openLinkIn: "NEW_TAB"
    )
  }
)
```

### Record link that links to the record summary view in a specific site page

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
a!linkField(
  links: {
    a!recordLink(
      label: "Employee",
      /* For the "recordType" parameter below, replace the record type reference (recordType!Employee)
      with a valid record type reference in your environment */
      recordType: recordType!Employee,
      identifier: "5",
      openLinkIn: "SAME_TAB",
      /* For the "targetLocation" parameter below, replace the site page reference (site!CompanyHome.pages.org-chart)
      with a valid site page reference in your environment */
      targetLocation: site!CompanyHome.pages.org-chart
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

## Related Patterns

The following patterns include usage of the Record Link.

-   [Configure a Chart Drilldown to a Grid](/suite/help/25.3/recipe-configure-a-chart-drilldown-to-a-grid.html) (_Charts, Grids, Query Data, Records_): Displays a column chart with aggregate data from a record type and conditionally shows a grid with filtered records when a user selects a column on the chart.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Filter the Data in a Grid](/suite/help/25.3/recipe-filter-the-data-in-a-grid.html) (_Grids, Filtering, Records_): Configure a user filter for your read-only grid that uses a record type as the data source. When the user selects a value to filter by, update the grid to show the result.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...