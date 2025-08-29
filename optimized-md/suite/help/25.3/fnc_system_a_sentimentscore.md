---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_sentimentscore.html
original_path: fnc_system_a_sentimentscore.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!sentimentScore() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Function

**a!sentimentScore**( _text_ )

Returns a list of scores representing the emotional or subjective sentiment expressed in each of the provided text values, ranging from 1.0 (positive) to -1.0 (negative).

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_List of Text String_

 |

The text values from which to extract sentiment scores. For best results, use values that are about the length of a sentence.

 |

## Returns

List of Decimal

## Usage considerations

### Considerations for Appian Cloud users

**Note:**  **Attention Appian Cloud FedRAMP, HIPAA, or PCI-DSS customers:** The Sentiment Score function is not certified as FedRAMP, HIPAA, or PCI-DSS compliant. Customers should use caution when using `a!sentimentScore()` with regulated data, and review for their own compliance requirements.

This function is available only on Appian Cloud and will be enabled on Cloud sites on a rolling basis. You will receive the following error until your site is enabled: `This function is currently unavailable. Please contact your system administrator if this problem persists.`

### Supported text values

-   Supports US English text only.

-   Single large text values will typically not provide useful sentiment scores. For best results, split large values into a list of smaller values that are each about the length of a sentence.

### Autoscaled process models and application performance

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

### Positive sentiment score

```
1
=a!sentimentScore({"Hi, I hope you're having a great day"})
```

returns

  {0.79}

### Negative sentiment score

```
1
=a!sentimentScore({"I got the wrong shipment!"})
```

returns

	{-0.53}

### Returning sentiment scores for multiple statements at once

```
1
2
3
4
5
6
=a!sentimentScore(
  {
    "I lost my wallet and was having a horrible day!",
    "Then someone returned it to me and I was so happy!"
  }
)
```

returns

  {-0.73, 0.72}

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Compatible |  |
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
| Process Autoscaling | Partially compatible |

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...