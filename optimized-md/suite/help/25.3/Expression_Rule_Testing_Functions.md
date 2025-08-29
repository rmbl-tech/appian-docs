---
source_url: https://docs.appian.com/suite/help/25.3/Expression_Rule_Testing_Functions.html
original_path: Expression_Rule_Testing_Functions.html
version: "25.3"
title: "Expression Rule Testing Functions"
page_id: "Expression_Rule_Testing_Functions"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Expression Rule Testing Functions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page includes detailed information about the [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html) and the [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html) functions, which can be used to query the status, or fetch the results of an expression rule test run. For information on starting a test run, see [a!startRuleTestsAll()](Start_Rule_Tests_All_Smart_Service.html) and - [a!startRuleTestsApplications()](Start_Rule_Tests_Applications_Smart_Service.html).

## Common uses

The following examples represent some common uses of the [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html) and [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html) functions.

### Integrating with an external system

Running expression rule tests from an external systems can be accomplished by creating web APIs that use expression rule testing functions and smart services in them.

The first web API should _start_ the test exectution by using either the [a!startRuleTestsAll()](Start_Rule_Tests_All_Smart_Service.html) or the - [a!startRuleTestsApplications()](Start_Rule_Tests_Applications_Smart_Service.html) smart services. The second web API should _query the status_ of a test run by using the [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html). Finally, the third web API should _fetch the results_ of the test by using the [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html) function.

Once these web APIs are created, they can then be called from the external system.

