---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/learn-task-recorder.html
original_path: rpa-9.17/learn-task-recorder.html
version: "25.3"
title: "Task Recorder"
page_id: "rpa-9.17/learn-task-recorder"
section: "Introduction to the Task Recorder"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Task Recorder

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Use the Task Recorder for Robotic Process Automation

This video from [Academy Online](https://academy.appian.com/) explains how to ue the **Task Recorder** in RPA.

## Introduction to the Task Recorder

Automation has the potential to speed up routine tasks in your business, but getting started comes with its own learning curve. The Appian RPA task recorder tool makes the most of your development time. The tool observes and captures your interactions onscreen and applies them in a [robotic task definition](./robotic-task-definition.html). Rather than manually creating each robotic task action, the robotic task definition is automatically set up to match your actions. Just use the browser or application as you normally would, and the tool does the rest!

This page describes the task recorder tool, its capabilities, and how to use it to efficiently develop robotic tasks.

**Tip:**  Are you ready to use the Task Recorder? The [Use the Task Recorder](task-recorder.html) page in the Build category has the steps you need.

## About the task recorder

The task recorder is a built-in tool that records your interactions in a web browser or Windows application and translates them into actions in a robotic task definition. You don't need to spend time finding the exact [selector](./selectors.html) to identify the element on the screen to interact with. Simply click on that part of the screen, and the task recorder detects it for you. You can also use the task recorder to extract data and save it to a robotic task variable.

### Availability

The task recorder is available for Windows applications as well as web browsers including Chrome, Firefox, and Edge (including IE Mode). Other browsers aren't yet available for the task recorder.

The task recorder's Windows automation capabilities do not work with JavaSwing apps.

When used with a browser, the task recorder needs the [appropriate web driver](actions-browser.html#components) to launch properly. Appian can [automatically update the web driver](actions-browser.html#automatically-update-web-drivers), or you can add it manually as a [support file](configure-advanced-configuration-tab.html#support-files) in your robotic task.

If you're using Edge (IE Mode) with the task recorder, you'll need to [complete additional setup steps](task-recorder.html#recording-with-edge-ie-mode).

When you use the task recorder to capture interactions in a section of the robotic task definition, a new [action group](actions-general.html#action-groups) is created. When you begin recording within an action group, the new actions are added to the end of that group.

## When to use the task recorder

Use the task recorder to capture actions within Windows applications and web browsers.

For [Windows automation](actions-windows-automation.html), you can use the **Interact with element** action, with some limitations on interactions for certain control types:

| Control type | Supported interaction options | Unsupported interaction options |
| --- | --- | --- |
| Button | Click | Focus |
| Checkbox | Toggle | Focus |
| ComboBox | Collapse, Expand | Set value, Focus |
| Edit | Set value | Update value with username, Update value with password |
| List Item | Select | Click |
| Menu item | Click, Expand | Collapse |
| Radio button | Select | Add to selection, Remove from selection |
| Tab item | Select | n/a |
| Tree item | Select, Expand, Collapse | Click |
| Window | n/a | Close, Focus, Maximize, Minimize, Restore down |

If you need to use the unsupported interaction options in your robotic task, you can manually configure them in the [**Interact with element** action](actions-windows-automation.html#interact-with-element).

The following [Browser](actions-browser.html) actions are available in the task recorder:

-   [Get attribute](actions-browser.html#get-attribute)
-   [Get table values](actions-browser.html#get-table-values)
-   [Interact with element](actions-browser.html#interact-with-element)
-   [Navigate to URL](actions-browser.html#navigate-to-url)
-   [Open browser](actions-browser.html#open-browser)
-   [Select frame](actions-browser.html#select-frame)
-   [Switch tab or browser](actions-browser.html#switch-browser-tab)
-   [Wait for attribute](actions-browser.html#get-attribute)

Other modules and actions aren't yet available in the task recorder. To take advantage of additional functionality, [use the appropriate module](rpa-modules.html) when you build a robotic task definition manually.

## Troubleshooting

To help keep you on track, the task recorder may display messages to show you when it's unable to do something.

| Message type | Reason | Guidance |
| --- | --- | --- |
| Error opening browser | This message appears if the task recorder was unable to open the browser you selected. | Ensure no other browsers are open and try again. |
| Error opening application | This message appears if the task recorder was unable to open the application you selected. | Open the application on your desktop, return to the task recorder, and use the **Select Application** menu to try again. |
| Error connecting to application | This message appears if the task recorder was unable to locate the application you selected, even if it is open. | If the application is not yet open: open the application on your desktop, return to the task recorder, and use the **Select Application** menu to try again.

If the application is open: restart the application on your desktop, return to the task recorder, and use the **Select Application** menu to try again. |
| Unreliable connection | This message appears if you navigate to a site that violates your network's content security policy. While actions can still be recorded on the page, some steps may not be recorded correctly. | To reliably record actions in Edge (IE) mode browsers, install the user certificate. If issues persist, you may need to contact your network administrator.

To reliably record actions in other browsers, you may need to contact your network administrator to adapt security configurations. |

## See also

Are you ready to start using the Task Recorder? The [Use the Task Recorder](task-recorder.html) has all of the steps you need.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...