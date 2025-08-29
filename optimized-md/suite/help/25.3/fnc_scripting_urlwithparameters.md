---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_urlwithparameters.html
original_path: fnc_scripting_urlwithparameters.html
version: "25.3"
title: "urlwithparameters() Function"
page_id: "fnc_scripting_urlwithparameters"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# urlwithparameters() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**urlwithparameters**( _path, parameterNames, parameterValues_ )

This function allows you to build a URL from an expression, using arrays of process and constant data.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`path`

 |

_Text_

 |

The URL path. This can be a fully qualified path or a relative path. The path will not be encoded as it is the responsibility of the designer to provide a valid path.

 |
|

`parameterNames`

 |

_Text Array_

 |

The parameters to append to the URL.

 |
|

`parameterValues`

 |

_Text Array_

 |

The parameter values corresponding to the parameter names to append to the URL.

 |

## Returns

Textpath (Text)

## Usage considerations

### URL format

Parameter names are encoded to form a valid URL. For example, spaces are replaced with "%20".

The return value is a fully qualified or relative URL path that is not encoded or validated.

### Casting behavior for single values

Prior to Appian 23.2, if you provided second and third parameters without curly brackets `{}`, they were treated as URL parameter names without values. In Appian 23.2 and above, they are treated as a URL parameter name and value.

For example, `urlwithparameters("https://example.com", "a", 1)` returns the following prior to Appian 23.2:

`https://example.com?a=&1=`

In Appian 23.2 and above, it returns:

`https://example.com?a=1`

See [Using urlwithparameters() to list parameter names without values](#using-urlwithparameters-to-list-parameter-names-without-values) for an example of how to achieve the old functionality.

## Examples

### Using urlwithparameters() in a process model

The following is how you would use `urlwithparameters()` in a process model using an html link and process variables.

`"<a href=" & urlwithparameters("/tio/viewPayments.do", {"claimNumber"}, {pv!claimNumber}) & ">View Payments</a>"`

Returns a link that is specific to a claim number and uses `View Payments` for the link text. For example, when `pv!claimNumber` is `34252`, it returns `/tio/viewPayments.do?claimNumber=34252`.

### Using urlwithparameters() in a link component

The following shows how to use `urlwithparameters()` in a link component.

Use the interactive editor below to test out the example code.

### Using urlwithparameters() to list parameter names without values

To return a list of parameter names without values, use an empty array for the third parameter. For example:

```
1
2
3
4
5
urlwithparameters(
  "url",
  {"a", "b", "c"},
  {}
)
```

Returns `url?a=&b=&c=`.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Partially compatible |
Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
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