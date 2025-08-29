---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/rpa-modules.html
original_path: rpa-9.17/rpa-modules.html
version: "25.3"
title: "RPA Actions Palette"
page_id: "rpa-9.17/rpa-modules"
section: "Low-code actions"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# RPA Actions Palette

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Appian RPA provides several actions to make it easier to develop a robotic task. You can use [low-code actions](#low-code-actions) to configure a robotic task more quickly and easily. [Java modules](develop-java.html#java-modules) are also available for specific actions and use cases.

## Low-code actions

Low-code actions streamline the robotic task development process. You don't need to use Java to set up and configure actions in a robotic task workflow. Instead, you'll select options from a menu and configure which variables to use. If you're an Appian developer getting started with Appian RPA, you'll find the low-code actions familiar. Although your robotic task may be complicated, development using low-code actions is simple and accessible.

Similar to the Interface Designer, the **Palette** shows you the actions that are available to add to the robotic task. Use the search bar to quickly find an action by name or browse the list of actions. You can find these low-code actions in the **Palette** when you are creating the robotic task definition:

-   [General](actions-general.html)
-   [Conditions](actions-conditions.html)
-   [Appian Services](actions-appian-services.html)
-   [Browser](actions-browser.html)
-   [Execution Actions](actions-execution.html)
-   [Excel: License Not Required](actions-excel-nolicense.html)
-   [Excel: License Required](actions-excel-license-required.html)
-   [File System Module](actions-file-management.html)
-   [Image Recognition](actions-image-recognition.html)
-   [Items](actions-items.html)
-   [Keyboard](actions-keyboard.html)
-   [Mouse](actions-mouse.html)
-   [Operating System](actions-operating-system.html)
-   [Windows Automation](actions-windows-automation.html)

Just getting started? Use the following table to find the action that can help you automate common tasks:

| I want to… | Suggested action |
| --- | --- |
| Capture text from a website | [Get attribute](actions-browser.html#get-attribute) |
| Capture text from an application | [Get attribute](actions-windows-automation.html#get-attribute) |
| Log in to a website | [Interact with element](actions-browser.html#interact-with-element) |
| Fill out a web form | [Interact with element](actions-browser.html#interact-with-element) |
| Start an Appian process | [Start process](actions-appian-services.html#start-process) |
| Evaluate business logic | [Evaluate expression](actions-appian-services.html#evaluate-expression) |
| Send or retrieve application documents | [Upload document](actions-appian-services.html#upload-document)
[Download document](actions-appian-services.html#download-document) |
| Start a robotic subtask | [Execute robotic subtask](actions-execution.html#execute-robotic-subtask) |
| Move files on the host machine | [Move a file or folder](actions-file-management.html#move-a-file-or-folder) |
| Delete files on the host machine | [Delete a file or folder](actions-file-management.html#delete-a-file-or-folder) |
| Find and click an icon on the desktop | [Locate image](actions-image-recognition.html#locate-image) |
| Paste text | [Set clipboard value](actions-operating-system.html#set-clipboard-value) and [Press keyboard shortcuts](actions-keyboard.html#press-keyboard-shortcuts) |
| Work with an Excel file | [Excel: License Not Required](actions-excel-nolicense.html) and [Excel: License Required](actions-excel-license-required.html) |

## Add an action to the workflow

To add an action to the workflow:

1.  Click and hold an action in the **Palette**.

    ![Screenshot of the Actions Palette](images/rpa-designer-palette.png)

2.  Drag and drop it to the section or action group where you want to add the action.
3.  Click and drag the action to reorder it relative to the other actions in the section or action group.

## Loops

Loops repeat actions until a condition is satisfied. For more information about looping, see [General Actions](actions-general.html#loops).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...