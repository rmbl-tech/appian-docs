---
source_url: https://docs.appian.com/suite/help/25.3/fnc_crf_customfieldlogicalexpression.html
original_path: fnc_crf_customfieldlogicalexpression.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!customFieldLogicalExpression() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!customFieldLogicalExpression**( _operator, conditions_ )

Used in the _whenTrue_ parameter of [a!customFieldMatch()](fnc_crf_customfieldmatch.html), this function allows you to group multiple logical conditions using the `"AND"` and `"OR"` operators.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`operator`

 |

_Text_

 |

Determines how a set of conditions are evaluated. Valid values: `"AND"` and `"OR"`.

 |
|

`conditions`

 |

_Any Type_

 |

A list of `a!customFieldLogicalExpression()`, [a!customFieldCondition()](fnc_crf_customfieldcondition.html), or both. Alternatively, you can provide any custom field function or record field that returns a boolean. You can reference record fields or related record fields using the `recordType!` domain. You can also use `fv!value` to access the _value_ parameter from `a!customFieldMatch()`.

 |

## Usage considerations

### Where to use this function

The `a!customFieldLogicalExpression()` function can only be used to create a custom record field that evaluates in [real time](custom-record-fields.html#about-custom-record-fields). This means you can reference related record fields, constants, and other supported functions in your calculations.

To create a custom record field that evaluates in real-time:

1.  In your record type, go to **Data Model**.
2.  Click **NEW CUSTOM RECORD FIELD**.
3.  From **SELECT A TEMPLATE**, choose **Write Your Own Expression**.
4.  Choose **Real-time evaluation**.
5.  Click **NEXT**.
6.  Enter an expression using any **Custom Field** function.

    **Note:**  Custom record fields that evaluate in real-time must use at least one Custom Field function.

7.  Click **NEXT**.
8.  Enter a **Name** for your custom record field.
9.  Click **CREATE**.
10.  Click **SAVE**. The new custom record field appears in your list of fields.

## Example

See the [a!customFieldMatch() function](fnc_crf_customfieldmatch.html#evaluating-multiple-condition-pairs) for an example.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Compatible |

Can only be used to create a custom record field that [evaluates in real time](custom-record-fields.html#prodlink-real-time-evaluations). It cannot be used anywhere else in your application.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...