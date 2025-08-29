---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/task-recorder.html
original_path: rpa-9.17/task-recorder.html
version: "25.3"
title: "Use the Task Recorder"
page_id: "rpa-9.17/task-recorder"
section: "About the task recorder"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Use the Task Recorder

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

The Appian RPA task recorder tool makes the most of your development time. The tool observes and captures your interactions onscreen and applies them in a [robotic task definition](robotic-task-definition.html).

This page describes how to use the task recorder to efficiently develop robotic tasks.

## About the task recorder

The task recorder is a built-in tool that records your interactions in a web browser or Windows application and translates them into actions in a robotic task definition. You don't need to spend time finding the exact [selector](selectors.html) to identify the element on the screen to interact with. Simply click on that part of the screen, and the task recorder detects it for you. You can also use the task recorder to extract data and save it to a robotic task variable.

When you use the task recorder to capture interactions in a section of the robotic task definition, a new [action group](actions-general.html#action-groups) is created. When you begin recording within an action group, the new actions are added to the end of that group.

### Availability

Keep the following points in mind when selecting the web browser you are going to use with the task recorder.

-   The task recorder is available for Windows applications as well as web browsers including Chrome, Firefox, and Edge (including IE Mode). Other browsers aren't available yet for the task recorder.
-   The available browsers for recording in the task recorder are filtered according to the ones installed on your host machine.
-   When used with a browser, the task recorder needs the [appropriate web driver](actions-browser.html) to launch properly. Appian can [automatically update the web driver](actions-browser.html) for specific browsers, or you can add it manually as a [support file](configure-advanced-configuration-tab.html#support-files) in your robotic task.
-   If you're using Edge (IE Mode) with the task recorder, you need to [complete additional setup steps](#recording-with-edge-ie-mode).
-   To use Edge (IE mode), you must have IE Mode enabled (Windows) OR installed on your host machine.
-   To use the task recorder, your screen resolution must be at least 1024 x 768 and the zoom level in your browser must be set to 100%.

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

**Tip:**  Do you need more information about the Task Recorder before you get started? The [Task Recorder](learn-task-recorder.html) page in the Learn category has the information you need.

## Start the task recorder

You'll start the task recorder in the [robotic task definition](robotic-task-definition.html).

To start recording:

1.  In the [list of design objects](../objects-view.html), find the robotic task you want to configure in the list and click its name.
    **Result**: The [robotic task configuration](robotic-task-configuration.html) page displays.
2.  In the section where you want to record, start the task recorder in the section toolbar.

    ![rpa-tr-icon](images/rpa-tr-icon.png)

3.  Choose an available **Robot**.
4.  Click **OK**.

The task recorder opens on the host machine, where you can choose the application to record. Switch over to your host machine, whether it's a virtual machine or separate computer, to get started.

## Choose an application

After you launch the task recorder, you'll choose where to begin recording actions.

1.  At the bottom of the task recorder window, click **Select Application**.
2.  Select an application where you want to record your interactions.

    **Tip:**  Applications are categorized as **CURRENTLY OPENED** if they are running on the host machine. Closed but available applications appear in the **ALL** list. Applications shortcuts must be in the Windows start menu for the application to appear in the list.

    ![launch-task-recorder](images/tr-select-application.png)

3.  Start interacting with your chosen application. The task recorder captures your actions and shows you the application where it's recording.
4.  To switch applications, click **Select Application** again.
5.  Select a different application in the list. The task recorder adds a [**Set search context**](actions-windows-automation.html#set-search-context) action to specify when you switched the application during recording. As you continue interacting with the host machine, the task recorder captures your actions in the newly active application, adding the actions to your current recording.

![rpa-tr-capture](images/rpa-tr-capture.gif)

**Note:**  You can only record in one browser at a time. To open a different browser, you'll need to close the open browser first.

### Recording actions

The task recorder is designed to capture your interactions with the screen, such as clicking links or buttons, typing in text fields, or selecting values from dropdowns. It records these actions so that the robotic task can replicate the action later, capturing essential details like selectors, interaction types, and attributes. Each action is automatically named based on its type, and you can edit these names during the recording process. Your changes are saved when you finish recording.

#### Action types and options

Below is a table outlining the various actions that the task recorder can capture, along with their associated configuration options:

| Context | Action | Options |
| --- | --- | --- |
| Web browsers | [**Get attribute**](#save-extracted-data) | Interact with, Attribute, Save into |
| Web browsers | [**Get table values**](#working-with-tables) | Interact with, Get data from all table pages, Next page selector, Save into |
| Windows applications and web browsers | [**Interact with element**](#interacting-with-elements) | Interaction |
| Web browser | **Navigate to URL** | URL |
| Web browser | **Open browser** | Browser, URL |
| Web browser | **Select frame** | Switch to, Interact with (when applicable) |
| Web browser | **Switch tab or browser** | Title |
| Web browser | **Wait for attribute** | Interact with, Attribute, Attribute value |

#### Detailed descriptions of options

-   **Attribute**: Specify the data to collect from the selected element on the screen.
-   **Attribute value**: Specify the value that you're waiting for the element to have before proceeding.
-   **Browser**: Specify the browser to launch.
-   **Get data from all table pages**: This checkbox indicates that there is more than one page of table data.
-   **Interaction**: Lets you determine how the robotic task should act on the element.
-   **Interact with**: Lets you identify an element on the screen. The task recorder shows a list of selectors to choose from, which have been automatically detected during the recording process. For a given element, there can be more than one way to identify it using selectors. You can also [edit this value](#edit-the-selector) yourself.
-   **Next page selector**: Specifies the selector for navigating through table pages.
-   **Save into**: The variable to store the extracted data.
-   **URL**: Specify the website to load when opening a browser or navigating to a new page.

### Interacting with elements

Many actions will involve interacting with the screen in some way. The task recorder captures these interactions. The available options include:

-   **Click on element**
-   **Double click on element**
-   **Right click on element**
-   **Select dropdown**
-   **Deselect dropdown**
-   **Select checkbox**
-   **Deselect checkbox**
-   **Toggle checkbox**
-   **Update value**
-   **Update value with username**
-   **Update value with password**
-   **Clear value**
-   **Is web element present?**
-   **Get attribute**
-   **Wait for attribute**

For example, if you click into a text field and type something, the action uses **Update value** as the **Interaction** and uses your text input in the **Value** field. Similarly, if you click into a dropdown menu and select an item, the action uses **Select dropdown** and logs the item in the **Select By** field. Other interactions captured include clicking on a link or button, selecting or deselecting a checkbox, deselecting a dropdown option, and clearing a value.

![rpa-tr-edit-action](images/rpa-tr-edit-action.png)

For elements where the interaction doesn't require a click, you can hover on an element to reveal additional options. These interactions include **Get Attribute** and **Wait for Attribute**.

#### Recording usernames and passwords

Usually, when you input text on the screen while recording, the task recorder saves the value as plain text. This could present a security issue if this information is sensitive, like login credentials. To prevent security issues, task recorder detects when you're entering a username or password and guides you to use [credentials](security-rpa.html#credentials) instead.

If part of your robotic task requires you to log in to a web site, the task recorder uses **Update value with username** or **Update value with password** for the **Interaction** type. The recording clears the values associated with these actions when you finish recording.

**Tip:**  As you proceed, confirm that the right interaction type is selected. If the task recorder doesn't properly detect that you entered a username or password, you can [update the interaction type](#edit-and-delete-actions).

Once you're done recording, you'll need to edit the applicable actions in the robotic task definition to use credentials:

1.  In the robotic task definition, click the action to select it.
2.  The action configuration pane appears, where it is already configured to use **Interact with element**.
3.  In the configuration window, locate the **Interaction**. It should be **Update value with username** or **Update value with password**.
4.  Choose the **Selection method** for the credential:
    -   **Any available credential** (usernames only): Use any credential associated with the chosen application. The robotic task uses any available credential's username for the selected application.
    -   **Previously referenced credential** (passwords only): Select the application associated with a credential referenced previously in the robotic task. The robotic task uses the password associated with the selected application and previously referenced credential. If no credential was previously referenced in the robotic task, the execution will fail when this method is selected.
    -   **Specific credential** (usernames and passwords): Use a specific credential entry. Select a credential entry to use in the **Select credential** dropdown menu. Each entry shows the credential's application name and username. The robotic task will use the username or password associated with the credential.
5.  Configure additional options for the action and click **OK**.

Learn more about [credentials](security-rpa.html#credentials).

### Working with tables

When you see an HTML table on your screen, you have several options:

-   Click any table element: This adds a "click on element" interaction to the task recorder.
-   Hover over any table element, click the Actions dropdown, and then select one of the following options:
    -   [**Is web element present**](actions-conditions.html#is-web-element-present?). This action checks if a specified element is present.
    -   [**Get attribute**](actions-windows-automation.html#get-attribute). This action captures the attribute of a specified element.
    -   [**Get table values**](actions-browser.html#get-table-values). This action retrieves all table data and adds a **Get table values** step to the task recorder. After selecting Get table values, a message displays asking if you want to collect data from multiple table pages. If you click **YES**, a second message displays asking you to confirm by clicking on the Next Page button. Clicking **CANCEL** allows you to continue recording other actions as usual.
    -   [**Wait for attribute**](actions-browser.html#get-attribute). This action lets you find the attribute value of one or more elements.

### Save extracted data

The **Get attribute** and **Wait for attribute** actions include the option to save data found within an element. To select a target for this data, choose from the list of robotic task variables or create a new one. The robotic task stores this data in the variable you choose.

To create a new robotic task variable in the task recorder:

1.  In the **Task Recorder** window, find the **Save into** field. This field appears for the actions listed above.

    ![rpa-tr-save-into](images/rpa-tr-save-into.png)

2.  Click the plus sign next to the field.
3.  Enter details for the new variable, such as the **Name** and **Type**.
4.  Select the **Parameter**, **Required**, or **Multiple** checkboxes to configure your new variable with these specifications.

    ![rpa-tr-new-variable](images/rpa-tr-new-variable.png)

5.  Click **CREATE**. You're brought back to the action configuration screen.

When you finish recording and return to the robotic task definition, the variable is available to use throughout the robotic task. To learn more about how variables pass data in a robotic task, see [Using Robotic Task Variables](robotic-task-variables.html).

## Stop recording

To save your progress and finish recording:

1.  In the **Task Recorder** window, click **DONE**.
2.  Type a **Name** for this action group. This option won't appear if you only recorded one action.
3.  Click **ADD GROUP**.
4.  Alternatively, you can go **BACK** if you want to add more actions.
5.  The task recorder saves your actions as a group in the robotic task definition. Click **CLOSE RECORDER** to exit.

![rpa-tr-save-recording](images/rpa-tr-save-recording.png)

In the RPA console, you'll see the actions available in the robotic task definition area. Each action you recorded corresponds to a newly added action in the robotic task definition. If you see something you want to change, you can manually [edit these actions](robotic-task-definition.html) as you normally would.

![rpa-tr-new-section](images/rpa-tr-new-section.png)

For example, you may want to edit the recorded actions to:

-   update configurations (such as value) to use variables or expressions.
-   update values to use credentials instead of plain text.
-   add additional actions to the robotic task definition that can't be captured in the recorder, such as conditional actions.

To exit the task recorder without saving your actions, close the task recorder window.

## Edit and delete actions

Edit an action in the task recorder to adjust any of the [fields that were automatically configured](#recording-actions). The options vary based on the action type. The task recorder names each action based on the action type. Click on the action's name to edit it. Your change will be saved when you finish recording.

![rpa-tr-edit-name](images/rpa-tr-edit-name.png)

You can delete actions as you record. Click the trash icon to remove unnecessary actions, such as mistaken clicks, to clean up your recording before generating the robotic task definition actions.

### Edit the selector

The task recorder automatically populates the [element selector](selectors.html) when you interact with that element on the screen. You can edit this value if you prefer to use a different selector.

To help you confirm your updated selector points to the correct element, the task recorder highlights the element. You don't have to leave the task recorder or go through additional steps to test if the edited selector is still pointing to the element you intend to.

To edit the selector:

1.  Click the action in the **Task Recorder** window.
2.  In the **Interact with** fields, change the selector type, value, or both.
3.  Observe the elements highlighted in the browser window. A message appears in the task recorder to show you the number of elements that match the selector (up to 50).
    -   If it's correct, save your changes.
    -   If the selector matches too many elements, revise the selector to be more specific and limit the number of matches to 50 or less.
    -   If the edited [selector doesn't match any element](#viewing-previously-recorded-actions) on the screen, you'll see a warning message.
4.  Continue recording actions, or stop recording to save the actions.

**Tip:**  If you are recording in a browser other than Chrome or Edge, the element will be highlighted when you move your cursor to the **Interact with** field and edit the selector type or value.

![rpa-tr-highlight.png](images/rpa-tr-highlight.png)

#### Viewing previously recorded actions

The task recorder highlights matching elements that are visible on the screen. As you interact with the screen, keep in mind that these visible elements may change.

At any point during your recording, you can return to previously recorded actions to review the action configuration, including selectors. Keep in mind that the task recorder checks the current browser window of the active application. If you are reviewing a previously recorded action, the task recorder may indicate that no matching element is found if the current window isn't the proper context for that action.

To verify the action's selector is correct, return to the browser window that matches the context for the configured action. The task recorder will highlight the visible elements that match the selector.

**Example**: Consider your interaction with a search engine. You visit the engine, type in a term, click a search button, view results, and click the top link. The web page changes between these actions, and so do the visible elements. When you record this interaction, the first action includes elements such as a search field and button, while later actions may only include text links and descriptions.

If you're viewing the search results page, but you're editing the action to input a search term, you may see an error message indicating that no elements match the selector. This is because the current page doesn't have an element (the search field) that matches the configured selector.

To confirm the selector is configured correctly, return to the page where the search field is present. The task recorder highlights that element now because it is visible on the current browser window.

## Recording with Edge (IE Mode)

**Note:**  Edge (IE mode) is supported when interacting with websites designed to support this browser. Some websites may specify legacy document modes in their source code, which could make it incompatible to use with the task recorder. See [Microsoft's documentation](https://docs.microsoft.com/en-us/previous-versions/windows/internet-explorer/ie-developer/compatibility/jj676915%28v=vs.85%29) for more information.

You may see an unreliable connection warning message in the task recorder when using Edge (IE Mode). If you want to record your interactions in Edge, you'll need to complete some additional steps before you begin:

1.  Download the proper web driver: [IEDriverServer\_Win32\_3.150.0.zip](https://github.com/SeleniumHQ/selenium/releases/download/selenium-3.150.0/IEDriverServer_Win32_3.150.0.zip). The `3.150` version of the web driver is required for reliable performance.
    -   Add the web driver as a [support file](configure-advanced-configuration-tab.html#support-files) in your robotic task.
2.  [Install the user certificate](#install-the-user-certificate)

There are some limitations to using the task recorder with Edge (IE Mode):

-   Manage multiple tabs/windows is not currently supported.
-   When you start recording interactions with Edge (IE Mode), all open instances of Edge will close. We recommend you close Edge windows before starting the Edge (IE Mode) recording session to avoid losing your work.
-   Edge (IE Mode) should be the first browser you open in a robotic task execution. If another browser type opens before Edge (IE Mode), the execution will fail.

**Note:**  You'll need to repeat these steps on each host machine where you plan to record using Edge (IE Mode).

### Install the user certificate

The first time you launch task recorder in Edge (IE Mode), you'll see a message prompting you to install a user certificate. The task recorder uses this user certificate to help establish a reliable connection with the browser, and ensure that your steps are recorded correctly.

To capture and extract the developer's interactions with the browser, task recorder establishes a WebSocket connection with the browser. Whereas all other browsers support the standard WebSocket protocol (WS), Edge (IE Mode) only supports the secure WebSocket protocol (WSS).

**Note:**  If the connection is not established, actions can still be recorded. However, some specific steps, such a click that navigates to a different page, won't be recorded correctly.

In order to establish a WSS connection with Edge (IE Mode), you need to manually install a certificate on the host machine. The Appian RPA agent generates the certificate to create the connection. The certificate is called `appian-rpa-recorder-localhost.crt`, and is stored in the `Jidoka-workspace\Recorder\certificate` directory.

After you complete the following steps, the certificate remains on this host machine. As long as the host machine remains as an entry in the RPA console, you won't need to install another certificate when you record your interactions in Edge (IE Mode) on the same host machine. However, if you remove the host machine and re-add it at a later time, you'll need to reinstall the certificate.

![tr-cert-location](images/tr-cert-location.png)

To install the certificate:

1.  Launch the task recorder using Edge (IE Mode) on the appropriate host machine.
2.  In the **Task Recorder** window, click **Install user certificate** in the warning message.
3.  In the **Certificate** window, click **Install Certificate**.

    ![tr-cert-step-1](images/tr-cert-step-1.png)

4.  On the first page of the **Certificate Import Wizard**, under **Store Location**, select **Current User**.
5.  Click **Next**.
6.  On the second page of the wizard, in **Certificate Store**, select **Place all certificates in the following store**.
7.  Click **Browse…**
8.  Select **Trusted Root Certification Authorities**.
9.  Click **Next**.
10.  Review your settings on the last page, **Completing the Certificate Import Wizard**.
11.  Click **Finish**.

     ![tr-cert-finish](images/tr-cert-finish.png)

12.  A **Security Warning** appears to show you that this certificate will only be used for localhost connections (`127.0.0.1`). Click **Yes**.

     ![tr-cert-warn](images/tr-cert-warn.png)

13.  Click **OK** to dismiss the success message.
14.  Go back to the browser window that the task recorder launched.
15.  Refresh the browser window. The message in the **Task Recorder** window should disappear.

To verify the certificate was installed properly:

1.  Open the **Control Panel** on the host machine.
2.  Open **Manage user certificates**.
3.  Under **Trusted Root Certificate Authorities**, go to the **Certificates** folder.
4.  `127.0.0.1` should appear as a certificate in this folder.

![tr-saved-cert](images/tr-saved-cert.png)

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...