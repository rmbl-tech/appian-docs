---
source_url: https://docs.appian.com/suite/help/25.3/Using_the_Sizing_Script.html
original_path: Using_the_Sizing_Script.html
version: "25.3"
title: "Using the Sizing Script"
page_id: "Using_the_Sizing_Script"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Using the Sizing Script

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

**Tip:**  **Did you know?** You can now view the memory usage of process models and their instances from the [**Monitor** view](monitoring_view.html) in Appian Designer. Process instances on the system are sized periodically in the background so you don't need to run the sizing script for system summary or process model reports anymore.

Appian includes a command line script that you can use to view and analyze process **disk usage** for process execution servers. There is an approximate ratio of RAM utilization of 2.5 times the KDB file size on disk.

The script can be used by system administrators to show which processes, process models, and process nodes are taking up the most space. As a result, future demands and growth on process space are more predictable.

During process development, this script helps identify inefficient designs and validate improvements.

**Caution:**  This script should not be run on a live production system. Either run the script in a testing environment (copy the production KDBs over if needed) or first shut down the application server in production before running the script. For example, run it during a maintenance window.

## Running the Sizing Script

The `sizing.bat` (`.sh`) script located in `<APPIAN_HOME>/server/_scripts/tools/` creates a disk-usage report for the nodes, processes, and process models of an execution engine. The report lists sizes in bytes.

```
1
sizing.bat [Report Type] [Configuration] [Arguments]
```

### Report Type

The report type parameter must be listed with one of the following values to generate any report other than listing the help information.

`summary`: Provides a summary of overall space usage for an execution engine.

`processmodel`: Shows the aggregated space usage of process instances of specific process models.

`process`: Provides the space usage for specific processes or each process instance of specific process models.

`node`: Lists space usage for each node/activity in specific process instances.

`help`: Displays this information.

### Configuration Parameters

`-host`: (Required) Specify the name of the machine that hosts the execution engine.

`-port`: (Required) Specify the gateway port number for the execution engine.

-   You can identify the port number used by the engine you want to examine by running the checkengine script.

`-path`: (Required) Specify the path of the report's save location.

`-filename`: (Optional) Specify a filename for the generated report. A filename will be automatically assigned if none is specified.

### Arguments

The `summary` report does not require any arguments other than host, port, and path.

**Execution Server Report Arguments**

The EXEC Server report only accepts configuration parameters (host, port, and path) and does not accept arguments.

**Process Model Report Arguments**

In addition to the configuration parameters, the `processmodel` report requires one of the following arguments:

`-pmid`: Specify the process model IDs on which to report. Returns process size summary, aggregated by process model listed.

`-uuid`: Specify the process model UUIDs on which to report. Returns process size summary, aggregated by process model listed.

`-all`: Returns process size summary for all process models based on host and port specified, aggregated by process model.

**Process Report Arguments**

In addition to the configuration parameters, the `process` report requires one of the following arguments:

`-pid`: Specify the process IDs on which to report. Returns a process-size summary for each process listed).

`-uuid`: Specify the process model UUIDs on which to report. Returns a process-size summary for all process instances of each Process Model listed).

**Node Report Arguments**

In addition to the configuration parameters, the `node` report requires the following `pid` argument:

`-pid`: Specify the process IDs for which you want to generate a node report.

### Examples

[Port numbers](Port_Usage.html) are normally assigned dynamically.

The ports used by your Appian instance are likely to vary.

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
sizing.bat summary -path "c:\sizing" -host machineone -port 5022

sizing.bat summary -path "c:\sizing" -host machineone -port 5022 -filename test1.csv

sizing.bat processmodel -path "c:\sizing" -host machinetwo -port 5022 -pmid 4710

sizing.bat processmodel -path "c:\sizing" -host localhost -port 5022 -uuid 0004cc75-6d73-8000-6bb9-0a000064044c 0005cc75-6d3c-8000-6bb9 0a000064044c

sizing.bat processmodel -path "c:\sizing" -host localhost -port 5022 -uuid 0004cc75-6d73-8000-6bb9-0a000064044c 0005cc75-6d3c-8000-6bb9-0a000064044c -filename pm_size_1.csv

sizing.bat process -path "c:\sizing" -host localhost -port 5022 -pid 12345678910

sizing.bat process -path "c:\sizing" -host localhost -port 5022 -pid 12345678910 -filename p_size.csv

sizing.bat process -path "c:\sizing" -host localhost -port 5022 -uuid 0004cc75-6d73-8000-6bb9-0a000064044c 0005cc75-6d3c-8000-6bb9-0a000064044c

