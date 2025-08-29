---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_latesthealthcheck.html
original_path: fnc_system_a_latesthealthcheck.html
version: "25.3"
title: "a!latestHealthCheck() Function"
page_id: "fnc_system_a_latesthealthcheck"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!latestHealthCheck() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!latestHealthCheck()**

Returns the start time, run status, zip file, and report for the latest [Health Check](health-check.html) run.

## Returns

[HealthCheckOutput](Appian_Data_Types.html#healthcheckoutput)

## Usage considerations

### Function requirements

-   To use this function, Health Check must be configured within the [Admin Console](Appian_Administration_Console.html#health-check).

-   To call this function, a user must be either a system administrator or member of the [Health Check Viewers](System_Groups.html#health-check-viewers) group. Only system administrators will be able to see the document ID for the zip file returned as part of the HealthCheckOutput.

-   Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

### Function Results

_You can copy and paste this example into the [Expression Rule Designer](Expression_Rules.html) to see how it works._

```
1
=a!latestHealthCheck()
```

Returns the following:

```
1
2
3
4
[startDateTime=04/25/2020 16:18:38 GMT+00:00,
  runStatus=COMPLETED,
  zip=[Document:1408],
  report=[Document:1409]]
```

### Displaying Health Check Results in an Interface

_To experiment with examples, copy and paste the expression into an interface object._

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
=a!richTextDisplayField(
  value: {
    a!richTextItem(
      text: "Status: ",
      style: "STRONG"
    ),
    a!richTextItem(
      text: a!latestHealthCheck().runStatus
    ),
    "; ",
    if(
      a!latestHealthCheck().runStatus = "COMPLETED",
      a!richTextItem(
        text: "Latest Report",
        linkStyle: "STANDALONE",
        link: a!documentDownloadLink(document: a!latestHealthCheck().report)
      ),
      a!richTextItem(
        text: "No report available",
      )
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