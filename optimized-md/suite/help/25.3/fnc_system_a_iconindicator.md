---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_iconindicator.html
original_path: fnc_system_a_iconindicator.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!iconIndicator() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  The [rich text icon](Styled_Icon_Component.html) is a better alternative to icon indicator, with a larger library of options and styles.

## Function

**a!iconIndicator**( _icon_ )

Returns the specified image from a list of standard indicator icons. Indicator icons can be used on interface within a [document image](Document_Image_Component.html).

**See also:** [DocumentImage](Document_Image_Component.html), [Display Processes by Process Model with Status Icons](recipe-display-processes-by-process-model-with-status-icons.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`icon`

 |

_Text_

 |

The key from the table of the icon to be returned.

 |

## Returns

Document

## Usage consideration

### Icon size

The `"ICON"` size configuration should be used when using these icons within an interface image component.

### Available icons

The table below shows each icon.

| System Icon | Name | Key | System Icon | Name | Key |
| --- | --- | --- | --- | --- | --- |
| ![Add Icon](images/iconIndicator/add.png) | Add | ADD | ![Copy Icon](images/iconIndicator/copy.png) | Copy | COPY |
| ![Generic Doc Type Icon](images/iconIndicator/doc_type_generic.png) | Document | DOC\_GENERIC | ![Happy Face Icon](images/iconIndicator/face_happy.png) | Happy Face | FACE\_HAPPY |
| ![Indifferent Face Icon](images/iconIndicator/face_indifferent.png) | Indifferent Face | FACE\_INDIFFERENT | ![Sad Face Icon](images/iconIndicator/face_sad.png) | Sad Face | FACE\_SAD |
| ![Folder Doc Type Icon](images/iconIndicator/doc_type_folder.png) | Folder | FOLDER | ![Harvey 0 Icon](images/iconIndicator/harvey_0_4.png) | Harvey Ball 0/4 | HARVEY\_0 |
| ![Harvey 25 Icon](images/iconIndicator/harvey_1_4.png) | Harvey Ball 1/4 | HARVEY\_25 | ![Harvey 50 Icon](images/iconIndicator/harvey_2_4.png) | Harvey Ball 2/4 | HARVEY\_50 |
| ![Harvey 75 Icon](images/iconIndicator/harvey_3_4.png) | Harvey Ball 3/4 | HARVEY\_75 | ![Harvey 100 Icon](images/iconIndicator/harvey_4_4.png) | Harvey Ball 4/4 | HARVEY\_100 |
| ![Move Down Icon](images/iconIndicator/move_down.png) | Move Down | MOVE\_DOWN | ![Move Down Disabled Icon](images/iconIndicator/move_down_disabled.png) | Move Down (Disabled) | MOVE\_DOWN\_DISABLED |
| ![Move Left Icon](images/iconIndicator/move_left.png) | Move Left | MOVE\_LEFT | ![Move Left Disabled Icon](images/iconIndicator/move_left_disabled.png) | Move Left (Disabled) | MOVE\_LEFT\_DISABLED |
| ![Move Right Icon](images/iconIndicator/move_right.png) | Move Right | MOVE\_RIGHT | ![Move Right Disabled Icon](images/iconIndicator/move_right_disabled.png) | Move Right (Disabled) | MOVE\_RIGHT\_DISABLED |
| ![Move UpIcon](images/iconIndicator/move_up.png) | Move Up | MOVE\_UP | ![Move Up Disabled Icon](images/iconIndicator/move_up_disabled.png) | Move Up (Disabled) | MOVE\_UP\_DISABLED |
| ![Preview Icon](images/iconIndicator/preview.png) | Preview | PREVIEW | ![Priority High Icon](images/iconIndicator/priority_high.png) | High Priority | PRIORITY\_HIGH |
| ![Priority Low Icon](images/iconIndicator/priority_low.png) | Low Priority | PRIORITY\_LOW | ![Progress Paused Icon](images/iconIndicator/progress_paused.png) | Paused | PROGRESS\_PAUSED |
| ![Progress Running Icon](images/iconIndicator/progress_running.png) | Running | PROGRESS\_RUNNING | ![Progress Stopped Icon](images/iconIndicator/progress_stopped.png) | Stopped | PROGRESS\_STOPPED |
| ![Rating Excellent Icon](images/iconIndicator/rating_excellent.png) | Excellent Rating | RATING\_EXCELLENT | ![Rating Fair Icon](images/iconIndicator/rating_fair.png) | Fair Rating | RATING\_FAIR |
| ![Rating Good Icon](images/iconIndicator/rating_good.png) | Good Rating | RATING\_GOOD | ![Rating Poor Icon](images/iconIndicator/rating_poor.png) | Poor Rating | RATING\_POOR |
| ![Rating Very Good Icon](images/iconIndicator/rating_very_good.png) | Very Good Rating | RATING\_VERYGOOD | ![Remove Icon](images/iconIndicator/remove.png) | Remove | REMOVE |
| ![Remove Disabled Icon](images/iconIndicator/remove_disabled.png) | Remove (Disabled) | REMOVE\_DISABLED | ![Status Error Icon](images/iconIndicator/status_error.png) | Error | STATUS\_ERROR |
| ![Status Not Done Icon](images/iconIndicator/status_notdone.png) | Not Done | STATUS\_NOTDONE | ![Status OK Icon](images/iconIndicator/status_ok.png) | OK | STATUS\_OK |
| ![Status Warn Icon](images/iconIndicator/status_warn.png) | Warning | STATUS\_WARN | ![Bad Downward Trend Icon](images/iconIndicator/trend_down_red.png) | Trend Down (Bad) | TREND\_DOWN\_BAD |
| ![Good Downward Trend Icon](images/iconIndicator/trend_down_green.png) | Trend Down (Good) | TREND\_DOWN\_GOOD | ![Flat Trend Icon](images/iconIndicator/trend_flat.png) | Flat Trend | TREND\_FLAT |
| ![Bad Upward Trend Icon](images/iconIndicator/trend_up_red.png) | Trend Up (Bad) | TREND\_UP\_BAD | ![Good Upward Trend Icon](images/iconIndicator/trend_up_green.png) | Trend Up (Good) | TREND\_UP\_GOOD |
| ![Wait Clock Icon](images/iconIndicator/wait_clock.png) | Clock | WAIT\_CLOCK |

## Examples

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
  local!pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 3),
  a!gridField_19r1(
    columns: {
      a!gridTextColumn(
        label: "Task Name",
        data: {"Task 1", "Task 2", "Task 3"}
      ),
      a!gridTextColumn(
        label: "Assignee",
        data: {"John Smith", "Andrew Nelson", "Pamela Sanders"}
      ),
      a!gridImageColumn(
        label: "Status",
        size: "ICON",
        data: apply(
          a!documentImage(document: _, altText: _, caption: _),
          merge(
            apply(a!iconIndicator, {"STATUS_OK", "STATUS_WARN", "STATUS_NOTDONE"}),
            {"Complete", "Overdue", "Not Complete"},
            {"Complete", "Overdue", "Not Complete"}
          )
        )
      )
    },
    totalCount: 3,
    value: local!pagingInfo,
    rowHeader: 1
  )
)
```

![](images/iconindicator_example_76.jpg)

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