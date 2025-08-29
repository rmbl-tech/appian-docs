---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_the_User_Input_Task.html
original_path: Configuring_the_User_Input_Task.html
version: "25.3"
title: "User Input Task"
page_id: "Configuring_the_User_Input_Task"
section: "General tab"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# User Input Task

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Assign a User by Configuring a User Input Task

This video from [Academy Online](https://academy.appian.com/) explains how to configure a user input task to assign it to a user.

![](images/Smart_Service_Icons/User_Input_Task.png)

The User Input Task is an activity that assigns a task to be completed (using a form) to a user or a group.

To configure the User Input Task activity, right-click the User Input Task node in the designer canvas, then select **Properties** — OR — double-click the node on the designer canvas. The **Configure User Input Task** dialog displays.

To speed up development, Appian can preconfigure this smart service for you. [Search for your interface object](process-model-object.html#search), and drag and drop the interface object to the process model canvas. The User Input Task node is automatically created and configured to reference that interface object. Open the [process node's properties](Process_Node_and_Smart_Service_Properties.html) to further configure its behavior.

**Tip:**  To configure the activity as a quick task, see also: [Creating a Quick Task](Process_Model_Recipes.html#creating-a-quick-task).

## General tab

The **General** tab allows you to name and describe the node.

Enter a new name for the node, by typing it in the **Name** field.

-   When additional languages are enabled, a tab for each language appears on the **General** tab.
-   If so, the **Name** field must be populated for each language.
-   Otherwise (should you ever need to troubleshoot an instance running in a different language) you will be unable to distinguish between nodes in your process reports and alerts.

## Additional configuration options

To configure the remaining options for the User Input Task, complete the following:

1.  Select the [**Assignment** Tab](Process_Node_and_Smart_Service_Properties.html#assignment-tab) and assign the task to a user or group.
2.  Go to the **Forms** tab.
3.  Select an [interface](interface_object.html) using search or browse.
4.  Leave the **Allow users to save a draft of in-progress tasks** checkbox selected if you would like to give users the ability to save a draft of the task before submission. This is only applicable if you are saving user inputs into [Activity Class Parameters](Process_and_Report_Data.html#activity-class-parameters).
5.  Select **Capture location on submission (only supported in Appian Mobile)** if you would like to capture the location from where the user submits the task when using the Appian Mobile application.

### Configuring inputs

1.  From the **Data** tab, under the **Inputs** section, create [process variables](process-model-object.html#variables-tab) for storing your node input data.
2.  Select the **New Process Variable** button next to the **Save Into** list.
3.  Type the name of the process variable in the **Name** field.

### Capturing task submission location

When the option **Capture location on submission (only supported in Appian Mobile)** is enabled, `Submission Location` [result data](Process_Node_and_Smart_Service_Properties.html#results) is available in the **Outputs** section of the **Data** tab. `Submission Location` has the following fields:

-   **location:** The geographical location from where the task is submitted. This is only available when the task is submitted from [Appian Mobile](Appian_for_Mobile_Devices.html) application. It has the following fields:
    -   **latitude:** The latitude, measured in degrees.
    -   **longitude:** The longitude, measured in degrees.
    -   **altitude:** The altitude, measured in meters.
    -   **horizontalAccuracy:** The radius of uncertainty for the location, expressed in meters.
    -   **verticalAccuracy:** The uncertainty in the altitude value of the location, expressed in meters.
-   **isAvailable:** Indicates whether location is captured for the submitted task. Returns `true` if location is captured, `false` otherwise.
-   **errorStatus:** Indicates the reason for missing location. This field is only populated if the **isAvailable** is `false`. It can have one of the following values:
    -   **NOT\_AUTHORIZED:** Indicates that access to location services was denied by the user from the mobile application.
    -   **NOT\_AVAILABLE:** Indicates that the location could not be obtained.
    -   **NOT\_SUPPORTED:** Indicates that the task was submitted from web or from an older version of the mobile application.
    -   **DISABLED\_BY\_ADMINISTRATOR:** Indicates that the system administrator has disabled the 'Enable Location Capture' option from the [Appian Administrator Console](Appian_Administration_Console.html#mobile).

To reference the submission location elsewhere in the process model, the `Submission Location` result must be mapped to a process variable:

1.  In the **Data** tab, select the **Outputs** section.
2.  In the **Results** list, select the `Submission Location` output.
3.  In the **Result Properties** section, save the output in a process variable of type `LocationResult`. You can also create a new process variable to store the submission location by clicking on the **New process variable** button.

### Form-based approvals

You can configure a form with approve or deny buttons that store a value when the form is submitted. To do this, use the [Button component](Button_Component.html) to store a value when the user submits your form. For example, `true` for **Approve** or `false` for **Deny**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...