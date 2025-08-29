---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_the_Process_Engine_Servers.html
original_path: Configuring_the_Process_Engine_Servers.html
version: "25.3"
title: "Configuring the Process Engine Servers"
page_id: "Configuring_the_Process_Engine_Servers"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring the Process Engine Servers

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Overview

Appian Process Engine Server configuration settings can be customized by listing the property in the `<APPIAN_HOME>/conf/custom.properties` file. When changed, these settings are detected and loaded by the application server without a restart.

See also: [Configuring Custom Properties](Custom_Configurations.html)

We recommend working with Appian Technical Support to ensure that any of the following settings are implemented safely. Incorrect settings can lead to application instability and failure.

## Process execution properties

### AUTOARCHIVE\_DELAY

| **custom.properties Setting** | **Description** |
| --- | --- |
| server.conf.exec.AUTOARCHIVE\_DELAY | By default, completed and canceled processes are archived every 7 days after they have completed or been canceled (when AUTOARCHIVE is set to 1). The archive interval value can be changed by setting **AUTOARCHIVE\_DELAY** to the desired number of days. Each completed or canceled process is automatically archived after the time set for this parameter has elapsed. It is set to 7 by default. See also: [Archiving and Unarchiving Processes](Archiving_Processes.html). |

### CHAINED\_EXECUTION\_NODE\_LIMIT

| **custom.properties Setting** | **Description** |
| --- | --- |
| server.conf.exec.CHAINED\_EXECUTION\_NODE\_LIMIT | This parameter lists the maximum number of unattended nodes that can be executed while searching for the next attended node during activity-chaining. By default, this is set to `50` nodes. |

## Common Process settings

Common Process settings can be modified by setting the values of the following parameters in the `custom.properties` file.

### NOTES\_SRC\_DIR

| **custom.properties Setting** | **Description** |
| --- | --- |
| server.conf.processcommon.NOTES\_SRC\_DIR | This property lists the directory where process notes are stored. The default directory is `<APPIAN_HOME>/_admin/process_notes/`. |

### MAX\_EXEC\_ENGINE\_LOAD\_METRIC

| **custom.properties Setting** | **Description** |
| --- | --- |
| server.conf.processcommon.MAX\_EXEC\_ENGINE\_LOAD\_METRIC | This metric limits the amount of memory that a single execution engine will use. On production systems, raise this setting to a value of `120` or higher. |

Through a sampling technique, an approximation of the RAM utilized by a single execution engine is calculated as the Execution Engine Load Metric. The MAX\_EXEC\_ENGINE\_LOAD\_METRIC setting is intended to cap the RAM usage of the Execution Engine according to the calculated Load Metric. When the calculated metric value reaches 100% of the specified maximum, no new process can be started (on the affected execution engine) without raising the cap. It is also highly recommended that you archive your completed process instances.

**Warn Nearing Load Metric Limit**

Warnings are generated when the calculated value for engine load reaches `75%` of the MAX\_EXEC\_ENGINE\_LOAD\_METRIC setting. If you receive a warning, you should contact Appian Technical support for assistance. This warning might indicate that you need to increase the amount of available RAM on the server or reevaluate your process design.

-   The [status script](Service_Manager_Scripts.html#status-script) lists a warning when the calculated value for engine load reaches `75%` of the MAX\_EXEC\_ENGINE\_LOAD\_METRIC setting.

-   If the MAX\_EXEC\_ENGINE\_LOAD\_METRIC limit is reached, the status script states `Engine [engine name] on [host] has a load metric of [load metric] and the configured limit is [MAX_EXEC_ENGINE_LOAD_METRIC]`. New processes cannot be started on an execution engine where the calculated load metric limit reaches or exceeds the MAX\_EXEC\_ENGINE\_LOAD\_METRIC

**Note:**  If an Execution Engine refuses to start new processes because it has crossed the MAX\_EXEC\_ENGINE\_LOAD\_METRIC threshold, it is still possible for processes that run on a different execution engine to continue starting as long as there is available RAM, according to the system architecture.

On production systems, the maximum metric value should be raised from its default value of 40 to a value of `120` or higher. It can be further raised (above 120) according to the amount of RAM available to the execution engines. As a general rule of thumb, if you have installed more RAM than the minimum system requirement of 4GB you can raise the value for this metric by a number that equals the GB of additional RAM on your system multiplied by the number 60. The maximum setting for this metric on a 64 bit machine is `2145`.

### MAXIMUM\_REPORT\_MS

| **custom.properties Setting** | **Description** |
| --- | --- |
| server.conf.processcommon.MAXIMUM\_REPORT\_MS | This property sets the maximum amount of time that can be taken by the server to process and return report data, in milliseconds. The most complex reports should only take `2000` milliseconds to generate. If you must raise this setting for a report, never set this parameter above 15000 milliseconds. This property can also be lowered to reduce the load on the Analytics engine. In all cases, reports that take longer than the defined number of milliseconds will not complete. |

All custom replacement values (except for the `MAXIMUM_REPORT_MS` property) must be higher than the default value. Otherwise, application errors may occur.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...