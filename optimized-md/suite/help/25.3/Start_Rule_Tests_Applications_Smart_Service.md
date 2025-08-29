---
source_url: https://docs.appian.com/suite/help/25.3/Start_Rule_Tests_Applications_Smart_Service.html
original_path: Start_Rule_Tests_Applications_Smart_Service.html
version: "25.3"
title: "Start Rule Tests (Applications)"
page_id: "Start_Rule_Tests_Applications_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Start Rule Tests (Applications)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Start Rule Tests (Applications) Smart Service executes the [test cases](Expression_Rules.html#test-cases) configured for all expression rules in the specified Appian application(s). To test all expression rules within Appian, see [Start Rule Tests (All)](Start_Rule_Tests_All_Smart_Service.html).

For additional context on how this smart service can be used to perform automated testing, see [Automated Testing for Expression Rules](Automated_Testing_for_Expression_Rules.html).

Activating this smart service in the process model starts an asynchronous test run in Appian, and immediately returns a _test-run ID_ that can be used with the [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html) function to retrieve the results when the test run is finished. To check on the status of a test run, use the test-run ID with the [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html) function.

The screenshot below shows a simple workflow that starts a test run, then checks on the status of the test run until the test is completed. The _Get Test Status_ script task, which calls the [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html) function, starts on a scheduled delay of 1 minute. If the status of the test is not `COMPLETE`, the process model loops back to the _Get Test Status_ script task, until the status is `COMPLETE`. At this point, the results of the test are retrieved by the _Get Test Results_ script task, by calling the [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html) function.

![](images/Start_Rule_Tests_Applications.png)

To learn more about parsing test results, see [Parsing Batch Test Results for Expression Rules](Parsing_Batch_Test_Results_for_Expression_Rules.html).

**Note:**  The _Start Rule Tests (Applications)_ smart service only executes the tests in the applications and expression rules to which the user has at least viewer rights. See [Permissions Needed](#permissions-needed) section for additional details.

This smart service can also be executed from web APIs and interfaces. See [a!startRuleTestsApplications()](#astartruletestsapplications).

### Permissions needed

The test run initiated by this smart service only executes the tests in the applications and expression rules to which the user has at least viewer rights.

When initiating this smart service from a process model, you can adjust the user context used to run the smart service from the Assignment tab. See [Assignments](Process_Node_and_Smart_Service_Properties.html#assignment-tab) for more information.

When calling the [a!startRuleTestsApplications()](#astartruletestsapplications) function from a web API, you can specify different credentials to be used by this function; see [Web APIs](Web_APIs.html) for more information.

Getting test status or test results via [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html) or [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html) can only be performed by the user who initiated the test. In addition, users of type administrator can fetch test results for all users.

### Properties

-   **Category**: Business Rules
-   **Icon**: ![Start Rules Tests Application](images/Smart_Service_Icons/Start_Rules_Tests_Application.png)
-   **Assignment Options**: This smart service can be either attended or unattended (default)

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| applications | Application | The applications containing expression rules, whose test cases will be executed. | Yes | Yes |

See also: [Application](Appian_Data_Types.html#application)

**Additional Details**

The following configurations and expected behavior apply when using this smart service from Process Modeler, expression rules, interfaces, or web APIs:

1.  If the _applications_ input is null, a runtime error will be triggered, indicating that the input must not be null.
2.  If the _applications_ input contains at least one application to which the user has no viewer rights, test results will be available for all but the applications to which the user has no viewer rights.
3.  If the _applications_ input contains an application that was deleted after the input was originally set in the smart service, a runtime error will be triggered, indicating that one or more of the applications selected to start a test on don’t exist in the system.

#### Data inputs

To set the applications on which expression rule tests should be executed, complete the following:

1.  Select the **Data** tab.
2.  Select the **Inputs** tab.
3.  Click the **Applications** input on the left panel.
4.  On the right panel, either select the **Applications Picker** to select the application(s) to be tested, or **Open the Expression Editor** and select the rule or constant that determines the application(s) to be tested.

#### Node outputs

| Name | Data Type | Description |
| --- | --- | --- |
| Test-run ID | Number (Integer) | This unique id can be used by the [a!testRunStatusForId](fnc_testing_a_testrunstatusforid.html) and the [a!testRunResultForId](fnc_testing_a_testrunresultforid.html) functions. |

See also: [Number (Integer)](Appian_Data_Types.html#number-integer)

## a!startRuleTestsApplications()

Executes the test cases configured for all expression rules in the specified Appian application(s) from web APIs and interfaces.

### Syntax

**a!startRuleTestsApplications**( _applications, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`applications`

 |

_Application or Application Array_

 |

The applications containing expression rules, whose test cases will be executed.

 |
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

### Usage considerations

-   If the _applications_ parameter is set to an empty array, a test run takes place as though the `startTestsAll` smart service was called.
-   If the _applications_ parameter contains a null element as part of the array, a runtime error will be triggered, indicating that null arguments are invalid.

### Examples

Create two constants of type Application, and set them to two different applications in your environment

For example:

`cons!PURCHASE_REQUEST_APPLICATION` - A constant for a _Purchase Request_ application

`cons!CRM_APPLICATION` - A constant for a _CRM_ application

Both examples below return an integer representing the test-run ID. For example: 1,2, 3, etc.

Copy and paste any of these examples into a new writeable web API to see how this works.

#### Example 1

Starting test for one application.

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
a!startRuleTestsApplications(
   applications: cons!PURCHASE_REQUEST_APPLICATION,
   onSuccess: a!httpResponse(
    statusCode: 200,
    body: fv!testRunId
  ),
  onError: a!httpResponse(
    statusCode: 500,
    body: "Error calling a!startRuleTestsApplications"
  )
)
```

#### Example 2

Starting test for multiple applications.

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
a!startRuleTestsApplications(
   applications: {
      cons!PURCHASE_REQUEST_APPLICATION,
      cons!CRM_APPLICATION
   },
   onSuccess: a!httpResponse(
    statusCode: 200,
    body: fv!testRunId
  ),
  onError: a!httpResponse(
    statusCode: 500,
    body: "Error calling a!startRuleTestsApplications"
  )
)
```

### Related functions

-   [a!startRuleTestsAll()](Start_Rule_Tests_All_Smart_Service.html#astartruletestsall)
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