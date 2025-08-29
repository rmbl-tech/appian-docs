---
source_url: https://docs.appian.com/suite/help/25.3/looping.html
original_path: looping.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Looping Recipes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Recipes for looping in Appian

Repetition can occur in many places throughout your application, such as [process models](process_model_overview.html), [process nodes](Smart_Services.html), [interfaces](interface_overview.html), and [expression rules](Expression_Rules.html).

For example, say your data table includes a list of users, each of which has an email address and profile picture. In the interface you're designing, you want to show all of these users in a list. But you're constantly adding and removing users from this list, so hardcoding their names isn't a very sustainable approach. In Appian, you don't have to hardcode each of these items. Instead, you can build a **loop** to use one function to display each item in those lists. By looping over this data, the results are always up to date and complete based on the available data.

Loops are an efficient design patten that can make your application faster and easier to maintain. But if done incorrectly, it can have the opposite effect.

Because the method you use to repeat actions in Appian depends on your purposes and the data involved, we've assembled guidance and tips to improve your design experience. This page describes how and when to use loops based on the data you want to act upon. You'll also find recommended designs for how to design loops in Appian.

## What is a loop?

A **loop** is a design pattern that allows you to perform the same set of actions multiple times. The timing and number of loop iterations is based on the type of loop and its configuration. You can design the loop to act on items in an array, repeat a certain number of times, or based on a condition defined by an expression.

The type of loop you use depends on what kind of actions are being performed:

