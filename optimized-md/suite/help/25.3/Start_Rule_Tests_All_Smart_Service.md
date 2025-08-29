---
source_url: https://docs.appian.com/suite/help/25.3/Start_Rule_Tests_All_Smart_Service.html
original_path: Start_Rule_Tests_All_Smart_Service.html
version: "25.3"
title: "Start Rule Tests (All)"
page_id: "Start_Rule_Tests_All_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Start Rule Tests (All)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Start Rule Tests (All) smart service executes the [test cases](Expression_Rules.html#test-cases) configured for all expression rules within an Appian system. To limit the testing to specific applications, see [Start Rule Tests (Applications)](Start_Rule_Tests_Applications_Smart_Service.html).

For additional context on how this smart service can be used to perform automated testing, see [Automated Testing for Expression Rules](Automated_Testing_for_Expression_Rules.html).

Activating this smart service in the process model starts an asynchronous test run of all test cases within Appian. It immediately returns a _test-run ID_ that can be used with the [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html) function to retrieve the results when the test run is finished. To check on the status of a test run, use the test-run ID with the [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html) function.

The image below shows a simple workflow that starts a test run, then periodically checks on the status of the test run until the test is completed.

![](images/Start_Rule_Tests_All.png)

The script task, _Get Test Status_, which calls the [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html) function, starts on a scheduled delay of 1 minute. If the test status is not `COMPLETE`, the process model loops back to the Get Test Status script task, until the status is `COMPLETE`.

At this point, the results of the test are retrieved by the _Get Test Results_ script task, by calling the [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html) function.

To learn more about reading test results, see [Parsing Batch Test Results for Expression Rules](Parsing_Batch_Test_Results_for_Expression_Rules.html).

### Permissions needed

The Start Rule Tests (All) smart service only executes the tests for the expression rules to which the user has at least viewer rights.

When initiating this smart service from a process model, you can adjust the user context used to run the smart service from the [assignment tab](Process_Node_and_Smart_Service_Properties.html#assignment-tab).

When calling the [a!startRuleTestsAll()](#astartruletestsall) function from a web API, you can specify different credentials to be used by this function. See [Web APIs](Web_APIs.html) for more information.

Getting test status or test results via [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html) or [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html) can only be performed by the user who initiated the test. In addition, users of type administrator can fetch test results for all users.

### Properties

-   **Category**: Test Management
-   **Icon**: ![Start Rules Test All smart service](images/Smart_Service_Icons/Start_Rules_Test_All.png)
-   **Assignment Options**: This smart service can be either attended or unattended (default)

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node outputs

| Name | Data Type | Description |
| --- | --- | --- |
| Test-run ID | Number (Integer) | This unique id can be used by the [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html) and the [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html) functions. |

See also: [Number (Integer)](Appian_Data_Types.html#number-integer)

## a!startRuleTestsAll()

Executes test cases configured for all expression rules within an Appian system from web APIs and Interfaces

### Syntax

**a!startRuleTestsAll**( _onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`. The test-run ID of the executed test run is available in the [function variable](parts-of-an-expression.html#function-variables) `fv!testRunId`. This can be used to query information about the test run with [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html) and [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html).

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

### Returns

[Save](fnc_evaluation_save.html)

### Example

This example shows a web API returning a test-run ID for a test run of all expression rules in a system.

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
24
25
26
27
28
29
30
a!localVariables(
  local!testRunId,
  local!testRunResult,
  {
    a!buttonLayout(
      secondaryButtons: {
        a!buttonWidget(
          label: "Run Test (All)",
          saveInto: a!startRuleTestsAll(
            onSuccess: a!save(local!testRunId, fv!testRunId),
            onError: {}
          )
        ),
        a!buttonWidget(
          label: "Refresh",
          saveInto: a!save(local!testRunResult, a!testRunResultForId(local!testRunId))
        )
      }
    ),
    a!textField(
      label: "Test-run ID",
      readOnly: true,
      value: local!testRunId
    ),
    a!paragraphField(
      label: "Test Result",
      value: local!testRunResult
    )
  }
)
```

### Related functions

-   [a!startRuleTestsApplications()](Start_Rule_Tests_Applications_Smart_Service.html#astartruletestsapplications)
-   [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html)
-   [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html)

## Feature compatibility

The table below lists this smart service function's compatibility with various features in Appian.

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