---
source_url: https://docs.appian.com/suite/help/25.3/authorization_link_component.html
original_path: authorization_link_component.html
version: "25.3"
title: "Authorization Link"
page_id: "authorization_link_component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Authorization Link

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!authorizationLink**( _label, connectedSystem, showWhen_ )

Defines a link to authorize a user for a connected system that uses OAuth 2.0 Authorization Code grant. Links can be used in charts, grids, hierarchy browsers, images, link fields, milestones, pickers, and rich text.

**See also**:

-   [OAuth 2.0: Authorization Code Grant](Oauth_connected_system.html#providing-users-a-way-to-authorize)
-   [Link](Link_Component.html),
-   [Read-Only Grid](Paging_Grid_Component.html),
-   [Images](Image_Component.html),
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

Text displayed as the link name the user clicks on.

 |
|

Connected System

 |

`connectedSystem`

 |

_Connected System_

 |

Connected system used to generate the authorization link. Provide the connected system value returned by an integration when the response indicates that the user needs to authorize.

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

### Authorizing users & getting data

-   Be sure to read through the external system's documentation to understand what is returned when the user needs to authorize or reauthorize
-   For integrations getting data, use dot notation. For integrations writing data use `fv!connectedSystem`.
-   If the mobile user is signed in as one user in the mobile browser and a different user in the mobile app, authorization will fail.

### Opening authorization links

-   A link created by `a!authorizationLink()` opens in a new browser window.
-   For mobile, a link created by `a!authorizationLink()` will open the device's default browser
    -   Authorization links are made for mobile, so you don't need to worry about the user not being signed-in in the mobile browser.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

When connecting with OAuth, integrations can either get data from or post data to another system

### Integrations retrieving data

Assuming that the integration used a custom error message that returned `Access_token` when an access token was missing, the following interface expression will provide an authorization link.

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
a!localVariables(
  local!integrationResult: rule!EXAMPLE_OAuthIntegration(),
  a!linkField(
    label: "Example Authorization Link",
    /* show when */
    showWhen: local!integrationResult.error.message = "Access_token",
    links: a!authorizationLink(
      label: "Authorize",
      connectedSystem: local!integrationResult.connectedSystem
    )
  )
)
```

### Integrations writing data

If the integration is writing data to another system via OAuth, the integration would be called as a result of a save. These types of integrations, by default, return _onSuccess_ and _onError_. `fv!connectedSystem` is returned when there's an error and can be retrieved through the onError parameter and used to populate the authorization link field.

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
a!localVariables(
  local!results,
  local!connectedSystem,
  local!verify,
  a!sectionLayout(
    contents: a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!buttonLayout(
              secondaryButtons: {
                a!buttonWidget(
                  label: "Save Changes",
                  saveInto: {
                    a!save( local!verify, true),
                    rule!EXAMPLE_OAuthIntegration(
                      onSuccess: a!save( local!results, fv!result),
                      onError: a!save( local!connectedSystem, fv!connectedSystem)
                    )
                  }
                )
              }
            ),
            a!linkField(
              label: "Authorization After Write Attempt",
              showWhen: and(not(isnull(local!connectedSystem)), not(isnull(local!verify))),
              links: a!authorizationLink(
                label: "Authorize",
                connectedSystem: local!connectedSystem
              )
            )
          }
        )
      }
    )
  )
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