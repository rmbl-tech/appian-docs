---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/robotic-subtask.html
original_path: rpa-9.17/robotic-subtask.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Robotic Subtasks

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction to robotic subtasks

If your business uses common actions within a larger robotic task, you might find it useful to create and integrate robotic subtasks into your robotic task development. Robotic subtasks can be built to serve common purposes between multiple robotic tasks, such as logging into an application, retrieving files and sending them to Appian, or scraping data.

This page describes what a robotic subtask is, how it works, and how to use it in other robotic tasks.

## About robotic subtasks

A robotic subtask is any robotic task that's executed within the robotic task definition of another robotic task. Any robotic task can be run as a robotic subtask, and a robotic task can contain multiple robotic subtasks. It can even contain a robotic subtask that contains its own robotic subtask. See [Subtask relationships](#subtask-relationships) to learn more about how the robotic tasks relate to each other.

Robotic subtasks are recommended where common steps are performed. This enables developers to more easily collaborate, re-use, and design more modular robotic tasks. Learn more about [when to use robotic subtasks](design-patterns.html#designing-robotic-subtasks).

![rpa-subprocess](images/rpa-subprocess.png)

Robotic subtasks operate in ways similar to subtasks in Appian process models. However, there are some important differences:

-   The robotic task and any robotic subtasks it contains are run on the same robot.
-   Like robotic tasks, robotic subtasks execute using the robotic task definition when the execution was requested, not the latest definition if it's been updated after its execution request.
-   Robotic subtasks are always executed synchronously with the parent robotic task. Only after the subtask concludes does the robotic task proceed to the next action in the main robotic task definition.

You'll use the **Execute robotic subtask** action to configure and launch a robotic subtask from within a parent robotic task. It specifies which robotic subtask to call and indicates the data to be passed in and out of the subtask.

### Subtask relationships

Throughout this page, the robotic subtask may be referred to as the **child robotic task**, while the robotic task that calls the subtask is referred to as the **parent robotic task**. These terms help show the relationship between the robotic tasks.

You'll configure the parent robotic task to use the **Execute robotic subtask** action to establish this relationship.

Because any robotic task can be used as a subtask, it's possible to have multiple levels of subtasks. For example, if robotic task C is used as a subtask in robotic task B, robotic task B can still be used as a subtask in robotic task A. Effectively, robotic task A contains two subtasks, but robotic task C is two levels down. Keep this relationship in mind as you learn more about how subtasks behave.

Represented visually, the levels would appear as:

-   Robotic task A (highest-level parent robotic task)
    -   Robotic task B (child robotic task to robotic task A, parent robotic task to robotic task C)
        -   Robotic task C (child robotic task to both robotic tasks A and B)

## Configure a robotic subtask action

The steps below describe how to set up a robotic subtask.

1.  [Create and save the robotic task](robotic-task-creation.html) you intend to use as a subtask.

    **Note:**  The robotic subtask should contain all of the components it needs to execute successfully and independently, such as variables and support files.

2.  Open the parent robotic task.
3.  Go to the **Edit** tab of the robotic task configuration.
4.  In the robotic task definition, [add an action](robotic-task-definition.html#1-palette).
5.  In the **Palette**, locate the **Execute robotic subtask** action under **Execution**.
6.  Drag and drop the action to the appropriate spot in the robotic task definition.
7.  With the action selected, click **Edit** under **CONFIGURATION** in the Configuration Pane.
8.  in the **Robotic task** menu, search for and select the robotic task you want to run as a subtask. Only robotic tasks to which you have access appear in this list, excluding the one you're currently editing.
9.  In the **INPUT VARIABLES** section, map a parent robotic task variable to a subtask parameter so that when the action is executed, data passes from the parent robotic task to your subtask.
10.  In the **OUTPUT VARIABLES** section, map desired subtask variables to robotic task variables in your parent robotic task.
11.  Click **SAVE**.

## Additional configuration details

When used as a subtask, certain configurations of a robotic task may behave differently:

**Setup and Cleanup**: Robotic subtask' Setup and Cleanup sections are always skipped during execution. Any setup or cleanup activities that are needed for the main automation should be incorporated into the highest level robotic task's Setup and Cleanup sections.

**Environmental variables**: Robotic tasks use their respective environmental variables. The parent robotic task uses parent environmental variables, while the subtask uses subtask environmental variables.

**Credentials**: The parent robotic task's permission tags define which credentials are accessible during execution. If, in the subtask, users select **Any available credential**, the robotic task chooses from the credential entries that are available to the parent robotic task. In the subtask, if users select **Specific credential** but the credential is not available to the parent robotic task due to mismatched permission tags, an error is logged. Credentials are not released until the Cleanup section of the parent robotic task is run.

**Workflow libraries**: Workflow libraries are supported for subtasks. If there are different versions of a workflow library being used between the parent robotic task and the subtask, the higher version is automatically used during execution.

**Robot tags**: The parent robotic task permission tags determine which robots are available for execution. The subtask's permission tags don't need to match the execution robot's permission tags, as long as the parent robotic task's tags match the robot's.

**Robot tags**: The parent robotic task permission tags determine which robots are available for execution. The subtask's permission tags don't need to match the execution robot's permission tags, as long as the parent robotic task's tags match the robot's.

### Use credentials in a robotic subtask

To share credentials between the parent robotic task and the child robotic task, a reserved credential should be passed using a robotic task variable. This section describes the steps to achieve this.

First, [create a robotic task variable](configure-edit-tab.html#robotic-task-variables) of type `Credential` in the parent robotic task to store the credential. Note that this data type is unique to RPA and can't be used in expressions, casting, or referenced as a parameter in a process model.

To reserve a credential:

1.  Go to the parent robotic task configuration.
2.  In the robotic task definition, add the [**Reserve credential action**](actions-execution.html#reserve-credential) under **Execution**.
3.  Configure the action to reserve the intended credential.
4.  Configure the **OUTPUTS** to save the reserved credential to the robotic task variable you created earlier. Select the variable in the **Target** field.
5.  Click **SAVE CHANGES**.

To pass the reserved credential to the robotic subtask:

1.  Still in the parent robotic task configuration, select the **Execute robotic subtask** action in the flow. If you haven't yet added this action.
2.  In the **INPUT VARIABLES** section, map the parent robotic task variable that contains the credential to the corresponding subtask parameter. When the action is executed, the data passes from the parent robotic task to your subtask.
3.  Click **SAVE**.

To use the reserved credential in the robotic subtask:

1.  Go to the child robotic task configuration.
2.  In the robotic task definition, add the action appropriate to your use case: [**Interact with element**](actions-browser.html#interact-with-element) (Browser), [**Interact with element**](actions-windows-automation.html#interact-with-element) (Windows Automation), or [**Type text**](actions-keyboard.html#type-text) (Keyboard).
3.  For the **Selection method**, choose **Reserved credential**.
4.  Select the variable that stores the reserved credential.
5.  Click **SAVE CHANGES**.

### Possible errors

For input variables where you are evaluating an expression, if the value being passed to the child parameter does not match the data type of the variable, Appian will attempt to [cast the data](../Casting.html#general-casting) automatically.

If the automatic casting is invalid, the robotic task will throw the following error in the log to indicate the type mismatch: `Unknown error. Please contact administrator with the following message: Could not cast from (Variable Type) to (Variable Type). Details: CastInvalid.`

### Execution behavior

When requesting an execution, the account that is running the automation needs to have access to the parent robotic task and subtasks through appropriate [permission tags](security-rpa.html). For example, if a service account had a tag removed that also removed its access to the subtask, the parent robotic task would fail to execute with the following message: `The robotic task or one of its dependents does not exist, has been deleted, or you do not have permission to access it`.

Robotic subtasks execute as part of the main parent's robotic task execution. Their definition is set at the time the robotic task execution was requested, and any changes to the subtask afterwards will not be reflected in the pending execution. Robotic subtasks are run synchronously, meaning the parent robotic task will wait for the subtask actions to complete before resuming the rest of the robotic task definition.

#### View execution details

The subtask's execution log is contained in the parent robotic task's log. Therefore, when a robotic task is run as a subtask of another automation, that execution will not display in the subtask's own execution log. However, when the robotic task is executed as an independent robotic task, its execution appears in its own execution log.

When you're manually executing a subtask or using the debugging tool, you can [open the subtask in its own tab](troubleshoot.html#open-subtasks-in-their-own-tabs) and see all of its execution steps, just like the parent robotic task.

Here are some key points to keep in mind when you're viewing subtasks:

-   You can have up to 10 tabs open at a time.
-   Subtask tabs exclude the Setup and Cleanup sections since they're always skipped during execution.
-   If the subtask includes a loop, the tab displays the result of the last execution.
-   If the subtask is executed more than once in the robotic task, each instance opens in its own tab.
-   You won't be able to modify the variables within a subtask until the execution of that specific subtask is in progress.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...