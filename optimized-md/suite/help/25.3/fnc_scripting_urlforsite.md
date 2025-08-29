---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_urlforsite.html
original_path: fnc_scripting_urlforsite.html
version: "25.3"
title: "a!urlForSite() Function"
page_id: "fnc_scripting_urlforsite"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!urlForSite() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!urlForSite**( _sitePage, urlParameters_ )

Returns a URL for a site page. If the page uses an Interface for the Type, you can optionally use URL parameters to pass values into it. These can be configured in the [site object](sites_object.html#pages).

See [Use URL Parameters for Site and Portal Navigation](url-parameters.html) for more information about URL parameters and how to use them to link to site pages.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`sitePage`

 |

_Site Page_

 |

A reference to a site page, configured using the site! domain. The structure of the site reference is `site![site name].pages.[page web address identifier]`. This parameter is required.

 |
|

`urlParameters`

 |

_Map_

 |

When linking to a page that uses an Interface for the Type, optionally use this parameter to pass values to rule inputs in the interface. Use [a!map()](fnc_system_map.html) to provide up to 10 key-value pairs made of the URL parameter names and their associated values. For example: a!map(state: "Virginia", priority: 4). You can view the URL parameter names by clicking the [page reference](#referencing-site-pages) in the _sitePage_ parameter.

 |

## Returns

Text

## Usage considerations

### Linking to sites across environments

This function makes it easy to link directly to site pages in other environments without hardcoding a link, which is fragile, or using constants, which is cumbersome.

The function automatically uses the domain from the environment from where the link is accessed.

For example, in a development environment, a link created with `a!urlForSite()` might look like https://**dot-dev**.appiancloud.com/projectsite/page/project-dashboard. But when you access the link from a production site, it would look something like https://**dot**.appiancloud.com/projectsite/page/project-dashboard.

### Referencing site pages

The _sitePage_ parameter takes a reference to a site page that is constructed using the `site!` domain. See [Reference a Site Page](reference-sites.html) for more information on how to construct a site page reference.

### Using a!map()

To create a list of the URL parameter names and values for the _urlParameters_ parameter, use the [a!map()](fnc_system_map.html) function to create a list of the URL parameters as key-value pairs. Use the URL parameter name configured in the [Rule Input Configurations](sites_object.html#pages) grid as the key in the key-value pair.

Note that you can also use a dictionary.

**Tip:**  Click the [site page reference](#referencing-site-pages) to view the URL parameter names. They are listed in the expression documentation pane under **Enabled URL Parameter(s)**.

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

This table outlines scenarios that could cause a link to error. To avoid broken links, we've implemented certain error handling. This error handling behaves differently depending on if you use `a!urlForSite()` or construct the links manually using [plaintext URL parameters](url-parameters.html#using-plaintext-url-parameters).

Additionally, if someone changes or deletes a character in an encrypted URL parameter string, all URL parameters that don't have a default value will be ignored.

| If the following is used in a link... | Behavior in manually constructed links | Behavior in a!urlForSite |
| --- | --- | --- |
| A URL parameter name that isn't in the Rule Input Configuration grid for the site page, such as when the URL parameter name is misspelled. | The URL parameter is ignored.

The [default value](url-parameters.html#determine-whether-to-use-a-default-value) will be used for any rule inputs that have it configured. | Expression evaluation error. |
| A plaintext URL parameter that doesn't have **Enable in URL** selected. | The URL parameter is ignored. |
| A URL parameter value that contains more than 100 characters. | The URL parameter is ignored, unless it has a default value configured. |
| More than 10 URL parameters. | All URL parameters are ignored, unless they have a default value configured. |

### Generated URL structure

The structure for the generated URL is:

`https://[site-domain]/[site web address ID]/page/[page web address ID]?[encrypted or plaintext URL parameters]`

For example, a URL with plaintext URL parameters might look something like:

`https://statedot.appiancloud.com/projectsite/page/project-dashboard?county=Fairfax&active=true`.

![site url example](images/url-param-site-url-example.png)

If the page was within a page group, the URL would display as:

`https://statedot.appiancloud.com/projectsite/group/transportation/page/project-dashboard?county=Fairfax&active=true`

**Note:**  If your site has only one page, `/page/[page web address ID]` won't display in the URL. However, if you manually add `/page/` followed by the web address identifier, the link will still work.

By default, URL parameters are encrypted in the generated URL. If **Encrypt URL parameters** is turned off for the site page, the URL parameters will display in plaintext.

## Examples

_Site object and record type references are specific to each environment. If you copy and paste these examples into an interface or expression rule, they will not evaluate. Use them for reference only._

### Link to a site page

```
1
2
3
4
5
6
7
8
a!urlForSite(
  /*Replace the site page and URL parameters with valid references from your environment*/
  sitePage: site!DOT Project Site.pages.project-grid,
  urlParameters: a!map(
    county: "Fairfax",
    active: true
  )
)
```

If **Encrypt URL parameters** is turned on for the page, returns something like:

`https://statedot.appiancloud.com/projectsite/page/project-grid?$sp=AAAAAQAAAAAAAAABAAAAEJipwSTzHzI679DzFIjKqeml6sPuuyAWuAnrDIgMG7D5YVbpCLs1Aq5dZHWqbmLw2Z7wpMI6t6lnbmhP6yg7_4WSE_nNUi8WrhryW08`

The encrypted characters for the URL parameter will change each time `a!urlForSite()` is executed.

If **Encrypt URL parameters** is not turned on for the page, returns:

`https://statedot.appiancloud.com/projectsite/page/project-grid?county=Fairfax&active=true`

### Link to a site page using a link field

You can link to a site page using any component that [a!safeLink](Web_Link_Component.html) can be used in. For example, to link to a site page using a [link component](Link_Component.html):

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
      uri: a!urlForSite(
        /*Replace the site page and URL parameters with valid references from your environment*/
        sitePage: site!DOT Project Site.pages.project-grid,
        urlParameters: a!map(
          county: "Fairfax",
          active: true
        )
      )
    )
  }
)
```

This returns a link with label "Active Projects in Fairfax County" that uses the encrypted or plaintext link from the [Link to a site page](#link-to-a-site-page) example.

![link field component](images/url-for-portal-link-component.png)

### Create copy link button to share link with filtered values

Your users may find it useful to bookmark filtered data or share their filtered data with other users. When you use [URL parameters](url-parameters.html) to set the value of filters, you can add a copy link button to your interfaces that will update with the value of the selected filters.

![copy link button](images/urlforsite-copy-link-button.gif)

**Note:**  Rule inputs can't pass data into [user filters](filter-the-record-list.html#user-filters). To filter data using URL parameters and rule inputs, create the filters manually.

In order for this example to work, after [creating the interface with rule inputs](url-parameters.html#step-1-add-rule-inputs-to-an-interface), [add the interface as a site or portal page](url-parameters.html#step-2-add-the-interface-as-a-site-or-portal-page), then [configure the Rule Input Configuration for the page](url-parameters.html#step-3-configure-the-rule-input-configuration-for-the-page).

_Site and record type references are specific to each environment. This example is for reference only and will not function if you copy and paste it into your environment._

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
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
a!localVariables(
  local!county: a!queryRecordType(
    recordType: 'recordType!{0c73286d-3e6f-4e42-9343-cc79fa5b0845}DOT County',
    pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 30)
  ).data,
  local!selectedCounty: ri!county,
  local!isActive: ri!isActive,
  local!url: a!urlForSite(
    sitePage: 'site!{d70fd713-30e0-45ea-b645-61550a5f163e}Dept of Transportation.pages.{bb0f2448-f8bb-49a1-8883-3a3d17f392cb}projects',
    urlParameters: a!map(
      county: local!selectedCounty,
      isActive: local!isActive
    )
  ),
  {
    a!richTextDisplayField(
      labelPosition: "COLLAPSED",
      value: {
        a!richTextItem(
          text: {a!richTextIcon(icon: "link")," Copy link"},
          link: a!safeLink(
            uri: local!url
          ),
          linkStyle: "STANDALONE"
        )
      },
      tooltip: "Copy link with selected filters",
      align: "RIGHT"
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!dropdownField(
              choiceLabels: local!county['recordType!{0c73286d-3e6f-4e42-9343-cc79fa5b0845}DOT County.fields.{9564c6a0-2c1d-47d2-96e4-3ef3617012c6}value'],
              choiceValues: local!county['recordType!{0c73286d-3e6f-4e42-9343-cc79fa5b0845}DOT County.fields.{85610b86-86b8-4884-8bbd-53e8a65c0e77}id'],
              label: "COUNTY",
              placeholder: "Select a county",
              value: local!selectedCounty,
              saveInto: local!selectedCounty
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!dropdownField(
              choiceLabels: {"Active", "Inactive"},
              choiceValues: {true, false},
              label: "Project Status",
              placeholder: "Select a status",
              value: local!isActive,
              saveInto: local!isActive
            )
          }
        )
      }
    ),
    a!gridField(
      labelPosition: "COLLAPSED",
      data: a!recordData(
        recordType: 'recordType!{e73c189c-20a3-44f5-9726-36164b32af15}DOT Project',
        filters: a!queryLogicalExpression(
          operator: "AND",
          filters: {
            a!queryFilter(
              field: 'recordType!{e73c189c-20a3-44f5-9726-36164b32af15}DOT Project.relationships.{fe28647c-a05a-49c0-9374-cab19f0191ea}county.fields.{85610b86-86b8-4884-8bbd-53e8a65c0e77}id',
              operator: "=",
              value: local!selectedCounty
            ),
            a!queryFilter(
              field: 'recordType!{e73c189c-20a3-44f5-9726-36164b32af15}DOT Project.fields.{d7b7da46-2d1b-4851-a93d-b4e996af5a79}isActive',
              operator: "=",
              value: local!isActive
            )
          },
          ignoreFiltersWithEmptyValues: true
        )
      ),
      columns: {
        a!gridColumn(
          label: "Project Name",
          sortField: 'recordType!{e73c189c-20a3-44f5-9726-36164b32af15}DOT Project.fields.{7e740413-1d8a-4dba-8d9f-d188a773103a}projectName',
          value: fv!row['recordType!{e73c189c-20a3-44f5-9726-36164b32af15}DOT Project.fields.{7e740413-1d8a-4dba-8d9f-d188a773103a}projectName']
        ),
        a!gridColumn(
          label: "County",
          sortField: 'recordType!{e73c189c-20a3-44f5-9726-36164b32af15}DOT Project.relationships.{fe28647c-a05a-49c0-9374-cab19f0191ea}county.fields.{9564c6a0-2c1d-47d2-96e4-3ef3617012c6}value',
          value: fv!row['recordType!{e73c189c-20a3-44f5-9726-36164b32af15}DOT Project.relationships.{fe28647c-a05a-49c0-9374-cab19f0191ea}county.fields.{9564c6a0-2c1d-47d2-96e4-3ef3617012c6}value'],
          align: "START"
        ),
        a!gridColumn(
          label: "Active?",
          sortField: 'recordType!{e73c189c-20a3-44f5-9726-36164b32af15}DOT Project.fields.{d7b7da46-2d1b-4851-a93d-b4e996af5a79}isActive',
          value: if(
            fv!row['recordType!{e73c189c-20a3-44f5-9726-36164b32af15}DOT Project.fields.{d7b7da46-2d1b-4851-a93d-b4e996af5a79}isActive'],
            "Yes",
            "No"
          )
        )
      }
    )
  }
)
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
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