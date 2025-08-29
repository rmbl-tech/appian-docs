---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_urlforportal.html
original_path: fnc_scripting_urlforportal.html
version: "25.3"
title: "a!urlForPortal() Function"
page_id: "fnc_scripting_urlforportal"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!urlForPortal() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!urlForPortal**( _portalPage, urlParameters, locale_ )

Returns a URL for a portal page. [Edit the page](portal-object.html#pages) in the portal object to map the rule inputs to URL parameters, set default values, or opt out of encrypting URL parameters for the page.

See [Use URL Parameters for Site and Portal Navigation](url-parameters.html) for more information about URL parameters and how to use them to link to portal pages.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`portalPage`

 |

_Portal Page_

 |

A reference to a portal page, configured using the portal! domain. The structure of the portal reference is `portal![portal name].pages.[page web address identifier]`. This parameter is required.

 |
|

`urlParameters`

 |

_Map_

 |

Use this parameter to optionally pass values to rule inputs in the interface. Use [a!map()](fnc_system_map.html) to provide a map of up to 10 URL parameter names and their associated values as key-value pairs. For example: a!map(state: "Virginia", priority: 4). You can view the URL parameter names by clicking the [page reference](#referencing-portal-pages) in the _portalPage_ parameter.

 |
|

`locale`

 |

_Text_

 |

Optional locale to use when displaying the linked portal. Valid values: a locale code that is enabled in the Admin Console. For example, "en\_US" for English (United States). Refer to the [Appian Administration Console](Appian_Administration_Console.html#prodlink-locales) for a list of available locale codes.

 |

## Returns

Text

## Usage considerations

### Referencing portal pages

The _portalPage_ parameter takes a reference to a portal page that is constructed using the `portal!` domain. This domain prefix is a direct object reference that removes the need to create a constant to reference a portal.

It's easy to construct a portal page reference since the `portal!` domain leverages typeahead to suggest a selection of existing portals. If you already know the name of your portal, you can even skip entering the domain and simply type the name of the portal for the domain and portal object reference to appear.

![referencing a portal by its name](images/urlforportal-object-ref.gif)

**Note:**  If you are unable to reference a specific portal, make sure that you have [**Viewer** permission](portal-object.html#security) to the portal object.

The portal object reference combined with `.` dot notation allows you to directly access portal pages, which are identified in the object reference by their web address identifier.

To reference a portal page:

1.  Enter the `portal!` domain and select the portal.
2.  Enter `.` after `portal!<Portal Name>` to autosuggest the portal pages.
3.  Select `pages` to access the menu of pages configured in the portal object.
4.  Select a page's web address identifier from the dropdown to append to the `pages` property.

For example, the reference below refers to the Projects page on the DOT Portal.

![example of referencing a portal page](images/urlforportal-portal-page-ref.png)

When you highlight a portal page from the dropdown, Appian automatically provides additional information about the page, including:

-   Portal name.
-   Page title.
-   Page web address identifier.
-   Interface used as the page content.
-   Whether or not the page is configured to use encrypted URL parameters.
-   URL parameters names that are enabled for the page.

You can also access this information in the expression documentation pane by clicking the portal page reference. Notice how the URL parameter names display under **Enabled URL Parameter(s)**. This will come in handy when using the _urlParameters_ parameter.

![portal page information in the expression documentation pane](images/url-param-doc-pane-all.png)

When using a portal page reference, Appian automatically shortens the reference to improve the readability of your expressions. To display the full reference, simply hover over it.

### Using a!map()

To create a list of the URL parameter names and values for the _urlParameters_ parameter, use the [a!map()](fnc_system_map.html) function to create a list of the URL parameters as key-value pairs. Use the URL parameter name configured in the [Rule Input Configurations](portal-object.html#pages) grid as the key in the key-value pair.

Note that you can also use a dictionary.

**Tip:**  Click the [portal page reference](#referencing-portal-pages) to view the URL parameter names. They are listed in the expression documentation pane under **Enabled URL Parameter(s)**.

For example:

```
1
2
3
4
5
6
urlParameters: a!map(
  /*URL parameter name = county, URL parameter value = "Fairfax"*/
  county: "Fairfax",
  /*URL parameter name = active, URL parameter value = true*/
  active: true
)
```

_This example is for illustrative purposes only. It won't work if you copy and paste it into an expression._

### Error handling

This table outlines scenarios that could cause a link to error. To avoid broken links, we've implemented certain error handling. This error handling behaves differently depending on if you use `a!urlForPortal()` or construct the links manually using [plaintext URL parameters](url-parameters.html#using-plaintext-url-parameters).

Additionally, if someone changes or deletes a character in an encrypted URL parameter string, all URL parameters that don't have a default value will be ignored.

| If the following is used in a link... | Behavior in manually constructed links | Behavior in a!urlForPortal |
| --- | --- | --- |
| A portal that isn't published. | An error page displays. | Expression evaluation error. |
| A URL parameter name that isn't in the Rule Input Configuration grid for the portal page, such as when the URL parameter name is misspelled. | The URL parameter is ignored.

The [default value](url-parameters.html#determine-whether-to-use-a-default-value) will be used for any rule inputs that have it configured. |
| A plaintext URL parameter that doesn't have **Enable in URL** selected. | The URL parameter is ignored. |
| A URL parameter value that contains more than 100 characters. | The URL parameter is ignored, unless it has a default value configured. |
| More than 10 URL parameters. | All URL parameters are ignored, unless they have a default value configured. |

### Generated URL structure

The structure for the generated URL is:

`https://[portal-domain]/[portal web address ID]/page/[page web address ID]?[encrypted or plaintext URL parameters]`

For example, a URL with plaintext URL parameters might look something like:

`https://statedot.appianportals.com/projectportal/page/projects?county=Fairfax&active=true`

![portal url example](images/url-param-portal-url-example.png)

If the page was within a page group, the URL would display as:

`https://statedot.appianportals.com/projectportal/group/transportation/page/projects?county=Fairfax&active=true`

**Note:**  If your portal has only one page, `/page/[page web address ID]` won't display in the URL. However, if you manually add `/page/` followed by the web address identifier, the link will still work.

By default, URL parameters are encrypted in the generated URL. If **Encrypt URL parameters** is turned off for the portal page, the URL parameters will display in plaintext.

## Examples

_Portal object references are specific to each environment. If you copy and paste these examples into an interface or expression rule, they will not evaluate. Use them for reference only._

### Link to a portal page

```
1
2
3
4
5
6
7
8
a!urlForPortal(
  /*Replace the portal page and URL parameters with valid references from your environment*/
  portalPage: portal!DOT Project Portal.pages.project-grid,
  urlParameters: a!map(
    county: "Fairfax",
    active: true
  )
)
```

If **Encrypt URL parameters** is turned on for the page, returns something like:

`https://insurecorp.appianportals.com/dot/page/projects?$sp=AAAAAQAAAAAAAAABAAAAEJipwSTzHzI679DzFIjKqeml6sPuuyAWuAnrDIgMG7D5YVbpCLs1Aq5dZHWqbmLw2Z7wpMI6t6lnbmhP6yg7_4WSE_nNUi8WrhryW08`

The encrypted characters for the URL parameter will change each time `a!urlForPortal()` is executed.

If **Encrypt URL parameters** is not turned on for the page, returns:

`https://statedot.appianportals.com/projectportal/page/project-grid?county=Fairfax&active=true`

### Link to a portal page using a link field

You can link to a portal page using any component that [a!safeLink](Web_Link_Component.html) can be used in. For example, to link to a portal page using a [link component](Link_Component.html):

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
    a!safeLink(
      label: "Active Projects in Fairfax County",
      uri: a!urlForPortal(
        /*Replace the portal page and URL parameters with valid references from your environment*/
        portalPage: portal!DOT Project Portal.pages.project-grid,
        urlParameters: a!map(
          county: "Fairfax",
          active: true
        )
      )
    )
  }
)
```

This returns a link with label "Active Projects in Fairfax County" that uses the encrypted or plaintext link from the [Link to a portal page](#link-to-a-portal-page) example.

![link field component](images/url-for-portal-link-component.png)

### Link to a portal page with a locale specified

When you know what locale the user will want, use the _locale_ parameter to specify the locale in the link.

For example, imagine you have a portal that displays in both English and Spanish with English as the default. When users submit a request, you send them an email with a link to view the details of their request. For Spanish-language users you could automatically open the portal in Spanish by specifying the locale in the link.

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
a!safeLink(
  label: "VER SOLICITUD",
  uri: a!urlForPortal(
    /* Replace the portal page and URL parameters with valid references from your environment */
    portalPage: portal!DOT Portal.pages.service-request,
    urlParameters: a!map(
      requestId: ri!requestId,
      /* This sets the portal locale to Spanish using the "es" locale code */
      locale: "es"
    )
  )
)
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

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
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...