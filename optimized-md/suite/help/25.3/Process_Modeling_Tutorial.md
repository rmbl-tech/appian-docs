---
source_url: https://docs.appian.com/suite/help/25.3/Process_Modeling_Tutorial.html
original_path: Process_Modeling_Tutorial.html
version: "25.3"
title: "Process Modeling Tutorial"
page_id: "Process_Modeling_Tutorial"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process Modeling Tutorial

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This tutorial will guide you through the steps to create a process model that end users can start using a record list action.

The process model we're creating in this tutorial will allow users to create new employees in the Employee record type. The form for Employee information contains several inputs that are saved into a process variable so we can use them later.

We'll add a process flow that lets the user cancel their request to add an new employee. For the last step, we'll set up an automatic email to the HR manager letting them know a new employee was added to the system.

**Tip:**  If you have a database-backed record type with data sync enabled, Appian can automatically configure your processes for you when you [generate a record action](record-actions.html#generate-record-actions).

## Before you begin

-   Complete the [Interface Tutorial](SAIL_Tutorial.html) first, so that you have the Appian Tutorial application, the Employee record type, and the **AT\_employeeForm** interface needed to complete this tutorial.
-   Make sure you're a member of the [Process Model Creators system group](System_Groups.html). Contact your system administrator if you are unsure if you belong to this system group.

## Create the process model

Let's start by creating the process model object. We'll also use the **AT\_employeeForm** interface as the start form to automatically populate our variables.

To create the process model:

1.  In the **Appian Tutorial** application, go to the **Build** view.
2.  Click **NEW > Process Model**.
3.  In the **Create Process Model** dialog, configure the following properties:
    -   Leave **Create from Scratch** selected.
    -   For **Name**, enter `AT Create New Employee`.
    -   For **Save In**, use the default **AT Process Models** folder.
4.  Click **CREATE**.
5.  In the **Review Process Model Security** dialog, update the default security as follows:
    -   For **AT Users**, set the **Permission Level** to **Initiator**.
    -   For **AT Administrators**, leave the **Permission Level** as **Administrator**.
6.  Click **SAVE**. The Appian Process Modeler opens automatically and displays the **AT Create New Employee** process.
7.  From the menu bar, click **File > Properties**.
8.  Click the **Process Start Form** tab.
9.  For **Interface**, select **AT\_employeeForm**.
10.  On the **Create Process Parameters** dialog, click **Yes**. The `record` and `cancel` process variables are created. You can see these variables if you go to the **Variables** tab.

     [![cancel and record variables defined in the Variables tab of the process model properties dialog](images/process_model_tutorial/process-model-tutorial-variables-created.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img837)

     [![](images/process_model_tutorial/process-model-tutorial-variables-created.png)](#_)

11.  Click **OK**.
12.  From the menu bar, click **File > Save & Publish**.

Your process model will look like this:

[![Process Model with a start node and an end node](images/process_model_tutorial/process-model-created.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img838)

[![](images/process_model_tutorial/process-model-created.png)](#_)

You can leave the modeler tab open, because we'll be returning to it in a moment.

## Create a record list action

Now that we have a process model to build on, we'll configure a new [record list action](record-actions.html#record-list-actions) so users have a way to initiate the process.

To create the record list action:

1.  In the **Build** view, open the **AT Employee** record type.
2.  In the record type, go to **Actions**.
3.  Under **Record List Actions**, click **CONFIGURE NEW ACTION MANUALLY**. The **Create New Action** dialog appears.
4.  For **Display Name**, enter `New Employee`.
5.  For **Icon**, keep the default `plus` icon.
6.  For **Process Model**, enter `AT Create New Employee`.
7.  Click **OK**.
8.  Click **SAVE**.

## Test the record list action

Now that we have a process model to build on, let's see what happens if we run the record list action in this basic state.

To test out the action:

1.  In the record type, go to **List**.
2.  Under the **Record List** section, click the **URL**. The record list opens in a new tab.
3.  Click **\+ NEW EMPLOYEE**. You should see the following:

    [![Create New Employee start form](images/process_model_tutorial/create-new-employee-start-form.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img839)

    [![](images/process_model_tutorial/create-new-employee-start-form.png)](#_)

4.  Complete the form. For example, you could enter:

    | Field | Value |
    | --- | --- |
    | **First Name** | Deborah |
    | **Last Name** | Geary |
    | **Department** | Sales |
    | **Title** | Account Executive |
    | **Phone Number** | 123-555-0987 |
    | **Start Date** | any future date |

5.  Click **SUBMIT**.
6.  Return to the **Appian Tutorial** application, and click **Monitor** in the [navigation pane](common-view-elements.html#navigation-pane).
7.  Go to **PROCESS ACTIVITY** to view the list of processes.
8.  In the list, click the process instance with the name **AT Create New Employee**. This action opens the monitoring view of the process instance in the Process Modeler. The flow that your process instance followed is highlighted in blue.

    [![Process Monitor view showing Create New Employee flow](images/process_model_tutorial/monitor-process-view.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img840)

    [![](images/process_model_tutorial/monitor-process-view.png)](#_)

    In this case, the flow was straightforward: it started at the **Start Node** and successfully continued to the **End Node**.

9.  In the toolbar, click **Process Details**. By default, the **Variables** tab is active. This tab displays the values that Appian populated to the process variables based on your field inputs.

    [![Process Details Process History tab](images/process_model_tutorial/process-details-variables.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img841)

    [![](images/process_model_tutorial/process-details-variables.png)](#_)

10.  Click the **History** tab. In this example, you can see each event Appian after you submitted the form.

     [![Process Details Variables tab](images/process_model_tutorial/process-details-process-history.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img842)

     [![](images/process_model_tutorial/process-details-process-history.png)](#_)

11.  Click **CLOSE**.
12.  Close the monitoring view for this process instance.

## Make process instance names dynamic

In the **PROCESS ACTIVITY** list, you might have noticed that the process name is just **Create New Employee**. As more employees are created and other applications are introduced into this environment, it will become difficult to distinguish processes from each other if the process instance names are generic.

Let's update the name to include information that's specific to each process instance.

To make the process instance names dynamic:

1.  Return to the **Create New Employee** process model.
2.  From the menu bar, click **File > Properties**.
3.  On the **General** tab, next to **Process Display Name**, click **Edit as Expression**.
4.  In the **Expression Editor** dialog:

    -   Enter `"New Employee: " &` .
    -   On the **Data** tab, expand the **Process Variables** and **record** lists.
    -   Click **firstName** to add the record field reference to the expression.
    -   Enter `& " " &`.
    -   From the **record** list, click **lastName**.

    This expression adds employee information to the display name of every process instance.

5.  Click **SAVE AND CLOSE**.
6.  Click **OK** to close the **Process Model Properties** dialog.
7.  From the menu bar, click **File > Save & Publish**.
8.  [Test the record list action](#test-the-record-list-action) again. This time, in the **Monitor** view, notice that the process name includes the value from the **Expense Item** field of the input form:

    [![Dynamic process title](images/process_model_tutorial/process-history-dynamic-title.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img843)

    [![](images/process_model_tutorial/process-history-dynamic-title.png)](#_)

## Add a cancel flow

We've enabled our users to create a new employee, but we still need to handle the case when the user starts to fill out the form, but then wants to cancel the action.

We'll do that by adding a cancel flow to the process.

A `cancel` rule input is part of the **AT\_employeeForm** interface. When we chose the interface as the process start form, a corresponding `cancel` process variable was automatically created. At this point though, nothing in the workflow uses that variable.

If a user clicks **CANCEL**, `ri!cancel` is set to `true` and the AT Create New Employee process is started with `pv!cancel` also set to `true`. Now, we just need to add a gateway to direct the process flow based on the value of `pv!cancel`.

### Add a gateway node

[Gateways](Gateways.html) let you route the flow to different paths of your process model based on logic you define. In this case, the gateway uses the value of `pv!cancel` to select the appropriate workflow path.

To add a gateway node:

1.  In the **Create New Employee** process model, drag an **XOR** node from the palette to the canvas, and drop it on top of the existing connector between the **Start Node** and **End Node**. The connector turns blue to indicate that you can add the node to the existing flow.
2.  Click the label of the new **XOR** gateway and change it to `Cancel?`.
3.  Drag an **End Event** node from the palette to the bottom of the `Cancel?` gateway. A red dot appears indicating that these two nodes will be connected.
4.  Drop the **End Event** node on the red dot. The two nodes are now connected.
5.  Rename this node `Cancel End Event`.
6.  Double-click the flow connector between the **Cancel** node and the **End Node**, and set the **Label** property to `No`.
7.  Click **OK** to close the Flow Properties dialog.
8.  Double-click the flow connector between the **Cancel** node and the **Cancel End Event** node, and set the **Label** property to `Yes`.
9.  Click **OK**.

    The process model should look like this:

    [![Process model with Cancel flow](images/process_model_tutorial/process_model_with_cancel_flow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img844)

    [![](images/process_model_tutorial/process_model_with_cancel_flow.png)](#_)

### Configure the decision logic

Now let's define the logic within the `Cancel?` gateway using the `cancel` process variable.

To configure the gateway decision logic:

1.  Double-click the **Cancel?** node.
2.  On the **Configure Cancel?** dialog, click the **Decision** tab.
3.  Click **NEW CONDITION**.
4.  Configure properties for the new condition:
    -   For **Condition**, enter `pv!cancel`.
    -   For **Result**, in the **go to** dropdown list, select **Cancel End Event**.
5.  Configure properties for the **Else if none are TRUE** condition:
    -   For **Result**, in the **go to** dropdown list, select **End Node**.
6.  Click **OK**.
7.  In the menu bar, click **File > Save & Publish**.
8.  [Test the record list action](#test-the-record-list-action) again, but click **CANCEL** instead of **SUBMIT**. In the **Monitor** view, click the process instance to review the process flow. You can see that the process followed the cancel flow:

    [![monitoring view of process instance with Cancel flow](images/process_model_tutorial/process_instance_with_cancel_flow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img845)

    [![](images/process_model_tutorial/process_instance_with_cancel_flow.png)](#_)

### Configure the end nodes

It's a best practice to formally terminate a process when it reaches an end event node. We'll configure both the **End Node** and the **Cancel End Event** to terminate the process on completion of the node action.

In the process model, do the following for each of these nodes:

1.  Double-click the node.
2.  Click the **Results** tab.
3.  Click **Terminate Process**.
4.  Click **OK**. Your end nodes should now look like this:

[![process model with end nodes configured to terminate](images/process_model_tutorial/process_model_terminate_end_nodes.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img846)

[![](images/process_model_tutorial/process_model_terminate_end_nodes.png)](#_)

1.  From the menu bar, click **File > Save & Publish**.

## Write employee data and send a notification

Each new employee created with the form needs to be saved in the database that backs our Employee record type. The [Write Records](Write_Records_Smart_Service.html) smart service can take the information stored in the `pv!record` variable and add it to the record type's data source.

### Configure a Write Records node

To configure a Write Records node:

1.  In the **Create New Employee** process model, expand the **DATA SERVICES** section of the palette.
2.  Drag a **WRITE RECORDS** node to the canvas and drop it on the connector between the **Cancel?** (XOR) node and **End Node**.
3.  Click the label and change it to `Write Employee Record`.
4.  Double-click the Write Records node.
5.  Go to the **Data** tab.
6.  In the Node Inputs pane, click **Records**.
7.  For the **Value** field, use the dropdown to select `record`. The field is automatically populated with the correct process variable syntax.
8.  Click **OK**.
9.  From the menu bar, click **File > Save & Publish**.
10.  [Test the record list action](#test-the-record-list-action) again.
11.  In the **Monitor** view, click the process instance to review the process flow. You can see that the process followed the flow to add a new employee.

[![Monitor Process View showing Write Records node](images/process_model_tutorial/monitor-process-write-records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img847)

[![](images/process_model_tutorial/monitor-process-write-records.png)](#_)

### Store the output

Let's say the manager of the team using our application wants to be notified by email when new employees are added. We can use a [Send E-mail](Send_Email_Smart_Service.html) smart service node to meet this requirement. First, we need to get the output of the Write Records node so we can pass the new employee record to the next part of the process.

To store the Write Records output:

1.  In the **Create New Employee** process model, double-click the Write Employee Record node.
2.  Go to the **Data** tab.
3.  Go to the **Output** tab.
4.  In the list of **Node Outputs**, click **Records Updated**.
5.  For the **Target** field, click **New Process Variable**.
6.  In the **New Process Variable** dialog, keep the default **Name** `RecordsUpdated`.
7.  For **Type**, enter `AT` and select **AT Employee (Record Type)** from the list of options.

    [![New process variable - RecordsUpdated](images/process_model_tutorial/process-variable-records-updated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img848)

    [![](images/process_model_tutorial/process-variable-records-updated.png)](#_)

8.  Click **OK**.
9.  To close the Configure Write Employee Record dialog, click **OK**.
10.  From the menu bar, click **File > Save & Publish**.

### Configure an email node

Now that we have the employee record stored in a process variable, we can set up the email notification.

To configure the Send E-mail node:

1.  Drag a **SEND E-MAIL** node from the **COMMUNICATION** section of the palette to the canvas, and drop it on the connector between the **Write Employee Record** node and **End Node**.
2.  Double-click the **Send E-Mail** node.
3.  In the **Configure Send E-Mail** dialog, go to the **Setup** tab.
4.  For **From**, select **Process Initiator** from the dropdown list. This sends the email as the user who created the new employee record. This way, the manager knows which member of their team completed the form.
5.  For **To**, click **Edit as Expression**.
6.  In the expression editor, enter `toemailaddress()` and set your email address as the _value_ (for example, `toemailaddress("first.last@example.com")`). We're manually setting our own email for testing purposes. In a production app, you could select Appian users by entering their names in the **To** field.
7.  Click **SAVE AND CLOSE**.
8.  For **Subject**, click **Edit as Expression**.
9.  In the **Expression Editor** dialog:
    -   Enter `"New Employee Created: " &` .
    -   On the **Data** tab, expand the **Process Variables** and **RecordsUpdated** lists.
    -   Click **firstName** to add the record field reference to the expression.
    -   Enter `& " " &`.
    -   From the **RecordsUpdated** list, click **lastName**.
10.  Click **SAVE AND CLOSE**.
11.  Click **OK**.

     [![Example Send Email node configuration](images/process_model_tutorial/configure-send-email-node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img849)

     [![](images/process_model_tutorial/configure-send-email-node.png)](#_)

12.  In the **Configure Send E-Mail** dialog, click **OK**.
13.  From the menu bar, click **File > Save & Publish**.

### Test the full workflow

Our process model now contains a few steps. To initiate the process, we enter the employee information as an action. Then, the process model automatically adds the employee to the database and sends an email. Now it's time to test the whole process.

To test the full workflow:

1.  Add a new employee:
    -   On the Employee record list, click **NEW EMPLOYEE**.
    -   Complete and submit the form.
2.  Check your email and verify that you received a message about the new employee.
3.  Check out the detailed results of the process flow:
    -   Return to the **Appian Tutorial** application, and click **MONITOR** in the left navigation pane.
    -   Click **PROCESS ACTIVITY** to view the list of processes.
    -   Click your process instance. You should see the following:

        [![Complete process model](images/process_model_tutorial/monitor-process-full.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img850)

        [![](images/process_model_tutorial/monitor-process-full.png)](#_)

    -   In the toolbar, click **Process Details**. The **RecordsUpdated** variable should include the `id` of the new Employee record.

        For example:

        [![Process details for complete process](images/process_model_tutorial/process-details-full.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img851)

        [![](images/process_model_tutorial/process-details-full.png)](#_)

## Congratulations!

Your process model now collects data for a new employee, saves the data to your record type data source, and alerts the HR manager that the data has been created.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...