---
source_url: https://docs.appian.com/suite/help/25.3/Parsing_Batch_Test_Results_for_Expression_Rules.html
original_path: Parsing_Batch_Test_Results_for_Expression_Rules.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Parsing Batch Test Results for Expression Rules

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page explains how to read the results of test runs returned by [Automated Testing for Expression Rules](Automated_Testing_for_Expression_Rules.html).

## Test run results structure

The results of a test run will be returned in a [TestRunResult](#testrunresult) data type, which organizes the results by application, followed by rules and finally by test cases.

The following diagram displays the different data types containing test result information:

TestRunResult
|\_ ApplicationTestResult
   |\_ ObjectTestResult
      |\_ TestCaseResult

Each of these data types captures different metrics for a test run, along with additional metadata for test cases, expression rules, and applications. Each data type can be saved as a variable of the corresponding type when used in an expression rule, interface, or process model. Starting from the innermost data type:

| Data Type | Description |
| --- | --- |
| [TestCaseResult](#testcaseresult) | Contains test statistics for each test case. Test cases are grouped by expression rule. |
| [ObjectTestResult](#objecttestresult) | Contains test statistics for each expression rule. Expression rules are grouped by application.
-   Because expression rules can be moved after a test run starts, expresion rules will be part of the application they belong to when all test cases have been completed.
-   Although it is possible to have expression rules that belong to multiple applications; each test case is executed only once. The rule will show up under each application that they are part of.

 |
| [ApplicationTestResult](#applicationtestresult) | Contains test statistics for each application. |
| [TestRunResult](#testrunresult) | Contains test statistics for the test run. A test run can contain zero or more application. |

The following table contains a list of the different fields on each of the data types in this hierarchy. For additional details, see [Data Type Definition](#data-type-definition) section.

| TestRunResult | ApplicationTestResult | ObjectTestResult | TestCaseResult |
| --- | --- | --- | --- |
| id | id | id | id |
| type | uuid | uuid | name |
| status | name | name | status |
| totalExecutionTime | status | version | errorMessage |
| totalElapsedTime | totalExecutionTime | url | failureMessage |
| queueTime | testCount | totalExecutionTime | executionTime |
| startTime | errorCount | totalElapsedTime | elapsedTime |
| endTime | failureCount | queueTime | queueTime |
| testCount | passCount | startTime | startTime |
| errorCount | problemObjectsTestResult | endTime | endTime |
| failureCount | passObjectsTestResult | lastModifiedBy |   |
| passCount |   | lastModifiedOn |   |
| executedBy |   | testCasesResult |   |
| applicationTestResults |   |   |   |

## Data Type Definition

The following sections describes the _TestRunResult_ data type and its children.

**Note:**  _ApplicationTestResult_ and _ObjectTestResult_ will be sorted by name. _TestCaseResult_, will have the same order in which the test cases appear in the expression rule object.

### TestRunResult

TestRunResult contains test statistics for the test run across all applications being tested. A test run can contain zero or more applications.

| Field - Type | Type | Description |
| --- | --- | --- |
| id | Number(Integer) | Unique ID for each test run in the system. This id is passed to the a!testRunResultForId function to retrieve results for the test run. |
| type | Text |
-   System Test
-   Application Test

 |
| status | Text | Specifies the status of the test:

-   `PASS` - All test cases executed passed
-   `ERROR` - There is at least one error in a test case definition
-   `FAIL` - There is at least one error in an assertion but no errors in the test case definition
-   `IN PROGRESS` - Not all test cases have been executed yet

Note: Status values are not internationalized. |
| totalExecutionTime | Number(Decimal) | Sum of executionTime for the individual test cases that are part of the test run in seconds. Difference between _endTime_ and _startTime_ fields in seconds.
Note: Rounded to three decimals as they represent milliseconds. |
| totalElapsedTime | Number(Decimal) | Time it took to execute all test cases in the test run, from the moment the test was queued to the time the last test case finished. Difference between _endTime_ and _queueTime_ fields in seconds.
Note: Rounded to three decimals as they represent milliseconds. |
| queueTime | Data and Time | Time and date when the first test case in the system or application(s) was added to the execution queue.
Note: Rounded to three decimals as they represent milliseconds. |
| startTime | Date and Time | Time and date when the first test case in the test run started executing.
Note: The timezone matches that of the user account calling this function. |
| endTime | Date and Time | Time and date when the last test case in the test run finished executing. If test cases, are still executing, this will be the end time for the last finished test case. If no test cases have been completed, this field will be empty.
Note: The timezone matches that of the user account calling this function. |
| testCount | Number(Integer) | Total number of test cases across all expression rules in the system, or selected application(s) being tested.
Note: If partial results are retrieved, this matches test cases executed thus far. |
| errorCount | Number(Integer) | Total number of errors in the system or selected applications. Either in the definition of expression rules, or in the definition of the test cases.
Note: If partial results are retrieved, this matches the number of errors in test cases executed thus far. |
| failureCount | Number(Integer) | Total number of assertions failed in the system or selected application(s).
Note: If partial results are retrieved, this matches the number of assertions failed in test cases executed thus far. |
| passCount | Number(Integer) | Total number of test cases passed in the system or selected application(s).
Note: If partial results are retrieved, this matches the number of errors in test cases executed thus far. |
| executedBy | Text | The username of the person initiating the test. |
| applicationTestResults | Array of ApplicationTestResult | Test result for the system or selected application(s).
Note: Objects that are not part of any application, will be grouped in an _ApplicationTestResult_ structure with the application name: _Other Objects_; in this case, uuid will be set to an empty string. |

#### Sample TestRunResult

The following table shows a sample test run for an application test, which contains a total of 10 test cases, out of which there is 1 failure and 9 successfully executed test cases.

TestRunResult
   id: 2
   type: Application Test
   status: FAIL
   totalExecutionTime: 0.023
   totalElapsedTime: 0.816
   queueTime: 2016-04-19T21:15:30.430
   startTime: 2016-04-19T21:15:30.890
   endTime: 2016-04-19T21:15:31.240
   testCount: 10
   errorCount: 0
   failureCount: 1
   passCount: 9
   executedBy: michael.smith
   applicationTestResults:  …

### ApplicationTestResult

ApplicationTestResult contains test result for all expression rules in an application, and provides statistics for an individual application.

| Field | Type | Description |
| --- | --- | --- |
| id | Number(Integer) | Unique ID for the application test result. |
| uuid | Text | Uuid of the application being tested. |
| name | Text | Name of the application. Or, _Other Objects_ for objects that don’t belong to any application. |
| url | Text | URL of the application. Or, empty for objects that don't belong to any application. |
| status | Text | Specifies the status of the application being tested:
-   `PASS` - All test cases executed passed.
-   `ERROR` - There is at least one error in a test case definition.
-   `FAIL` - There is at least one error in an assertion but no errors in the test case definition.
-   `IN PROGRESS` - Not all test cases have been executed yet.

Note: Status values are not internationalized. |
| totalExecutionTime | Number(Decimal) | Sum of executionTime for the individual test cases that are part of the application in seconds.
Note: Rounded to three decimals as they represent milliseconds. |
| testCount | Number(Integer) | Total number of test cases across all expression rules in the application being tested. |
| errorCount | Number(Integer) | Total number of errors in the application. Either in the definition of expression rules, or in the definition of the test cases
Note: If partial results are retrieved, this matches the number of errors in test cases executed thus far. |
| failureCount | Number(Integer) | Total number of assertions failed in the application.
Note: If partial results are retrieved, this matches the number of errors in test cases executed thus far. |
| passCount | Number(Integer) | Total number of passed test cases in the application.
Note: If partial results are retrieved, this matches the number of errors in test cases executed thus far. |
| problemObjectsTestResult | Array of ObjectTestResult | Contains object information and a reference to each of the object’s test cases with failed assertions or errors in the definition of the expression rule or in the test case definition. |
| passObjectsTestResult | Array of ObjectTestResult | Contains object information and a reference to each of the object’s test cases with passed test cases. |

#### Sample ApplicationTestResult

The following table shows the details on the application that was tested in the previous section. Although this example is for one application test, a system test can include as many [ApplicationTestResult](#applicationtestresult) data types as applications are in the system.

applicationTestResults
   id: 5379
   uuid: \_a-0000dbf6-6dd4-8000-643f-01ef9001ef90\_4076
   name: Common Objects
   url: https://myapp.appian.com/suite/design/1EkOlUEUY4g\_iybY1hw3HrlEJ0gPV\_iNyOG7M2JYrQ
   status: FAIL
   totalExecutionTime: 0.023
   testCount: 10
   errorCount: 0
   failureCount: 1
   passCount: 9
   problemObjectsTestResult: ...
   passObjectsTestResult: ...

### ObjectTestResult

This section provides details for the _problemObjectsTestResult_ and _passObjectsTestResult_ elements, which are arrays of type _ObjectTestResult_.

The ObjectTestResult contains data for each of the expression rules with test cases.

| Field | Type | Description |
| --- | --- | --- |
| id | Number(Integer) | Unique ID for the object test result. |
| uuid | Text | Object uuid. |
| name | Text | Name of the object. |
| version | Number(Integer) | Object version. |
| url | Text | URL to view the rule in expression rule designer. |
| totalExecutionTime | Number(Decimal) | Sum of executionTime for the individual test cases that are part of the expression rule. Difference between _endTime_ and _startTime_ fields in seconds.
Note: Rounded to three decimals as they represent milliseconds. |
| totalElapsedTime | Number(Decimal) | Time it took to execute all test cases in the object, from the moment the first test case was added to the queue to the time the last test case finished. Difference between _endTime_ and _queueTime_ fields in seconds.
Note: Rounded to three decimals as they represent milliseconds. |
| queueTime | Date and Time | Time and date when the first test case in the object was added to the execution queue.
Note: The timezone matches that of the user account calling this function. |
| startTime | Date and Time | Time and date when the first test case in the object began executing.
Note: The timezone matches that of the user account calling this function. |
| endTime | Date and Time | Time and date when the last test case in the object finished executing.
Note: The timezone matches that of the user account calling this function. |
| lastModifiedBy | Text | Username who last modified the object. This can be used to create a task to inform that user when a test fails. |
| lastModifiedOn | Date and Time | Date and time when the object was last modified. |
| testCasesResult | Array of TestCaseResult | Test results for each of the test cases setup for an object (for example, a rule).
Note: Test cases are filtered (that is, pass, failure) on the _ApplicationTestResult_ data type. |

#### Sample ObjectTestResult

Both, the problemObjectsTestResult and passObjectsTestResult elements, are arrays of type: [ObjectTestResult](#objecttestresult). The Common Objects application contains 4 expression rules, one of which has a failing expresion rule. The example below reflects this by showing 1 problemObjectsTestResult and 3 passObjectsTestResult elements. For simplicity, the sample snippet only shows values for two expression rules, the details for the remaining expression rules are represented with "…"

problemObjectsTestResult:
   id: 5387
   uuid: \_a-0000dbf6-6dd4-8000-643f-01ef9001ef90\_4135
   name: EPC\_getShipmentDate
   version: 2
   url: https://mytestsite.com/suite/design/lIBwMofBiV
   totalExecutionTime: 0.004
   totalElapsedTime: 0.816
   queueTime: 2016-04-19T21:15:30.430
   startTime: 2016-04-19T21:15:31.060
   endTime: 2016-04-19T21:15:31.240
   lastModifiedBy: michael.smith
   lastModifiedOn: 2016-04-19T21:15:27.050
   testCasesResult: ...
   testCasesResult: ...
   testCasesResult: ...

passObjectsTestResult:
   id: 5375
   uuid: \_a-0000dbf6-6dd4-8000-643f-01ef9001ef90\_4112
   name: EPC\_isUserTypeExternal
   version: 1
   url: https://mytestsite.com/suite/design/lIBwMofBiV
   totalExecutionTime: 0.004
   totalElapsedTime: 0.784
   queueTime: 2016-04-19T21:15:30.430Z
   startTime: 2016-04-19T21:15:30.990Z
   endTime: 2016-04-19T21:15:31.210Z
   lastModifiedBy: michael.smith
   lastModifiedOn: 2016-04-19T21:12:49.420Z
   testCasesResult: ...
   testCasesResult: ...
   testCasesResult: ...

passObjectsTestResult: ...

passObjectsTestResult: ...

### TestCaseResult

The TestCaseResult stores data relevant to each of the test cases in an object.

| Field | Type | Description |
| --- | --- | --- |
| id | Number(Integer) | Unique ID for the test case result. |
| name | Text | Name of the test case. |
| status | Text |
-   `PASS` - Test case passed.
-   `ERROR` - There is an error in the test case definition.
-   `FAIL` - An assertion failed.
-   `TIMEOUT` - The execution of the test case timed out.

Note: A timeout status in test cases, will manifest itself as an error at the _ObjectTestResult_ level. |
| errorMessage | Text | Error message due to configuration error or timeout. |
| failureMessage | Text | Assertion error message. |
| executionTime | Number(Decimal) | Time it took to execute the individual test case in seconds.
Note: Rounded to three decimals as they represent milliseconds. |
| elapsedTime | Number (Decimal) | Time it took for the test case to finish executing, including time in the queue. Difference between _queueTime_ and _endTime_ fields in seconds. |
| queueTime | Data and Time | Time and date when the test case was added to the execution queue. |
| startTime | Date and Time | Time and date when the test case started executing. |
| endTime | Date and Time | Time and date when the test case finished executing. |

#### Sample TestCaseResult

The following table shows the details on the 3 test cases that were created for the _PO\_getShipmentDate_ expression rule. Notice that these test cases are grouped under a _problemObjectsTestResult_ data type, as the overall test on this expression rule is considered a failure because one of the three test cases in it failed.

problemObjectsTestResult:
   id: 5387
   uuid: \_a-0000dbf6-6dd4-8000-643f-01ef9001ef90\_4135
   name: PO\_getShipmentDate
   ...
   testCasesResult:
   id: 1255
   name: December
   status: FAIL
   failureMessage: Assertion expression returned false
   executionTime: 0.002
   elapsedTime: 0.635
   queueTime: 2016-04-19T21:15:30.430
   startTime: 2016-04-19T21:15:31.060
   endTime: 2016-04-19T21:15:31.060

   testCasesResult:
      id: 1253
      name: October
      status: PASS
      executionTime: 0.001
      elapsedTime: 0.705
      queueTime: 2016-04-19T21:15:30.430
      startTime: 2016-04-19T21:15:31.130
      endTime: 2016-04-19T21:15:31.130

   testCasesResult:
      id: 1254
      name: November
      status: PASS
      executionTime: 0.001
      elapsedTime: 0.816
      queueTime: 2016-04-19T21:15:30.430
      startTime: 2016-04-19T21:15:31.240
      endTime: 2016-04-19T21:15:31.240

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...