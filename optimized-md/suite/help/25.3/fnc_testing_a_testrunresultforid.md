---
source_url: https://docs.appian.com/suite/help/25.3/fnc_testing_a_testrunresultforid.html
original_path: fnc_testing_a_testrunresultforid.html
version: "25.3"
title: "a!testRunResultForId() Function"
page_id: "fnc_testing_a_testrunresultforid"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!testRunResultForId() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

See [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html), [a!startRuleTestsAll()](Start_Rule_Tests_All_Smart_Service.html), [a!startRuleTestsApplications()](Start_Rule_Tests_Applications_Smart_Service.html) for additional information on other testing functions. See [Parsing Batch Test Results for Expression Rules](Parsing_Batch_Test_Results_for_Expression_Rules.html) for details on parsing a `TestRunResult` data type.

Test results will be grouped by application. Expression rules that are not part of any application, will be grouped in a separate _ApplicationTestResult_ structure with the name _Other Objects_.

Changes made to expression rules after a test run has started will not be reflected on the test results for that test run.

Test results will not reflect changes that were made to expression rules after the test run has started.

Test case execution times out after one minute. As a result, an error status will be set for that particular test case in the test results and other test cases can continue to be executed. The execution of an application or system test doesn't time out.

Test runs can only be queried by the same user who initiated the test, or by a user of type System Administrator.

Results from a test run expire after 7 days. After 7 days, an error will be returned indicating that the test run has been deleted. If you'd like to persist this data for a longer period of time, you will need to write this data into a table in your business data source.

## Function

**a!testRunResultForId**( _testRunId_ )

Provided a test-run ID, this function returns a TestRunResult data type containing the results of a rule test run. If the status of the test is IN PROGRESS, TestRunResult will contain only results for completed tests; if the status is COMPLETE, TestRunResult contains all test results.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`testRunId`

 |

_Integer_

 |

The test-run ID returned when executing a test on a system or applications.

 |

## Returns

[Text](Appian_Data_Types.html#text)

## Example

`a!testRunStatusForId(25)`

Where 25 is a valid test-run ID.

See the [Common Uses](Expression_Rule_Testing_Functions.html#common-uses) section of Expression Rule Testing Functions page for more examples.

## See Also

-   [a!startRuleTestsApplications()](Start_Rule_Tests_Applications_Smart_Service.html)
-   [a!startRuleTestsAll()](Start_Rule_Tests_All_Smart_Service.html)
-   [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html)

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