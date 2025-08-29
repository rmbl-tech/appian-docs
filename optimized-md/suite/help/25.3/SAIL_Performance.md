---
source_url: https://docs.appian.com/suite/help/25.3/SAIL_Performance.html
original_path: SAIL_Performance.html
version: "25.3"
title: "Interface Evaluation Lifecycle"
page_id: "SAIL_Performance"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Interface Evaluation Lifecycle

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides detailed technical information about what occurs during the interface evaluation life-cycle. Understanding how each phase in the evaluation works may help you improve interface performance.

## Optimizing interfaces

Interfaces can vary immensely in terms of what they do and how they do it. To optimize a particular interface, you must understand how its specific characteristics impact each phase of an interface evaluation. Each interface goes through the following phases:

| Phase | Application Server | Network | Client | User |
| --- | --- | --- | --- | --- |
| 1 | [Acquire Context](#phase1) |  |  |  |  |
| 2 |  | [Evaluate Expression](#phase2) |  |  |  |
| 3 |  |  | [Transmit Interface to Client](#phase3) |  |  |
| 4 |  |  |  | [Render Interface](#phase4) |  |
| 5 |  |  |  |  | Interact with Interface |
| 6 |  |  | [Transmit New Values to Server](#phase6) |  |  |
| 7 |  | [Reacquire the Context](#phase1) |  |  |  |
| 8 | [Update the Context](#phase8) |  |  |  |  |
| etc. | Repeat from phase 2 |

The following sections describe each of these phases in detail with special attention to potential performance implications as well as optimizations introduced in recent Appian versions.

### Example interface

As each phase is discussed, we will refer to the same simple interface as a common example. It consists of 6 fields:

-   A dropdown field that displays and modifies the value of `local!a`
-   A read-only text field that displays the value of `local!b`
-   A read-only decimal field that displays the value of `local!c`
-   A read-only integer field that displays the value of `local!d`
-   A read-only paragraph field that displays the value of `local!e`
-   A read-only date field that displays the value of `local!f`

You can see it live by clicking **Expression mode** ![expression mode icon](images/expression-mode-icon.svg) and pasting the expression below into the **Interface Definition**.

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
a!localVariables(
  local!a: false,
  local!b: not(local!a),
  local!c: a!refreshVariable(value: rand(), refreshOnVarChange: local!a),
  local!d: a!refreshVariable(value: second(now()), refreshInterval: 0.5),
  local!e: a!refreshVariable(value: text(now(), "h:mm:ss a"), refreshAlways: true),
  local!f: today(),
  {
    a!dropdownField(
      label: "local!a",
      choiceLabels: {true, false},
      choiceValues: {true, false},
      value: local!a,
      saveInto: local!a
    ),
    a!textField(label: "local!b", value: local!b, readOnly: true),
    if(
      local!b,
      {
        a!floatingPointField(label: "local!c", value: local!c, readOnly: true),
        a!integerField(label: "local!d", value: local!d, readOnly: true)
      },
      {
        a!paragraphField(label: "local!e", value: local!e, readOnly: true),
        a!dateField(label: "local!f", value: local!f, readOnly: true)
      }
    )
  }
)
```

## Phase 1: Acquire context / Phase 7: Reacquire the context

The interface expression context holds the data bound to variables for use in the interface expression. Context is not shared between clients or even between different tabs of the same browser.

### Initial context

When an interface is first loaded, an initial context is created based on data relevant to the particular interface type:

| Interface type | Context data |
| --- | --- |
| Start form | Process variables (pv!) |
| Task form | Activity class parameters (ac!) |
| Record view | Record values (rv!) |
| Report | None |
| Site or portal page | URL parameters |

Only fields that are referenced by the expression are loaded into the context. For example, if an entity-backed record has fifty fields but only five are used in the expression, only those five are queried from the RDBMS.

Context variables are created in only two ways. Either they are created by the SAIL framework as part of the initial context or they are created during expression evaluation ([phase 2](#phase2)) by the `a!localVariables()` or `load()` functions.

Once created, the value of these variables can be used in the interface expression when it evaluates ([phase 2](#phase2)), but a variable's value can only be modified by component saves when updates are applied ([phase 8](#phase8)).

### Ongoing context management

After the context is created, it is normally stored in application server memory for rapid access. On later evaluations, it is retrieved from memory, updated, and stored back in memory.

To avoid needless memory consumption, if the user does not interact with the interface for five minutes the context is moved to the Appian data source. If the user interacts with the same interface later, the context is moved from the database back into memory. There is no user-facing difference when loading a previously idle context other than a very small amount of extra overhead. Once the previously idle context is back in memory, it is kept there until it again hasn't been used for five minutes, after which it is again moved to the Appian data source.

When a start form or task is submitted, the context is removed from memory. If the form is never submitted or if the interface is not a form, the context remains for twelve hours and then is removed from the Appian data source.

When the context is about to be stored in memory, if the application server is already using a large amount of memory on SAIL contexts, SAIL will not write it to memory and will instead encrypt it and send it to the client. The client cannot decrypt the context and thus cannot view it or tamper with it. It simply sends the encrypted context back to the server, which then uses it for the next evaluation. This approach to context management saves memory but requires additional server processing (to encrypt and serialize the context) and network transfer (to send it back and forth). This additional overhead is often trivial, but for interfaces with large amounts of data in the context this can result in a noticeable slowdown.

In Appian 7.9 and later, the server compresses the context between uses. This has many benefits, including:

-   It reduces the amount of memory required to store the context
-   It reduces the storage required in the database for idle contexts
-   Because the memory usage is reduced, it reduces the likelihood it will be necessary to start sending contexts to clients
-   In the event it is still necessary to send the context to the client, it reduces the amount of data that must be encrypted and transmitted

### Example

Viewed in the interface object preview or on a report, the context of the [example interface](#example-interface) is to be initially empty. During the first evaluation, five context variables are created by `a!localVariables`:

-   `local!a`
-   `local!b`
-   `local!c`
-   `local!d`
-   `local!f`

Because `local!e` is set to always refresh, it is not stored on the context.

Since this simple example doesn't have a submit button, the context typically stays in memory for five minutes after it is last interacted with and then stays in the primary data store for another twelve hours.

If the example were being used as a process form, `local!a` would probably be either a process variable (on a start form) or an activity class parameter (on a task form), in which case it would be loaded in the initial context. Once the form is submitted, the context is removed from memory or the primary data store.

## Phase 2: Evaluate the expression

With each interaction, the entire interface expression must be evaluated to tell the client what has changed, including all the interfaces, rules, and functions it calls. This evaluation must happen no matter how small the change in what is displayed. The time taken by this evaluation is typically dominated by the designer's interface expression and thus can be optimized using the [performance details](Performance_View.html).

Starting in Appian 17.4, interfaces that contain multiple data queries may evaluate those queries in parallel, reducing the overall evaluation time of the interface. See the [parallel evaluation of expressions](expressions-parallel-evaluation.html) section for more information on how Appian parallelizes evaluation.

### Analyzing your expression

The [performance details](Performance_View.html) show how much time is spent evaluating your expression and which parts of the expression are slowest. The performance details only show the time spent in your expression and excludes system overhead not directly under your control. Usually this overhead is trivial and the evaluation time in the performance details corresponds closely to the overall server response time, but it may become a factor for very large interfaces or interfaces with a large context that is being encrypted and sent to the client.

Another reason the server response time may exceed what is shown in the performance details is that the performance details do not capture time spent updating the context after an interaction, it only measures the reevaluation of the expression after the updates.

### Conditional display

Most functions evaluate all their parameters, but conditional functions like `if()` and `choose()` do not evaluate parameters that are not used. For example, consider the following expression:

```
1
2
3
4
5
  if(
    true,
    "No date",
    date(2013, 04, 30)
  )
```

When this expression evaluates, the `date()` function in the third parameter is not called because the `if()` function does not evaluate the third parameter when the first parameter is true.

In SAIL, this means that when a part of the interface expression is conditionally evaluated using `if()` or `choose()`, the server does not need to evaluate it while it is hidden. Often, responsiveness of large forms can be greatly improved by breaking them up into several-step wizards and using `choose()` to determine which section to show at a given time.

Similarly, components skip the evaluation of all other parameters when `showWhen` is false. For example, consider the following expression:

```
1
2
3
4
5
a!textField(
  label: "Date",
  value: text(ri!date, "m/d/yy"),
  showWhen: false
)
```

When this expression evaluates, the `label` and `value` parameters of `a!textField()` are not evaluated because `showWhen` is `false`.

See also: [Interface Recipe: Build a Wizard With Milestone Navigation](recipe-build-a-wizard-with-milestone-navigation.html)

### Local Variables

When creating local variables using `a!localVariables`, you have a few options for [configuring when the variable refreshes](Local_Variables.html#configuring-refresh-behavior):

-   _refreshAlways_
-   _refreshInterval_
-   _refreshOnReferencedVarChange_
-   _refreshOnVarChange_

Each of these options can have major implications for performance.

A local variable configured to `refreshAlways` is recreated each evaluation (variables created using the `with()` function behave the same way). From a performance perspective, this is beneficial since an expensive calculation can be done once and then referred to multiple times in the rest of the expression. Consider the following simple expression that provides a default value if a query returns null and otherwise returns the result of the query:

```
1
2
3
4
5
  if(
    isnull(rule!slowQuery()),
    "Default Value",
    rule!slowQuery()
  )
```

The above expression unnecessarily runs the slow query twice when it does not return null. A local variable configured to `refreshAlways` allows you to avoid this:

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
  a!localVariables(
    local!data: a!refreshVariable(
      value: rule!slowQuery(),
      refreshAlways: true
    ),
    if(
      isnull(local!data),
      rule!getDefaultValue(),
      local!data
    )
  )
```

Now the slow query is made only once. However, if this is an interface, the slow query will still be made every time the interface expression is evaluated. In other words, the query will be made every time the user interacts with the form.

The first time a local variable with any of the other refresh configurations is evaluated, it creates a variable on the context and initializes it (local variables created using the `load()` function behave the same way). On subsequent evaluations, those variables are only evaluated again if they need to based on their configurations. This means that moving slow calculations into a local variable that doesn't use `refreshAlways` can cache the result on the context for use in later evaluations.

```
1
2
3
4
5
6
7
8
  a!localVariables(
    local!data: rule!slowQuery(),
    if(
      isnull(local!data),
      rule!getDefaultValue(),
      local!data
    )
  )
```

If this is in an interface, it will only run the slow query once. On subsequent evaluations, the results in `local!data` will be used. Usually this provides improved performance without any change in the user experience, but if the queried data is rapidly changing and it's important for the user to see updated values, this pattern should be avoided.

### Example

Suppose the user loads the [example interface](#example-interface), selects **true** from the dropdown field, and waits for the refresh interval. The interface expression is evaluated three times, once to show the initial interface, a second time in response to the user selecting a new value (`true`), and a third time for the refresh interval. The following table shows which variables are updated and which functions are called in each evaluation:

| Function | 1: Initial Load | 2: Select true | 3: 30s Interval |
| --- | --- | --- | --- |
| `a!localVariables` | ✓ | ✓ | ✓ |
| `not` | ✓ | ✓ |   |
| `a!refreshVariable` (`local!c`) | ✓ | ✓ | ✓ |
| `rand` | ✓ | ✓ |   |
| `a!refreshVariable` (`local!d`) | ✓ | ✓ | ✓ |
| `second` | ✓ |   | ✓ |
| `now` (`local!d`) | ✓ |   | ✓ |
| `a!refreshVariable` (`local!e`) | ✓ | ✓ | ✓ |
| `text` | ✓ | ✓ | ✓ |
| `now` (`local!e`) | ✓ | ✓ | ✓ |
| `today` | ✓ |   |   |
| `a!dropdownField` | ✓ | ✓ | ✓ |
| `a!textField` | ✓ | ✓ | ✓ |
| `if` | ✓ | ✓ | ✓ |
| `a!floatingPointField` | ✓ |   |   |
| `a!integerField` | ✓ |   |   |
| `a!paragraphField` |   | ✓ | ✓ |
| `a!dateField` |   | ✓ | ✓ |

Notice that:

-   `a!refreshVariable` is evaluated each time even if its value isn't refreshed because all the other parameters of the function are being evaluated.
-   By placing `not(local!a)` into a variable, it is called only once per evaluation instead of twice, as it would be if a variable was not used.
-   `today()` is evaluated in the first evaluation to initialize `local!f`, but after that it won't be called again.
-   `a!paragraphField` and `a!dateField()` are not initially evaluated because `if()` does not evaluate parameters that are not needed.

## Phase 3: Transmit interface to client

The interface description created by evaluating the expression must be transmitted to the client for display. The entire interface will be transmitted, no matter how small the change.

If the context is stored in application server memory, a very small encrypted key will be sent with the interface that identifies which SAIL context to use for the next evaluation. If the context is not being stored in application server memory, the entire encrypted context will be transmitted along with the interface description.

![interface sizes](images/sailInterfaceSizes.png)

While these sizes can be large, this response is compressed by the web server when using Appian's [recommended compression settings](Configuring_Apache_Web_Server_with_Appian.html#configure-compression-using-the-deflate-module).

## Phase 4: Render interface

After receiving the interface description, the client must parse it and update the displayed interface accordingly. For simple interfaces, this is usually done so fast it is imperceptible to the user, but this can result in noticeable delay on complex interfaces with many components.

While web browsers are redrawing the page, they do not respond to user interactions like mouse clicks and key presses. This feels sluggish and the lack of feedback can cause users to make mistakes. This means that the user experience degrades far more quickly due to browser processing than when there is a slow response from the server.

Browser processing time is determined almost entirely by the number of components on the page. This includes components that are inside layouts such as sections or editable grids. It does not include hidden components, since they are not part of the interface description sent down to the client. However, it varies greatly by client. For example, Chrome is significantly faster than most other browsers.

**Recent Optimization**: As of Appian 17.1, once an interface has loaded, only the changed components are rendered on subsequent evaluations. This was previously true under some circumstances in Appian 7.9 and above, but is now always the case starting in 17.1. This means that typically browser processing time is significantly less when the interface changes than when the interface initially loads and all the components must be rendered.

## Phase 6: Transmit new values to server

Every time the user interacts with a component, the client sends the server the new component value. The client then waits for the server to respond and then renders the resulting interface.

The web client remains interactive while it is waiting to hear back from the server. The user can continue to interact with the interface, but the further messages to the server are queued until the server's response arrives. Once the response arrives, any queued messages are sent all at once. The server applies them in the order they occurred.

When the server is responding slowly, users can interact with most components as usual but dynamic results of their interactions are delayed. For example, a user might type into a text field, tab to the date field after it, select a date, and then tab into an integer field all while waiting for the server to respond to the original change in the text field's value. If the result of that change is some sort of dynamic behavior, such as the display of a new component or a validation message, this effect will be delayed until the server response arrives.

Offline mobile clients act similarly to an online client; however, the mobile client is not connected to the server and instead the reevaluations are performed locally on the mobile client. Since the mobile client reevaluates locally instead of on the server, there are a number of [design best practices](offline-mobile-overview.html) to consider when designing for offline use.

### Examples

If the server hosting the [example interface](#example-interface) is responding slowly, the user can type into the integer field and pick dates without waiting for the server to respond. However, if they change the radio button field, the date field won't be added or removed until the server response arrives.

## Phase 8: Update the context

When the server receives a change to a component value, it must evaluate the expression again to locate the component's save configuration and update the context appropriately. Once it locates the component, it evaluates the functions needed to update all variables (including dependencies) and then stops evaluating the expression. Similarly, when the server receives a variable refresh caused by an interval, it must evaluate the expression again to locate the variable that is being refreshed and then evaluate its new value. This causes parts of the expression above the component or variable to get evaluated twice after an interaction: once as part of updating the context, then a second time when the expression is evaluated with the new context to create the new interface description.

This rarely has sufficient impact to warrant restructuring an interface to move frequently modified components higher up in the expression. However, it is another reason why the results of slow queries and expensive calculations should not be placed in `a!localVariables` variables with a `refreshAlways` refresh configuration when possible (so they won't get evaluated once or even twice after every interaction).

### Example

Suppose a user has loaded the [example interface](#example-interface). For their next interaction with the dropdown field or when the 30 second interval is triggered, there is additional work required to apply the update:

| Function | 2: Select true | 3: 30s Interval |
| --- | --- | --- |
| `a!localVariables` | ✓ | ✓ |
| `not` |   |   |
| `a!refreshVariable` (`local!c`) | ✓ | ✓ |
| `rand` |   |   |
| `a!refreshVariable` (`local!d`) | ✓ | ✓ |
| `second` |   |   |
| `now` (`local!d`) |   |   |
| `a!refreshVariable` (`local!e`) | ✓ | ✓ |
| `text` | ✓ | ✓ |
| `now` (`local!e`) | ✓ | ✓ |
| `today` |   |   |
| `a!dropdownField` | ✓ |   |
| `a!textField` |   |   |
| `if` |   |   |
| `a!floatingPointField` |   |   |
| `a!integerField` |   |   |
| `a!paragraphField` |   |   |
| `a!dateField` |   |   |

These evaluations are made in addition to those required to evaluate the interface expression once the context has been updated.

Notice that:

-   Even though `local!b` and `local!c` are updated as a result of **2: Select true** and `local!d` is updated as a result of **3: 30s interval**, the functions that are defined for those variables are actually evaluated during [phase 2](#phase2) because those values are stored in the context.
-   `a!refreshVariable` is evaluated each time even if its value isn't refreshed because all the other parameters of the function are being evaluated.
-   Local variables that depend on another local variable with a refresh configuration of `refreshAlways` will also be evaluated while updating the context.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...