The following example shows a writeable web API (that is, HTTP Method: POST) that start the test run and return the test-run ID (that is, fv!testRunId) which can then be used by the external system to query the status and/or fetch the test results.

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
a!startRuleTestsAll(
   onSuccess: a!httpResponse(
    statusCode: 200,
    body: fv!testRunId
  ),
  onError: a!httpResponse(
    statusCode: 500,
    body: "An error occurred when calling a!startRuleTestsAll"
  )
)
```

-   Use the [a!startRuleTestsApplications()](Start_Rule_Tests_Applications_Smart_Service.html) smart service instead, if you want to start a test on expression rules that belong to specific applications.
-   Writeable web APIs require you to set the HTTP Method to POST.

Assuming the writeable API listed above has been created, you would then create another web API similar to the one shown below to query the status of the test run. In this example, this web API receives a `testRunId` parameter (`http!request.queryParameters.testRunId`), and returns a text representing the status of the test run. This web API may have to be invoked more than once, until the status of the test run is `COMPLETE`.

```
1
2
3
4
5
6
a!httpResponse(
  statusCode: 200,
  headers: {},
  body:
    a!testRunStatusForId(http!request.queryParameters.testRunId)
)
```

Once the status returned by the previous web API is `COMPLETE`, you can get the entire result set by using the web API below. In this example, the test results are transformed to xml using the `toxml()` function so the external system can parse the test results.

```
1
2
3
4
5
6
7
a!httpResponse(
  statusCode: 200,
  headers: {},
  body: toxml(
    a!testRunResultForId(http!request.queryParameters.testRunId)
    )
)
```

See [Running Automated Tests on Expression Rules from Jenkins](Running_Automated_Tests_on_Expression_Rules_with_Jenkins.html) for step-by-step instructions on how to integrate expression rule testing with Jenkins.

### Using test results in an interface

If you don't want to use an external system to perform automated testing, you can alternatively use Appian forms and reports. Both have the capability of running tests and displaying the results in drillable grids and graphs.

The following example allows designers to run a test on all expression rules in an Appian system, or an application; and display the results of a test run as the test executes, or once it is finished.

The interface provides the following fields and buttons to provide the functionality described above.

**Buttons**

-   **Run System Test**: Calls the [a!startRuleTestsAll()](Start_Rule_Tests_All_Smart_Service.html) smart service and stores the test-run ID in the `local!testRunId` variable, which is then displayed in the _Test-run ID_ field.
-   **Run App Test**: Calls the - [a!startRuleTestsApplications()](Start_Rule_Tests_Applications_Smart_Service.html) smart service and stores the test-run ID in the `local!testRunId` variable, which is then displayed in the **Test-run ID** field.
-   **Refresh**: Calls the [a!testRunStatusForId()](fnc_testing_a_testrunstatusforid.html) function by passing the `local!testRunId` variable and saving the result in the `local!testStatus` variable, which is then displayed in the _Status_ field.

-   This example requires you to create a new constant of type application named _TEST\_APPLICATIONS_ to run a test on select applications.
-   Every time the interface is re-loaded, the [a!testRunResultForId()](fnc_testing_a_testrunresultforid.html) function is called to obtain test results, which can be used to update the corresponding fields and the pie chart in this interface.

The following screenshot shows what this sample interface looks like. _Copy and paste an example into a new interface to see how this works._

![screenshot of rule test results](images/Rule_Test_SAIL_Example.png)

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
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
=a!localVariables(
  local!testRunId,
  local!error,
  local!checkStatusCounter: 0,
  local!testRunStatus: a!refreshVariable(
    value: if(isnull(local!testRunId), null, a!testRunStatusForId(local!testRunId)),
    refreshInterval: if(or(isnull(fv!value), fv!value = "COMPLETE"), null, 0.5),
    refreshOnVarChange: local!checkStatusCounter
  ),
  local!isAppTest,
  local!testRunResults: if(
    local!testRunStatus = "COMPLETE",
    a!testRunResultForId(local!testRunId),
    null
  ),
  {
    a!buttonLayout(
      secondaryButtons: {
        a!buttonWidget(
          label: "Run System Test",
          size: "SMALL",
          saveInto: {
            a!startRuleTestsAll(
              onSuccess: {
                a!save(local!testRunId, fv!testRunId)
              },
              onError: {
                a!save(local!error, "Could not execute test.")
              }
            ),
            a!save(local!isAppTest, false)
          }
        ),
        a!buttonWidget(
          label: "Run App Test",
          size: "SMALL",
          saveInto: {
            a!startRuleTestsApplications(
              applications: cons!TEST_APPLICATIONS,
              onSuccess: {
                a!save(local!testRunId, fv!testRunId)
              },
              onError: {
                a!save(local!error, "Could not execute test.")
              }
            ),
            a!save(local!isAppTest, true)
          }
        ),
        a!buttonWidget(
          label: "Check Status",
          size: "SMALL",
          value: local!checkStatusCounter + 1,
          saveInto: local!checkStatusCounter
        )
      }
    ),
    a!sectionLayout(
      label: "Summary" &
      if(isnull(local!testRunResults), null, " - " & local!testRunResults.type),
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!textField(
                  label: "Test-run ID",
                  labelPosition: "ADJACENT",
                  value: local!testRunId,
                  readOnly: true,
                  showWhen: not(isnull(local!testRunId))
                ),
                a!richTextDisplayField(
                  label: "Status",
                  labelPosition: "ADJACENT",
                  showWhen: not(isnull(local!testRunId)),
                  value: if(
                    local!testRunStatus = "COMPLETE",
                    if(
                      local!testRunResults.status="ERROR",
                      {
                        a!richTextImage(
                          image: a!documentImage(
                            document: a!iconIndicator("STATUS_ERROR")
                          )
                        ),
                        "One or more tests encountered an error"
                      },
                      local!testRunResults.status="FAIL",
                      {
                        a!richTextImage(
                          image: a!documentImage(
                            document: a!iconIndicator("STATUS_NOTDONE")
                          )
                        ),
                        "One or more test case assertions failed"
                      },
                      local!testRunResults.status="PASS",
                      {
                        a!richTextImage(
                          image: a!documentImage(
                            document: a!iconIndicator("STATUS_OK")
                          )
                        ),
                        "All test case assertions passed"
                      },
                      {
                        a!richTextImage(
                          image: a!documentImage(
                            document: a!iconIndicator("PROGRESS_RUNNING")
                          )
                        ),
                        "In progress"
                      }
                    ),
                    {
                      a!richTextImage(
                        image: a!documentImage(
                          document: a!iconIndicator("PROGRESS_RUNNING")
                        )
                      ),
                      "In progress"
                    }
                  )
                ),
                a!textField(
                  label: "Execution Time",
                  labelPosition: "ADJACENT",
                  value: local!testRunResults.totalExecutionTime & " seconds",
                  readOnly: true,
                  showWhen: not(isnull(local!testRunResults))
                ),
                a!textField(
                  label: "Total Time",
                  labelPosition: "ADJACENT",
                  value: local!testRunResults.totalElapsedTime & " seconds",
                  readOnly: true,
                  showWhen: not(isnull(local!testRunResults))
                ),
                a!textField(
                  label: "Executed On",
                  labelPosition: "ADJACENT",
                  value: local!testRunResults.startTime,
                  readOnly: true,
                  showWhen: not(isnull(local!testRunResults))
                ),
                a!textField(
                  label: "Executed By",
                  labelPosition: "ADJACENT",
                  value: user(local!testRunResults.executedBy, "firstName") & " " &
                  user(local!testRunResults.executedBy, "lastName"),
                  readOnly: true,
                  showWhen: not(isnull(local!testRunResults))
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!pieChartField(
                  labelPosition: "COLLAPSED",
                  series: {
                    a!chartSeries(
                      label: "Passed",
                      data: local!testRunResults.passCount,
                      color: "GREEN"
                    ),
                    a!chartSeries(
                      label: "Failed",
                      data: local!testRunResults.failureCount,
                      color: "YELLOW"
                    ),
                    a!chartSeries(
                      label: "Error",
                      data: local!testRunResults.errorCount,
                      color: "RED"
                    )
                  },
                  showDataLabels: true,
                  showWhen: not(isnull(local!testRunResults))
                )
              }
            )
          }
        )
      }
    )
  }
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...