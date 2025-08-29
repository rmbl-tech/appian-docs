---
source_url: https://docs.appian.com/suite/help/25.3/referencing-control-panel-objects.html
original_path: referencing-control-panel-objects.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Referencing a Control Panel Object

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Overview

This page provides low-code developers and system administrators with information on referencing a control panel object and the associated interface types in interfaces. This can allow you to create new interfaces that reference a control panel object or interface, such as creating a portal interface to use with a control panel object.

Interfaces or forms generated via the Control Panel workspace already contain references to the appropriate control panel objects.

## Referencing a control panel object

You can directly reference a control panel object in interfaces and expressions in Designer using the `controlPanel!` domain prefix.

The control panel direct object reference only allows you to reference the control panel object and the interface types associated with it.

There are a few use cases that might require you to use a direct object reference and the control panel functions. For example:

-   Creating your own intake forms outside of the control panel object.
-   Creating an intake form when you don't yet know what the categories and types associated with the control panel will be.
-   Adding a new interface type not supported by the control panel object, like an intake form that's a portal.

You can reference a control panel object within a [wizard layout](Wizard_Layout.html), any layout that can contain [section layouts](Section_Layout.html), or use it with the accompanying control panel functions: [a!controlPanelRecords()](fnc_evaluation_a_controlPanelRecords.html) and [a!controlPanelRecordHierarchyMetadata()](fnc_system_a_controlPanelRecordHierarchyMetadata.html).

You need at least view permissions to the control panel object to reference the control panel using the direct object reference.

### Interface type references

Each interface types has different purposes and layouts that fit their intent.

**Differences in the layouts and locations of references for each interface type**

| Interface type | Layout | Where to reference the interface type in the layout |
| --- | --- | --- |
| Create | Wizard layout | In the _steps_ parameter of a wizard layout. |
| Edit or Display | Section layout | In any layout that can contain section layouts. |

## Example

### Call an intake form for a control panel object in a wizard layout

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
a!localVariables(
  local!caseUUID: ri!request[recordType!Request.caseUuid],
  local!typeUUID: ri!request[recordType!Request.typeUuid],

  local!controlPanelRecords: a!refreshVariable(
    value: a!controlPanelRecords(
      controlPanel: controlPanel!Health Requests,
      record: ri!request,
    ),
    refreshOnReferencedVarChange: false,
    refreshOnVarChange: {local!typeUUID, local!caseUUID}
  ),

  a!wizardLayout(
    label: "Create Request",
    steps: {
      a!wizardStep(),
      controlPanel!Health Requests.interfaceType.new-patient-intake-form
      (
        record: ri!request,
        controlPanelRecords: local!controlPanelRecords
      ),

      a!wizardStep()
    },
    buttons: a!buttonLayout(
      primaryButtons: a!buttonWidget(
        label: "Save",
        saveInto: {
          a!writeRecords(
            records: {
              ri!request,
              local!controlPanelRecords[a!keys(local!controlPanelRecords)]
            }
          )
        }
      )
    )
  )
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...