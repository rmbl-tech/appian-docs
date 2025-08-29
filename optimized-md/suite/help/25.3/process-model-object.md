---
source_url: https://docs.appian.com/suite/help/25.3/process-model-object.html
original_path: process-model-object.html
version: "25.3"
title: "Process Model Object"
page_id: "process-model-object"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process Model Object

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Create & Secure a Process Model

To get started building your Appian process model, walk through how to create and secure one.

## Overview

This page discusses the basic features and functionality of process models and the Process Modeler.

![images:process-model-annotated.png](images/process-model-annotated.png)

1.  **Menu Bar**: The menu bar has a multitude of features that are helpful when working with process models. See [Menu Bar Options](#menu-bar-options) for a full list of features.
2.  **Process Model Status Tab**: The tab shows the name of the process model and the version currently open on the canvas. If you have unsaved changes to the process model, an asterisk appears before the name. If the process model has autoscale enabled, the ![Autoscaled process indicator](images/process-modeler/autoscale-icon.png) icon is shown on the tab.
3.  **Smart Service Search Bar**: This search bar allows you to [quickly search](#search) for any smart services.
4.  **Suggested Smart Service Palette**: This section provides you with [AI-based suggestions](process-model-ai-assisted-development.html) for the next smart service or node to add to the canvas.
5.  **Workflow and Automation Smart Service Palette**: The palette lists out [all nodes and smart services](Smart_Services.html) you can add to the process model. They are grouped by two categories—Workflow and Automation Smart Services. If the smart service is a [custom plug-in](Custom_Smart_Service_Plug-ins.html) the ![](images/plugin_palette_icon.png) icon appears next to the listing in the palette.
6.  **Process Model Toolbar**: The toolbar has a collection of functions that will help you easily create and manage your processes when working on the canvas. See the [Toolbar Options section](#toolbar-options) for a full list of features.
7.  **Process Model Role View**: You can select the Process Analyst View or the Process Designer View in a Process Model. The Process Analyst View allows you to draft high-level diagrams, while the Process Designer View allows you to configure advanced options and publish process models.
8.  **Process Model Canvas**: The canvas is where you can drag nodes and start connecting your activities.
9.  **Suggested Smart Service Popup**: Right-click on a connector between two nodes to search smart services and nodes, as well as see [AI-based suggestions](process-model-ai-assisted-development.html).
10.  **Process Model Design Guidance**: This list of suggestions, warnings, and errors help you build a process model using Appian's best practices.

## Creating a process model

Basic users must be a member of the [Process Model Creators](System_Groups.html#process-model-creators) group in order to create new process models.

To create a process model:

1.  In the [**Build** view](build-view.html), click **NEW > Process Model**.
2.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#process-objects). |
    | **Description** | (Optional) Enter a brief description of the process model. |
    | **Save In** | Select the process model folder to store the process model. |

3.  Click **CREATE**.
4.  [Configure security](#prodlink-security) for the process model.
5.  Click **SAVE**. Appian creates and publishes the process model, then opens it in the Process Modeler. Learn how to [start designing your process](working_in_design_mode.html) in the Process Modeler.

### Process analyst view

The **Analyst View** provides flowchart tools with standard activities, events, and gateways—as well as the set of Appian smart services. Each of these process nodes has limited configuration options, allowing an analyst to describe the overall process without configuring data, users, and other node properties such as a task form.

To create a process model that your application can actually use after designing a flowchart in this view, you must switch to the **Designer View**.

### Process designer view

This view allows you to perform all of the modeling and documentation activities of the **Analyst View**, plus you can double-click each activity, gateway, or event and incorporate your business rules, variables, and forms.

## Menu bar options

### File menu

| Option | Description |
| --- | --- |
| New Process Model | Opens a new process model in a separate tab in the Process Modeler. New process models created in the Process Modeler are not automatically added to an application. |
| Open… | You can open other process models from other folders in the **Open** dialog. |
| Close | Closes the process model you are currently viewing. |
| Close All | Closes all process models open in the Process Modeler. |
| Save | Saves all changes to the process model, but does not publish it as a new version. To access this option, you can also press **Ctrl+S** (or **Command+S** on Mac). |
| Save As… | Saves the process model as a new file. To access this option, you can also press **Ctrl+Shift+S** (or **Command+Shift+S** on Mac). |
| Save & Publish | Saves all changes to the process model and publishes it as a new version. To access this option, you can also press **Ctrl+Alt+S** (or **Command+Option+S** on Mac). |
| Versions | Opens a dialog with a list of all versions of the process model. See the [Versions section](#versions) for more information. |
| Security | Opens a dialog that allows you to manage process model security by groups. |
| Start Process for Debugging | Runs an instance of your process model. To access this option, you can also press **Ctrl+D** (or **Command+D** on Mac). |
| Print Preview | Provides a preview of the process model. To access this option, you can also press **Ctrl+P** (or **Command+P** on Mac). |
| Print | Prints the process model diagram. |
| Properties | Opens a dialog that provides all options for [process model properties](#process-model-properties). |
| Exit | Closes the Process Modeler. |

### Edit menu

| Option | Description |
| --- | --- |
| Undo | Reverts the most recent change. To access this option, you can also press **Ctrl+Z** (or **Command+Z** on Mac). |
| Redo | Reapplies the most recently undone change. To access this option, you can also press **Ctrl+Y** or **Ctrl+Shift+Z** (or **Command+Y** or **Command+Shift+Z** on Mac). |
| Cut | Cuts the selected node on the canvas. To access this option, you can also press **Ctrl+X** (or **Command+X** on Mac). |
| Copy | Copies the selected node to your clipboard. To access this option, you can also press **Ctrl+C** (or **Command+C** on Mac). |
| Paste | Pastes the copied node to the canvas. To access this option, you can also press **Ctrl+V** (or **Command+V** on Mac). |
| Select All | Selects all nodes on the canvas. To access this option, you can also press **Ctrl+A** (or **Command+A** on Mac). |
| Delete | Deletes selected node. |

### View menu

| Option | Description |
| --- | --- |
| Zoom In | Increase the magnification of the current view. The available increased magnification settings are between 50% and 200%, with 25% increments. |
| Zoom Out | Decrease the magnification of the current view. The available decreased magnification settings are between 175% and 25%. |
| BPMN View | Display flow objects according to the BPMN specifications for process models and primitives. |
| Enhanced View | Display flow objects with markers on activity boundaries that indicate assignment. Individual user assignments display the user's profile photo, when available. |
| Hide/Show Grid | Display or remove gridlines from the Process Modeler Canvas background. |
| Turn Snap On/Off | The snap feature adjusts the position of your flow objects so that an incoming flow connector follows the nearest horizontal guide. Select the **Turn Snap Off** option to position flow objects with greater precision. |
| Hide/Show Messages | The messages pane displays validation warnings and errors when you click the **Validate** button, when saving a process model, or when saving and publishing a process model. Click an error message to display the Properties dialog of the flow object where the error is found. This pane is shown by default in the `Process Designer` view, and hidden by default in the `Process Analyst`, `Edit Process`, and `Monitor Process` views. |
| Show/Hide Node Metrics | This option overlays task completion metrics for assigned tasks in the process, or for all processes started from the process model. The Process Optimization Metrics and Process Model Optimization Metrics reports are used to generate this data. If you modify these reports, 20 columns of data are the maximum that can be configured to display. |

### Tools menu

| Option | Description |
| --- | --- |
| Show/Hide Font Palette | Shows or hides the font palette on the canvas. The font palette can be used to style annotation text. Styles cannot be applied by highlighting sections of text within an annotation. They can only be applied to all of the text within an annotation. |
| Validate | Validates all nodes in your process. |
| Generate Documentation | Generates a summary of the process model with information about the properties, diagram, content and nodes. |

### Lanes menu

| Option | Description |
| --- | --- |
| Add Horizontal Lane | Add a horizontal swimlane to the canvas. |
| Add Vertical Lane | Add a vertical swimlane to the canvas. |
| Remove Lane | Remove the selected swimlane to the canvas. Nodes in the swimlane will not get deleted. |
| Remove All Lanes | Remove all swimlanes on the canvas. |
| Lane Properties | Displays the lane properties. |

## Search

The **Search** bar lets you find a node or smart service without needing to browse from the categories in the palette. Additionally, you can search for certain design objects and add them directly to your process model. Appian preconfigures the related smart service for you so it references the object you want to use. This is available for process model, integration (excluding RPA), and interface design objects.

1.  Type the name of the object you want to use. The object must be within the same application as the process model you're editing.
2.  Find the object in the list of results.
3.  Drag the object from the search results to the canvas. Appian preconfigures the corresponding smart service to reference that object.
4.  Open the [process node's properties](Process_Node_and_Smart_Service_Properties.html) to further configure its behavior.

[![Add a design object to the process model](images/process-model-smart-search.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img873)

[![](images/process-model-smart-search.gif)](#_)

The following table shows the node Appian creates and preconfigures when you add a design object to the process modeler:

| Design object | Node | Configurations |
| --- | --- | --- |
| [Integration](Integration_Object.html) | [Call Integration](Call_Integration_Smart_Service.html) | **Setup tab**: References the integration object.
**Data tab**: References data inputs and outputs. |
| [Interface](interface_object.html) | [User Input Task](Configuring_the_User_Input_Task.html) | **Forms tab**: References the interface object.
**Data tab**: References data inputs and outputs. |
| Process Model | [Subprocess](Sub-Process_Activity.html) | **Setup tab**: References the process model object.
**Data tab**: References data inputs and outputs. |

## Process model properties

You can view and edit process model properties by selecting **File > Properties** in the Process Modeler. Alternately, you can access the properties by clicking the **Properties** button ![](images/process-modeler/icon_properties.png) in the Process Modeler toolbar.

The sections below detail the properties you can modify on each tab of the **Process Model Properties** dialog. The tabs you see depend on the view you are in for the process model (Process Designer, Process Analyst, Edit Mode, Monitor Process).

**Note:**  When multiple languages are enabled in the application, subtabs representing each enabled languages will appear.

### General tab

The general tab of process model properties contains the following properties:

| Field | Description |
| --- | --- |
| **Process Model ID** | (_Read Only_) The local ID of the process model is displayed on this tab. The ID number is assigned when the process model is first saved. If the process model is imported and exported, this ID number is reassigned by the system. Can be called as `pm!id` in [process model expressions](Process_and_Report_Data.html). |
| **Process Model UUID** | (_Read Only_) The universally unique ID of the process model, which is assigned when the process model is first saved. If the process model is imported and exported, the UUID property remains unchanged. |
| **Process Model Name** | The name of the process model as it appears in Appian Designer and various process model pickers. Can be called as `pm!name` in [process model expressions](Process_and_Report_Data.html). |
| **Description** | Documents what the process does. Can be called as `pm!description` in [process model expressions](Process_and_Report_Data.html). |
| **Process Display Name** | The name of the process as it appears to users after a process has been started. To make process display names uniques, use a logical expression. Can be called as `pp!name` in [process model expressions](Process_and_Report_Data.html). |
| **Process Priority** | The priority of the process model. When selected, the checkbox associated with process priority allows this value to be changed after the process has started. Can be called as `pp!priority` in [process model expressions](Process_and_Report_Data.html). |
| **Email Attachments Folder** | When [starting a process via an e-mail](Sending_an_Email_Message_to_a_Process.html) email attachments will be placed in the defined folder. |
| **Public Events** | Lets [Anonymous Users](Anonymous_User.html) to start processes. Must be enabled to allow emails to start processes. |
| **Time Zone** | Specify the [time zone context](Time_Zone_Context.html) that is used for each process instance and indicated by the [`pp!timezone` process property](Process_and_Report_Data.html). By selecting the **Override with Initiator's Time Zone** checkbox, the default process time zone will run the process using the time zone preference of the user who launches the process model. |

### Variables Tab

The **Variables** tab lists the current process variables that have been defined for this process model. Process variables allow you to transfer data between nodes in a process model. Variables that are required at the start of the process are called process parameters.

From the **Variables** tab, clicking on the **Add Variable** button will open a **New Process Variable** dialog. The process variable dialog will have the following parameters:

| Field | Description |
| --- | --- |
| **Name** | The name of the process variable. Only letters, numbers, and underscored are accepted. Follow the [recommended naming standard](Standard_Object_Names.html#process-objects) when creating this name. |
| **Type** | The [data type](Appian_Data_Types.html) of the process variable. |
| **Value** | The default value of a process variable when starting a process. If the default value of a variable is used as a Parameter and is defined using an expression, that expression is automatically used as the default value for any associated fields in a process start form. The reverse instance is also true. Expressions used as default values on start forms are used to calculate the parameter's value. |
| **Parameter** | Allows process variables to pass a value when starting a process. Use when another object or service is starting the process and needs to pass in data. For example, start forms, related actions, subprocesses, and receive message events can contain data, and should be associated with the parameters in the process model it's calling.

Creating a parameter process variable with a primitive system data type automatically adds a field to the process start form, which is automatically mapped to the process variable. This does not occur when a process variable is created with a complex or custom data type. The Process Start Form cannot be used to populate process variables with a complex or custom data type. |
| **Required** | Checks if a process variable has a value prior to starting a process. You can specify a default value if the user input should be optional. |
| **Multiple** | Lets the process variable accepts an array of values. |
| **Hidden** | Prevents this variable value's from being used in process reports and hides it from process history. This is useful when optimizing for memory efficiency. Parameters cannot be hidden. The value of this variable can still be seen when monitoring the process instance. |

### Process start form tab

If you have data that must be provided to start a process, you can use a process start form to gather this data. The data collected by a start form must be saved into a process parameter.

To add a start form, do either of the following:

-   Create a new interface from existing process parameters by clicking **Create Interface**.
-   Select an existing interface by searching within the **Type interface name here or browse…** search box.

![images:Process_Start_Form_Tab.png](images/Process_Start_Form_Tab.png)

To make an action available to users when they are offline, refer to [Enable Offline Actions and Tasks](enable-offline-actions-and-tasks.html).

### Deadlines tab

Process deadlines specify the target date and time for completion of the process.

To enable process deadlines, select the **Enable deadlines** checkbox. Once enabled, one of two options will be evaluated:

| Options | Description |
| --- | --- |
| **Interval-based** | The first option accepts numeric interval entered either in the field, or through an expression. The interval periodicity is set from the dropdown. Designers can select either: _minutes_, _hours_, _days_, _weeks_, or _months_. |
| **Date-based** | The second option lets designers enter a datetime value in the field or through an expression. |

### Alerts Tab

The alerts tab specifies the recipients of an alert if there is an [error](Process_Errors.html) in the process. Alerts can be left to a default setting or any combination of four custom alert settings:

| Options | Who will receive alerts |
| --- | --- |
| **Default** | Alerts are sent to process administrators, process model administrators, and system administrators when an error has been encountered |
| **Custom Alert Setting #1** | Alerts will be sent to the process initiator. |
| **Custom Alert Setting #2** | Alerts will be sent to the process model owner. |
| **Custom Alert Setting #3** | Alerts will be sent to the a user, group, or combination of the two as defined by an expression. |
| **Custom Alert Setting #4** | Alerts will be sent to the a user, group, or combination of the two through a user & group picker. |

All process errors can also be viewed from the **Monitor** view in Appian Designer.

### Data Management tab

All Appian processes, including completed and canceled processes, are retained in memory until archived or deleted. The settings on the data management tab allow designers to specify a policy for archiving or deleting completed and canceled processes.

![DataManagement_Tab.png](images/DataManagement_Tab.png)

By default, the process is automatically archived after 7 days. Setting one of these configurations to **0** as an interval will immediately archive or delete the instance after completion. Any changes made on this form are applied to all instances of the process model, including ones already completed. Subprocesses do not inherit this setting.

There is a tradeoff to consider when forming your data-retention policies. Archiving a process frees system memory, but impacts your reports. The data in archived processes are no longer available for reporting purposes. For guidance on data management strategy, see: [Considerations for Archiving Processes](Archiving_Processes.html).

## Toolbar options

| Action | Icon | Description |
| --- | --- | --- |
| Create a new process model | ![New Process](images/process-modeler/icon_add_new.png) | If you have a process model that is already open, the new process model opens in a new tab. |
| Undo an action | ![Undo](images/process-modeler/icon_undo.png) | Undo the most recent action. |
| Redo an action | ![Redo](images/process-modeler/icon_redo.png) | Redo the most recent action. |
| Open a process model | ![Open Process](images/process-modeler/icon_open.png) | Select a process model to open. Multiple process models appear on additional tabs. |
| Save a process model | ![Save Process](images/process-modeler/icon_save.png) | In the Process Designer view, the Save button creates an updated draft of the process model, but does not publish the new version. You must click **Save and Publish** to ensure your new process model launches when a new process is started. To save the process model without compromising the current process model, click **File** > **Save New Version**. |
| Print a process or process model | ![Print](images/process-modeler/icon_print.png) | The Print dialog appears, which allows you to configure your print settings. You must enable the printing of background images in your browser to show gridlines on your printed output. |
| Reload the process | ![Refresh](images/process-modeler/icon_refresh.png) | (**Monitor Process** view only) Allows you to reload the process data displayed. All process activities and flows are updated with the most recent activity. |
| Cut a process node | ![Cut](images/process-modeler/icon_cut.png) | Select a process node in the canvas. Click the **Cut** button. The process node and its configuration are copied to the clipboard, including process variable mappings, and the process node and its connectors are removed from the canvas. |
| Copy a process node | ![Copy](images/process-modeler/icon_copy.png) | Select a process node in the canvas. Click the **Copy** button. The process node and its configuration are copied to the clipboard, including process variable mappings. |
| Paste a process node | ![Paste](images/process-modeler/icon_paste.png) | Add a process node to a process model or a process from the clipboard. You can paste a node onto the same process model, or onto a different process model that is open in another tab of the Process Modeler. Configuration settings are copied as well, including process variable mappings. Process variables are not copied across process models. You must reconfigure process variable mappings for the copied process node if a process variable does not exist in the destination process model. |
| Delete a process node | ![Delete](images/process-modeler/icon_delete.png) | Select a process node in the canvas, then click the **Delete** icon. The node and connectors associated with the node are deleted. |
| Position flow objects on the designer canvas | ![Select](images/process-modeler/icon_pointer.png) | Click this button to switch the canvas to selection mode, then select a process flow object in the canvas and drag it to the desired location. Once placed, you can use the arrow keys on your keyboard to adjust the placement. Click **View > Turn Snap Off** to enable smaller adjustments in positioning. With snap off, hold the **Ctrl** key when pressing an arrow key to make very small adjustments. |
| Connect process flow objects with an angled connector | ![Connect angled](images/process-modeler/icon_connect_angle.png) | Click the arrow next to the button, then select this icon to switch the canvas to connection mode. In this mode, possible points of connection display on the edges of each node. Click a possible connection point, then drag the angled connector line to a connection point on another node. |
| Connect process flow objects with a straight connector | ![Connect straight](images/process-modeler/icon_connect_straight.png) | Click the arrow next to the button, then click this icon to switch to connection mode. In this mode, you can click the edge of a node, then drag the straight connector line to a connection point on another node. |
| Add a note to a process or process model | ![Annotation](images/process-modeler/icon_annotations.png) | Select the **Text Tool** from the toolbar, click on the canvas, and drag to set the initial size of the text area. |
| Add a vertical or horizontal lane to the process model | ![Add Horizontal Lane](images/process-modeler/icon_swimlane_horizontal.png) ![Add Vertical Lane](images/process-modeler/icon_swimlane_vertical.png) | To add a vertical or horizontal lane to a process model, click the arrow to the right of the button. Select a vertical or a horizontal lane. Click this toolbar button to add a lane to the canvas. |
| View process model properties | ![Properties](images/process-modeler/icon_properties.png) | Click this button to display the **Process Model Properties** dialog or to display the process properties dialog depending on the mode you are using. |
| Zoom in/out of the canvas | ![Zoom out](images/process-modeler/icon_zoom_out.png) ![Zoom in](images/process-modeler/icon_zoom_in.png) | Click the appropriate icon to expand or restrict your view of the canvas, or use the percentage dropdown list to select the magnitude of the zoom. Available zoom options include 25%, 50%, 75%, 100%, 125%, 150%, 200%, and **Fit to Screen**. |
| Validate your process model | ![Validate](images/process-modeler/icon_validate.png) | When you click this button, Appian validates your process model. Any errors are displayed on the message pane in the Process Modeler interface. Click an error message to view the properties of the process node that triggered the validation error. |
| Remove/restore the message pane from the Process Modeler interface | ![Toggle Message Window](images/process-modeler/icon_toggle_message.png) | Click this icon to remove or restore the message pane from the canvas. The message pane is used to show all validation errors that are thrown during process validation. |
| Remove/restore background gridlines | ![Toggle Gridlines](images/process-modeler/icon_toggle_gridlines.png) | Click this button to remove or restore the background gridlines on the canvas. |
| Remove/restore node statistics | ![Toggle Node Statistics](images/process-modeler/icon_node_stats.png) | Click this button to view process metrics. |
| View activity exceptions | ![Activity Exceptions Icon](images/process-modeler/activityexceptions.png) | Click this button to open the **Activity Exceptions** dialog. This dialog lists all activities in active processes spawned from the current process model that have been canceled by exception. |
| View process instances | ![Process Instances Icon](images/process-modeler/activeinstances.png) | Click this button to open the **Process Instances** dialog. This dialog shows a report of all process instances for the currently open model. By default, the list is filtered to only processes that have not yet been canceled or completed. Clicking on an instance from this report will open the instance in a new tab in the Process Modeler. You can edit this report just like any other [process report](Process_Reports.html), which is especially useful for troubleshooting problems. |
| View process details | ![Process Details Icon](images/process-modeler/icon_processdetails.png) | (**Monitor Process** view only) Click this button to open the **Process Details** dialog. This dialog shows a report of details for the process, with an entry for each activity that took place. |

### Canvas annotations

The annotate tool allows you to add text descriptions to your process models.

![](images/Annotation.png)

To add an annotation to the process model, complete the following:

1.  In the Process Modeler, click the **Annotate** button ![](images/process-modeler/icon_annotations.png) on the toolbar.
2.  When the pointer becomes a plus symbol **+**, click the **Process Modeler** canvas and drag the pointer to expand the text field.
3.  Click inside the field you created.
4.  Enter the text of your note.
    -   If you enter more text than can be displayed in the window, scroll bars appear on the annotation. These can be removed by resizing the text window.

## Expression Editor

In a process model, the Expression Editor offers standard editor capabilities like the [toolbar actions](expression-editor.html#toolbar-actions) and auto-suggestions, but this editor also displays key expression elements in the **DATA** and **FUNCTIONS** tabs.

To learn more about the Expression Editor in process models, see [Expressions](expression-editor.html).

## Security

### Process model security

**Tip:**  Process models do _not_ inherit security from their parent folders. Process model security must be set on each process model individually.

A user must have at least **Initiator** permissions to start a process model. When a process model is started by a record action, the user's process model permission is checked to enforce [record action security](record-action-security.html).

The [security](object-security.html) role map of a process model controls which users can see or modify it and its properties.

If [default security groups](creating-applications.html#default-security-groups) are configured for your application, the default security groups pre-populate the role map when you create a process model. If default security groups are _not_ configured for your application, you are automatically assigned **Administrator** permissions for any process model you create.

The last user who saved/published the process model is always the designer of the process model.

See [Editing Object Security](object-security.html#editing-object-security) to modify a process model's security. You can also access and edit process model security through the Process Modeler by clicking **File** > **Security**. If the process model is started by a record action, you can also [edit its security in the record type](record-action-security.html#edit-process-model-security).

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a process model's security role map:

| Actions | Administrator | Editor | Manager | Viewer | Initiator |
| --- | --- | --- | --- | --- | --- |
| Start the process model\* | Yes | Yes | Yes | Yes | Yes |
| View the process model | Yes | Yes | Yes | Yes | No |
| View process model reports | Yes | Yes | Yes | Yes | No |
| Override task assignment (whether or not reassignment is allowed) | Yes | Yes | Yes | No | No |
| Update the process model | Yes | Yes | No | No | No |
| Save the process model | Yes | Yes | No | No | No |
| View the process model documentation | Yes | Yes | No | No | No |
| View the security | Yes | No | No | No | No |
| Update the security | Yes | No | No | No | No |
| Delete the process model | Yes | No | No | No | No |
| Override another user editing the process model | Yes | No | No | No | No |
| Publish the process model | Yes | No | No | No | No |

\*Users must have at least **Initiator** permissions to the process model in order to execute the [Start Process smart service](Start_Process_Smart_Service.html) successfully.

**Note:**  If a user or group is assigned the **Deny** role, they cannot perform any action associated with the process model.

### Process security

In addition to configuring the security settings associated with a process model, Appian allows developers with sufficient rights to configure the security associated with a process. By default, all processes inherit security from their process models. The inherited security can be overridden using the [Modify Process Security Smart Service](Modify_Process_Security_Smart_Service.html) or by selecting the **Security** option in the [Process Activity tab](monitoring_view.html#options).

![process_security_dialog.png](images/process_security_dialog.png)

#### Process role permissions

The different roles that can be assigned to actors in a process are described in the following tables. Only users with Administrator permissions for a process model and system administrators have the necessary security rights to provide other users and groups access to a running process.

##### Managing tasks

**Note:**  By default, any user can view and complete tasks assigned to them. Additionally, the **Deny** role does not prevent users from viewing tasks assigned to them.

| Actions | Administrator | Editor | Manager | Viewer | Initiator | Deny |
| --- | --- | --- | --- | --- | --- | --- |
| Reassign tasks assigned to me, when reassignment is enabled | Yes | Yes | Yes | Yes | Yes | No |
| View tasks assigned to other users | Yes | Yes | Yes | Yes | No | No |
| Reassign tasks assigned to other users, regardless of whether reassignment is enabled | Yes | Yes | Yes | No | No | No |
| View and complete tasks assigned to other users | Yes | Yes | No | No | No | No |

##### Making process edits

| Actions | Administrator | Editor | Manager | Viewer | Initiator | Deny |
| --- | --- | --- | --- | --- | --- | --- |
| Update process variables | Yes | Yes | Yes | No | No | No |
| Change process security roles for other users and groups | Yes | No | No | No | No | No |
| Perform in-flight modifications to the process | Yes | No | No | No | No | No |
| Stop or pause a process | Yes | No | No | No | No | No |
| Delete a process | Yes | No | No | No | No | No |

##### Viewing process data

| Actions | Administrator | Editor | Manager | Viewer | Initiator | Deny |
| --- | --- | --- | --- | --- | --- | --- |
| View a process report and process variable values | Yes | Yes | Yes | Yes | No | No |
| View a task report containing tasks from this process | Yes | Yes | Yes | Yes | No | No |
| View a node report | Yes | Yes | Yes | Yes | No | No |

## Actor properties

The following process and task properties are calculated functions that return the appropriate user or group in whatever context the function is called.

For example, in an attended task, at design-time you can use the **pp!initiator** property to automatically assign the task to the user that launched the process that triggered the task activity.

| Function Name | Description | Syntax |
| --- | --- | --- |
| Process Designer | Returns the user that designed the process (the user who published the latest version of the process model). | `pp!designer` |
| Process Initiator | Returns the user who started the process. | `pp!initiator` |
| Task Owner | Returns the single user who has accepted the task. For tasks that are assigned to a single user, the user automatically accepts the task when it is first viewed. | `tp!owner` |
| Task Owner's Supervisor | Returns the user who is the supervisor of the task owner. | `supervisor(tp!owner)` |
| Task Assignees | The users who have been assigned the task. | `tp!assignees` |

## Versions

### Major versions

Each time you publish a process model, a new major version is created. All versions of a process model, regardless of their status, are available for viewing and editing (depending on your security settings). All new processes start from the latest major process model version.

Below are some points to keep in mind when importing process models as part of your applications:

-   Importing an application package (successfully).
    -   Any process models it contains are published immediately with a higher major version number.
-   Importing process models (for the first time) that are linked recursively using a [Subprocess flow activity](Sub-Process_Activity.html).
    -   The process models are published twice, resulting in two new versions.
    -   Subsequent imports to update the model publish the recursively linked process models one time per import, creating a new version each time.

In order to view changes between the latest published version and any previous published version of your process model, you can launch a detailed comparison by performing the following actions:

-   **File** > **Versions** and click **Compare With Latest**

    -   **Note**: Comparisons do not include changes made to smart service plug-in configurations.

    ![images:Process_Model_Versions_Dialog](images/Process_Model_Versions_Dialog.png)

For more information about managing process model versions, see [Managing Object Versions](Managing_Object_Versions.html).

### Minor versions

**Note:**  **As of 20.3, minor versions in process models were deprecated**. Minor versions in process models will be removed in a future release of Appian. Save process models using [major versions](process-model-object.html#major-versions) instead.

There are specific actions that create only a new minor version (e.g., 3.0 creates 3.1). Minor versions (regardless of the major version number associated with it) act as a test process model when a process runs on it. Saving a process model as a new minor version allows you make changes to the main process model without affecting the new processes that will still start from the model.

The following actions create a new **minor** process model version:

-   Modifying a published process model, and saving the changes.
    -   **File** > **Save**
    -   **File** > **Versions** > **Save New**
        -   This option also allows you to list a comment. Any comments that you add overwrite the Description listed in the process model's properties.
    -   Save Process (Toolbar icon)
-   Modifying the model of a specific process and saving the changes as a new version.
    -   **File** > **Save New Version**

## Process model validation

Process Model Validation is an essential part of creating and modifying your process models. It can help prevent issues from occurring during run-time and confirm the model satisfies all the functional requirements set by the software and the user.

If a process model does not pass validation, you can save it, but you can not publish it. The validation runs automatically when you save your process model. Process models need to pass validation and be published before users can execute them in an application.

This does not, however, prohibit process model designers from running a process for testing purposes, which can be done in [debug mode](Monitoring_and_Editing_Processes.html#debug-mode) any time you save it.

During validation, if the process model produces an error, it displays in a list at the bottom of the Process Modeler. Click the error message to display the dialog detailing where the configuration issue occurred.

[![images/Validation_Errors2.png](images/Validation_Errors2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img874)

[![](images/Validation_Errors2.png)](#_)

### Types of validation

The Process Modeler validates input at all technological levels: User Interface, Middle-Tier, and Back-End. Within these three levels, the following types of validation may occur: UI Validation, Activity Class Validation, and Structural Validation.

#### UI validation

UI validation occurs when the user submits information or when the user attempts to take an action that goes against a process model setup. For example, one validation rule states that a process model must contain an [End\_Event](End_Event.html). If your process model does not contain an end event, it will not pass validation.

#### Activity class validation

Activity Class Designers may specify additional validation rules on the UI or the data layer. These should be defined in terms of a framework provided by Appian Process Engine.

#### Structural validation

Structural Validation refers to the validation of required data elements in Process Models, as well as how nodes connect to each other. Possible structural validation errors include the following:

-   Duplicate PV names, regardless of letter casing, existing in the model. If so, the model fails validation until you delete the duplicates so only PVs with unique names exist.

-   Undefined variables in expressions and rules referenced by the process model. If so, the model fails validation with a validation error until you update the expression or rule that references the incorrect variable.

    -   For example, the validation message `"Variable not found: ri!myVar"` indicates that an expression in the process model references the variable `ri!myVar` either directly or indirectly via a rule.

### Design guidance

Appian [design guidance](appian-recommendations.html) reinforces best practice design patterns that should be implemented in your objects. [Process model guidance](appian-recommendations.html#process-model-design-guidance) is displayed alongside validations in the modeler's validation pane (A). During development, process model warnings should always be addressed, and recommendations should be addressed or [dismissed](#process-model-recommendation-dismissal) depending on your use case (B).

Process model guidance is calculated when you:

-   **Save & Publish** a process model
-   **Save** a process model draft
-   **Save as** new process model
-   [**Validate**](process-model-object.html#toolbar-options) a process model (![validate_button](images/process-modeler/icon_validate.png) button)

**Note:**  Guidance is only visible for the _latest published version_ of a process model or its _latest draft_. It is also only visible in the [Process Designer View](process-model-object.html#process-designer-view), or in the [Edit Mode](Monitoring_and_Editing_Processes.html#edit-mode) of an active process (by clicking the [validate](process-model-object.html#toolbar-options) ![validate_button](images/process-modeler/icon_validate.png) button).

Process model guidance is also visible on the [Health Dashboard](monitoring_view.html#health-dashboard) outside of the Process Modeler.

**Note:**  Process models must be _published_ in order for their design guidance to appear on the Health Dashboard.

[![images/appian_recommendations_process_modeler_annotated.png](images/appian_recommendations_process_modeler_annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img875)

[![](images/appian_recommendations_process_modeler_annotated.png)](#_)

#### Process model recommendation dismissal

You can dismiss process model recommendations that do not apply to your use case by clicking **Dismiss** at the end of a recommendation. Learn more about recommendation dismissal [here](appian-recommendations.html#recommendation-dismissal).

In addition to the general recommendation dismissal behaviors, note the following about recommendation dismissals in the Process Modeler:

1.  Only recommendations that are dismissed on a _published_ process model are saved. Any recommendations that are dismissed on a process model _draft_ will reappear the next time that you open the process model.
2.  Recommendations can only be dismissed in the [Process Designer View](process-model-object.html#process-designer-view), and cannot be dismissed in the [Edit Mode](Monitoring_and_Editing_Processes.html#edit-mode) of an active process.

## Generating process model documentation

The Process Model Documentation view displays a report of your process model design and the objects it contains. The documentation view can be displayed from Appian Designer or the Process Modeler. Links displayed on the report display the details for the selected object. The report provides the following details:

-   Process model properties
-   Business Process Modeling Notation (BPMN) view of the process model
-   Properties for each activity, event, and gateway
-   Swimlane properties
-   Annotations
-   Process flow connection properties

### Viewing Process Model Documentation

To view process model documentation, you must have **Administrator** or **Editor** rights to the process model.

To view this documentation from Appian Designer:

1.  In the [**Build** view](build-view.html), select a process model.
2.  In the toolbar, click **MORE**.
3.  Select **View Documentation**. The latest _published_ process model is rendered as documentation in a separate window.

To view this documentation from the Process Modeler:

1.  Open a process model.
2.  Select **Tools > Generate Documentation** from the toolbar. The _current_ process model (saved or unsaved, published or unpublished) is rendered as documentation in a separate window.

### Process model properties

The process model properties include the following:

-   **Process Display Name**: The process display name can be either a typed string of text or an expression.
-   **Model Id** : This report item lists an ID number used internally to reference the process model.
-   **UUID** : This report item lists a unique string of 32 hexadecimal digits assigned to the process model once you save it.
-   **Last Updated**: This report item lists the user name of the user who last saved the process model.

**Note:**  Learn how to [use process model properties in expressions](Process_and_Report_Data.html#process-model-properties).

### Process model diagram

The report displays a BPMN view of the process model.

-   Click each activity to view its details.
-   Clicking a Subprocess activity displays the Subprocess diagram.

### Process model contents

The Process Model Contents section of the report lists the objects that appear on the Process Modeler canvas.

#### Process start form type

If there is a process start form, it is listed as an interface.

#### Process variables

This section of the report lists each of the process variables configured for the process model, and the number of process variables in the process model. The following columns are displayed:

-   **Type**: The type column lists the process variable's data type.
-   **Value**: The value column lists any configured default value.
-   **Parameter**: This column lists whether the process variable is required at the start of the process, as with a process start form.
-   **Required**: This column lists whether a value must be stored for the process variable.
-   **Multiple**: This column lists whether the process variable holds more than one value.
-   **Hidden**: This column lists whether the process variable is hidden from reports.

#### Lanes

This section lists the swimlanes configured for process activities in the process model. The following columns are displayed:

-   **ID** : A number used internally to reference the swimlane.
-   **Label**: This report item lists the name of the swimlane as it appears on the process model.
-   **Height**: This report item lists the height setting for the swimlane.
-   **Attended**: An attended lane overrides individual assignment settings for attended activities in the lane, and sets assignment to this designated user or group.
-   **Assignees/Run As**: When a swimlane is assigned, this column lists the user or group that the activities in the lane are assigned to. When activities are unassigned, this column lists the user account that is used to resolve security requirements.

#### Node list

This section of the report lists all nodes that appear in the process model. The following columns are displayed:

-   **ID**: A number used internally to reference the node at runtime.
-   **GUI ID**: A number used internally to reference the node at design time.
-   **Name**: The name displayed on the Process Modeler canvas.
-   **Task Display Name**: The name displayed on any tasks assigned by the activity.
-   **Lane**: The name of the swimlane that contains the node, if any.
-   **Attended**: This column lists whether the node is assigned to a user or group as a task.
-   **Assignees/Run As**: When an activity is assigned, this column lists the user or group that the activity is assigned to. When the activity is unassigned, this column lists the user account that is used for security permissions.

#### Annotations

This section of the report lists any notes that appear in the process model. The following columns are displayed:

-   **GUI ID**: A number used internally to reference the note.
-   **Text**: The content of the note.

#### Connections

This section of the report lists the flow connectors that appear in the process model. The following columns are displayed:

-   **Start Node**: The process node where the flow connector originates.
-   **End Node**: The process node where the flow connector terminates.
-   **Activity-Chained**: This column lists flows that are configured to automatically display the next assigned task.

### Process model node details

Each node that appears in the process model is listed in greater detail in this section. The following information appears for each node below its name and icon:

-   **Node Type**: This line item lists the name of the type of node used as it appears on the Process Modeler palette. It also lists the internal object name in parentheses.
-   **Form Type**: Smart service activities display the type of form configured (dynamic or JSP). A dynamic form uses the Process Modeler. JSP forms list the path to the JSP.
-   **UUID**: This line item lists a unique string of 32 hexadecimal digits assigned to the associated node once you save the process model.
-   **Description**: This line lists any descriptive text entered for the activity on the general tab of the node properties dialog.
-   **Task Display Name**: The name displayed on any tasks assigned by the activity. A rule or expression may be used to resolve the display name at runtime.
-   **Lane**: The name of the swimlane that contains the node, if any.
-   **Attended**: This item lists whether the node is assigned to a user or group as a task.
-   **Assignees**: When an activity is assigned, this item lists the user or group that the activity is assigned to. When the activity is unassigned, this item states that the node is run as either the process initiator or the process designer.
-   **Exception Flow Triggers**: Smart services list any rules configured to trigger an exception flow.

#### Event Nodes

Process events are listed according by name and Process Modeler icon. The following details are listed for each process event:

-   **Event Type**: This line lists the type of event node, or the type of event configured for a node such as send message, or receive message.
-   **Conditions to activate event node**: Each logic test that must be satisfied before the event is triggered is listed.

#### Send Message events

-   **Message Type**: This line lists the type of message being sent such as email or process.
-   **Message Body**: This line lists the body text of the message that is sent.

#### Mappings

The event mappings are listed in a table that displays the following columns.

-   **Name**: The name of each property.
-   **Value**: The data listed for each property configured for the event mapping.

#### Receive Message event

-   **Listen for messages of type**: Typically, this property lists either email or process-to-process messages.
-   **Once activated, listen for messages for the life of the process**: True/False. This property lists whether the an event is activated once, or whether it can be activated multiple times.

#### Gateways

Each gateway node is listed with its standard node properties. Each gateway also lists the conditions that route process flow to different nodes in a table. This table displays the following columns.

-   **Condition**: The logical test that must be true to activate an outgoing flow.
-   **Result**: The outgoing flow to activate, listed according to its destination node.
-   **Path Label**: The label that appears on the outgoing flow (if any).

#### Node Inputs table

When a node has configured data inputs, this table lists the data collected. This normally only occurs in assigned nodes (we don't recommend configuring node inputs for unassigned activities. Use outputs instead.) The following columns are displayed.

-   **Name**: The name assigned to the node input variable.
-   **Type**: The type column lists the process variable's data type.
-   **Value**: The value column lists any configured default value. When the default value of a custom Complex Data Type (CDT) is set within the parent element, the Value column displays the expression or literal value specified. When the default value is defined within a subelement of a CDT, the Value column appears blank.
-   **Parameter**: This column lists whether the process variable is required at the start of the process, as with a process start form.
-   **Required**: This column lists whether a value must be stored for the process variable.
-   **Multiple**: This column lists whether the process variable holds more than one value.
-   **Hidden**: This column lists whether the process variable is hidden from reports.

When a complete CDT hierarchy, or when the parent element of a CDT is saved into a process variable, it is listed as a node input. When a subelement of a CDT is saved into a process variable or subelement of a CDT, it is displayed as a node output.

#### Node Outputs table

When a node has configured outputs, this table lists the output data. The following columns are displayed.

-   **Expression**: The name of the output is taken from the expression used to formulate the output data.
-   **Operation**: Different operations can be performed on output data, such as appending the values to an array. This column lists the operation performed when storing the data.
-   **Variable**: This column lists the process variable storing the output data.

#### Subprocess activities

Click the name of the subprocess to display process model documentation for the configured subprocess. Subprocesses display the following additional report items:

-   **Is Asynchronous**: True/False. Synchronous subprocess activities must end before the process flow continues. Asynchronous subprocess activities launch the child process and continue the flow.
-   **Data from subprocess can be included…**: True/False. Process reports can aggregate data from multiple process models when this is true. Process variables should have different names in each process model referenced by the report.
-   **Subprocess inherits security from parent process**: True/False. Should a user not have the right to view a subprocess, the parent process may pause due to a security exception. Inheriting security from the parent allows users to launch the subprocess model if they have the right to launch the parent process.
-   **Subprocess Model**: This line lists the name of the subprocess model. The process model ID or UUID are listed in parentheses (PmId, PmUUId).

#### Subprocess data mapping

Subprocesses pass variable data from parent to child. Synchronous subprocesses can also pass data from the child to the parent process. The report lists any such variables.

For Input Variables, the following columns are displayed.

-   **Subprocess Variable**: The name of the parameter in the child process model that receives data from the parent process.
-   **Set From**: The name of the parent process variable.

For Output Variables, the following columns are displayed.

-   **Subprocess Variable**: The name of the process variable in the child process model that returns data back to the parent process.
-   **Save Into**: The name of the parent process variable that receives data from the child process.

#### Best practices

We recommend maintaining detailed process model documentation to allow other process developers easily read and maintain your process models.

-   Update the process model properties and activities with clear descriptions.
-   Annotations the process model to call out sections that need additional explanation.
-   Use descriptive names for your process variables.

### Configuring printing options

To ensure the process entire process model diagram prints, use the Landscape page setting. Based on your web browser, configure the printing option below to ensure the process model diagram prints with the grid background. If you do not want to see grid lines, ignore the browser step that sets background graphics.

#### Chrome and Microsoft Edge

1.  From the Process Modeler menu, click **File > Print**.
2.  Click **More settings**.
3.  In **Options**, select **Background graphics**.
4.  Click **Print**.

#### Firefox

1.  From the toolbar, click **File > Print**.
2.  Click **More Settings**.
3.  Select **Print Backgrounds**.
4.  Click **Print**.

The browser may not render the process model JavaScript in the same manner when printing the documentation as opposed to viewing the documentation. The **Take a Screenshot** option in the address bar's three dot menu may be useful in achieving the desired results.

#### Safari

1.  From the toolbar, click **File > Print**.
2.  Select **Background graphics**.
3.  Select **Print Backgrounds**.
4.  Click **Print**.

## Known issues in the modeler

-   In Chrome, the context menu doesn't open when certain extensions override the behavior of the mouse's right-click button. For example: Linkclump

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...