sizing.bat node -path "c:\sizing" -host localhost -port 5022 -pid 10 12

sizing.bat node -path "c:\sizing" -host localhost -port 5022 -filename node_report.csv -pid 5 6 7 8 9
```

## Report Column Descriptions

### Space Usage Details for EXEC Server

The Space Usage Details for EXEC Server report generated by the `sizing.bat` (`.sh`) script, lists the following items.

| **Column Name** | **Description** |
| --- | --- |
| EXEC ID | All numbers gathered are specific for the particular execution server stated in this column. |
| Process Models Count | This column lists the number of distinct Process Models that exist in the execution server based on a Universally Unique ID (not according to version number). For example, if there are five Process Models, and each has six versions, and all of them are associated with Execution Engine 0 -- the number displayed in this column is five. If a process model is deleted, the deletion occurs in the Design server only. The process model does not get deleted from the engine. This is because active processes might still need the model, or a subprocess might need it in the future. |
| Process Models Size (All Versions) | This column lists the total space usage of all versions of a process model that exists on an execution engine. Be aware that the number of versions for each model in the Execution Engine (EXEC) might differ from the number of versions actually created by the process designer and stored in the Design server. This is because the EXEC only stores the versions that are needed for executing a process. Also, the number of versions for each model in EXEC includes processes that have been edited through In-Flight Modification (IFM). A new version of the model is created in EXEC for each process that is changed during execution. |
| Processes Count | This column lists the total number of processes in an Execution Engine (EXEC) for all process models. Processes that have been archived or deleted are not stored in EXEC. |
| Processes Size | This column lists the total space used by all processes in this EXEC for all process models. This includes the space used by nodes, forms, and other process objects. |
| Table Metadata Size | This column lists the space used by the execution engine metadata tables. |
| Pre-Allocated Space Size | This column lists the space reserved for future entries into the database. |
| Processing Queues Size | This column lists the space used by items that are pending execution. |
| Users Size | This column lists the size of the user database stored in the Execution Engine (EXEC). |
| Groups Size | This column lists the size of the user groups database stored in an EXEC. |
| Rules/Constants Size | This column lists the size of the rules/constants database held in an EXEC. |
| General Metadata Size | This column lists the size of the system classes, exception types, and other Appian objects. |

### Space Usage Details for Process Models

The Space Usage Details for Process Models report, generated by the `sizing.bat` (`.sh`) script, lists the following columns of information.

| **Column Name** | **Description** |
| --- | --- |
| EXEC ID | The report gathers data specific to this particular execution server. |
| Process Model Name | The name of the process model as specified by the process designer in the process model properties section. |
| Process Model UUID | This universal process model identifier is unique across all Appian instances. |
| Process Model ID | The unique identifier for the process model. This number is unique among all process models within one install of Appian. |
| Number of Versions | Includes all versions of the process model that exist in EXEC. The number of versions in EXEC may be different from the number of versions actually created by the process designer and stored in the Design server. This is because EXEC will only have those versions that are needed for executing the processes. The number of versions in EXEC includes processes that have been edited through IFM. A new version of the model is created in EXEC for each process that was edited. |
| Active Processes | The number of active processes for the process model on the specified EXEC server. These processes are identified by their status ("Active") at the time when the script is run. |
| Completed Processes | The number of completed processes for the process model on the specified EXEC server. These processes are identified by their status ("Completed") at the time when the script is run. |
| Canceled Processes | The number of canceled processes for the process model on the specified EXEC server. These processes are identified by their status ("Canceled") at the time when the script is run. |
| Paused/Problematic/etc Processes | The number of processes for the process model running on the specified EXEC server with statuses "Paused", "Paused by Exception", or "Unfinished". A process is considered "Unfinished" when its parent process is terminated, thus forcing an early termination of the subprocess, or when an exception flow is triggered on the subprocess activity of the parent process. Reports show "Unfinished" subprocesses with a status of "Cancelled". |
| Node Count | The total number of activated nodes in all processes that exist on the EXEC server for this process model. Activated nodes refer to those that may have been completed, canceled, paused, or are still active. |
| Node Metadata Size | The total size of the metadata stored for all activated nodes in all processes that exist on the EXEC server for this process model. This includes ACP values, form configurations, and event triggers data. |
| Form Elements Count | The total number of form elements in all processes that exist on the EXEC server for this process model. Only form elements for the nodes that were activated within each process are counted. |
| Form Elements Size | The total size of form elements in all processes that exist on the EXEC server for this process model. Only form elements for the nodes that were activated within each process are included. |
| ACPs Count | The total number of ACPs in all processes that exist on the EXEC server for this process model. Only ACPs for the nodes that were activated within each process are included. |
| ACPs Size | The total size of ACPs in all processes that exist on the EXEC server for this process model. The size includes the metadata about the ACPs and their actual data. Only ACPs for the nodes that were activated within each process are included. |
| Node Attachments Count | The number of attachments attached to all nodes in all processes on the EXEC server for this process model. It does not include the attachments attached directly to the processes. |
| Node Attachments Size | The attachments size includes the metadata stored about each one. In most cases, it does not include the attached object itself. This is because a reference is made to the attachment, and the attached object itself is not stored in the EXEC server. There are some exceptions, example an attachment of type URL will have its value stored in EXEC. It does not include the attachments attached directly to the processes. |
| Node Notes Count | The number of notes attached to all nodes in all processes on the EXEC server for this process model. It does not include the notes attached directly to the processes. |
| Node Notes Size | The notes size includes the metadata stored about each note. It does not include the text of the note. This is because a reference is made to the note. The note itself is stored on the file system, not in the EXEC server. It also does not include the notes attached directly to processes. |
| Process Metadata Size | The total size of the metadata stored for all processes that exist on the EXEC server for this process model. |
| Process Variables Count | The total number of process variables in all processes that exist on the EXEC server for this process model. |
| Process Variables Size | The total size of process variables in all processes that exist on the EXEC server for this process model. It includes the metadata about the process variables and their actual data. |
| Process Attachments Count | The total number of attachments attached to all processes on the EXEC server for this process model. It does not include the attachments attached to individual nodes within each process. |
| Process Attachments Size | The attachments size includes the metadata stored about each one. In most cases, it does not include the attached object itself. This is because a reference is made to the attachment, and the attached object itself is not stored in the EXEC server. There are some exceptions, example an attachment of type URL will have its value stored in EXEC. It does not include the attachments attached to individual nodes within each process. |
| Process Notes Count | The number of notes attached to all processes on the EXEC server for this process model. It does not include the notes attached to individual nodes within each process. |
| Process Notes Size | The notes size includes the metadata stored about each one. It does not include the text of the note. This is because a reference is made to the note. The note itself is stored on the file system, not in the EXEC server. It does not include the notes attached to individual nodes within each process. |
| Process History Size | The total size of the process audit trail captured throughout the lifecycle of each process on the EXEC server for this process model. |
| Process Model Size | The total size of all versions of the process model that exist in EXEC. The number of versions for each model in EXEC may be different from the number of versions actually created by the process designer and stored in the Design server. This is because EXEC will only have those versions that are needed for executing the processes. The number of versions for each model in EXEC includes processes that have been edited through In-Flight Modification (IFM). A new version of the model is created in EXEC for each process that was edited. |
| Total Size | The total size of the process model stored on the EXEC server. This includes all components that belong to the process model, e.g. process model versions, processes, etc. |

### Space Usage Details for Processes

The Space Usage Details for Processes report, generated by the sizing.bat (.sh) script, lists the following columns of information.

| **Column Name** | **Description** |
| --- | --- |
| EXEC ID | All numbers gathered will be specific for the particular EXEC server stated in this column. |
| Process Model Name | The name of the process model version for this process instance. The name is specified by the process designer in the process model properties section. |
| Process Model UUID | This universal process model identifier is unique across all Appian instances. |
| Process Model ID | The unique identifier for the process model. This number is unique across all process models within one install of Appian. |
| Process Model Version | The version of the process model that this process instance is running. |
| Process Instance Name | The name of the process instance. This is defined by the process designer through an expressionable input field called "Process Display Name" in the process model properties section. The name of the process instance is determined by the version of the process model that this process instance is running. |
| Process Instance ID | The unique identifier for the process. This number is unique across all processes within one install of Appian. |
| Started | The start date and time of this process instance. All times are specified in GMT. |
| Status | The status of the process at the time when the script is run. Statuses can be "Active", "Paused", "Completed", etc. |
| Node Count | The total number of activated nodes in this process instance. Activated nodes refer to those that may have been completed, canceled, paused, or are still active. |
| Node Metadata Size | The total size of the metadata stored for all activated nodes in in this process instance. This includes ACP values, form configurations, and event triggers data. |
| Form Elements Count | The total number of form elements in this process instance. Only form elements for the nodes that were activated are counted. |
| Form Elements Size | The total size of form elements in this process instance. Only form elements for the nodes that were activated are included. |
| ACP Count | The total number of ACPs in this process instance. Only ACPs for the nodes that were activated are included. |
| ACP Size | The total size of ACPs in this process instance. The size includes the metadata about the ACPs and their actual data. Only ACPs for the nodes that were activated are included. |
| Node Attachments Count | The number of attachments attached to all nodes of this process instance. It does not include the attachments attached directly to the process. |
| Node Attachments Size | The attachments size includes the metadata stored about each one. In most cases, it does not include the attached object itself. This is because a reference is made to the attachment, and the attached object itself is not stored in the EXEC server. There are some exceptions, example an attachment of type URL will have its value stored in EXEC. It does not include the attachments attached directly to the process. |
| Node Notes Count | The number of notes attached to all nodes of this process instance. It does not include the notes attached directly to the process. |
| Node Notes Size | The notes size includes the metadata stored about each one. It does not include the text of the note. This is because a reference is made to the note. The note itself is stored on the file system, not in the EXEC server. It does not include the notes attached directly to the process instance. |
| Process Metadata Size | The total size of the metadata stored for this process instance. |
| Process Variables Count | The total number of process variables in this process instance. |
| Process Variables Size | The total size of process variables in this process instance. It includes the metadata about the process variables and their actual data. |
| Process Attachments Count | The total number of attachments attached to this process instance. It does not include the attachments attached to individual nodes within the process. |
| Process Attachments Size | The attachments size includes the metadata stored about each one. In most cases, it does not include not the attached object itself. This is because a reference is made to the attachment, and the attached object itself is not stored in the EXEC server. There are some exceptions, example an attachment of type URL will have its value stored in EXEC. It does not include the attachments attached to individual nodes within the process. |
| Process Notes Count | The number of notes attached to this process instance. It does not include the notes attached to individual nodes within the process. |
| Process Notes Size | The notes size includes the metadata stored about each one. It does not include the text of the note. This is because a reference is made to the note. The note itself is stored on the file system, not in the EXEC server. It does not include the notes attached to individual nodes within the process. |
| Process History Size | The total size of the process audit trail captured throughout the lifecycle of this process instance. |
| Total Size | The total size of the process. This includes all components that belong to this process. |

### Space Usage Details for Nodes in Processes

| **Column Name** | **Description** |
| --- | --- |
| EXEC ID | All numbers gathered will be specific for the particular EXEC server stated in this column. |
| Process Model Name | The name of the process model version for this process instance. The name is specified by the process designer in the process model properties section. |
| Process Model UUID | This universal process model identifier is unique across all Appian instances. |
| Process Model ID | The unique identifier for the process model. This number is unique across all process models within one install of Appian. |
| Process Instance Name | The name of the process instance. This is defined by the process designer through an expressionable input field called "Process Display Name" in the process model properties section. The name of the process instance is determined by the version of the process model that this process instance is running. |
| Process Instance ID | The unique identifier for the process. This number is unique across all processes within one install of Appian. |
| Node Name | The name of the node as defined by the process designer in the version of the process model running this process instance. |
| Activity ID | The unique identifier for the node instance (activity/task). This number is unique across all node instances within each process. |
| Node Display Name | The name of the node instance (activity/task). This is defined by the process designer in the version of the process model running this process instance through an expressionable input field called "Task Display Name". |
| Started | The date and time when this node was activated. All times are specified in GMT. |
| Status | The status of the activity/task at the time when the script is run. Statuses can be "Assigned", "Paused", "Completed", "Canceled", etc. |
| Attended? | Yes/No depending on whether the node instance (activity/task) is attended (assigned to user(s) and/or group(s)) or not. |
| Node Metadata Size | The size of the metadata stored for this node instance. This icludes ACP values, form configurations, and event triggers data. |
| Form Elements Count | The number of form elements in this node instance. |
| Form Elements Size | The size of the form elements in this node instance. |
| ACP Count | The number of ACPs in this node instance. |
| ACP Size | The size of the ACPs in this node instance. |
| Node Attachments Count | The number of attachments attached to this node instance. |
| Node Attachments Size | The attachments size includes the metadata stored about each one. In most cases, it does not include the attached object itself. This is because a reference is made to the attachment, and the attached object itself is not stored in the EXEC server. There are some exceptions, example an attachment of type URL will have its value stored in EXEC. |
| Node Notes Count | The number of notes attached to this node instance. |
| Node Notes Size | The notes size includes the metadata stored about each one. It does not include the text of the note. This is because a reference is made to the note. The note itself is stored on the file system, not in the EXEC server. |
| Node History Size | The total size of the audit trail captured for this node instance. This is a subset of the process history. |
| Total Node Size | The total size of the node instance. This includes all components that belong to an activated node. |

**Note:**  These operations can be resource-intensive and as such should never be run on a production system during a time of high user load.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...