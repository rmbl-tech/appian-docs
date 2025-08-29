---
source_url: https://docs.appian.com/suite/help/25.3/Process_Upgrade.html
original_path: Process_Upgrade.html
version: "25.3"
title: "Process Upgrade Guidance"
page_id: "Process_Upgrade"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process Upgrade Guidance

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

When you publish a new version of an existing process model, only processes started after you publish the process model will run on the new version, and all processes that were **active** before you published the new version continue to run on the previous process model version—unless you perform a **Process Upgrade**.

A Process Upgrade takes all running processes currently on an earlier process model version and upgrades their components and properties to those of the most recently published process model (see Figure 1). This is different from the **Edit Process** functionality which only allows you to edit one process instance at a time and requires you to manually find and enter the changes into the process.

**Note:**  Review the source and target process models thoroughly to determine if your use cases and approach meet the Process Upgrade requirements and best practices of a Process Upgrade.

![process upgrade flowchart](images/Process_upgrade.png)

**Figure 1. Process Upgrade Workflow**

**Source Model**: The original process model; the active processes on this version will be upgraded.

**Target Model**: The new process model; the active processes on the source model will upgrade to this model.

During the Upgrade, the following occurs:

1.  Each process running on the source model is locked and evaluated, one at a time.
2.  If a process meets the requirements for an Upgrade, it upgrades to the target model's configuration and settings.
    -   The components/properties upgraded by a process are explained in detail in the Impact on an Upgraded Process section below.
    -   If a process does not meet the Process Upgrade requirements, an error is recorded and the Upgrade ends.
3.  When the Upgrade ends, the process unlocks.
4.  The next process on the upgrade list is then locked and evaluated.
5.  Steps 2-5 occur until all processes on the source model have completed either of the following:
    -   Upgraded to the target model.
    -   Recorded as failed with its corresponding error message.

**Note:**  Only one source model can be chosen at a time. If you have multiple versions of a process model and want to upgrade all of them to the **target model**, you need to perform a Process Upgrade for each source model.

## Use cases

The modifications you can make to a process model that can easily be applied to active processes through a Process Upgrade include the following:

| Modification | Suggested Use Case |
| --- | --- |
| **Add a Node** | Add a new task, add a quick task, use newly released functionality, change a PV value, update the process name, etc. |
| **Remove a Node** | Remove a task, create more concise workflows, prepare the process model for migration, etc. |
| **Update an Existing Node** | Change a node input/output definition, task assignment, expression, node condition, or form, etc. |
| **Add a PV** | Pass the process variable to new or active subprocesses or simplify the behavior of expressions on dashboards or reports. |
| **Update an Existing Flow** | Enable PV synchronization across flows, update activity-chained tasks, etc. |

