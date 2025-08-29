---
source_url: https://docs.appian.com/suite/help/25.3/fnc_testing_a_testrunstatusforid.html
original_path: fnc_testing_a_testrunstatusforid.html
version: "25.3"
title: "a!testRunStatusForId() Function"
page_id: "fnc_testing_a_testrunstatusforid"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!testRunStatusForId() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

If you want to get the results of a test run, use [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html). To learn about starting a test run, see [a!startRuleTestsAll()](Start_Rule_Tests_All_Smart_Service.html), [a!startRuleTestsApplications()](Start_Rule_Tests_Applications_Smart_Service.html).

Test runs can only be queried by the user who initiated the test run, or a user of type _System Administrator_.

Results from a test run expire after 7 days. After 7 days, an error will be returned indicating that the test run has been deleted. If you'd like to persist this data for a longer period of time, you will need to write this data into a table in your business data source.

## Function

**a!testRunStatusForId**( _testRunId_ )

Provided a test-run ID, this function queries for the status of an expression rule test run.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`testRunId`

 |

_Integer_

 |

The test-run ID for the test run you want to check on.

 |

## Returns

[Text](Appian_Data_Types.html#text)

The following statuses can be returned:

-   `COMPLETE`: All test cases have been executed, and the results are ready to be retrieved with [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html).
-   `IN PROGRESS`: Not all test cases have been executed yet.

### Error Scenarios

-   `INVALID ID`
    -   The ID provided does not match an active test run.
    -   The user lacks sufficient privileges to see the results (the user isn’t an administrator and the test run wasn’t initiated by them).

## Example

`a!testRunStatusForId(25)`

Where 25 is a valid test-run ID.

See the [Common Uses](Expression_Rule_Testing_Functions.html#common-uses) section of Expression Rule Testing Functions page for more examples.

## See Also

-   [a!startRuleTestsApplications()](Start_Rule_Tests_Applications_Smart_Service.html)
-   [a!startRuleTestsAll()](Start_Rule_Tests_All_Smart_Service.html)
-   [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html)

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
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