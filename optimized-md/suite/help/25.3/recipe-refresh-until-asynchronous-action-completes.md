---
source_url: https://docs.appian.com/suite/help/25.3/recipe-refresh-until-asynchronous-action-completes.html
original_path: recipe-refresh-until-asynchronous-action-completes.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Refresh Until a Background Action Completes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

![sail_recipe_refresh_until_asynchronous_action_completes.gif](images/sail_recipe_refresh_until_asynchronous_action_completes.gif)

This scenario demonstrates:

-   How to enable a refresh interval after a background action is started and disable it once the action is complete.

## Expression

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
=a!localVariables(
  local!testRunId,
  local!error,
  local!testRunStatus: a!refreshVariable(
    value: if(isnull(local!testRunId), null, a!testRunStatusForId(local!testRunId)),
    refreshInterval: if(or(isnull(fv!value), fv!value = "COMPLETE"), null, 0.5)
  ),
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
            )
          }
        )
      }
    ),
    a!sectionLayout(
      label: "Summary" & if(
        isnull(local!testRunResults),
        null,
        " - " & local!testRunResults.type
      ),
      showWhen: not(isnull(local!testRunId)),
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!textField(
                  label: "Test-run ID",
                  labelPosition: "ADJACENT",
                  value: local!testRunId,
                  readOnly: true
                ),
                a!richTextDisplayField(
                  label: "Status",
                  labelPosition: "ADJACENT",
                  value: if(
                    local!testRunStatus = "COMPLETE",
                    if(
                      local!testRunResults.status="ERROR",
                      {
                        a!richTextImage(
                          image: a!documentImage(document: a!iconIndicator("STATUS_ERROR"))
                        ),
                        "One or more tests encountered an error"
                      },
                      local!testRunResults.status="FAIL",
                      {
                        a!richTextImage(
                          image: a!documentImage(document: a!iconIndicator("STATUS_NOTDONE"))
                        ),
                        "One or more test case assertions failed"
                      },
                      {
                        a!richTextImage(
                          image: a!documentImage(document: a!iconIndicator("STATUS_OK"))
                        ),
                        "All test case assertions passed"
                      }
                    ),
                    {
                      a!richTextImage(
                        image: a!documentImage(document: a!iconIndicator("PROGRESS_RUNNING"))
                      ),
                      "In progress"
                    }
                  )
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

## Test it out

1.  Click the **Run System Test** button to start a new test run

## Notable implementation details

-   The _refreshInterval_ parameter can be set based on the current value of the variable using `fv!value`
-   The `local!testRunResults` variable is automatically updated when `local!testRunStatus` changes from `"IN PROGRESS"` TO `"COMPLETE"`. However, it doesn't evaluate each time the timer goes off; it only evaluates when the value of `local!testRunStatus` actually changes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...