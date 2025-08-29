---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_portalurlwithlocale.html
original_path: fnc_scripting_portalurlwithlocale.html
version: "25.3"
title: "a!portalUrlWithLocale() Function"
page_id: "fnc_scripting_portalurlwithlocale"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!portalUrlWithLocale() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!portalUrlWithLocale**( _locale_ )

Creates a link that allows users to switch between different locales while on a portal. When used in a portal, returns the URL for the current portal page and URL parameters with the specified locale. For example, `https://myorg.com/myportal/page/home?isActive=true&$locale=en_US`.

When used from an interface object, returns a placeholder URL with a locale specified. When used anywhere else, results in an error.

See also: [Portal Design Guidelines](sail/ux-portals.html#for-multilingual-portals-provide-a-way-for-users-to-switch-between-locales)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`locale`

 |

_Text_

 |

Locale to use when displaying the portal. Valid values: a locale code that is enabled in the Admin Console. For example, "en\_US" for English (United States). Refer to [Appian Administration Console](Appian_Administration_Console.html#prodlink-locales) for a list of available locale codes.

 |

## Returns

Text

## Usage considerations

### Using a!portalUrlWithLocale()

The `a!portalUrlWithLocale()` function is used with a [safe link](Web_Link_Component.html) component, in the _uri_ parameter.

When the portal displays in the specified locale, if any of the following are in the interface, they will automatically update to use the new locale.

-   Translation strings (if they are configured for the specified locale)
-   Date and time fields
-   Right-to-left or left-to-right layout
-   Components that use system text, such as the [file upload component](File_Upload_Component.html)

### Using in a form with editable fields

If your interface contains form fields for user inputs, be sure to configure the link to open in a new tab. Otherwise users may lose any information they have entered.

## Examples

_Translation set object references are specific to each environment. If you copy and paste this example into an interface or expression rule, it will not evaluate. Use it for reference only._

### Switching between locales in a form interface

This example shows a form that uses `a!portalUrlWithLocale()` inside a safe link component to switch between locales.

Because it contains form fields for user inputs, we are opening the link in a new tab. This is important because if it opens in the same tab, any information that a user has input could be lost.

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
{
  a!sideBySideLayout(
    items: {
      a!sideBySideItem(
        item: a!richTextDisplayField(
          labelPosition: "COLLAPSED",
          value: {
            a!richTextItem(
              text: "ENGLISH",
              link: a!safeLink(
                uri: a!portalUrlWithLocale(locale: "en_US"),
                /*Since this interface is a form, we want the link to open in a new tab
                to prevent the user from losing work if they click the link */
                openLinkIn: "NEW_TAB"
              ),
              linkStyle: "STANDALONE"
            )
          }
        ),
        width: "MINIMIZE"
      ),
      a!sideBySideItem(
        item: a!richTextDisplayField(
          labelPosition: "COLLAPSED",
          value: {
            a!richTextItem(
              text: "ESPAÑOL",
              link: a!safeLink(
                uri: a!portalUrlWithLocale(locale: "es"),
                openLinkIn: "NEW_TAB"
              ),
              linkStyle: "STANDALONE"
            )
          }
        ),
        width: "MINIMIZE"
      )
    },
    spacing: "SPARSE"
  ),
  a!sectionLayout(
    label: translation!Translations.Section Name,
    contents: {
      a!textField(
        label: translation!Translations.First Name
      ),
      a!textField(
        label: translation!Translations.Last Name
      ),
      a!buttonLayout(
        primaryButtons: {
          a!buttonWidget(
            label: translation!Translations.Submit,
            style: "SOLID"
          )
        },
        secondaryButtons: {
          a!buttonWidget(
            label: translation!Translations.Cancel,
            style: "OUTLINE"
          )
        }
      )
    }
  )
}
```

### Switching between locales in a non-form interface

This example shows an interface that uses `a!portalUrlWithLocale()` inside a safe link component to switch between locales.

Because it contains only read-only content, we are opening the link in the same tab. Since the user can't enter any information into the interface there is no danger of them losing work.

_Translation set object references are specific to each environment. If you copy and paste this example into an interface or expression rule, it will not evaluate. Use it for reference only._

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
{
  a!sideBySideLayout(
    items: {
      a!sideBySideItem(
        item: a!richTextDisplayField(
          labelPosition: "COLLAPSED",
          value: {
            a!richTextItem(
              text: "ENGLISH",
              link: a!safeLink(
                uri: a!portalUrlWithLocale(locale: "en_US"),
                /* Since this interface isn't a form, we can set it to open in the same tab */
                openLinkIn: "SAME_TAB"
              ),
              linkStyle: "STANDALONE"
            )
          }
        ),
        width: "MINIMIZE"
      ),
      a!sideBySideItem(
        item: a!richTextDisplayField(
          labelPosition: "COLLAPSED",
          value: {
            a!richTextItem(
              text: "ESPAÑOL",
              link: a!safeLink(
                uri: a!portalUrlWithLocale(locale: "es"),
                openLinkIn: "SAME_TAB"
              ),
              linkStyle: "STANDALONE"
            )
          }
        ),
        width: "MINIMIZE"
      )
    },
    spacing: "SPARSE"
  ),
  a!headingField(
    text: translation!Translations.Heading 1,
    size: "MEDIUM_PLUS"
  ),
  a!headingField(
    text: translation!Translations.Heading 2,
    size: "SMALL"
  ),
  a!richTextDisplayField(
    labelPosition: "COLLAPSED",
    value: {
      translation!Translations.Body text
    }
  )
}
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