| Loop type | Description | Looping functions | [Multi-node instances (MNI)](#multi-node-instances) | [RPA loop action](#how-to-build-a-loop-in-a-robotic-task) | Process looping flow |
| --- | --- | --- | --- | --- | --- |
| [For loop](#for-loop) | Repeat the same action(s) a number of times for each item in an array, where the full array is available at the start of the loop. For loops dynamically determine how many times to repeat the action, but the number of repetitions doesn't change after it is determined. | Yes. | Yes. | Yes. | Yes, but other methods are typically recommended. |
| [While loop](#while-loop) | Repeat the same action(s) a number of times that is unknown at the start of the loop. While loops evaluate conditions throughout the process to determine how many times to repeat the action. | No. | No. | Yes. | Yes. |
| Repeat loop | Repeat the same action a fixed number of times that you determine. | No. | Yes. | Yes. | Yes. |

The type of loop you design and the method you use to create it depend on your use case. Refer to the sections below for more information and guidance.

## No looping necessary

Sometimes you don't need a loop to do the same thing multiple times within a process. After all, Appian contains many functions and actions that can act on or return a list already.

The following table shows examples where looping isn't necessary to achieve your goal. You might find other functions, smart services, and actions that are specific to your use case.

| I'm trying to… | Instead of looping, you could use… |
| --- | --- |
| Find values in an array. | [`wherecontains()`](fnc_array_wherecontains.html) function. |
| Display related data for each row in a table. | [Read-only grid](Paging_Grid_Component.html) component. |
| Write values from multiple CDTs to their corresponding database tables. | [Write to Multiple Data Store Entities](Write_to_Multiple_Data_Store_Entities_Smart_Service.html) smart service. |
| Add multiple members to a group. | [Add Group Members](Add_Group_Members_Smart_Service.html) smart service. |
| Extract the same attribute from every element on a web page that matches the selector. | [Get attribute](rpa-9.17/actions-browser.html#get-attribute) action in a robotic task. |
| Enter the same value into every element on a web page that matches the selector. | [Interact with element](rpa-9.17/actions-browser.html#interact-with-element) action in a robotic task. |

## For loop

Use a **for loop** when you know the number of iterations at the start of the loop and you want each iteration to act on a particular item in a list. You can configure your process to use functions, actions, and smart services that can determine the number of iterations automatically.

What does it mean to know the number of iterations at the start? Stated another way, it means that the number of iterations doesn't change from when the loop starts. The function, action, or smart service can automatically determine the number of iterations, but it won't need to continuously check if that number has changed.

If you want to repeat an action for every row in a database table, you can use a for loop. You can query the list of data ahead of time and operate off of that information. An example could be using an expression within an interface component to display the email address for every user in the database.

| Category | Name | When to use it | Example usage |
| --- | --- | --- | --- |
| Function | [`a!forEach()`](fnc_looping_a_foreach.html) | When you need to act on each item in an array using one or more functions. The output of `a!forEach()` is a list, which could be a list of maps. It can be challenging to use a single function to interact with parallel lists, so you may have to use additional functions to act on this data. For example, extracting a list of names and phone numbers into separate lists, or extracting data from multiple lists and saving it into CDTs. | Displaying the same component on an interface for each item in a list (for example, [showing the profile picture and user display name for each team member](user-list-pattern.html#[lines-23-57]-use-a!foreach\(\)-to-loop-over-the-list-of-users)).

Concatenating two fields in a CDT for each item in a list (for example, concatenate first name and last name to show the full name of an employee). |
| Functions | [`all()`](fnc_looping_all.html)
[`any()`](fnc_looping_any.html)
[`none()`](fnc_looping_none.html) | When you need to act on each item in a list and return a single value. `a!forEach()` is easier to use because it doesn't require function or rule references like these do, but these functions may be more performant for larger lists since they have short-circuiting logic. | Verify that all rows in a grid match the validation criteria. |
| Functions | [`filter()`](fnc_looping_filter.html)
[`merge()`](fnc_looping_merge.html)
[`reject()`](fnc_looping_reject.html) | When you need to act on each item in a list and return a list of values. `a!forEach()` is easier to use because it doesn't require function or rule references like these do, but these functions may be more performant for larger lists since they have short-circuiting logic. | Using a cascading dropdown and filtering out items in a list based on criteria. |
| Functions | [`reduce()`](fnc_looping_reduce.html) | When the computation of each operation needs to use the result from the previous operation, such as when the result of each operation is an array that should be appended to each other in order. The result from the previous operation is then passed to the subsequent operation as the parameter initial. | [Accumulating the data](Write_to_Multiple_Data_Store_Entities_Smart_Service.html#example-output-2) that needs to be written to a data store entity |
| Function | [`apply()`](fnc_looping_apply.html) | Use `a!forEach()` instead. | N/A. |
| Robotic task action | [Loop action](rpa-9.17/rpa-modules.html#loops) | When you need to perform two or more actions on a given item in a list. | Selecting the checkbox for a grid row if it meets a certain condition. The two actions to loop would be **Is web element present?** and **Interact with Element**.

Navigating into each search result and extracting data. The two actions to loop would be **Navigate to URL** and **Get attribute**. |
| Configuration | MNI for subprocesses | When you need to perform multiple actions for each item in a list. | [Examples below](#mni-on-subprocesses). |
| Configuration | MNI for smart services | When you need to peform a single smart service for each item in a list. | [Examples below](#mni-on-smart-services). |

## While loop

Use a **while loop** when the number of iterations is unknown when the loop starts. Instead of referencing a finite number, the number of repetitions is driven by a condition. The loop repeats until a condition you define is `false`.

As opposed to a [for loop](#for-loop), which knows how many times to repeat when it begins, the while loop evaluates the condition with each repetition of the loop, so its number of repetitions is unknown. For example, a while loop can poll a smart service to see if it's returned the data you need before it proceeds. If it hasn't returned the data, you can configure a wait timer before it checks again.

### Example patterns

| Category | Example |
| --- | --- |
| RPA [loop action](rpa-9.17/rpa-modules.html#loops) | Extract data from all pages of a paging grid where the total number of pages is unknown. You can use an expression to check whether there are any other pages of data. |
| Looping flow | [Syncing more than 1,000 records](Sync_Records_Smart_Service.html#syncing-more-than-1000-records). |

### Working with looping workflows

This type of process flow can be useful when using a subprocess to tabulate report data. When a subprocess is in a loop flow, a new process is started each time the activity is activated. Subprocesses use the same execution engine as their parent.

See below for an example of [how to build a while loop in a robotic task](#how-to-build-a-loop-in-a-robotic-task).

You'll control when the process model enters and exits the loop using a [Gateway](Gateways.html). When a looped flow enters an **OR** or an **XOR** gateway, the gateway pauses after the first instance token passes through until all other incoming flows arrive. To remove this restriction, place an empty [Script Task](Configuring_the_Script_Task.html) activity between the looped flow source(s) and the gateway.

Looping process flows allow you to add information to existing variables and repeat an operation until it is completed.

-   If the activity saves data in single value variables, then the data in the variable is overwritten each time the activity is executed.

-   If the activity saves data in multiple value variables, you can have the activity attach its output to the end of the existing list of values — or — you can overwrite a certain value (or record) in a list of values, by specifying its index location.

For details regarding how to append or insert data into an existing variable, see also: [Creating a Custom Output](Process_Node_and_Smart_Service_Properties.html#custom-outputs)

## Multi-node instances

You can execute any activity multiple times in the same process flow by using the Multiple Node Instances (MNI) functionality. MNI is not technically a loop, but it is another method you can use to repeat the same set of actions multiple times.

For example, you might spawn multiple tasks for the same activity when:

-   Associating multiple tasks to a single event (such as an interview in a hiring process).
-   Recursively building a text document from process data.
-   Using Appian RPA to [process items from a list](rpa-9.17/design-patterns.html#processing-items-from-a-list).

When multiple instances are configured for an activity, three lines display at the bottom of the node icon.

![multiple instances marker](images/Multiple_instances_marker.png)

Multiple activity instances can be executed sequentially or in parallel:

-   **Sequential Execution**: One instance is activated at a time and must complete before the next instance is activated. The instances must be completed in the same order that they were activated.
-   **Parallel Execution**: All instances are activated simultaneously. They are not guaranteed to complete in the same order they were activated.

Re-executing an activity creates a new instance, even if the previous instance is not finished processing.

**Note:**  If a process flow reaches a node configured to spawn a number of instances based on an array length or process variable of type Number (Integer) and the value at the time is empty, null, or zero, the process will pause by exception and throw an error requiring you to resume the process as needed.

Go to the [Other](Process_Node_and_Smart_Service_Properties.html#multiple-instances) tab to configure multiple node instances.

### Usage considerations

MNI is recommended for nodes that don't accept a list of values. Using MNI on nodes that accept lists as input may produce results you didn't anticipate. For example, using MNI on the Write to Data Store Entity smart service isn't advised because it can result in writing a list of values, which may not be the intended outcome. Instead, some smart services support using a list of inputs by default.

MNI of subprocesses and robotic task actions each have a limit of 150,000 instances, while loops have no static limit. However, looping over a large amount of data can consume a lot of memory.

Keep in mind that limits are meant to ensure performance. Consider using [circuit breaker design guidance](expressions-best-practices.html#limit-looping-iterations) to protect against any performance issues these loops might cause.

### MNI on subprocesses

When you need to perform multiple actions for each item in a list, you can configure multi-node instances on a [subprocess node](Sub-Process_Activity.html). Although it's possible to have multiple flows leave an MNI node, it is recommended that you use subprocesses to orchestrate identical parallel flows instead because it is much easier to design and monitor. To prevent generating parallel flows, be sure to configure the node to only move on when all instances are done.

For subprocess nodes, you can run more instances than the [configured Maximum Activity Instances Value](Post-Install_Configurations.html#maximum-activity-instances) up to 150,000 instances. This can be helpful if you are using robotic process automation (RPA) and have a robotic task in a subprocess that needs to run more than the default limit. In these cases, Appian will automatically process the total number of instances in batches of 1000 to efficiently complete the execution of the node. In order to run more than 1000 instances of a subprocess, you will need to [configure the Multiple Instances property](Process_Node_and_Smart_Service_Properties.html#multiple-instances) for the subprocess node.

To configure MNI on a subprocess node:

1.  Open the subprocess node properties.
2.  Go to the **Other** tab.
3.  Under **Multiple Instances**, check **Automatically run multiple instances of this node**.
4.  Choose **Run one instance for each item in**.
5.  Select the variable that references or contains the list.
6.  Choose whether to **Run all instances at the same time** or **Run instances one at a time**.

#### Example patterns

-   Launch a robotic task to [process each item in a list](rpa-9.17/design-patterns.html#processing-items-from-a-list).

### MNI on smart services

When you need to perform a single action for each item in a list, you can configure multi-node instances on a smart service node. To prevent generating parallel flows, be sure to configure the node to only move on when all instances are done.

The same activity can only be spawned using MNI up to 1,000 times when not acting on a subprocess node. Additional instances can be allowed if designated by your server administrator. For more information about configuring the maximum activity instance value, see [Post-Install Configurations](Post-Install_Configurations.html#maximum-activity-instances).

To configure MNI on a smart service node:

1.  Open the smart service node properties.
2.  Go to the **Other** tab.
3.  Under **Multiple Instances**, check **Automatically run multiple instances of this node**.
4.  Choose **Run one instance for each item in**.
    -   For User Input Tasks, you could also choose **Run one instance for each assignee**.
5.  Select the variable that references or contains the list.
6.  Choose whether to **Run all instances at the same time** or **Run instances one at a time**.

#### Example patterns

-   [Assigning the same task to many different users to complete in parallel](Process_Model_Recipes.html#assigning-a-task-to-every-member-in-a-group). Use this pattern when you need to assign separate tasks to individual users rather than a single group-assigned task.
-   [Move multiple documents into a folder](Move_Document_Smart_Service.html). Since the Move Document smart service only moves a single document at a time, you can use MNI to move all of the documents that a user uploads on a start form from the temporary folder to one specific to that process instance.

## How to build a loop in a robotic task

The following examples assume some familiarity with how to build robotic tasks in Appian.

You can use the [task recorder](rpa-9.17/task-recorder.html) to capture the actions you want to execute inside a loop. You can either record all the actions for your robotic task in a single recording and then move only the relevant actions into the loop or record the actions in the loop in its own separate recording.

When you're finished in the task recorder, you can return to the robotic task definition to configure how and when you want the loop to operate. Learn more about the [**Loop** action](rpa-9.17/rpa-modules.html#loops).

If you can't use the task recorder, you can add actions to the loop manually. Use the [**Loop** action](rpa-9.17/rpa-modules.html#loops) to process items in a list such as files in a directory or line items on an invoice. RPA supports the following loop types:

-   **While**: Executes the loop until the loop expression returns `false`.
-   **Repeat**: Executes the loop a fixed number of times, equal to the integer in the **Iterations** field.
-   **For Each**: Executes the loop for each item in a list.

Additionally, you can also use the actions in the [Items module](rpa-9.17/actions-items.html) to report on the outcomes of individual item processing.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...