The use cases listed above are only suggestions. Be sure to read the [Requirements](#requirements-for-upgrade), [Best Practices](#best-practices), and [Impact on the Upgraded Process](#impact-on-the-upgraded-processes) sections below to determine if a Process Upgrade is suitable for your process models.

## Requirements for upgrade

In order for a Process Upgrade to initiate, the following conditions must be met. If they are not met, follow the recommended action before performing the Upgrade.

### Requirements for the target model

| Requirement | Action Needed if Requirement Not Met |
| --- | --- |
| User must be an **Administrator** of the target model. | Request Administrator rights or request the user with Administrator rights perform the Upgrade. |
| Target model must contain all PVs present in the source model, matched by **Name** (case insensitive), **Type**, and **Multiplicity** settings.
The Parameter and Hidden settings, however, can be different; those settings will upgrade to the target model’s.
-   For example, if the target model has a PV (`pv!person`) of type Person^2 and the source model has the same PV but of type Person, the process will not upgrade because the CDT types are different.
-   If the PVs have the same name and type, but one is hidden, the process will still upgrade.

 | Add the missing PVs to the target model. If they are no longer needed for the process once it is upgraded, mark them as **hidden**. |
| Target model’s **alert configuration** must not reference a PV or process property. | Modify the alert configuration to reference constants of the application’s Administrator group. |

### Requirements for the process to be upgraded

| Requirement | Action Needed if Requirement Not Met |
| --- | --- |
| User must be an **Administrator** of the target model. | Request Administrator rights or request the user with Administrator rights perform the Upgrade. |
| Process status must be **active**, **paused**, or **paused by exception**. | If the process must be upgrade and it is cancelled or completed, reactivate the process. |
| The process must **not be locked** before the Upgrade begins.
-   NOTE: If a process is open in Edit Mode, it is locked and will not upgrade.

 | Close any processes that are currently in Edit Mode. |
| Any PVs added to the process in **monitor mode** are present in the target model. | Add the missing PVs to the target model. If they are no longer needed for the process once it is upgraded, mark them as **hidden**. |

## Impact on the upgraded processes

A process intended for upgrade is locked just before the Process Upgrade begins, and then unlocks after the Upgrade completes or it fails the Upgrade evaluation.

If the Process Upgrade for a process completes successfully, aspects of the process are affected as detailed in Figure 2 below. Any special conditions or additional information is described in the proceeding subsections.

![upgrade impact analysis](images/Upgrade_impact_analysis.png)

**Figure 2. Process Upgrade Impact**

### Process variables

If any new PVs are added to the upgraded process, the PV values are set based on the data type's default value. Assigned values to new PVs are not saved during a Process Upgrade.

If assigned values are needed, after the Upgrade, consider using Appian's public Java API to set these values.

Any new/modified attributes of existing PVs are upgraded to those of the target model's.

PVs that are **no longer hidden** after the Upgrade will now be available for reporting and changes to their values will be captured in Process History.

Conversely, PVs that are **hidden** after the Upgrade will no longer be available for reporting and changes to their values will no longer be captured in process history.

If before the Upgrade, the process contained PVs of the same name (case insensitive), the PV with an assigned value is preserved and the other is deleted during the Upgrade. If none included an assigned value, the others are still deleted so that only one PV of a given name exist.

**Note:**  PVs are not deleted from a process through a Process Upgrade unless the deletion occurs because of a duplicate.

### Process properties

Only two process properties are affected by a Process Upgrade:

-   **pp!designer** - changes to the user who published the target process model.
-   **pp!timezone** - changes to the time zone configured for the target process model.
    -   Any timers or scheduled/reoccurring activities active during the Upgrade retain the original time zone.
    -   Subprocesses of an upgraded parent process also upgrade to the target process model's time zone.
    -   Upgraded subprocess of parent processes that WERE NOT upgraded retain the time zone of the original parent process.

### Data management

The process archival or deletion policies configured on the Data Management tab for every process on a process model are still based on the most recent, published process model. So, technically, there is nothing to upgrade, since the configuration settings for every process will always be those of the latest process model. See the Data Management Tab documentation for more information.

### Deleted nodes

Active or not started nodes **not included** in the target process model, as determined by their UUIDs, are cancelled through the Upgrade.

Cancelling a subprocess node **does not cancel** the subprocess itself.

### Activity-chained nodes

Activity-chained nodes not started yet are included in the components upgraded; however, the following applies for active and completed nodes:

-   If an activity-chained node is **active or completed** during a Process Upgrade, it **retains** its source model configuration.
-   If a user **steps back** into a completed activity-chained node, the completed node becomes **active** and retains the source model configuration.
    -   The original active node becomes **not started**. This is existing activity-chaining functionality.
    -   If the user then **steps forward** to the original active node, the node uses the target model's upgraded settings.
-   If the user steps back into a **Start Form** of the activity-chain, it shows the upgraded form.

Consider the following scenario in Figure 3. Note the processes are open in [Monitor Mode](Monitoring_and_Editing_Processes.html#monitor-mode):

![upgrade activity chains flowchart](images/Upgrade_activity_chains.png) **Figure 3. Impact on Activity-Chained Nodes**

### Gateways

All active and completed [gateways](Gateways.html), including input and output flows, upgrade to the target process model's gateway configurations.

If the target model includes any changes to these gateways, the following occurs:

-   Any active **AND** and **COMPLEX** gateways are evaluated to determine if the new expected input flows have already arrived and, if so, the output path is triggered.
-   Any active **XOR** or **OR** gateways are evaluated based on the new expected input flows next time a new input flow reaches them.

Consider the following scenarios in Figure 4. Note the processes are open in [Monitor Mode](Monitoring_and_Editing_Processes.html#monitor-mode):

![upgrade gateways](images/Upgrade_gateways.png) **Figure 4. Impact on Gateways**

### Process history

When a process is upgraded, it generates an entry in the [Process History tab](Monitoring_and_Editing_Processes.html#process-history) (see Figure 5) that includes the following:

-   **Date & Time**: <date and time of change>
-   **Object**: <process display name>
-   **Action**: Modified
-   **Actor**: <username of the user who initiated the upgrade>
-   **Properties**: Changed in edit mode <if new version saved, add " and saved as new version <version number>">.

![process upgrade history](images/Process_upgrade_history.png) **Figure 5. Process History Record**

**Note:**  Any Process History activities that occurred prior to the Process Upgrade are not affected.

### Process Status

Most of the time, the process status is not affected by a Process Upgrade.

The process status only changes if a gateway is updated forcing an output path to execute which terminates the process or the final node(s) are removed so that the process completed.

### Archived processes

If you unarchive a process that ran on a source model that underwent a Process Upgrade, the unarchived process **restores to the same process model version** it was on when archived.

## Best practices

Before performing a Process Upgrade, Appian recommends the following Best Practices.

### Perform process upgrades during off-peak hours

Process Upgrade requires that you recreate the Analytics Engines after the Upgrade is finished, in order to prevent possible issues with syncing process properties. This means you'll need to take an outage to perform the Upgrade. Performing the Upgrades during off-peak hours is especially important if you are upgrading multiple related models, which on its own could impact end-users.

### Create a full backup prior to the upgrade

This prevents you from losing any previous process designs or data.

### Close monitor mode for all processes intended for upgrade

To ensure the process diagram refreshes successfully after an Upgrade, make sure not to have any of the processes intended for upgrade open in Monitor Mode.

### Close edit mode for all processes intended for upgrade

To ensure a process is not locked before a Process Upgrade begins, and subsequently failing the Upgrade, make sure not to have any of the processes intended for upgrade open in Edit Mode.

### Refrain from manually starting/cancelling nodes during a process upgrade

Make sure no nodes in the processes to be upgraded are manually started or cancelled (vs. through the course of a process) before the entire Process Upgrade completes. This ensures any tasks that start as a result of a Process Upgrade will use the upgraded configuration.

### Generate process model documentation for the source model before upgrading

After upgrading a process, the node definitions viewed in Edit Mode now show the configuration settings of the target model.

This also applies to tasks that were active or completed before the Process Upgrade, even though active or completed tasks retain their pre-Upgrade configuration.

By generating Process Model Documentation for the source model before upgrading, you can reference the node definitions still held by the active and completed tasks.

## Triggering a process upgrade

A Process Upgrade is implemented through Appian's public Java API. To perform a Process Upgrade, create a Custom Smart Service Plug-In that calls these Java APIs.

See also: [Custom Smart Service Plug-ins](Custom_Smart_Service_Plug-ins.html)

If upgrading related process models or process models with parent and subprocesses, adhere to the following:

**Upgrade Process Models Related Through Messages in Specific Succession**

If you need to upgrade two process models, and Process Model A sends messages to Process Model B, perform the Upgrades in the following order to prevent losing or not receiving messages.

1.  Pause active Process Model A processes, if the new model has modifications to the send and receive message configurations.
2.  Upgrade processes for the new Process Model B.
3.  If paused, unpause the processes for Process Model A.
4.  Upgrade processes for the new Process Model A.

**Pause Any Parent and Subprocesses Before Performing Upgrades**

-   If pausing a process does not negatively impact the process flows and/or end-user experience (for example, the processes are not re-occurring, or the customer is comfortable with how it works), pause the parent and subprocesses, upgrade the necessary process model, then unpause the parent and subprocesses. Continue this until all parent and subprocesses are upgraded as needed.
-   To avoid pausing the parent and/or subprocesses, determine the order in which you upgrade the parent and subprocesses by the component or configuration that needs to be upgraded from the target model's.

If trying to modify the recurrence of a node, create a new node and delete the existing one on the target model.

-   Active nodes configured with recurrence cannot be cancelled through a Process Upgrade. If you need to cancel/modify the recurrence, make the following changes to the target model before performing the Process Upgrade:
    1.  Copy the node with the recurrence.
    2.  Modify the copied node to have the desired settings.
    3.  Delete the old node.
    4.  Replace the deleted node with the copied/modified node.

The two public APIs for Process Upgrade can be found in the following:

-   class: ProcessExecutionService
-   methods:
    -   upgradeProcesses(Long toProcessModelId, String toVersion, Long processIds)
    -   upgradeProcesses(Long toProcessModelId, String toVersion, Long fromProcessModelId, String fromVersions)

**Note:**  When entering the String toVersion and String from Versions, be sure to enter the full major minor version; for example, 2.0.

## Upgrade Output

After the Process Upgrade completes, two outputs are produced: API Output and Application Logging File.

### API Output

The API output includes three different lists of Process IDs:

-   Processes that upgraded successfully.
-   Processes that failed to upgrade, including the error/exception associated with the Upgrade failure.
-   Processes that upgraded successfully, but are now inactive and require immediate action, including the reason associated with the necessary action.

You can also use the API Output to develop additional results, such as the following:

-   Generated Report
-   Upgrade Log

### Application Logging File

If enabled, Application Logging also captures detailed information on the Process Upgrade results.

The log files appear in the Log Files Directory (for example, /logs) in the following file name format:

See also: [Customizing Application Logging](Customizing_Application_Logging.html)

The message that appears includes the following information:

-   Username of Process Upgrade Initiator
-   Number of process requested for upgrade
-   Target Process Model's ID, Version Number, UUID, and Name
-   Process IDs of those successfully upgraded (Outcome = Success)
-   Process IDs of those that failed to upgrade (Outcome = Invalid State)

To enable Application Logging for Process Upgrade, configure the following Process Upgrade property value to `INFO` in the `appian_log4j.properties` file:

```
1
log4j.logger.com.appiancorp.process.execution.ProcessUpgrader=INFO
```

## Post-upgrade actions

Depending on the modifications made to processes during a Process Upgrade, you may want to perform post-Upgrade actions. For example, if nodes were active at the time of the Process Upgrade, they would have retained their original configuration, which may not be your intended result.

Additional Java APIs are available that allow you to perform post-Upgrade actions simultaneously across the group of processes you just upgraded. These include the following.

-   **startAllNodes()** - activates the referenced nodes
-   **restartAllNodes()** - refreshes and starts the referenced nodes
    -   If the task was attended, task owners will receive an additional task assignment notification.
    -   Task metrics will reset when this API implements.
-   **cancelAllNodes()** - cancels all referenced nodes

You can retrieve the node UUIDs from the [Process Model Documentation](process-model-object.html#generating-process-model-documentation).

The possible post-Upgrade actions listed below are categorized by the modification made to the upgraded processes.

|
Action

 |

Description

 |
| --- | --- |
|

Added a node

 |

If you added a node that starts a new task, starts a quick task, changes a PV value, or updates a new task, use `startAllNodes()` to activate the new node on the upgraded processes.

 |
|

Removed a node

 |

If you updated the process to a target model that eliminates a specific node:

-   Use `startAllNodes()` to activate a prior or future node now that the other node is removed.

— or —

-   Use `cancelAllNodes()` to cancel the actives nodes intended for removal followed by `startAllNodes()` to activate a different/new node.

 |
|

Updated an existing node

 |

If you changed a node input/output definition, updated an expression, updated node conditions, or changed a form:

-   Use `cancelAllNodes()` to cancel the active nodes that retained the original configuration followed by `startAllNodes()` to update and activate the modified node.

— or —

-   Use `cancelAllNodes()` to cancel the paused nodes followed by the `startAllNodes()` function to activate the updated node.

If you updated a task assignment, use `cancelAllNodes()` to cancel the original active nodes followed by `startAllNodes()` to activate the updated node.

 |
|

Added a process variable

 |

Remember, any PVs added by Process Upgrade are assigned the default value based on their data type. If you added a PV that needs an assigned value, set the assigned values using Appian's public Java API.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...