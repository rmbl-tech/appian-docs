---
source_url: https://docs.appian.com/suite/help/25.3/Logging.html
original_path: Logging.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# System Logs

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides guidance on how system administrators can use the different types of log files that Appian produces to assess performance, analyze usage, troubleshoot issues, and audit activity.

## Monitoring performance and usage

Performance logs are written to the `APPIAN_HOME/logs/perflogs` directory. These logs are written in CSV files for easy observation and analysis using common spreadsheet tools. The information in them can be used to learn the broad spectrum of what actions take place in the system and how long those actions take to complete.

The log files include one for each Appian engine written to every minute ([Engine Performance Logs](#engine-performance-logs)) and up to three kinds of logs for various events written by the application server which include the following:

-   **Summary**: Enabled by default. Written to once every five minutes and aggregate all the relevant events since the last line was logged into one set of metrics. One line is written per update, even if there were no events in the given interval.
-   **Details**: Enabled by default. Written to once every hour, and while they have similar information to the summary logs, they provide fine-grain aggregation by type of event. Multiple lines are written per update, but if no events occurred in the given interval then nothing is written.
-   **Trace**: Disabled by default. When enabled, updates every time an event occurs with in-depth information about the event in question. Trace logs are disabled by default because they require a greater and less predictable amount of disk space and they contain potentially sensitive human-entered data such as usernames.

Some events have certain phases of their execution separately timed. These "phase times" are parts of the total time, but the total time is not necessarily covered completely by the phase times. Even if an event has measured phases, it may not record a time for that phase. Logs that contain phases have individual counts for each phase to show how many of the total recorded events actually participated.

**Note:**  Do not open the `.csv` files of a running system directly in programs that lock files for editing. In doing so, the application server and/or engines may no longer be able to write to them until they are restarted. Copy the files, then open only the copies. To easily copy the standard selection of log files Appian Technical Support has found useful for debugging purposes into a single archive, see the [log collection script](Log_Collection_Script.html).

### AI input/output logs

The AI input/output log (`perflogs/ai/ai_input_output_activity.log`) helps you monitor and audit [AI usage](ai-landing.html) within your Appian environment, ensuring adherence to internal policies, industry standards, and regulatory requirements. Administrators can [enable the audit log](Appian_Administration_Console.html#ai-inputoutput-logging) to capture the inputs provided to the AI model and its response. This level of transparency empowers you to maintain control over AI usage and ensures compliance with evolving security and privacy standards.

The following features are not captured in the AI input/output log:

-   [Process model node suggestions](process-model-ai-assisted-development.html)
-   Inline testing in the [AI skill](ai-skills-intro.html) designer
-   [Smart search](records-smart-search.html) data

#### Log structure

Each entry includes metadata about a system event and its details.

| **Metric** | **Description** |
| --- | --- |
| **userUUID** | Represents the unique identifier of the user performing the action. It is anonymized here. |
| **objectUUID** | The identifier for the specific object involved. If it's null, it may indicate no specific object was directly modified. |
| **feature** | Identifies the Appian AI feature being used. |
| **correlationID** | A unique ID to track related events or actions in the system for debugging or tracing. All related events in this log will share this ID. |
| **type** | Indicates the type of event like input or output. |
| **body** | Contains the details. |

### AI usage logs

The AI usage log (`audit/artificial_intelligence.csv`) provides an overview of [AI usage](ai-landing.html) within your Appian environment without capturing [input or output data](#ai-inputoutput-logs). This log is designed to track how and when AI features are utilized, enabling you to monitor overall activity while maintaining data privacy.

The following features are not captured in the AI usage log:

-   [Process model node suggestions](process-model-ai-assisted-development.html)
-   Inline testing in the [AI skill](ai-skills-intro.html) designer
-   [Smart search](records-smart-search.html) data

#### Log structure

| **Metric** | **Description** |
| --- | --- |
| Timestamp | Date and time when an object change occurs. yyyy-mm-dd hh:mm:ss (milliseconds are excluded.) |
| User UUID | The UUID of the user who took the action. |
| Object UUID | When applicable, the UUID of the AI design object that took the action. This only applies to AI skill objects. |
| Feature | The name of the feature that took the action. For example, AI skill or `a!:recordChat`. |

### Data store performance logs

These logs record the operations of **querying** data in a data store using query rules, **writing** data via the Write to Data Store Entity Smart Service, and **verifying** current information in the data store. These three types of data store operations (Query, Write, Verify) can include the following three phases:

-   **Prepare**: Formatting the RDBMS call.
-   **Execute**: Waiting to hear back from the RDBMS.
-   **Transform**: Processing the results received from the RDBMS.

Not all operations involve all three phases. For example, Verify operations do not go through a Transform phase.

In order to aid the identification of slow operations, a separate log file with the same columns records a duplicate entry of only those operations that take more than three seconds to complete. If three seconds is not an appropriate threshold for what qualifies as a slow query, it can be adjusted using the property `conf.monitoring.rdbms.SLOW_QUERY_THRESHOLD_MS` in `custom.properties`, which takes an integer value in milliseconds.

**Trace file metrics** (`perf_monitor_rdbms.csv` / `perf_monitor_rdbms_slow.csv`)

| **Metric** | Description |
| --- | --- |
| **Timestamp** | Date and time of the data store operation. |
| **Thread** | Identification number of the thread executing the query. |
| **Data Store** | Name of the data store against which the operation is being executed. |
| **Entity** | Name of the entity being accessed by the operation. |
| **Operation Type** | Type of operation being executed. |
| **Operation Name** | Query rule name in the case of queries or a short description of the operation type. |
| **Operation Detail** | Details about the operation, such as query parameters or paging controls. The content of this field varies according to the operation. |
| **Prepare Time (ms)** | Time spent in the Prepare phase. |
| **Execute Time (ms)** | Time spent in the Execute phase. |
| **Transform Time (ms)** | Time spent in the Transform phase. |

**Summary file and details file metrics** (`data_store_summary.csv` / `data_store_details.csv`)

**Tip:**  Metrics labeled "\[Details Only\]" apply only to the details file. This is because the details file provides the same metrics as the summary file, but the metrics are broken down for each data store, entity, and query rule.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **\[Details Only\] Data Store** | Name of the data store against which the operation is being executed. |
| **\[Details Only\] Entity** | Name of the entity being accessed by the operation. |
| **\[Details Only\] Operation Name** | Query rule name in the case of queries or a short description of the operation type. |
| **Total Count** | Number of operations against data stores. |
| **Mean Total Time (ms)** | Average amount of time required for operations from beginning to end. |
| **Query Count** | Number of Query operations. |
| **Write Count** | Number of Write operations. |
| **Verify Count** | Number of Verify operations. |
| **Failure Count** | Number of failed operations of any type. |
| **Prepare Count** | Number of operations with a prepare phase. |
| **Mean Prepare Time (ms)** | Average amount of time taken to complete the Prepare phase. |
| **Execute Count** | Number of operations with an Execute phase. |
| **Mean Execute Time (ms)** | Average amount of time taken to complete the Execute phase. |
| **Transform Count** | Number of operations with a Transform phase. |
| **Mean Transform Time (ms)** | Average amount of time taken to complete the Transform phase. |
| **Minimum Total Time (ms)** | Shortest time required for any operation from beginning to end. |
| **Maximum Total Time (ms)** | Longest time required for any operation from beginning to end. |
| **Minimum Prepare Time (ms)** | Shortest time an operation required to complete the Prepare phase. |
| **Maximum Prepare Time (ms)** | Longest time an operation required to complete the Prepare phase. |
| **Minimum Execute Time (ms)** | Shortest time an operation required to complete the Execute phase. |
| **Maximum Execute Time (ms)** | Longest time an operation required to complete the Execute phase. |
| **Minimum Transform Time (ms)** | Shortest time an operation required to complete the Transform phase. |
| **Maximum Transform Time (ms)** | Longest time an operation required to complete the Transform phase. |

### Data service trace log

The data service provides a trace log that captures information about the requests made by application server to the data service.

**Trace file metrics** (`ads_call_trace.csv`)

**Note:**  Because some operations may execute many calls to the data service, enabling the data service call trace log may adversely affect system performance.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Thread Name** | Name of the originating thread. |
| **User** | The data service user ID of the calling user. |
| **Address** | Host and port of the target data service component. |
| **ADS Service** | The data service the request is targeted to (HS, RTS, etc.). |
| **API** | The data service API that was called (query, write, etc.). |
| **Store** | The target data store in the data service. |
| **Query Target** | ID or the UUID of the view or attribute specified as target. |
| **Total Time (ms)** | Time taken by the call between request and response. |
| **Status** | Specifies whether the call succeeded or failed. |
| **Error Code** | Appian error code. |
| **Request JSON length** | JSON length of the transaction data sent to the data service. |
| **Response JSON length** | JSON length of the results retrieved from the data service. |

### Design object comparisons (diffs) logs

The **Design object comparisons (diffs)** performance log (`design_object_diffs_details.csv`) records information about how [object comparisons](Managing_Object_Versions.html#compare-versions) are performing so that Appian Technical Support can help troubleshoot issues. This log contains quantitative data and does not log any sensitive information.

### Engine call logs

These logs contain information about what requests the application server makes to the Appian Engines.

**Trace file metrics** (`engine_call_trace.csv`)

**Note:**  Because many operations execute many engine calls, enabling the engine call trace log may adversely affect system performance.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Engine** | Name of the engine. |
| **Address** | Host and port the engine is running on. |
| **Function** | Name of the call being tracked. |
| **Username** | User who made the call. |
| **Thread Name** | Name of the thread the call was made from. |
| **Total Time (ms)** | Time required for the call from beginning to end. |
| **Execute Time (ms)** | Time the engine spent processing the call. |
| **Other Time (ms)** | Time required for the call that was not processing by the engine. |

**Details file metrics** (`engine_call_details.csv`)

For every time period, there will be one line per type of engine call made.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Engine** | Name of the engine. |
| **Function** | Name of the call being tracked. |
| **Total Count** | Total number of calls made to the engine during the time period. |
| **Write Count** | Number of write calls made to the engine during the time period. |
| **Read Count** | Number of read calls made to the engine during the time period. |
| **Mean Total Time (ms)** | Average amount of time required for the calls, from beginning to end. |
| **Mean Execute Time (ms)** | Average amount of time the engine spent processing the calls. |
| **Mean Other Time (ms)** | Average amount of time required for calls that was not processing by the engine. Includes network delay and time spent queued for the engine to process. |
| **Minimum Total Time (ms)** | Shortest time required for any call from beginning to end. |
| **Maximum Total Time (ms)** | Longest time required for any call from beginning to end. |
| **Minimum Execute Time (ms)** | Shortest time required for the engine to process a call. |
| **Maximum Execute Time (ms)** | Longest time required for the engine to process a call. |
| **Minimum Other Time (ms)** | Shortest time required for a call that was not processing by the engine. |
| **Maximum Other Time (ms)** | Longest time required for a call that was not processing by the engine |
| **Rejected Count** | Number of calls that were rejected by the engine or gateway and needed to be retried. |

**Summary file metrics** (`engine_call_summary.csv`)

For every time period, there will be one line per instance of each engine.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Engine** | Name of the engine. |
| **Address** | Host and port the engine is running on. |
| **Total Count** | Total number of calls made to the engine during the time period. |
| **Write Count** | Number of write calls made to the engine during the time period. |
| **Read Count** | Number of read calls made to the engine during the time period. |
| **Mean Total Time (ms)** | Average amount of time required for the calls, from beginning to end. |
| **Mean Execute Time (ms)** | Average amount of time the engine spent processing the calls. |
| **Mean Other Time (ms)** | Average amount of time required for calls that was not processing by the engine. Includes network delay and time spent queued for the engine to process. |
| **Minimum Total Time (ms)** | Shortest time required for any call from beginning to end. |
| **Maximum Total Time (ms)** | Longest time required for any call from beginning to end. |
| **Minimum Execute Time (ms)** | Shortest time required for the engine to process a call. |
| **Maximum Execute Time (ms)** | Longest time required for the engine to process a call. |
| **Minimum Other Time (ms)** | Shortest time required for a call that was not processing by the engine. |
| **Maximum Other Time (ms)** | Longest time required for a call that was not processing by the engine |
| **Rejected Count** | Number of calls that were rejected by the engine or gateway and needed to be retried. |

### Engine summary log

This file contains information about the status of each engine server. It is written every five minutes to `engine_summary.csv`, but unlike other summary logs, one line is written for each configured engine. If there is more than one server hosting Appian engines, the log is written only on the server configured first in `appian-topology.xml`.

**Note:**  This log is disabled for Appian Cloud customers and will not collect new data.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Gateway Name** | Name of the engine |
| **Gateway ID** | ID number of the engine. |
| **Hostname** | Name of the host running this engine. |
| **Size on Disk (MB)** | Size of the engine data when persisted to disk. |
| **Transaction Count** | Number of transactions run since the last checkpoint. |
| **Chain Status** | Name of this engine's [status](Service_Manager_Scripts.html#status-script) |
| **Uptime (s)** | Time in seconds since the engine was last started. |
| **Response Time (ms)** | Time in milliseconds before the engine responded to the request for status information. |
| **Total Memory Used (MB)** | Amount of memory currently used on the engine. |

### Engine performance logs

These files contain information about the performance of the Appian engines. They are written every minute to files named according to the convention `perf_monitor_db_<ENGINE-ACRONYM>_<TIMESTAMP>.csv`.

Engine acronyms include:

| **Engine Acronym** | **Engine Name** |
| --- | --- |
| **CH1** | Channels |
| **CO1** | Content |
| **CS1** | Content Statistics |
| **DF1** | Discussion Forums |
| **NE1** | Email Notifications |
| **NO1** | Notifications |
| **PA00001** | Process Analytics Zero (0000) |
| **PA00011** | Process Analytics One (0001) |
| **PA00021** | Process Analytics Two (0002) |
| **PD1** | Process Design |
| **PE1** | Personalization |
| **PO1** | Portal |
| **PX001** | Process Execution Zero (00) |
| **PX011** | Process Execution One (01) |
| **PX021** | Process Execution Two (02) |

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **CPU Idle Time (%)** | Percentage of the past monitoring period that the CPU was idle. |
| **CPU Foreground Time (%)** | Percentage of the past monitoring period that the CPU was processing foreground activities. |
| **CPU Background Time (%)** | Percentage of the past monitoring period that the CPU was processing background activities. |
| **Work Queue - Finished** | Number of items that were processed from the Java Work Queue in the last sample period. |
| **Work Queue - Java Work Queue Size** | Size of the Java Work Queue, which contains items to be processed by the application server in the foreground. |
| **Event Received** | Number of messages received in the last sample period. These may be JMS messages, email, or process-to-process messages. After these messages are processed, they are sent to Event Consumers Received. |
| **Event Consumers Received** | Number of times receive message events were the target of messages in the last monitoring sample period. Event targets and messages are multiplied to calculate the total number of events. For example, when three messages are received (Event Received) by two receive message events in three process instances, the total number of event Consumers Received is 18 (3_2_3). |
| **Work Queue - Event Consumers to Process** | Number of receive message events waiting to be processed. |

#### Process execution logs

These files contain information about the performance of processes on the Appian engines. The data is measured and written in batches, every 5 minutes, to files named according to the convention `top_models_by_time_<ENGINE-ACRONYM>_<TIMESTAMP>.csv` and `top_processes_by_time_<ENGINE-ACRONYM>_<TIMESTAMP>.csv`, where the engine acronyms follow the same convention as the engine performance logs above. These logs can provide additional insight into process resource usage and are best used in conjunction with the `perf_monitor_db` logs.

For example, you can use the `perf_monitor_db` log to determine when there may be a timeframe that the CPU idle time % dips to an undesirable level. Both the `top_models_by_time` and `top_processes_by_time` logs can then be used to determine which processes or models consumed the most resources during this same timeframe. The models or processes with high "Percent of Interval (%)" values in this specific measured interval are the most resource intensive processes, indicating potential room for design adjustments.

**Top Models** _(top\_models\_by\_time.csv)_

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Ordinal** | The position of a process model within each batch interval. The first ordinal number in each batch represents the process model which took the most amount of time in the batch. |
| **Timestamp** | Date and time at which each batch interval started. Each batch interval is 5 minutes. |
| **Process Model Id** | The ID of the associated process model |
| **Operation Count** | An approximation for the number of discrete operations carried out by the process model during the batch interval |
| **Measured Time (ms)** | For a batch interval, the amount of CPU time consumed by the process model |
| **Percent of Interval (%)** | For a batch interval, the amount of CPU time consumed by the process model compared to the total 5 minute batch interval, expressed as a percentage |
| **Percent of All Measurements in Interval (%)** | For a batch interval, the amount of CPU time consumed by the process model compared to the total CPU measured time of all of the process models during that interval, expressed as a percentage. |

**Top Processes** _(top\_processes\_by\_time.csv)_

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Ordinal** | The position of a process within each batch interval. The first ordinal number in each batch represents the process which took the most amount of time in the batch. |
| **Timestamp** | Date and time at which each batch interval started. Each batch interval is 5 minutes. |
| **Process Id** | The ID of the associated process |
| **Process Model Id** | The ID of the process model for the associated process |
| **Operation Count** | An approximation for the number of discrete operations carried out by the process during the batch interval |
| **Measured Time (ms)** | For a batch interval, the amount of CPU time consumed by the process |
| **Percent of Interval (%)** | For a batch interval, the amount of CPU time consumed by the process compared to the total 5 minute batch interval, expressed as a percentage |
| **Percent of All Measurements in Interval (%)** | For a batch interval, the amount of CPU time consumed by the process compared to the total CPU measured time of all of the processes during that interval, expressed as a percentage. |

#### Execution by category logs

These files contain information around background timers of the Appian engines, which are not specific to process models or processes. They are written every 5 minutes to files named according to the convention `execution_by_category_<ENGINE-ACRONYM>_<TIMESTAMP>.csv`, where the engine acronyms follow the same convention as the engine performance logs above. Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Ordinal** | The position of an object within each batch interval. The first ordinal number in each batch represents the object which took the most amount of time in the batch. |
| **Timestamp** | Date and time at which each batch interval started. Each batch interval is 5 minutes. |
| **Category Name** | The specific background timer. Possible values include: Activity Chain Timeout, Archive Process Check, Engine Pings, Inactive Process Check, Load Metric Updates, MNI Spawning, Model Cleanup, Node Execution, Node Execution Queue, Process Messaging, Process Messaging Producers, Rule Events, Running Web Service Timeouts, Submitted Web Service Timeouts, Timer Events |
| **Operation Count** | An approximation for the number of discrete operations carried out by the object during the batch interval |
| **Measured Time (ms)** | For a batch interval, the amount of CPU time consumed by the object |
| **Percent of Interval (%)** | For a batch interval, the amount of CPU time consumed by the object compared to the total 5 minute batch interval, expressed as a percentage |
| **Percent of All Measurements in Interval (%)** | For a batch interval, the amount of CPU time consumed by the object compared to the total CPU measured time of all of the objects during that interval, expressed as a percentage. |

### Expressions performance logs

These log files provide performance measurements on the building blocks of Appian expressions: functions and rules.

Rules can contain both functions and/or other rules. In such cases, the measured time of the main rule will include that of any nested rules and/or functions.

The trace and summary logs measure the usage of Appian functions, rules, and custom plug-in functions together to make it easier to debug issues or check the health of your overall system. However, Appian functions are measured in a separate details log from rules and custom plug-in functions to make it easier to distinguish between the usage of your objects and Appian functions.

**Tip:**  If a function or rule does not evaluate successfully it will not be measured. Under certain additional circumstances both rules and Appian-provided functions may go unmeasured. Custom Function Plug-ins that evaluate successfully are always measured.

**Trace file metrics** (`expressions_trace.csv`)

**Note:**  Because most interfaces evaluate many rules and expression functions to serve a single request, enabling the expressions trace log may adversely affect system performance.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time of the expression evaluation. |
| **Name** | Name of the function or rule. |
| **Type** | "Appian Function", "Function" (custom plug-in), "Smart Service", or "Rule" (anything referenced using `rule!`). For smart service functions, time measurements only include the time spent evaluating the expression and do not include executing the smart service. |
| **Total Time (ms)** | Total time evaluating the function or rule including the time to evaluate its inputs. |
| **User** | UUID of user who invoked the function or rule. |
| **Thread** | ID of the thread the function or rule was evaluated on. |
| **Individual Time (ms)** | Total time evaluating the function or rule excluding the time to evaluate its inputs. For example, given that `rule!getDistinctItems(items: rule!getAllItems())` has a **Total Time** of 100ms and `rule!getAllItems` has a **Total Time** of 80ms, then `rule!getDistinctItems` has an **Individual Time** of 20ms. |
| **Called By Rule** | Name of the rule that called the object specified in **Name**. This value will be blank for top-level rules and internal functions. |

**Summary file metrics** (`expressions_summary.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Function Count** | Number of functions evaluated. |
| **Mean Function Time (ms)** | Average time spent evaluating functions. |
| **Rule Count** | Number of rules evaluated. |
| **Mean Rule Time (ms)** | Average time spent evaluating rules. |
| **Minimum Function Time (ms)** | Shortest time required to evaluate a single function. |
| **Maximum Function Time (ms)** | Longest time required to evaluate a single function. |
| **Minimum Rule Time (ms)** | Shortest time required to evaluate a single rule. |
| **Maximum Rule Time (ms)** | Longest time required to evaluate a single rule. |

**Rule and Plug-in Function details file metrics** (`expressions_details.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Name** | Name of the function or rule. |
| **Type** | "Function" (custom plug-in) or "Rule" (anything referenced using `rule!`). |
| **Total Count** | Number of invocations of this function or rule. |
| **Mean Total Time (ms)** | Average amount of time required to evaluate this function or rule. |
| **Minimum Total Time (ms)** | Smallest amount of time required to evaluate this function or rule. |
| **Maximum Total Time (ms)** | Longest amount of time required to evaluate this function or rule. |

**Appian Function details file metrics** (`appian_functions_details.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Name** | Name of the function or rule. |
| **Type** | "Appian Function" or "Smart Service". For smart service functions, time measurements only include the time spent evaluating the expression and do not include executing the smart service. |
| **Total Count** | Number of invocations of this function or smart service. |
| **Mean Total Time (ms)** | Average amount of time required to evaluate this function or smart service. |
| **Minimum Total Time (ms)** | Smallest amount of time required to evaluate this function or smart service. |
| **Maximum Total Time (ms)** | Longest amount of time required to evaluate this function or smart service. |

**Slow Plug-in Function metrics** (`plugin_functions_slow.csv`)

This log displays all plug-in functions that take longer than 5 seconds to complete or have a result size over 100,000 AMUs. Plug-in functions that show up in this log should be investigated to determine if the performance is expected or can be improved. Long running plug-in functions can correlate with high memory usage which causes a site's overall performance to degrade.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **User UUID** | UUID of user who invoked the plug-in function. |
| **Function** | Name of the plug-in function. |
| **Evaluation Type** | The type of object that contains the expression. Possible values: record list, record view, report, start form, task form, related action (process start), related action (quick task), process node, web API, internal, interface designer. |
| **Object UUID** | The UUID of the design object where the plug-in was evaluated. You can [search for objects by UUID](find_and_search_in_appian.html#uuid-or-id) in Appian Designer. |
| **Record Instance ID** | For evaluation types of record view, the record identifier (rv!identifier). |
| **Record View URL Stub** | For evaluation types of record view, the record view URL stub. |
| **Process Instance ID** | For evaluation types of start form, task form, related action, or process node, the process instance's ID (pp!id). |
| **Task ID** | For evaluation types of task form, the task's ID (tp!id). |
| **Total Time (ms)** | Total time spent evaluating the plug-in function. |
| **Result Size** | Size of the value returned by the plug-in function measured in AMUs. Large result sizes can have an impact on memory usage and should be investigated to determine if such a large result is expected or needed. However, a plug-in can still use a large amount of memory even if the result size is small. For example, a plug-in function that searches all document folders for a single file can use a lot of memory even if the result size is small. |

### Integration performance logs

These log files provide data on integration performance.

**Trace file metrics** (`integration_trace.csv`)

Integration trace logging can be enabled and disabled via the [Admin Console](Appian_Administration_Console.html#trace-logging).

| Metric | Description |
| --- | --- |
| Timestamp | Timestamp at which the entry was logged |
| Integration UUID | The UUID of the integration |
| Success | Did the integration result in an error? |
| Timeout | Did the integration time out? |
| Username | The username of the user who executed the integration |
| Operation/Method | For HTTP integrations: the Method name. For SDK integrations: the Operation name. |
| Total Time (ms) | The total time for the integration execution |
| Prepare Time (ms) | The prepare time for the integration execution |
| Execute time (ms) | The execute time for the HTTP integration execution |
| Transform Time (ms) | The transform time for the integration execution |
| Connected System UUID | The UUID of the connected system at runtime (if one was used) |
| Process ID | If the integration was called as part of a process (whether or not the direct precedent is a process model), this is the process id. It will be null if it’s not called from a process model. |
| Status Code | The status code returned by the integration. Only populated for integrations that use an HTTP connected system, an OpenAPI connected system, or no connected system. |

**Summary file metrics** (`integration_summary.csv`)

| Metric | Description |
| --- | --- |
| Timestamp | Timestamp at which the entry was logged |
| Total count | Number of executions across all integrations per interval |
| Failure count | Number of failures across all integrations per interval |
| Timeout count | Number of timeouts across all integrations per interval |
| Mean Total Time (ms) | Mean total time across all integrations per interval |
| Minimum Total Time (ms) | Minimum total time across all integrations per interval |
| Maximum Total Time (ms) | Maximum total time across all integrations per interval |
| Mean Prepare | Mean total prepare across all integrations per interval |
| Minimum Prepare Time (ms) | Minimum prepare time across all integrations per interval |
| Maximum Prepare Time (ms) | Maximum prepare time across all integrations per interval |
| Mean Execute Time (ms) | Mean execute time across all integrations per interval |
| Minimum Execute Time (ms) | Minimum execute time across all integrations per interval |
| Maximum Execute Time (ms) | Maximum execute time across all integrations per interval |
| Mean Transform Time (ms) | Mean transform time across all integrations per interval |
| Minimum Transform Time (ms) | Minimum transform time across all integrations per interval |
| Maximum Transform Time (ms) | Maximum transform time across all integrations per interval |

**Details file metrics** (`integration_details.csv`)

| Metric | Description |
| --- | --- |
| Timestamp | The timestamp at which the entry was logged |
| Integration UUID | The UUID of the integration |
| Operation/Method | The Method name |
| Connected System UUID | The UUID of the connected system on the integration |
| Connected System Type Name | The name of the Connected System Type (such as Amazon Machine Learning) |
| Total Count | Number of times the integration was executed per interval |
| Failure Count | Number of times the integration failed per interval. This includes timeouts, which will be double counted. |
| Timeout Count | Number of times the integration timed out per interval |
| Mean Total Time (ms) | The mean total time for the integration per interval |
| Min Total Time (ms) | The shortest total time the integration took per interval |
| Max Total Time (ms) | The longest total time the integration took per interval |
| Mean Prepare Time (ms) | The mean prepare time for the integration per interval |
| Min Prepare Time (ms) | The shortest prepare time the integration took per interval |
| Max Prepare Time (ms) | The longest prepare time the integration took per interval |
| Mean Execute Time (ms) | The mean execute time for the integration per interval |
| Min Execute Time (ms) | The shortest execute time the integration took per interval |
| Max Execute Time (ms) | The longest execute time the integration took per interval |
| Mean Transform Time (ms) | The mean transform time for the integration per interval |
| Min Transform Time (ms) | The shortest total time the integration took per interval |
| Max Transform Time (ms) | The longest total time the integration took per interval |

### Interface performance logs

These log files provide performance measurements on interfaces, including record and report dashboards and start and task forms.

To review performance measurements for the specific record types used in an interface, see the [interface query performance logs](#interface-query-performance-logs).

**Trace file metrics** (`sail_trace.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Interface Type** | The type of interface being accessed. Possible values: record dashboard, report dashboard, start form, task form, related action (process start), related action (quick task), interface site page, internal. |
| **Client** | The client used to access the interface. Possible values: web, ios, android. |
| **Evaluation Type** | The type of interface interaction. Possible values: initial load, re-evaluation, save, submission. |
| **Username** | Username of the user who accessed the interface. |
| **Server Evaluation Time (ms)** | Time spent on the server evaluating the interface. |
| **Context Size (bytes)** | Amount of data in the server context. |
| **Interface Size (bytes)** | Size of the interface. |
| **Component Count** | Number of components visible in the interface. |
| **Record Type** | For record dashboards and related actions, the urlstub of the record type. |
| **Record ID** | For record dashboards, the ID of the associated record type. |
| **Record Dashboard ID** | For record dashboards, the urlstub of the dashboard. |
| **Report ID** | For report dashboards, the urlstub of the report. |
| **Process Model ID** | For start forms and non-quick task related actions, the ID of the associated process model. |
| **Process ID** | For start forms and quick task related actions, the ID of the associated process instance. |
| **Task ID** | For task forms, the ID of the associated task. |
| **Internal ID** | For internal interfaces, the identifier for the associated interface. |
| **UI State Database Update Time** | Time spent storing mobile client interface state in the Appian data source. This is always blank for web client requests. |
| **UI State Database Fetch Time** | Time spent retrieving mobile client interface state from the Appian data source. This is always blank for web client requests. |
| **UI State Compression Time (ms)** | Time spent compressing the interface context. |
| **UI State Encryption Time (ms)** | Time spent encrypting the interface context for transmission to the client. |
| **Evaluation Initiator** | Indicates whether the evaluation was initiated by a user or a refresh interval. Because requests can be batched together, a single evaluation can sometimes contain both user-initiated and interval-initiated requests, which is logged as "multiple". |
| **Task UUID** | UUID of the task. |
| **Interface Site Page ID** | The Web Address Identifier for the site page. |

**Summary file metrics** (`sail_summary.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Evaluations** | Number of interface evaluations in the time interval. |
| **Web Client Evaluations** | Number of interface evaluations by web clients in the time interval. |
| **Android Evaluations** | Number of interface evaluations by Android clients in the time interval. |
| **iOS Evaluations** | Number of interface evaluations by iOS clients in the time interval. |
| **Mean Total Evaluation Time (ms)** | Average amount of server time spent evaluating an interface. |
| **Minimum Total Evaluation Time (ms)** | Minimum amount of server time spent evaluating an interface. |
| **Maximum Total Evaluation Time (ms)** | Maximum amount of server time spent evaluating an interface. |
| **Mean Context Size (bytes)** | Average size of the server context for an interface. |
| **Minimum Context Size (bytes)** | Smallest server context for an interface. |
| **Maximum Context Size (bytes)** | Largest server context for an interface. |
| **Mean Interface Size (bytes)** | Average size of the interface. |
| **Minimum Interface Size (bytes)** | Smallest interface size. |
| **Maximum Interface Size (bytes)** | Largest interface size. |
| **Mean Component Count** | Average number of visible components in an interface. |
| **Minimum Component Count** | Smallest number of visible components in an interface. |
| **Maximum Component Count** | Largest number of visible components in an interface. |
| **Total Record Dashboard Evaluations** | Number of record dashboards accessed in the time interval, including reevaluations. |
| **Total Record Dashboard Initial Loads** | Number of record dashboards accessed in the time interval, not including reevaluations. |
| **Total Report Dashboard Evaluations** | Total number of report dashboards accessed in the time interval, including reevaluations. |
| **Total Report Dashboard Initial Loads** | Number of report dashboards accessed in the time interval, not including reevaluations. |
| **Total Start Form Evaluations** | Number of start forms accessed in the time interval, including reevaluations and submissions. |
| **Total Start Form Initial Loads** | Number of start forms accessed in the time interval, not including reevaluations or submissions. |
| **Total Start Form Submissions** | Number of start forms submitted in the time interval. |
| **Total Task Form Evaluations** | Number of task forms accessed in the time interval, including reevaluations, saves, and submissions. |
| **Total Task Form Initial Loads** | Number of task forms accessed in the time interval, not including reevaluations, saves, and submissions. |
| **Total Task Form Submissions** | Number of task forms submitted in the time interval. |
| **Mean UI State Database Update Time** | Average time spent storing mobile client interface state in the Appian data source. |
| **Minimum UI State Database Update Time** | Shortest time spent storing mobile client interface state in the Appian data source. |
| **Maximum UI State Database Update Time** | Longest time spent storing mobile client interface state in the Appian data source. |
| **Mean UI State Database Fetch Time** | Average time spent retrieving mobile client interface state from the Appian data source. |
| **Minimum UI State Database Fetch Time** | Shortest time spent retrieving mobile client interface state from the Appian data source. |
| **Maximum UI State Database Fetch Time** | Longest time spent retrieving mobile client interface state from the Appian data source. |
| **Mean UI State Compression Time (ms)** | Average time spent compressing the interface state. |
| **Minimum UI State Compression Time (ms)** | Shortest time spent compressing the interface state. |
| **Maximum UI State Compression Time (ms)** | Longest time spent compressing the interface state. |
| **Mean UI State Encryption Time (ms)** | Average time spent encrypting the interface state for transmission to the client. |
| **Minimum UI State Encryption Time (ms)** | Shortest time spent encrypting the interface state for transmission to the client. |
| **Maximum UI State Encryption Time (ms)** | Longest time spent encrypting the interface state for transmission to the client. |
| **Evaluations With Stateful Context** | Number of evaluations that kept the context on the server and did not transmit it to the client. |
| **Evaluations With Stateless Context** | Number of evaluations that transmitted an encrypted context to the client instead of storing it on the server. |
| **Total Action Form Cache Count** | Number of action form cache requests. |
| **Scheduled Action Form Cache Count** | Number of action forms cached for offline use without direct user action. |
| **Foreground Action Form Cache Count** | Number of action forms cached for offline use because a user viewed the action list. |
| **Requested Action Form Cache Count** | Number of action forms cached for offline use because a user viewed the action. |
| **Mean Action Form Cache Evaluation Time (ms)** | Average time spent evaluating action forms for caching purposes. |
| **Minimum Action Form Cache Evaluation Time (ms)** | Shortest time spent evaluating action forms for caching purposes. |
| **Maximum Action Form Cache Evaluation Time (ms)** | Longest time spent evaluating action forms for caching purposes. |
| **Mean Action Form Cache Size (bytes)** | Average size of a cached action form in bytes. |
| **Minimum Action Form Cache Size (bytes)** | Smallest size of a cached action form in bytes. |
| **Maximum Action Form Cache Size (bytes)** | Largest size of a cached action form in bytes. |
| **Offline Submissions Attempted** | Number of submissions attempted while offline. |
| **Offline Submissions Succeeded** | Number of offline submissions that completed successfully. |
| **Offline Submission Validation Failures** | Number of offline submissions that failed due to form validation. |
| **Offline Submission Form Mismatch Failures** | Number of offline submissions that failed because the form had been updated. |
| **Mean Offline Submissions Evaluation Time (ms)** | Average time spent evaluating offline submissions. |
| **Minimum Offline Submissions Evaluation Time (ms)** | Shortest time spent evaluating offline submissions. |
| **Maximum Offline Submissions Evaluation Time (ms)** | Longest time spent evaluating offline submissions. |
| **Mean Offline Submissions Size (bytes)** | Average size of offline form submissions in bytes. |
| **Minimum Offline Submissions Size (bytes)** | Smallest size of offline form submissions in bytes. |
| **Maximum Offline Submissions Size (bytes)** | Largest size of offline form submissions in bytes. |
| **Interval Evaluations** | Total number of interface evaluations triggered by a refresh interval during the time period, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **Mean Total Evaluation Time for Interval Evaluations (ms)** | Average amount of server time spent evaluating an interface when the evaluation is triggered by a refresh interval, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **Minimum Total Evaluation Time for Interval Evaluations (ms)** | Minimum amount of server time spent evaluating an interface when the evaluation is triggered by a refresh interval, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **Maximum Total Evaluation Time for Interval Evaluations (ms)** | Maximum amount of server time spent evaluating an interface when the evaluation is triggered by a refresh interval, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **Total Interval Record Dashboard Evaluations** | Number of record dashboards evaluations triggered by a refresh interval during the time period, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **Total Interval Report Evaluations** | Number of report evaluations triggered by a refresh interval during the time period, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **Total Interval Start Form Evaluations** | Number of start form evaluations triggered by a refresh interval during the time period, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **Total Interval Task Form Evaluations** | Number of start form evaluations triggered by a refresh interval during the time period, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **IOS Client Offline Evaluations** | Number of evaluations in an offline interface by iOS clients in the time interval. |
| **Android Client Offline Evaluations** | Number of evaluations in an offline interface by Android clients in the time interval. |
| **Total Interface Site Page Evaluations** | Number of interface type site page evaluations in the time interval, including reevaluations. |
| **Total Interface Site Page Initial Loads** | Number of interface type site pages accessed in the time interval, not including reevaluations. |
| **Total Interval Interface Site Page Evaluations** | Number of interface type site page evaluations triggered by a refresh interval during the time period, excluding any evaluations that contained both user-initiated and interval-initiated requests. |

**Details file metrics** (`sail_details.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Interface Type** | The type of this interface. Possible values: record dashboard, report dashboard, start form, task form, related action (process start), related action (quick task), interface site page, internal. |
| **Total Evaluations** | Number of evaluations of this interface during the time interval. |
| **Web Client Evaluations** | Number of evaluations of this interface during by web clients during the time interval. |
| **iOS Evaluations** | Number of evaluations of this interface during by iOS clients during the time interval. |
| **Android Evaluations** | Number of evaluations of this interface during by Android clients during the time interval. |
| **Initial Loads** | Number of initial evaluations of this interface. |
| **Saves** | Number of saves of this interface (only task forms can be saved). |
| **Submissions** | Number of submissions from this interface (only start and task forms can be submitted). |
| **Mean Total Evaluation Time (ms)** | Average amount of server time spent evaluating this interface. |
| **Minimum Total Evaluation Time (ms)** | Minimum amount of server time spent evaluating this interface. |
| **Maximum Total Evaluation Time (ms)** | Maximum amount of server time spent evaluating this interface. |
| **Mean Context Size (bytes)** | Average server context size for this interface. |
| **Minimum Context Size (bytes)** | Smallest server context for this interface. |
| **Maximum Context Size (bytes)** | Largest server context for this interface. |
| **Mean Interface Size (bytes)** | Average size of this interface. |
| **Minimum Interface Size (bytes)** | Smallest recorded interface size. |
| **Maximum Interface Size (bytes)** | Largest recorded interface size. |
| **Mean Component Count** | Average number of visible components in this interface. |
| **Minimum Component Count** | Largest number of visible components in this interface. |
| **Maximum Component Count** | Smallest number of visible components in this interface. |
| **Record Type** | For record dashboards and related actions, the urlstub of the record type. |
| **Record ID** | For record dashboards, the ID of the associated record type. |
| **Record Dashboard ID** | For record dashboards, the urlstub of the dashboard. |
| **Report ID** | For report dashboards, the urlstub of the report. |
| **Process Model ID** | For start forms and non-quick task related actions, the ID of the associated process model. |
| **Process ID** | For start forms and quick task related actions, the ID of the associated process instance. |
| **Task ID** | For task forms, the ID of the associated task. |
| **Internal ID** | For internal interfaces, the identifier for the associated interface. |
| **Mean UI State Database Update Time** | Average time spent storing mobile client state for this interface in the Appian data source. |
| **Minimum UI State Database Update Time** | Shortest time spent storing mobile client state for this interface in the Appian data source. |
| **Maximum UI State Database Update Time** | Longest time spent storing mobile client state for this interface in the Appian data source. |
| **Mean UI State Database Fetch Time** | Average time spent retrieving mobile client state for this interface from the Appian data source. |
| **Minimum UI State Database Fetch Time** | Shortest time spent retrieving mobile client state for this interface from the Appian data source. |
| **Maximum UI State Database Fetch Time** | Longest time spent retrieving mobile client state for this interface from the Appian data source. |
| **Mean UI State Compression Time (ms)** | Average time spent compressing this interface's state. |
| **Minimum UI State Compression Time (ms)** | Shortest time spent compressing this interface's state. |
| **Maximum UI State Compression Time (ms)** | Longest time spent compressing this interface's state. |
| **Mean UI State Encryption Time (ms)** | Average time spent encrypting this interface's state for transmission to the client. |
| **Minimum UI State Encryption Time (ms)** | Shortest time spent encrypting this interface's state for transmission to the client. |
| **Maximum UI State Encryption Time (ms)** | Longest time spent encrypting this interface's state for transmission to the client. |
| **Evaluations With Stateful Context** | Number of this interface's evaluations that kept the context on the server and did not transmit it to the client. |
| **Evaluations With Stateless Context** | Number of this interface's evaluations that transmitted an encrypted context to the client instead of storing it on the server. |
| **Total Action Form Cache Count** | Number of times this interface was cached for offline use. |
| **Scheduled Action Form Cache Count** | Number of times this interface was cached not in response to a user action. |
| **Foreground Action Form Cache Count** | Number of times this interface was cached in response to user action. |
| **Requested Action Form Cache Count** | Number of action forms cached for offline use. |
| **Mean Action Form Cache Evaluation Time (ms)** | Average time spent evaluating action forms for caching purposes. |
| **Minimum Action Form Cache Evaluation Time (ms)** | Shortest time spent evaluating action forms for caching purposes. |
| **Maximum Action Form Cache Evaluation Time (ms)** | Longest time spent evaluating action forms for caching purposes. |
| **Mean Action Form Cache Size (bytes)** | Average size of a cached action form. |
| **Minimum Action Form Cache Size (bytes)** | Smallest size of a cached action form. |
| **Maximum Action Form Cache Size (bytes)** | Largest size of a cached action form. |
| **Offline Submissions Attempted** | Number of submissions attempted while offline. |
| **Offline Submissions Succeeded** | Number of offline submissions that completed successfully. |
| **Offline Submission Validation Failures** | Number of offline submissions that failed due to form validation. |
| **Offline Submission Form Mismatch Failures** | Number of offline submissions that failed because the form had been updated. |
| **Mean Offline Submissions Evaluation Time (ms)** | Average time spent evaluating offline submissions. |
| **Minimum Offline Submissions Evaluation Time (ms)** | Shortest time spent evaluating offline submissions. |
| **Maximum Offline Submissions Evaluation Time (ms)** | Longest time spent evaluating offline submissions. |
| **Mean Offline Submissions Size (bytes)** | Average size of offline form submissions. |
| **Minimum Offline Submissions Size (bytes)** | Smallest size of offline form submissions. |
| **Maximum Offline Submissions Size (bytes)** | Largest size of offline form submissions. |
| **Interval Evaluations** | Total number of evaluations of this interface triggered by a refresh interval during the time period, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **Mean Total Evaluation Time for Interval Evaluations (ms)** | Average amount of server time spent evaluating this interface when the evaluation is triggered by a refresh interval, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **Minimum Total Evaluation Time for Interval Evaluations (ms)** | Minimum amount of server time spent evaluating this interface when the evaluation is triggered by a refresh interval, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **Maximum Total Evaluation Time for Interval Evaluations (ms)** | Maximum amount of server time spent evaluating this interface when the evaluation is triggered by a refresh interval, excluding any evaluations that contained both user-initiated and interval-initiated requests. |
| **Task UUID** | UUID of the task. |
| **IOS Client Offline Evaluations** | Number of evaluations in an offline interface by iOS clients in the time interval. |
| **Android Client Offline Evaluations** | Number of evaluations in an offline interface by Android clients in the time interval. |
| **Interface Site Page ID** | The Web Address Identifier for the site page. |
| **Mean Query Count per Initial Load** | Average number of queries run during the initial evaluation of the interface. |
| **Mean Query Count per Re-evaluation** | Average number of queries run when the interface is re-evaluated. |
| **Mean Query Count per Submission** | Average number of queries run when the interface is submitted (only start and task forms can be submitted). |

### Interface query performance logs

These log files provide performance measurements for each record type queried in an interface.

**Details file metrics** (`interface_query_record_type_details.csv`)

| **Metric**\* | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Interface Type** | The type of interface being accessed. Possible values: record dashboard, report dashboard, start form, task form, related action (process start), related action (quick task), interface site page, internal. |
| **Record Dashboard ID** | For record dashboards, the URL stub of the dashboard. |
| **Interface Site Page ID** | The Web Address Identifier for the site page. |
| **Process Model ID** | For start forms and non-quick task related actions, the ID of the associated process model. |
| **Process ID** | For start forms and quick task related actions, the ID of the associated process instance. |
| **Report URL Stub** | The URL stub of the report. |
| **Task ID** | For task forms, the ID of the associated task. |
| **Task UUID** | UUID of the task. |
| **Record Type** | For record dashboards and related actions, the URL stub of the record type. |
| **Target Record Type UUID** | The unique identifier of the record type that was queried. |
| **Total Evaluations** | Number of interface evaluations in the time interval. |
| **Total Query Count** | Number of queries to the record type during the time interval. |
| **Mean Query Execution Time** | Average time (in milliseconds) that queries took to wait for resources and run. |
| **Median Query Execution Time** | Median time (in milliseconds) that queries took to wait for resources and run. |
| **75% Query Execution Time** | The 75% quantile (in milliseconds) that queries took to wait for resources and run. For example, 75% of the queries executed took less than 100 milliseconds to run. |
| **95% Query Execution Time** | The 95% quantile (in milliseconds) that queries took to wait for resources and run. For example, 95% of the queries took less than 100 milliseconds to run. |
| **Mean Query Wait Time** | Average time (in milliseconds) that queries took to wait for resources. |
| **Median Query Wait Time** | Median time (in milliseconds) that queries took to wait for resources. |
| **75% Query Wait Time** | The 75% quantile (in milliseconds) that queries took to wait for resources and run. For example, 75% of queries waited less than 10 milliseconds. |
| **95% Query Wait Time** | The 95% quantile (in milliseconds) that queries took to wait for resources and run. For example, 95% of queries waited less than 10 milliseconds. |
| **Data Access Method** | The data access method for the particular record type being queried. Possible values are synced and unsynced. |
| **Mean Total Field Count** | Average number of fields requested in the queries. |
| **Median Total Field Count** | Median number of fields requested in the queries. |
| **75% Total Field Count** | The 75% quantile of fields requested in the queries. For example, 75% of queries requested fewer than 10 fields. |
| **95% Total Field Count** | The 95% quantile of fields requested in the queries. For example, 95% of queries requested fewer than 10 fields. |
| **Mean Real-Time Custom Field Count** | Average number of [real-time custom record fields](custom-record-fields.html) requested in queries. |
| **Median Real-Time Custom Field Count** | Median number of real-time custom record fields requested in queries. |
| **75% Real-Time Custom Field Count** | The 75% quantile of real-time custom record fields requested in queries. For example, 75% of queries requested less 4 real-time custom record fields. |
| **95% Real-Time Custom Field Count** | The 95% quantile of real-time custom record fields requested in queries. For example, 95% of queries requested less 2 real-time custom record fields. |
| **Mean Extra-Long Text Field Count** | Average number of [Extra Long Text](about-data-sync.html#use-extra-long-text-fields-to-store-large-volumes-of-data) fields requested in queries. |
| **Median Extra-Long Text Field Count** | Median number of Extra Long Text fields requested in queries. |
| **75% Extra-Long Text Field Count** | The 75% quantile of Extra Long Text fields requested in queries. For example, 75% of queries requested less than 10 Extra Long Text fields. |
| **95% Extra-Long Text Field Count** | The 95% quantile of Extra Long Text fields requested in queries. For example, 95% of queries requested less than 5 Extra Long Text fields. |

### Offline mobile performance logs

These log files provide measurements on offline mobile performance.

**Trace file metrics** (`offline_trace.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time of an action list request. |
| **Evaluation Time (ms)** | Time spent refreshing the action list and actions. |
| **Total Action Count** | Total number of actions in the action list. |
| **Offline Action Count** | Number of offline actions in the action list. |
| **Response Size (bytes)** | Size of the action list request response. |
| **Time Since Last Action List Request (min)** | Time since the action list was last requested. |
| **Interaction Type** | The client's reason for making the request. Possible values: Scheduled (requested without direct user action), Foreground (user opened the app), Requested (user refreshed their action list). |

**Summary file metrics** (`offline_summary.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Action List Request Count** | Number of action list requests. |
| **Scheduled Action List Request Count** | Number of action list requests for offline use without direct user action. |
| **Foreground Action List Request Count** | Number of action list requests for offline use because a user opened the app. |
| **Requested Action Form Cache Count** | Number of action list requests for offline use because a user refreshed their action list. |
| **Mean Action List Request Time (ms)** | Average time spent refreshing the action list and actions. |
| **Minimum Action List Request Time (ms)** | Shortest time spent refreshing the action list and actions. |
| **Maximum Action List Request Time (ms)** | Longest time spent refreshing the action list and actions. |
| **Mean Total Actions** | Average total number of actions in the action list. |
| **Minimum Total Actions** | Smallest total number of actions in the action list. |
| **Maximum Total Actions** | Largest total number of actions in the action list. |
| **Mean Offline Actions** | Average number of offline actions in the action list. |
| **Minimum Offline Actions** | Smallest number of offline actions in the action list. |
| **Maximum Offline Actions** | Largest number of offline actions in the action list. |
| **Mean Action List Request Response Size (bytes)** | Average size of an action list request response. |
| **Minimum Action List Request Response Size (bytes)** | Smallest size of an action list request response. |
| **Maximum Action List Request Response Size (bytes)** | Largest size of an action list request response. |
| **Mean Time Since Last Action List Request (min)** | Average time since the action list was last requested. |
| **Minimum Time Since Last Action List Request (min)** | Shortest time since the action list was last requested. |
| **Maximum Time Since Last Action List Request (min)** | Longest time since the action list was last requested. |

### Portals latency, traffic, and error rate metric logs

These logs capture the number of requests, number of errors, and request latency for each portal published in a given environment. They are located in the `APPIAN_HOME/logs/perflogs/portals/` subdirectory. This information can also be viewed in the [Portal Monitoring](monitoring_view.html#portal-monitoring) tab in the Monitor view.

**Summary file metrics** (`portal_summary_portalname_date.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Request Count** | Number of requests to the portal. |
| **Error Count** | Number of requests that resulted in an error. |
| **Median Latency** | Median latency value. |
| **90th Percentile Latency** | Slowest response time of the fastest 90 percent of requests. |
| **99th Percentile Latency** | Slowest response time of the fastest 99 percent of requests. |

### Portals rule performance details logs

These logs capture the performance details for every rule and interface within any published portal in an environment. They are located in the `APPIAN_HOME/logs/perflogs/portals/` subdirectory.

**Note:**  In Appian Cloud environments where [enhanced portal logs](portals-troubleshooting.html#environment-support-for-enhanced-portal-logs) aren't available, this log will be empty. Instead, use the [Portal Server Log](portals-troubleshooting.html#portal-server-log) in the portal object to help troubleshoot.

**Summary file metrics** (`portal_details.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Rule Name** | Name of the rule or interface. |
| **Total Count** | Includes one count per load and one count per interaction for the rule or interface. |
| **Mean Total Time (ms)** | Mean total time to execute. The measured time for any rule or interface will include that of any nested rules or interfaces. |
| **Minimum Total Time (ms)** | Fastest total time to execute. The measured time for any rule or interface will include that of any nested rules or interfaces. |
| **Maximum Total Time (ms)** | Slowest total time to execute. The measured time for any rule or interface will include that of any nested rules or interfaces. |

### Query record type performance logs

These logs capture the performance details for queries to your record types. This includes queries run from `a!queryRecordType()`, `a!queryRecordByIdentifier()`, and `a!recordData()`.

**Note:**  Performance details are not captured for queries to record views and record actions that are configured with `rv!record`.

**Details file metrics** (`query_record_type_details.csv`)

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Record Type UUID** | The unique identifier of the record type that was queried. |
| **Total Count** | The total number of queries executed on the record type. |
| **Mean Time** (ms) | The mean time (in milliseconds) that the query took to wait for resources and run. |
| **Minimum Time** (ms) | The fastest time (in milliseconds) that the query took to wait for resources and run. |
| **Maximum Time** (ms) | The slowest time (in milliseconds) that the query took to wait for resources and run. |

**Summary file metrics** (`query_record_type_summary.csv`)

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Count** | The total number of queries executed on the record type. |
| **Mean Time** (ms) | The mean time (in milliseconds) that the query took to wait for resources and run. |
| **Minimum Time** (ms) | The fastest time (in milliseconds) that the query took to wait for resources and run. |
| **Maximum Time** (ms) | The slowest time (in milliseconds) that the query took to wait for resources and run. |

**Tracing file metrics** (`query_record_type_trace.csv`)

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Record Type UUID** | The unique identifier of the record type that was queried. |
| **Evaluation Time** (ms) | The time (in milliseconds) that the query took to wait for resources and run. |
| **Design Object UUID** | The unique identifier of the design object where the query was executed. |
| **Has Search** | Whether the user executed the query by using a record list or records-powered grid search. |
| **Query UUID** | A unique identifier for a query. You can view the query syntax for a query from the [Query Performance tab](monitoring_view.html#query-syntax) in the **Monitor** view. |

### REST API performance logs

These logs report information on Appian's REST API, which powers both Appian's web interface as well as the mobile clients.

Requests are broken into five phases:

1.  **Prepare** - Time spent preparing to make a data source lookup. This phase may also involve secondary lookups.
2.  **Query** - Time spent querying the main data source involved in processing the REST API call in question.
3.  **Render** - Time spent post-processing the returned data and preparing it to display.
4.  **Task Fetch** - Time spent retrieving task information related to the REST API call results.
5.  **User Fetch** - Time spent pulling information about users related to the REST API call results.

**Trace file metrics** (`rest_trace.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time of the API call. |
| **Thread** | Identification number of the querying thread. |
| **Operation Type** | Type of the requested operation. |
| **Operation Name** | Possible values are "get feed", "add entry", and "add comment". |
| **Operation Detail** | Other information about the operation including the username making the request as well as the query string. |
| **Prepare Time (ms)** | Time spent in the Prepare phase of the request. |
| **Execute Time (ms)** | Time spent in the Execute phase of the request. |
| **Render Time (ms)** | Time spent in the Render phase of the request. |
| **Task Fetch Time (ms)** | Time spent in the Task Fetch phase of the request. |
| **User Fetch Time (ms)** | Time spent in the User Fetch phase of the request. |
| **Other App Server Time (ms)** | Time spent outside of the five phases. |

**Summary file and details file metrics** (`rest_summary.csv` / `rest_details.csv`)

**Tip:**  Metrics labeled "\[Details Only\]" apply only to the details file. This is because the details file provides the same metrics as the summary file, but the metrics are broken down for each call and each operating system.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **\[Details only\] API Call** | URI of the request. To ensure aggregation of functionally identical but slightly dissimilar URIs, all numbers are changed to 0 before being grouped. Additionally, usernames and search queries are filtered out. |
| **Total Count** | Number of calls. |
| **Mean Total Time (ms)** | Average time spent responding to a call. |
| **Prepare Phase Count** | Number of calls with a Prepare phase. |
| **Prepare Phase Mean Total Time (ms)** | Average time each call spent in the Prepare phase. |
| **Execute Phase Count** | Number of calls with an Execute phase. |
| **Execute Phase Mean Total Time (ms)** | Average time each call spent in the Execute phase. |
| **Render Phase Count** | Number of calls with a Render phase. |
| **Render Phase Mean Total Time (ms)** | Average time each call spent in the Render phase. |
| **Task Fetch Phase Count** | Number of calls with a Task Fetch phase. |
| **Task Fetch Phase Mean Total Time (ms)** | Average time each call spent in the Task Fetch phase. |
| **User Fetch Phase Count** | Number of calls with a User Fetch phase. |
| **User Fetch Phase Mean Total Time (ms)** | Average time each call spent in the User Fetch phase. |
| **Read Count** | Number of calls that merely accessed data. |
| **Write Count** | Number of calls that modified data. |
| **\[Details only\] Web Count** | Number of calls made from the web interface. |
| **\[Details only\] iOS Count** | Number of calls made from the iOS mobile client. |
| **\[Details only\] Android Count** | Number of calls made from the Android mobile client. |
| **Min Total Time (ms)** | Minimum time spent responding to a call. |
| **Max Total Time (ms)** | Maximum time spent responding to a call. |
| **Prepare Phase Min Time (ms)** | Minimum time spent responding in a call's Prepare phase. |
| **Prepare Phase Max Time (ms)** | Maximum time spent responding in a call's Prepare phase. |
| **Execute Phase Min Time (ms)** | Minimum time spent responding in a call's Execute phase. |
| **Execute Phase Max Time (ms)** | Maximum time spent responding in a call's Execute phase. |
| **Render Phase Min Time (ms)** | Minimum time spent responding in a call's Render phase. |
| **Render Phase Max Time (ms)** | Maximum time spent responding in a call's Render phase. |
| **Task Fetch Phase Min Time (ms)** | Minimum time spent responding in a call's Task Fetch phase. |
| **Task Fetch Phase Max Time (ms)** | Maximum time spent responding in a call's Task Fetch phase. |
| **User Fetch Phase Min Time (ms)** | Minimum time spent responding in a call's User Fetch phase. |
| **User Fetch Phase Max Time (ms)** | Maximum time spent responding in a call's User Fetch phase. |

### Report performance logs

These files provide performance measurements on reporting functionality executed through the Designer Interface. They can include the following three phases:

-   **Query** - Waiting to hear back from the RDBMS.
-   **Group** - Organizing the results by columns.
-   **Sort** - Applying the sort configurations.
-   **Merge** - Combining the results from each Appian Engine into a single result.

Not all operations involve all three phases. For example, Verify operations do not go through a Transform phase.

**Tracing file metrics** (`reporting_trace.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time of the report execution. |
| **.ARF Document ID** | ID number of the report's definition file. |
| **Report Type** | Origin of the report. Possible values include "Process Model", "Process Model Version", "Process", and "Task". |
| **Context Type** | Context used by this report. _Possible values include_ |
| **Valid Report Returned** | Indicates if the report executed and returned results without an error. True if the report returned successfully, otherwise false. |
| **Returned Within Maximum Allowed Time** | Indicates if the report returned results in the defined time frame. True if the report did not time out, otherwise false. |
| **Returned Rows** | Number of rows returned for display. |
| **Available Rows** | Number of rows available to display data on each page of the report. |
| **Total Time** | Total time it took to execute the report. |
| **Query Time** | Time spent querying the analytics engines. |
| **Grouping Time** | Time spent performing aggregations on report data. |
| **Sorting Time** | Time spent sorting the report's results. |
| **Merge Time** | Time spent merging results from different analytics engines. |

**Summary file and detailed file metrics** (`reporting_summary.csv` / `reporting_details.csv`)

**Tip:**  Metrics labeled "\[Details Only\]" apply only to the details file. This is because the details file provides the same metrics as the summary file, but the metrics are broken down for each report.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **\[Details only\] Report Name** | Full name associated with this report. |
| **\[Details only\] .arf Content ID** | ID number of the report's definition file. |
| **Total Count** | Number of reports executed in the time interval. |
| **Mean total Execution Time** | Average amount of time spent executing each report. |
| **Mean Returned Rows** | Average number of rows returned for display. |
| **Mean Available Rows** | Average number of rows available to display data on each page of the report. |
| **Invalid Count** | Number of reports that did not complete successfully (including timeouts). |
| **Timed Out Count** | Number of reports that timed out. |
| **Query Phase Count** | Number of reports that measured a Query phase. |
| **Mean Query Time** | Average amount of time spent in the Query phase. |
| **Group Phase Count** | Number of reports that measured a Group phase. |
| **Mean Grouping Time** | Average amount of time spent in the Group phase. |
| **Sort phase Count** | Number of reports that measured a Sort phase. |
| **Mean Sorting Time** | Average amount of time spent in the Sort phase. |
| **Merge Phase Time** | Number of reports that measured a Merge phase. |
| **Mean Merging Time** | Average amount of time spent in the Merge phase. |
| **Process Model Report Count** | Number of process model reports executed in the time interval. |
| **Process Model Version Report Count** | Number of process model version reports executed in the time interval. |
| **Process Report Count** | Number of process reports executed in the time interval. |
| **Task Report Count** | Number of task reports executed in the time interval. |
| **System Context Count** | Number of reports executed using a system context. |
| **Process Model Context Count** | Number of reports on context-specified process models. |
| **Process Model Version Context Count** | Number of reports on context-specified process model versions. |
| **Node Context Count** | Number of reports on context-specified nodes. |
| **Process Context Count** | Number of reports on context-specified processes. |
| **Creator Context Count** | Number of reports on processes created by the context-specified users. |
| **Last Modifier Context Count** | Number of reports on processes last modified by the context-specified users. |
| **Initiator Context Count** | Number of reports on processes initiated by the context-specified users. |
| **Attributed User Context Count** | Number of reports on tasks attributed to the context-specified users. |
| **Assigned Group Context Count** | Number of reports on tasks assigned to the context-specified groups. |
| **Owner Context Count** | Number of reports on tasks owned by the context-specified users. |
| **Attributed Group Context Count** | Number of reports on tasks attributed to the context-specified groups. |
| **Minimum Total Execution Time** | Shortest time required to complete a report's execution. |
| **Maximum Total Execution Time** | Longest time required to complete a report's execution. |
| **Minimum Returned Rows** | Fewest rows returned for one report. |
| **Maximum Returned Rows** | Most rows returned for one report. |
| **Minimum Available Rows** | Fewest rows available. |
| **Maximum Available Rows** | Most rows available. |
| **Minimum Query Time** | Shortest time required to complete a report's Query phase. |
| **Maximum Query Time** | Longest time required to complete a report's Query phase. |
| **Minimum Grouping Time** | Shortest time required to complete a report's Group phase. |
| **Maximum Grouping Time** | Longest time required to complete a report's Group phase. |
| **Minimum Sorting Time** | Shortest time required to complete a report's Sort phase. |
| **Maximum Sorting Time** | Longest time required to complete a report's Sort phase. |
| **Minimum merging Time** | Shortest time required to complete a report's Merge phase. |
| **Maximum Merging Time** | Longest time required to complete a report's Merge phase. |

### Search server replication performance logs

The search server replication performance log records the replication of data to the search server for indexing. The log is written to each time a replication occurs, which can be up to once per minute.

**Summary file metrics** (`search_server_replication_summary.csv`)

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time of the replication. |
| **Server Id** | Unique identifier for the application server that is the source of the replication activity. This can be used to filter or group replication entries. |
| **ID** | Unique identifier for the replication event. Multiple lines may all be part of the same replication event. |
| **Source** | Source of the data being replicated to the search server. |
| **Sink** | The destination index in the search server to which the data is being replicated. |
| **Action** | The type of replication action that occurred. Possible values are
-   BULK\_LOAD - Replication of all relevant data from the source.
-   INCREMENTAL\_UPDATE - Incremental update of recent changes to data in the source. Each change is referred to as a transaction.

 |
| **Total Time (ms)** | Total amount of time spent replicating the data. This value will be greater than the sum of the other timing values in this log because it contains the time for overhead and phases not specifically logged. |
| **Txn Count** | Number of transactions replicated as part of an INCREMENTAL\_UPDATE action. When the action is BULK\_LOAD, this value is reported as -1, indicating there are no transactions to replicate. |
| **Delete Count** | Number of items deleted from the index as part of the INCREMENTAL\_UPDATE action. When the action is BULK\_LOAD, this value is reported as -1, indicating that the index is cleared in its entirety instead of deleting individual items. |
| **Delete Time (ms)** | Amount of time spent deleting items from the index. |
| **Load Count** | Number of items loaded from the source for replication. |
| **Load Time (ms)** | Amount of time spent loading items from the source for replication. |
| **Upsert Count** | Number of items updated or inserted into the destination index. This value will sometimes be less than the Load Count value because certain types of objects are excluded from replication. |
| **Upsert Prepare Time (ms)** | Amount of time spent preparing the items for updating or inserting into the destination index. |
| **Upsert Persist Time (ms)** | Amount of time spent updating or inserting items into the destination index. |

### Smart Services performance logs

These logs only report the performance of **Java Smart Services**, including both Appian and plug-in Smart Services. They do not cover other types of nodes such as gateways, tasks, and script nodes.

**Trace file metrics** (`smart_services_trace.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when Smart Service is executed. |
| **Activity Name** | Fully qualified Java class name of the Smart Service. |
| **Process Model ID** | Local ID of the process model to which this Smart Service belongs. |
| **Process ID** | Local ID of the process to which this Smart Service belongs. |
| **Username** | Username of the user context in which this Smart Service is executing. |
| **Run by Initiator** | True if the executing user is also the process initiator, even if this is a coincidence and not configured to be the case, otherwise false. |
| **Run by Designer** | True if the executing user is also the process designer, even if this is a coincidence and not configured to be the case, otherwise false. |
| **Run in Activity Chain** | True if this Smart Service is executing as part of an activity chain, otherwise false. |
| **Run as Quick Task** | True if this Smart Service is executing as part of a quick task, otherwise false. |
| **Total Time (ms)** | Time required to execute the Smart Service. |

**Summary file and details file metrics** (`smart_services_summary.csv` / `smart_services_details.csv`)

| **Metric** | **Description** |
| --- | --- |
| **\[Details only\] Activity Name** | Fully qualified Java class name of the Smart Service. |
| **Total Count** | Number of Smart Services executed. |
| **Mean Total Time (ms)** | Average amount of time each Smart Service took to execute, including the system's setup time. |
| **Initiator Count** | Number of Smart Services that ran as the process initiator. |
| **Designer Count** | Number of Smart Services that ran as the process designer. |
| **Chained Count** | Number of Smart Services that ran as part of an activity chain. |
| **Quick Task Count** | Number of Smart Services that ran as quick tasks. |
| **Minimum Total Time (ms)** | Shortest measured execution time of a Smart Service. |
| **Maximum Total Time (ms)** | Longest measured execution time of a Smart Service. |

### Stored procedure execution logs

These logs contain information about calls made to execute stored procedures in the database using the following smart service and functions:

-   Execute Stored Procedure smart service
-   `executeStoredProcedureForQuery` function
-   `executeStoredProcdureOnSave` function

**Trace file metrics** (`stored_procedures_trace.csv`/`stored_procedures_slow.csv`)

The `stored_procedures_trace.csv` file captures information about every call made to execute stored procedures. The `stored_procedures_slow.csv` has the same columns but only records the calls that take more than 15 seconds to execute. Use this to identify slower executions of stored procedures. You can change the 15 second threshold for this log using the `conf.executeStoredProcedure.SLOW_PROCEDURE_THRESHOLD_MS` property in `custom.properties` file. It takes an integer value in milliseconds.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Data Source Name** | Name of the data source for admin console data sources and ID of the data source for data source connected systems. |
| **Procedure Name** | Name of the stored procedure. |
| **Data Source Lookup Time (ms)** | Time taken to identify the business data source used. |
| **Data Source Connect Time (ms)** | Time taken to retrieve connection from the connection pool. It could be higher if no connection is available in the pool and a brand new connection is required. |
| **Validate Time (ms)** | Time taken to verify if the input and output parameters match to an available stored procedure. |
| **Prepare Time (ms)** | Time taken to register the stored procedure parameters and set the configurations with JDBC before execution. |
| **Execute Time (ms)** | Time taken by the database to execute the stored procedure. |
| **Transform Time (ms)** | Time taken to process and format the data received from the database into Appian's internal structure. |
| **Total Time (ms)** | Total time required by all operations from beginning to end. |
| **Error Message** | Error message in case of a failure. |
| **Model ID** | ID of the process model when the stored procedure is called using the smart service. |
| **Process ID** | ID of the associated process instance when the stored procedure is called using the smart service. |
| **Is Chained** | Whether the smart service is activity-chained. |
| **Task Name** | Name of the task if the node is attended. |
| **Total Row Count** | Sum of all the rows returned by the stored procedures in the result sets. |
| **Parameters** | Names and values of IN, INOUT and OUT parameters. |

**Summary file metrics** (`stored_procedures_summary.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Count** | Total number of calls made to execute stored procedures with the smart service or functions. |
| **Total Smart Service Calls** | Total number of calls made to execute stored procedures with the smart service. |
| **Total Query Function Calls** | Total number of calls made to execute stored procedures with the executeStoredProcedureForQuery function. |
| **Total Save Function Calls** | Total number of calls made to execute stored procedures with the executeStoredProcedureOnSave function. |
| **Total Datasource Lookup Operations** | Number of times business data source lookup operation was performed to identify the data source used. |
| **Data Source Lookup Time** | Time taken to identify the business data source used. |
| **Mean Datasource Lookup Time (ms)** | Average time taken to identify the business data source used. |
| **Max Datasource Lookup Time (ms)** | Longest time taken to identify the business data source used. |
| **Total Datasource Connect Operations** | Number of times data source connection was retrieved. |
| **Mean Datasource Connect Time (ms)** | Average time taken to retrieve data source connection. |
| **Max Datasource Connect Time (ms)** | Longest time taken to retrieve data source connection. |
| **Total Validations Count** | Number of times verification of input and output parameters was done to match to an available stored procedure. |
| **Mean Validate Time (ms)** | Average time taken to verify if the input and output parameters match to an available stored procedure. |
| **Max Validate Time (ms)** | Longest time taken to verify if the input and output parameters match to an available stored procedure. |
| **Total Prepare Count** | Number of times registration of stored procedure parameters and set up of configurations with JDBC was done. |
| **Mean Prepare Time (ms)** | Average time taken to register the stored procedure parameters and set the configurations with JDBC before execution. |
| **Max Prepare Time (ms)** | Longest time taken to register the stored procedure parameters and set the configurations with JDBC before execution. |
| **Total Execute Count** | Number of times the stored procedure was executed by the database. |
| **Mean Execute Time (ms)** | Average time taken by the database to execute the stored procedure. |
| **Max Execute Time (ms)** | Longest time taken by the database to execute the stored procedure. |
| **Total Transform Count** | Number of times the data received from the database was processed and formatted. |
| **Mean Transform Time (ms)** | Average time taken to process and format the data received from the database into Appian's internal structure. |
| **Max Transform Time (ms)** | Longest time taken to process and format the data received from the database into Appian's internal structure. |
| **Mean Total Time (ms)** | Average time required by all operations from beginning to end. |
| **Max Total Time (ms)** | Longest time required by all operations from beginning to end. |
| **Total Row Count** | Total rows returned in the result sets. |

**Stored procedure metrics** (`stored_procedures_details.csv`)

The `stored_procedures_details.csv` file aggregates metrics individually based on data source and stored procedure name.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Data Source Name** | Name of the data source connected from the Admin Console, or the ID of the data source connected by a [data source connected system](data-source-connected-systems.html). |
| **Procedure Name** | Name of the stored procedure. |
| **Total Count** | Total number of calls made to execute stored procedures with the smart service or functions. |
| **Total Smart Service Calls** | Total number of calls made to execute stored procedures with the smart service. |
| **Total Query Function Calls** | Total number of calls made to execute stored procedures with the `a!executeStoredProcedureForQuery()` function. |
| **Total Save Function Calls** | Total number of calls made to execute stored procedures with the `a!executeStoredProcedureOnSave()` function. |
| **Total Failure Count** | Total number of failed calls made to execute stored procedures with the smart service or functions. |
| **Total Datasource Lookup Operations** | Number of times business data source lookup operations were performed to identify the data source used. |
| **Mean Datasource Lookup Time (ms)** | Average time taken to identify the business data source used. |
| **Max Datasource Lookup Time (ms)** | Longest time taken to identify the business data source used. |
| **Total Datasource Connect Operations** | Number of times data source connection was retrieved. |
| **Mean Datasource Connect Time (ms)** | Average time taken to retrieve data source connection. |
| **Max Datasource Connect Time (ms)** | Longest time taken to retrieve data source connection. |
| **Total Validations Count** | Number of times input and output parameters were verified to match an available stored procedure. |
| **Mean Validate Time (ms)** | Average time taken to verify if the input and output parameters match to an available stored procedure. |
| **Max Validate Time (ms)** | Longest time taken to verify if the input and output parameters match to an available stored procedure. |
| **Total Prepare Count** | Number of times the stored procedure parameters were registered and the configuration was set with JDBC. |
| **Mean Prepare Time (ms)** | Average time taken to register the stored procedure parameters and set the configurations with JDBC before execution. |
| **Max Prepare Time (ms)** | Longest time taken to register the stored procedure parameters and set the configurations with JDBC before execution. |
| **Total Execute Count** | Number of times the stored procedure was executed by the database. |
| **Mean Execute Time (ms)** | Average time taken by the database to execute the stored procedure. |
| **Max Execute Time (ms)** | Longest time taken by the database to execute the stored procedure. |
| **Total Transform Count** | Number of times the data received from the database was processed and formatted. |
| **Mean Transform Time (ms)** | Average time taken to process and format the data received from the database into Appian's internal structure. |
| **Max Transform Time (ms)** | Longest time taken to process and format the data received from the database into Appian's internal structure. |
| **Mean Total Time (ms)** | Average time required by all operations from beginning to end. |
| **Max Total Time (ms)** | Longest time required by all operations from beginning to end. |
| **Mean Row Count** | Average rows returned in the result sets. |
| **Max Row Count** | Max rows returned in the result sets. |
| **Total Row Count** | Total rows returned in the result sets. |

### Web API performance logs

**Trace file metrics** (`web_apis_trace.csv`)

Web API trace logging can be enabled and disabled via the [Admin Console](Appian_Administration_Console.html#trace-logging).

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the API is called. |
| **Username** | Username of the user that executed the Web API. |
| **Endpoint** | Endpoint of the Web API. |
| **UUID** | UUID of the Web API. |
| **Status code** | HTTP status code of the Web API response. |
| **Execution time(ms)** | How long it took to execute the Web API. |
| **Response size (bytes)** | The size of the response of the Web API. |
| **HTTP Method** | The HTTP method of the Web API. One of `GET`, `POST`,`PUT`,`DELETE`,`PATCH`,`OPTIONS`, or `HEAD`. |

**Summary file and details file metrics** (`web_api_summary.csv` / `web_api_details.csv`)

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **\[Details only\] Endpoint** | Endpoint of the Web API. |
| **\[Details only\] UUID** | UUID of the Web API. |
| **Execution Count** | Number of times the a Web API was executed in the time interval. |
| **Status code 1xx count** | Number of times a Web API returned a 100 series HTTP status code. |
| **Status code 2xx count** | Number of times a Web API returned a 200 series HTTP status code. |
| **Status code 3xx count** | Number of times a Web API returned a 300 series HTTP status code. |
| **Status code 4xx count** | Number of times a Web API returned a 400 series HTTP status code. |
| **Status code 5xx count** | Number of times a Web API returned a 500 series HTTP status code. |
| **Mean Execution Time (ms)** | Average amount of time each Web API took to execute. |
| **Minimum Execution Time (ms)** | Shortest measured execution time of a Web API. |
| **Maximum Execution Time (ms)** | Longest measured execution time of a Web API. |
| **Mean Response Size (bytes)** | Average size of a Web API response. |
| **Minimum Response Size (bytes)** | Smallest size of a Web API response. |
| **Maximum Response Size (bytes)** | Largest size of a Web API response. |
| **HTTP Method** | The HTTP method of the Web API. One of `GET`,`POST`,`PUT`,`DELETE`, or `HEAD`. |

### Work poller performance logs

Work poller items are activity from unattended processes that are processed by the application server.

**Summary file and details file metrics** (`work_poller_summary.csv` / `work_poller_details.csv`)

| **Metric** | **Description** |
| --- | --- |
| Timestamp | Date and time when the metric is taken. |
| Work Items Started | Number of work items that were begun in the time period. |
| Work Items Completed | Number of work items that were completed in the time period. |
| Maximum Threads In Concurrent Use | Maximum number of threads that were used to process work items in the period. |
| Total Completion Time (ms) | Total amount of time spent completing work items. |
| Mean Completion Time (ms) | Average time it took to complete a work item. |
| Minimum Completion Time (ms) | Time it took to complete the fastest work item. |
| Maximum Completion Time (ms) | Time it took to complete the longest work item. |

## Analyzing data metrics

Data metrics logs are written to the `APPIAN_HOME/logs/data-metrics` directory and contain information about the quantity of data in the Appian system. You can observe and analyze them using common spreadsheet tools.

They are written to every twelve hours and provide a view of how much data is in the system at the present time and how the amount of data is changing over time.

### Action metrics log

The **Action metrics** log file (`actions.csv`) provides information about actions.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Actions** | Total number of actions in all applications. |
| **Offline Actions** | Number of actions that are configured to be available for offline mobile. |
| **Starred Actions** | Number of actions that are starred at least once. |
| **Total Applications with Actions** | Number of applications containing at least one action. |
| **Maximum Actions per Application** | Number of actions in the application that has the most actions. |

### Administration branding log

The **Administration branding log** file (`admin-branding.csv`) provides a record of which Admin Console branding properties have been changed from their default values.

| **Metric** | **Description** |
| --- | --- |
| **Loading Bar Color Accent** | This metric captures whether the loading bar color in the admin console is the environment's accent color (default) or whether a custom hex code color has been configured. |

### Admin Console log

The **Administration Console** log file (`admin_console.csv`) provides a record of which Admin Console properties have been changed away from their default values.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Property** | The key of the property that has been modified. |
| **Count** | The number of customized values for the property. For properties with a single value, the count will be 1. For list properties, the count will be the number of items in the list. |

This log does not cover changes to the following areas of the Admin Console:

-   Plug-ins
-   User Start Pages, except for Default Start Page
-   Client Certificates
-   Trusted Server Certificates
-   Third-Party Credentials

### Administration Permissions log

The **Administration Permissions** log file (`admin-permission.csv`) provides a record of which Admin Console permissions have been changed from their default values.

| **Metric** | **Description** |
| --- | --- |
| **Profile Photo Edit Permission** | This metric captures whether users are allowed to upload a profile photo. If the Profile Photo option is enabled, users can upload a profile photo. |
| **Cover Photo Edit Permission** | This metric captures whether users are allowed to upload a profile photo. If the Profile Photo option is enabled, users can upload a profile photo. |

### API Key metrics log

The **API Key metrics** log file (`api_key.csv`) provides information about [API keys](Web_API_Authentication.html#api-key-authentication).

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number of Active API Keys in the System** | The number of active API keys in your environment. |
| **Number of Inactive API Keys in the System** | The number of inactive API keys in your environment. |
| **Number of Service Accounts** | The number of groups in the Service Accounts system group in your environment. |
| **Max Number of Keys Associate With One Account** | The maximum number of API keys associated with a single service account in your environment. |
| **Avg Number of Keys Associate per Account** | The average number of API keys associated with a single service account in your environment. |

### Application documentation metrics log

The **Application documentation** log file (`application_documentation.csv`) provides information about developer use of the [application documentation](application-settings.html#application-documentation) capability.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Applications with Documentation** | Total number of applications to which developers have added at least one document or link. |
| **Applications with Documents** | Number of applications to which developers have added at least one document. |
| **Applications with Links** | Number of applications to which developers have added at least one link. |
| **Applications with Between 1 and 5 Documents** | Number of applications to which developers have added between 1 and 5 documents or links. |
| **Applications with Between 6 and 10 Documents** | Number of applications to which developers have added between 6 and 10 documents or links. |

### Cache metrics log

The **Cache metrics** log file (`cache.csv`) provides information about application server caches. One line will be written to the log file for every cache that has been initialized.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Cache Name** | Name of the cache. |
| **Total Objects** | Total number of objects in the cache. |
| **Hit Count** | Number of times the data was served from the cache. |
| **Miss Count** | Number of times the data was not found in the cache. |
| **Remove Count** | Number of times objects have been removed from the cache. |
| **Update Count** | Number of times objects in the cache have been updated. |

### Cloud database schema metrics log

**Note:**  This log applies to Appian Cloud users only.

The **Cloud Database Schema metrics** log file (`cloud_db_schemas.csv`) captures information about the different schemas in your Appian Cloud database. A new row of data is captured in the file every thirty days or when your environment is restarted.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Schema Name Hash** | Hashed value of the schema name to identify each schema in your environment. |
| **Table Count** | Number of tables created in the schema. |
| **Column Count** | Total number of columns in the schema across all the tables. |
| **Row Count** | Total number of rows in the schema across all the tables. |

### Connected system metrics log

The **Connected System metrics** log (`connected_systems.csv`) provides information about connected systems.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number of Connected Systems** | Total number of connected system objects in all applications. |
| **Number of Connected Systems with Custom Logos** | Number of connected systems that have custom system logos. |
| **Number of Connected Systems with OAuth Authentication** | Number of connected systems configured with OAuth 2.0: Authorization Code Grant authentication. |
| **Number of Connected Systems with Basic Authentication** | Number of connected systems configured with HTTP Basic Authentication. |
| **Number of Amazon Machine Learning Connected Systems** | Number of Amazon Machine Learning Connected Systems. |
| **Number of Connected Systems with Base URL** | Number of connected systems configured with a Base URL. |
| **Number of HTTP Connected Systems** | The number of HTTP connected systems. |
| **Number of OpenAPI Connected Systems** | The number of OpenAPI connected systems. |
| **Number of Connected System Versions** | Total number of versions for all connected system objects. |
| **Total Size of Connected Systems (bytes)** | Total size of all connected system objects measured in bytes. |
| **Number of Connected Systems using the Integration SDK** | Number of connected systems that were built using the integration SDK. |
| **Number of Connected Systems with Api Key Authentication** | Number of connected systems configured with API Key authentication. |
| **Number of Connected Systems with Client Credentials Authentication** | Number of connected systems configured with OAuth 2.0: Client Credentials Grant authentication. |
| **Number of Connected Systems with GSA Authentication without Domain Wide Delegation** | Number of connected systems configured with Google Service Account authentication that doesn't impersonate a G Suite domain user. |
| **Number of Connected Systems with GSA Authentication and Domain Wide Delegation** | Number of connected systems configured with Google Service Account authentication that does impersonate a G Suite domain user. |
| **Number of Connected Systems with AWS Signature V4 Authentication** | Number of connected systems configured with AWS Signature V4 authentication. |
| **Number of Connected Systems with OAuth 2.0 SAML Bearer Assertion as Authorization** | Number of connected systems configured with OAuth 2.0 SAML Bearer Assertion authorization. |
| **Number of Connected Systems that Use Custom HTTP Headers with the OAuth 2.0 SAML Bearer Assertion Flow** | Number of connected systems configured with custom HTTP headers with OAuth 2.0 SAML Bearer Assertion flow authorization. |
| **Number of Web Service Connected Systems Displayed as a Shortcut in Record Type Creation Wizard** | Number of connected systems configured as [data source shortcuts](configure-record-data-source.html#create-data-source-shortcuts). This number excludes data source connected systems. |
| **Number of Data Source Connected Systems Displayed as a Shortcut in Record Type Creation Wizard** | Number of [data source connected systems](data-source-connected-systems.html) configured as data source shortcuts. |

### Connected system aggregated log

The connected system aggregated log (`connected_systems_aggregated.csv`) provides information about connected systems and connected system plug-ins.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Connected System ID** | Unique identifier for the Connected System plug-in template. |
| **Connected System Count** | Number of connected systems of this type in the system. |
| **Total Count** | Number of connected systems of this type in the system, including past versions. |
| **Average Size (bytes)** | Average amount of disk space used by a Connected System of this type. |
| **Minimum Size (bytes)** | Smallest amount of disk space used by a Connected System of this type. |
| **Maximum Size (bytes)** | Largest amount of disk space used by a Connected System of this type. |
| **Total Size (bytes)** | Total disk space used by connected systems of this type. |

### Content metrics log

The **Content metrics** log (`content.csv`) records metrics on data stored in the Content Engine Server.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Content** | Total number of content objects of all types in the system. |
| **Documents** | Number of documents uploaded to the system, including past versions. |
| **Folders** | Number of folders in within knowledge centers. |
| **Personal Knowledge Centers** | Number of knowledge centers within the Personal and Teams folder. |
| **Community Knowledge Centers** | Number of knowledge centers within the Communities folder. |
| **Communities** | Number of communities within the Communities folder. |
| **Rules and Constants** | Number of rules and constants in the system, including past versions. |
| **Applications** | Number of applications in the system. |
| **Custom Content** | Number of objects created via the CustomContent API. |
| **Total Downloads** | Total number of times users have downloaded documents from the system. |
| **Users Who Have Downloaded** | Number of users who have downloaded at least one document. |
| **Users Who Have Uploaded** | Number of users who have uploaded at least one document. |
| **Most Downloads of a Single Document** | Number of times the most downloaded document has been downloaded. |
| **Offline Interfaces** | Number of interfaces that are made available for offline mobile. |

### Content object size metrics log

The content object size metrics log (`rules.csv`) records sizing information about individual object types stored in the Content Engine Server.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Constants** | Total number of constant objects in the system. |
| **Total Expression Rules** | Total number of expression rule objects in the system. |
| **Total Interfaces** | Total number of interface objects in the system. |
| **Total Query Rules** | Total number of query rule objects in the system. |
| **Total Decisions** | Total number of decision objects in the system. |
| **Total Integrations** | Total number of integration objects in the system. |
| **Total Rule Folders** | Total number of rule folders in the system. |
| **Max Constant Versions** | Maximum number of versions for a single constant. |
| **Avg Constant Versions** | Average number of versions for a single constant. |
| **Max Expression Rule Versions** | Maximum number of versions for a single expression rule. |
| **Avg Expression Rule Versions** | Average number of versions for a single expression rule. |
| **Max Interface Versions** | Maximum number of versions for a single interface. |
| **Avg Interface Versions** | Average number of versions for a single interface. |
| **Max Query Rule Versions** | Maximum number of versions for a single query rule. |
| **Avg Query Rule Versions** | Average number of versions for a single query rule. |
| **Max Decision Versions** | Maximum number of versions for a single decision. |
| **Avg Decision Versions** | Average number of versions for a single decision. |
| **Max Integration Versions** | Maximum number of versions for a single integration. |
| **Avg Integration Versions** | Average number of versions for a single integration. |
| **Max Constant Rolemap Entries** | Maximum number of users and groups referenced in any constant's security rolemap. |
| **Avg Constant Rolemap Entries** | Average number of users and groups referenced in any constant's security rolemap. |
| **Max Expression Rule Rolemap Entries** | Maximum number of users and groups referenced in any expression rule's security rolemap. |
| **Avg Expression Rule Rolemap Entries** | Average number of users and groups referenced in any expression rule's security rolemap. |
| **Max Interface Rolemap Entries** | Maximum number of users and groups referenced in any interface's security rolemap. |
| **Avg Interface Rolemap Entries** | Average number of users and groups referenced in any interface's security rolemap. |
| **Max Query Rule Rolemap Entries** | Maximum number of users and groups referenced in any query rule's security rolemap. |
| **Avg Query Rule Rolemap Entries** | Average number of users and groups referenced in any query rule's security rolemap. |
| **Max Decision Rolemap Entries** | Maximum number of users and groups referenced in any decision's security rolemap. |
| **Avg Decision Rolemap Entries** | Average number of users and groups referenced in any decision's security rolemap. |
| **Max Integration Rolemap Entries** | Maximum number of users and groups referenced in any integration's security rolemap. |
| **Avg Integration Rolemap Entries** | Average number of users and groups referenced in any integration's security rolemap. |
| **Max Rule Folder Rolemap Entries** | Maximum number of users and groups referenced in any rule folder's security rolemap. |
| **Avg Rule Folder Rolemap Entries** | Average number of users and groups referenced in any rule folder's security rolemap. |
| **Max Expression Rule Expression Size** | Maximum number of characters in the expression definition of a single expression rule. |
| **Avg Expression Rule Expression Size** | Average number of characters in the expression definition of a single expression rule. |
| **Max Interface Expression Size** | Maximum number of characters in the expression definition of a single interface. |
| **Avg Interface Expression Size** | Average number of characters in the expression definition of a single interface. |
| **Max Decision Expression Size** | Maximum number of characters in the expression definition of a single decision. |
| **Avg Decision Expression Size** | Average number of characters in the expression definition of a single decision. |
| **Max Integration Expression Size** | Maximum number of characters in the expression definition of a single integration. |
| **Avg Integration Expression Size** | Average number of characters in the expression definition of a single integration. |
| **Total Rule Inputs in Interfaces** | Total number of rule inputs in all interface objects in this environment. |
| **Total Rule Inputs in Expression Rules** | Total number of rule inputs in all expression rule objects in this environment. |
| **Total Rule Inputs in Integrations** | Total number of rule inputs in all integration objects in this environment. |
| **Total Rule Inputs in Decisions** | Total number of rule inputs in all decision objects in this environment. |
| **Total Rule Input Descriptions in Interfaces** | Total number of rule inputs with a description in all interface objects in this environment. |
| **Total Rule Input Descriptions in Expression Rules** | Total number of rule inputs with a description in all expression rule objects in this environment. |
| **Total Rule Input Descriptions in Integrations** | Total number of rule inputs with a description in all integration objects in this environment. |
| **Total Rule Input Descriptions in Decisions** | Total number of rule inputs with a description in all decision objects in this environment. |

### Control panel object metrics log

The control panel object metrics log (`controlPanel.csv`) provides information about the control panel objects within an environment.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Total number of control panel objects in the system** | The total number of all control panel objects in the environment. |
| **The number of the most hierarchy items within any control panel object in the environment** | The highest number of hierarchy items within any control panel object in the environment. |
| **The number of the least hierarchy items within any control panel object in the environment** | The lowest number of hierarchy items within any control panel object in the environment. |
| **The average number of hierarchy items per control panel object in the environment** | The average number of hierarchy items per control panel object in the environment. |
| **Number of control panel objects with 0-5 hierarchy items** | The number of control panel objects in the environment that contain between 0 and 5 hierarchy items. |
| **Number of control panel objects with 6-10 hierarchy items** | The number of control panel objects in the environment thatcontain between 6 and 10 hierarchy items. |
| **Number of control panel objects with 11-20 hierarchy items** | The number of control panel objects in the environment that contain between 11 and 20 hierarchy items. |
| **Number of control panel objects with 21-30 hierarchy items** | The number of control panel objects in the environment that contain between 21 and 30 hierarchy items. |
| **Number of control panel objects with 31-40 hierarchy items** | The number of control panel objects in the environment that contain between 31 and 40 hierarchy items. |
| **Number of control panel objects with 41-50 hierarchy items** | The number of control panel objects in the environment that contain between 41 and 50 hierarchy items. |
| **Number of control panels objects with over 50 hierarchy items** | The number of control panel objects in the environment that contain more than 50 hierarchy items. |
| **Total number of control panel objects with 2 Levels** | The number of control panel objects that use only types. |
| **The number of the most custom configurations within any control panel object in the environment** | The hightest number of custom configurations contained in any control panel object in the environment. |
| **The number of the least custom configurations within any control panel object in the environment** | The lowest number of custom configurations contained in any control panel object in the environment. |
| **The average number of custom configurations per control panel object in the environment** | The average number of custom configurations per control panel objects in the environment. |
| **Number of control panel objects with 0-2 custom configurations** | The number of control panel objects that contain between 0 and 2 custom configurations. |
| **Number of control panel objects with 3-5 custom configurations** | The number of control panel objects that contain between 3 and 5 custom configurations. |
| **Number of control panel objects with 6-10 custom configurations** | The number of control panel objects that contain between 6 and 10 custom configurations. |
| **Number of control panel objects with over 10 custom configurations** | The number of control panel objects that contain more than 10 custom configurations. |
| **The number of custom configs with global setting** | The number of custom configurations in the environment using the global setting. |
| **The number of custom configs with all levels setting** | The number of custom configurations in the environment using the all levels setting. |
| **The number of custom configs with type only setting** | The number of custom configurations in the environment using the type only setting. |
| **The number of the most interface types within any control panel object in the environment** | The highest number of interface types contained in any control panel object in the environment. |
| **The number of the least interface types within any control anel object in the environment** | The lowest number of interface types contained in any control panel object in the environment. |
| **The average number of interface types per control panel object in the environment** | The average number of interface types per control panel object in the environment. |
| **Number of control panel objects with 0-2 interface types** | The number of control panel objects that contain between 0 and 2 interface types. |
| **Number of control panel objects with 3-5 interface types** | The number of control panel objects that contain between 3 and 5 interface types. |
| **Number of control panel objects with 6-10 interface types** | The nummber of control panel objects that contain between 6 and 10 interface types. |
| **The number of the most Related Data M:1 within any control panel object in the environment** | The hightest number of many-to-one related record types associated with a control panel object in the environment. |
| **The number of the least Related Data M:1 within any control panel object in the environment** | The lowest number of many-to-one related record types associated with a control panel object in the environment. |
| **The average number of Related Data M:1 per control panel object in the environment** | The average number of many-to-one related record types associated with a control panel object in the environment. |
| **Number of control panel objects with 0-2 Related Data M:1** | The number of control panel objects in the environemnt that contain between 0 and 2 many-to-one related record types. |
| **Number of Control Panels with 3-5 Related Data M:1** | The number of control panel objects in the environment that contain between 3 and 5 many-to-one related record types. |
| **Number of Control Panels with 6-10 Related Data M:1** | The nummber of control panel objects in the environment that contain between 6 and 10 many-to-one related record types. |
| **Number of Control Panels with over 10 Related Data M:1** | The number of control panel objects in the environment that contain more that 10 many-to-one related record types. |

### Data service metrics logs

The data service metrics logs capture information about how the processes that make up the data service component of the Appian platform are functioning so that Appian Technical Support can help troubleshoot issues. The log files contain quantitative data only and no sensitive information.

The following files in the `data-metrics` directory are data service metrics logs:

-   `data-server-client.csv` - Metrics for the calls made by the application through data service client.
-   `hs-gateway.csv` - Metrics for the historical store gateway process.
-   `rts-gateway-<number>.csv` - Metrics for the real-time store gateway process.
-   `watchdog.csv` - Metrics for the resource utilization by all the data service processes.
-   `sync-gateway.csv` - Metrics related to the data synchronization process between the data service nodes, only applicable for highly available installation.

**Tip:**  To learn more about the performance of the queries to your record types, see the [**Query Performance** tab](monitoring_view.html#query-performance) of the **Monitor** view.

### Data source metrics log

The **Data source metrics** log file (`data_sources.csv`) captures information about various types of data sources that are created in your environment through the Admin Console, the application server, or connected systems.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total business data sources** | Count of business data sources in your environment. |
| **Administration console data sources** | Count of data sources configured via Admin Console. |
| **Application server data sources** | Count of data sources configured via application server. |
| **MySQL data sources** | Number of MySQL data sources in your environment. |
| **SQL Server data sources** | Number of SQL Server data sources in your environment. |
| **Oracle data sources** | Number of Oracle data sources in your environment. |
| **DB2 data sources** | Number of DB2 data sources in your environment. |
| **MySQL versions** | Versions of MySQL data sources in your environment. |
| **SQL Server versions** | Versions of SQL Server data sources in your environment. |
| **Oracle versions** | Versions of Oracle data sources in your environment. |
| **DB2 versions** | Versions of DB2 data sources in your environment. |
| **PostgreSQL data sources** | Number of PostgreSQL data sources in your environment. |
| **MariaDB data sources** | Number of MariaDB data sources in your environment. |
| **PostgreSQL versions** | Versions of PostgreSQL data sources in your environment. |
| **MariaDB versions** | Versions of MariaDB data sources in your environment. |
| **Unknown data sources** | Data sources with unknown database information. |
| **Data sources of connected system type** | Number of data sources configured via connected systems. |
| **Administration console data source versions** | Versions of data sources configured via Admin Console. |
| **Connected system data source versions** | Versions of data sources configured via connected systems. |
| **Application server data source versions** | Versions of data sources configured via application server. |
| **Unique connected system role maps** | Number of unique role map security configurations across data sources of connected system type. |

### Data source connection pool metrics log

The **Data source connection pool metrics** log file (`data_source_pool.csv`) captures the connection pool information for each data source in your environment.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Data Source ID** | Unique identifier for each data source in your environment |
| **Active** | Number of connections borrowed from this pool. |
| **Idle** | Number of open connections idle in this pool. |
| **Waiting** | Number of threads blocked waiting for a connection from the pool. |
| **Total Created** | The total number of connections created for this pool over the lifetime of the pool. |
| **Total Borrowed** | The total number of connections successfully borrowed from this pool over the lifetime of the pool. |
| **Total Destroyed** | The total number of connections destroyed by this pool over the lifetime of the pool. |
| **Total Evicted** | The total number of connections destroyed by the evictor associated with this pool over the lifetime of the pool. |
| **Max Total Connection Pool** | The maximum number of connections that can be allocated by the pool at a given time. |

### Data type metrics log

The **Data type metrics** log file (`types.csv`) provides information on the system and custom data types created in the system.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Types** | Number of types in the system, both system and custom. |
| **System Types** | Number of types built into the system. |
| **Namespaces** | Number of namespaces containing types, including the built-in system type namespace. |
| **Total Custom Types** | Number of types created by designers, including list types and deactivated types. |
| **Custom Complex Types** | Number of active custom complex types, not including list types. |
| **Custom List Types** | Number of active custom list types. |
| **Custom Deactivated Types** | Number of custom types that are deactivated, including older versions of current custom types. |
| **Visible Custom Types** | Number of custom types not marked has hidden and potentially available for selection as a type for node inputs, node outputs, process and data store entities. |
| **Designer-Created Custom Types** | Number of custom types created in the Data Type Designer. Types created via XSD import are not included. |
| **Web Service Custom Types** | Number of custom types created from a web service's WSDL instead of the Data Type Designer or XSD import. |
| **Temporary Types** | Number of web service types that are not yet associated with a published process model. |
| **Importing Types** | Number of types that are in the process of being imported. |

### Decision metrics log

The **Decision metrics** log file (`decisions.csv`) provides information on the Decisions created in the system.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Average Number of Rows** | Average number of rows per Decision. |
| **Max Number of Rows** | Maximum number of rows in a single Decision. |
| **Decisions With 25 Rows or Less** | Number of Decisions with 25 or less rows. |
| **Decisions With 26 to 50 Rows** | Number of Decisions with between 26 and 50 rows. |
| **Decisions With More Than 50 Rows** | Number of Decisions with more than 50 rows. |
| **Average Number of Inputs** | Average number of inputs per Decision. |
| **Max Number of Inputs** | Maximum number of inputs in a single Decision. |
| **Average Number of Outputs** | Average number of outputs per Decision. |
| **Max Number of Outputs** | Maximum number of outputs in a single Decision. |
| **Decisions Using List of Values for Inputs** | Number of Decisions with at least one list of values as an input. |
| **Decisions Using List of Values for Outputs** | Number of Decisions with at least one list of values as an output. |
| **Decisions Using Appian Object Outputs** | Number of Decisions with at least one output of type Document, Folder, Group, Process Model, User, or User or Group. |
| **Decisions Using Between Exclusive Operator** | Number of Decisions using the Between exclusive operator at least once. |
| **Unique Hit Policy Decisions** | Number of Decisions using the Unique hit policy. |
| **Rule Order Hit Policy Decisions** | Number of Decisions using the Rule Order hit policy. |
| **First Hit Policy Decisions** | Number of Decisions using the First hit policy. |

### Design guidance metrics log

The **Design guidance metrics** log (`design_guidance.csv`) records information about design guidance (warnings and [recommendations](appian-recommendations.html)) across your environment.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Guidance Count** | Number of active and dismissed guidance (warnings and recommendations). |
| **Active Guidance Count** | Number of active guidance. (Equal to the sum of **Active Security Warnings Count** plus **Active Recommendations Count**). |
| **Dismissed Guidance Count** | Number of dismissed guidance. |
| **Migrated Guidance Count** | Number of new guidance flagged on existing objects during application server start up. |
| **Total Objects with Guidance** | Number of objects with at least one active OR at least one dismissed guidance. (Equal to the sum of **Objects with Active Guidance** plus **Objects with Dismissed Guidance** minus **Objects with Both Active and Dismissed Guidance Count**). |
| **Objects with Active Guidance Count** | Number of objects with at least one active guidance. |
| **Objects with Dismissed Guidance Count** | Number of objects with at least one dismissed guidance. |
| **Objects with Both Active and Dismissed Guidance Count** | Number of objects with at least one active AND at least one dismissed guidance. (Equal to the intersection of **Objects with Active Guidance** and **Objects with Dismissed Guidance**). |
| **Active Security Warnings** | Number of active security warnings. |
| **Active Recommendations Count** | Number of active recommendations. |
| **Total Objects with Recommendations** | Number of objects with at least one active OR dismissed recommendation. (Equal to the sum of **Objects with Active Recommendations Count** plus **Objects with Dismissed Guidance Count** minus their intersection). |
| **Objects with Active Security Warnings Count** | Number of objects with at least one active security warning. |
| **Objects with Active Recommendations Count** | Number of objects with at least one active recommendation. |

#### Design guidance by finding metrics log

The **Design guidance by finding metrics** log (`design_guidance_by_finding.csv`) records information about the various findings (e.g. specific warnings and [recommendations](appian-recommendations.html)) across your environment.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Finding** | Finding being tracked (e.g. specific warning or recommendation). |
| **Total Guidance Count** | Number of active and dismissed guidance for the given finding. |
| **Active Guidance Count** | Number of active guidance for the given finding. |
| **Dismissed Guidance Count** | Number of dismissed guidance for the given finding. |

#### Design guidance by object type metrics log

The **Design guidance by object type metrics** log (`design_guidance_by_object_type.csv`) records information about design guidance (warnings and [recommendations](appian-recommendations.html)) for each design object type in your environment.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Object Type** | Design object type being tracked. |
| **Total Guidance Count** | Number of active and dismissed guidance (warnings and recommendations) for all objects of the given type. |
| **Active Guidance Count** | Number of active guidance for all objects of the given type. (Equal to the sum of **Active Security Warnings Count** plus **Active Recommendations Count**). |
| **Dismissed Guidance Count** | Number of dismissed guidance for all objects of the given type. |
| **Migrated Guidance Count** | Number of new guidance flagged on existing objects of the given type during application server start up. |
| **Total Objects with Guidance** | Number of objects of the given type with at least one active OR at least one dismissed guidance. (Equal to the sum of **Objects with Active Guidance** plus **Objects with Dismissed Guidance** minus **Objects with Both Active and Dismissed Guidance Count**). |
| **Objects with Active Guidance Count** | Number of objects of the given type with at least one active guidance. |
| **Objects with Dismissed Guidance Count** | Number of objects of the given type with at least one dismissed guidance. |
| **Objects with Both Active and Dismissed Guidance Count** | Number of objects of the given type with at least one active AND at least one dismissed guidance. (Equal to the intersection of **Objects with Active Guidance** and **Objects with Dismissed Guidance**). |
| **Active Security Warnings Count** | Number of active security warnings for all objects of the given type. |
| **Active Recommendations Count** | Number of active recommendations for all objects of the given type. |
| **Total Objects with Recommendations** | Number of objects of the given type with at least one active OR dismissed recommendation. (Equal to the sum of **Objects with Active Recommendations Count** plus **Objects with Dismissed Guidance Count** minus their intersection). |
| **Objects with Active Security Warnings Count** | Number of objects of the given type with at least one security warning. |
| **Objects with Active Recommendations Count** | Number of objects of the given type with at least one active recommendation. |

### Design library metrics log

The **Design library** log file (`design_library.csv`) provides information about the number of interfaces you've added to the design library in your environment.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Interfaces in the Design Library** | Total number of interfaces in the design library for the environment. |
| **Applications with Interfaces in the Design Library** | Total number of applications that contain interfaces from the design library for the environment. |
| **Applications with 25 or Fewer Interfaces in the Design Library** | Number of applications that contain 25 or fewer interfaces from the design library for the environment. |
| **Applications with 26 to 50 Interfaces in the Design Library** | Number of applications that contain between 26 and 50 interfaces from the design library for the environment. |
| **Applications with 51 to 100 Interfaces in the Design Library** | Number of applications that contain between 51 and 100 interfaces from the design library for the environment. |
| **Applications with More than 100 Interfaces in the Design Library** | Number of applications that contain more than 100 interfaces from the design library for the environment. |

### Design object versions metrics log

The **Design object versions** log file (`design_object_versions.csv`) provides information on the version history created on export for different design objects. This version history is used for determining [inspection statuses](compare-deployment-packages.html#object-comparison-statuses) and is different than the versions that designers can access for interfaces, process models, etc.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Object Type** | Design object type being tracked. |
| **Total Count** | Total number of objects of the given type with version history generated by export. |
| **Min Number of Versions** | Minimum number of versions for a single object of the given type. |
| **Average Number of Versions** | Average number of versions for a single object of the given type. |
| **Max Number of Versions** | Maximum number of versions for a single object of the given type. |

### DevOps Infrastructure metrics log

The **DevOps Infrastructure Management** log (`devops_infrastructure.csv`) provides information about the number of environments in your DevOps Infrastructure.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number of Enabled Environments** | The number of environments in your infrastructure with communication enabled. |
| **Number of Disabled Environments** | The number of environments in your infrastructure with communication disabled. |

### Disk usage metrics logs

The **Engine disk usage metrics** log (`engine_disk_usage.csv`) records the disk space used and available in a number of directories important to the engine server. One line is logged per monitored directory.

**Note:**  This log is disabled for Appian Cloud customers and will not collect new data.

The directories monitored are:

| Directory Name | Location |
| --- | --- |
| **Logs** | `<AE_HOME>/logs/` |
| **Archived Processes** | `<AE_HOME>/server/archived-process/` |
| **Engine Gateways** | By default:-   one per non-process engine in `<AE_HOME>/server/[engine name]/gw1`
-   one for process design in `<AE_HOME>/server/process/design/gw1/`
-   three for analytics in `<AE_HOME>/server/process/analytics/[engine id]/gw1/`
-   three for process execution in `<AE_HOME>/server/process/execution/[engine id]/gw1/` |

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Directory** | Name of the monitored directory. |
| **KDB File Count** | Number of KDB files in the directory. |
| **Partition Space Available (MB)** | Amount of space used and free space on the partition mounting this directory. |
| **Partition Space Used (MB)** | Amount of space used on the partition mounting this directory. |
| **Directory Space Used (MB)** | Amount of space used on by the contents of this directory, including subdirectories. |

### Expression rule test cases metrics log

The **Expression rule test cases metrics** log file (`expression_rule_test_cases.csv`) provides information about the amount test cases and the types of assertions for expression rules in the system. All counts are for the current versions of every expression rule and not any previous versions of the rules.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number of Expression Rules** | Total number of expression rules in the system, not including all versions of the rules. |
| **Rules with 1 Test Case** | Number of expression rules with only 1 test case. |
| **Rules with Between 2 and 5 Test Cases** | Number of expression rules with between 2 and 5 test cases. |
| **Rules with Between 6 and 10 Test Cases** | Number of expression rules with between 6 and 10 test cases. |
| **Rules with Between 11 and 25 Test Cases** | Number of expression rules with between 11 and 25 test cases. |
| **Rules with more than 25 Test Cases** | Number of expression rules with greater than 25 test cases. |
| **Mean Test Cases** | Average number of test cases per expression rule. |
| **Max Test Cases** | Maximum number of test cases for an expression rule in the system. |
| **Test Cases with No Assertions** | Total number of test cases that are not asserting a specific output or expression. |
| **Test Cases with Asserted Outputs** | Total number of test cases that assert a specific output. |
| **Test Cases with Expression Assertions** | Total number of test cases with expression assertions. |

### File extension blocking metrics log

The **File extension blocking** log (`file_extension_blocking.csv`) records metrics on file extension blocking settings in the [Admin Console](Appian_Administration_Console.html#file-upload). This log can be used to track the level of file security controls over time.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Blocking Setting** | The type of file extension list configured. Options: "Block List", "Allow List" |
| **Number of File Extensions Specified** | The number of unique extensions specified |
| **Files Without Extension Setting** | The value of the setting for whether to allow or block files without extensions. Options: "Enabled" or "Disabled" |
| **File Type Verification Setting** | The value of the setting for whether to block any file with an extension that does not match its type. Options: "Enabled" or "Disabled" |

### Group metrics log

The **Group metrics** log (`groups.csv`) provides information about groups and group types.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Groups** | Number of groups in the system. |
| **Group Types** | Number of group types in the system. |
| **Custom Groups** | Number of groups of type Custom. |
| **Department Groups** | Number of groups of type Department. |
| **Team Groups** | Number of groups of type Team. |
| **Groups with Rules** | Number of groups with at least one rule. |
| **Maximum Groups per Group Type** | Maximum number of groups per group type (excluding Custom, Department, and Team). |
| **Average Groups per Group Type** | Average number of groups per group type (excluding Custom, Department, and Team). |
| **Maximum Group Type Attributes** | Maximum number of attributes on a single group type. |
| **Groups with Parent** | Number of groups with a parent group defined. |

### Health Check metrics log

The **Health Check metrics** log file (`health_check.csv`) provides information about [Health Check](health-check.html) settings and runs.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Health Check Enabled** | Indicates whether Health Check has been set up. |
| **Production Environment** | Indicates whether the environment was identified as a production environment. |
| **Automatic Upload Enabled** | Indicates whether automatic upload has been enabled. |
| **Autoapprove Enabled** | Indicates whether autoapproval for data reviews has been enabled. |
| **Scheduling Enabled** | Indicates whether scheduling has been enabled. |
| **Scheduling Frequency** | Frequency of scheduled runs: 1 (every week), 2 (every other week), 3 (every three weeks), 4 (every four weeks). |
| **Scheduling Week Day** | Day of the week on which runs are scheduled. |
| **Scheduling Hour** | Hour at which runs are scheduled (in GMT time). |
| **Health Check Runs** | Total number of Health Check runs (includes successful, canceled, and failed runs). |
| **Direct User Viewers** | Number of users added directly to the Health Check Viewers group. |
| **Indirect User Viewers** | Number of users that are indirect members of the Health Check Viewers group. |
| **Total User Viewers** | Total number of users in the Health Check Viewers group (sum of direct and indirect users). |
| **Direct Group Viewers** | Number of groups added directly to the Health Check Viewers group. |
| **Indirect Group Viewers** | Number of groups that are indirect members of the Health Check Viewers group. |
| **Total Group Viewers** | Total number of groups in the Health Check Viewers group (sum of direct and indirect groups). |

### Integration metrics log

The **Integration metrics** log (`integrations.csv`) provides information about integrations.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number of Integrations** | Total number of integration objects in all applications. |
| **Number of Read Integrations** | Number of integrations that query data. |
| **Number of Write Integrations** | Number of integrations that modify data. |
| **Number of Integrations Using Expressions** | Number of integrations that use expressions in their configuration fields (other than the Body). |
| **Number of Integrations Using Connected Systems** | Number of integrations that use connected systems. |
| **Average Number of Integration Inputs** | Average number of inputs per integration. |
| **Max Number of Integration Inputs** | Maximum number of inputs in a single integration. |
| **Number of Integrations with Response Body Conversion** | Number of integrations that convert a JSON response body to an Appian value. |
| **Number of Integrations with Custom Error Handling** | Number of integrations that use custom error handling. |
| **Number of Amazon Machine Learning Integrations** | Number of integrations that leverage an Amazon Machine Learning connected system. |
| **Number of Integrations with Default Test Values** | Number of integrations that have a set of default test values saved. |
| **Number of Integrations that can inherit Base URL** | The number of integrations that use a connected system with a base URL configured. Counts even those that choose to build a URL from scratch. |
| **Number of Integrations inheriting Base URL** | The number of integrations that inherit their base URL from a connected system. |
| **Number of Integrations using Active OpenAPI Connected Systems** | The number of integrations that use an OpenAPI connected system. |
| **Maximum Number of Integrations per Active OpenAPI Connected System** | The maximum number of integrations that use a single OpenAPI connected system. |
| **Average Number of Integrations per Active OpenAPI Connected System** | The average number of integrations that use a single OpenAPI connected system. |
| **Total Size of Integration Expressions (bytes)** | Total size of all integrations measured in bytes. Only the latest version is counted. |
| **Total Number of Versions** | Total number of versions for all integrations |

### Integration aggregated log

The **Integration aggregated metrics** log (`integrations-aggregated.csv`) provides information about integrations.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Integration Template ID** | Unique identifier for the Integration template. |
| **Integration Count** | Number of Integrations of this type in the system. |
| **Total Count** | Number of Integrations of this type in the system, including past versions. |
| **Average Size (bytes)** | Average amount of disk space used by a Integration objects of this type. |
| **Minimum Size (bytes)** | Smallest amount of disk space used by a Integration objects of this type. |
| **Maximum Size (bytes)** | Largest amount of disk space used by a Integration objects of this type. |
| **Total Size (bytes)** | Total disk space used by Integration objects of this type. |

### Locales log

The **Locales log** (`locales.csv`) provides information about system and user locale configuration.

Metrics include the following:

<table class="appianTable"><tbody><tr><td>Metric</td><td>Description</td></tr><tr><td><b>Timestamp</b></td><td>Date and time when the metric is taken.</td></tr><tr><td><b>Primary Locale</b></td><td>Name of the primary locale for your environment.</td></tr><tr><td><b>Site-wide primary locale</b></td><td><i>True</i> if the primary locale is configured to always override users’ selected locale, otherwise false.</td></tr><tr><td><b>Default locale user count</b></td><td>Number of users who have selected no locale and use the primary locale by default.</td></tr><tr><td><b>English (US) [en_US] is enabled</b></td><td><i>True</i> if English (US) [en_US] is enabled in the system, otherwise false.</td></tr><tr><td><b>English (US) [en_US] user count</b></td><td>Number of users who have selected English (US) [en_US] as their locale.</td></tr><tr><td><b>Arabic [ar] is enabled</b></td><td><i>True</i> if Arabic [ar] is enabled in the system, otherwise false.</td></tr><tr><td><b>Arabic [ar] user count</b></td><td>Number of users who have selected Arabic [ar] as their locale.</td></tr><tr><td><b>German [de] is enabled</b></td><td><i>True</i> if German [de] is enabled in the system, otherwise false.</td></tr><tr><td><b>German [de] user count</b></td><td>Number of users who have selected German [de] as their locale.</td></tr><tr><td><b>English (UK) [en_GB] is enabled</b></td><td><i>True</i> if English (UK) [en_GB] is enabled in the system, otherwise false.</td></tr><tr><td><b>English (UK) [en_GB] user count</b></td><td>Number of users who have selected English (UK) [en_GB] as their locale.</td></tr><tr><td><b>Greek [el] is enabled</b></td><td><i>True</i> if Greek [el] is enabled in the system, otherwise false.</td></tr><tr><td><b>Greek [el] user count</b></td><td>Number of users who have selected Greek [el] as their locale.</td></tr><tr><td><b>Spanish [es] is enabled</b></td><td><i>True</i> if Spanish [es] is enabled in the system, otherwise false.</td></tr><tr><td><b>Spanish [es] user count</b></td><td>Number of users who have selected Spanish [es] as their locale.</td></tr><tr><td><b>French (Canada) [fr_CA] is enabled</b></td><td><i>True</i> if French (Canada) [fr_CA] is enabled in the system, otherwise false.</td></tr><tr><td><b>French (Canada) [fr_CA] user count</b></td><td>Number of users who have selected French (Canada) [fr_CA] as their locale.</td></tr><tr><td><b>French (Switzerland) [fr_CH] is enabled</b></td><td><i>True</i> if French (Switzerland) [fr_CH] is enabled in the system, otherwise false.</td></tr><tr><td><b>French (Switzerland) [fr_CH] user count</b></td><td>Number of users who have selected French (Switzerland) [fr_CH] as their locale.</td></tr><tr><td><b>French (France) [fr_FR] is enabled</b></td><td><i>True</i> if French (France) [fr_FR] is enabled in the system, otherwise false.</td></tr><tr><td><b>French (France) [fr_FR] user count</b></td><td>Number of users who have selected French (France) [fr_FR] as their locale.</td></tr><tr><td><b>Hebrew [iw] is enabled</b></td><td><i>True</i> if Hebrew [iw] is enabled in the system, otherwise false.</td></tr><tr><td><b>Hebrew [iw] user count</b></td><td>Number of users who have selected Hebrew [iw] as their locale.</td></tr><tr><td><b>Italian [it] is enabled</b></td><td><i>True</i> if Italian [it] is enabled in the system, otherwise false.</td></tr><tr><td><b>Italian [it] user count</b></td><td>Number of users who have selected Italian [it] as their locale.</td></tr><tr><td><b>Japanese [ja] is enabled</b></td><td><i>True</i> if Japanese [ja] is enabled in the system, otherwise false.</td></tr><tr><td><b>Japanese [ja] user count</b></td><td>Number of users who have selected Japanese [ja] as their locale.</td></tr><tr><td><b>Korean [ko] is enabled</b></td><td><i>True</i> if Korean [ko] is enabled in the system, otherwise false.</td></tr><tr><td><b>Korean [ko] user count</b></td><td>Number of users who have selected Korean [ko] as their locale.</td></tr><tr><td><b>Dutch [nl] is enabled</b></td><td><i>True</i> if Dutch [nl] is enabled in the system, otherwise false.</td></tr><tr><td><b>Dutch [nl] user count</b></td><td>Number of users who have selected Dutch [nl] as their locale.</td></tr><tr><td><b>Polish [pl] is enabled</b></td><td><i>True</i> if Polish [pl] is enabled in the system, otherwise false.</td></tr><tr><td><b>Polish [pl] user count</b></td><td>Number of users who have selected Polish [pl] as their locale.</td></tr><tr><td><b>Portuguese [pt] is enabled</b></td><td><i>True</i> if Portuguese [pt] is enabled in the system, otherwise false.</td></tr><tr><td><b>Portuguese [pt] user count</b></td><td>Number of users who have selected Portuguese [pt] as their locale.</td></tr><tr><td><b>Russian [ru] is enabled</b></td><td><i>True</i> if Russian [ru] is enabled in the system, otherwise false.</td></tr><tr><td><b>Russian [ru] user count</b></td><td>Number of users who have selected Russian [ru] as their locale.</td></tr><tr><td><b>Swedish [sv] is enabled</b></td><td><i>True</i> if Swedish [sv] is enabled in the system, otherwise false.</td></tr><tr><td><b>Swedish [sv] user count</b></td><td>Number of users who have selected Swedish [sv] as their locale.</td></tr><tr><td><b>Thai [th] is enabled</b></td><td><i>True</i> if Thai [th] is enabled in the system, otherwise false.</td></tr><tr><td><b>Thai [th] user count</b></td><td>Number of users who have selected Thai [th] as their locale.</td></tr><tr><td><b>Turkish [tr] is enabled</b></td><td><i>True</i> if Turkish [tr] is enabled in the system, otherwise false.</td></tr><tr><td><b>Turkish [tr] user count</b></td><td>Number of users who have selected Turkish [tr] as their locale.</td></tr><tr><td><b>Chinese (Simplified) [zn_CH] is enabled</b></td><td><i>True</i> if Chinese (Simplified) [zn_CH] is enabled in the system, otherwise false.</td></tr><tr><td><b>Chinese (Simplified) [zn_CH] user count</b></td><td>Number of users who have selected Chinese (Simplified) [zn_CH] as their locale.</td></tr><tr><td><b>Chinese (Traditional) [zn_HK] is enabled</b></td><td><i>True</i> if Chinese (Traditional) [zn_HK] is enabled in the system, otherwise false.</td></tr><tr><td><b>Chinese (Traditional) [zn_HK] user count</b></td><td>Number of users who have selected Chinese (Traditional) [zn_HK] as their locale.</td></tr></tbody></table>

### News metrics log

The **News metrics** log (`news.csv`) records metrics on the number of feeds, posts, comments, and events produced and used on the News tab of the Tempo interface.

Metrics include the following:

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Feed Count** | Number of feeds in the system. |
| **Feed Opt-Out Count** | Total number of opted-out feeds across all users. |
| **Unique Users Who Have Opted-Out** | Number of users who have opted-out of at least one feed. |
| **Personalized Subscription Count** | Number of personalized feed subscriptions across all users. |
| **Unique Users With Personalized Subscriptions** | Number of users who have personalized subscriptions to at least one feed. |
| **Total Event Count** | Total number of feed events across all entry types but not including comments. |
| **Business Event Count** | Number of events posted by the Post Event to Feed Smart Service. |
| **System Event Count** | Number of events posted by the Post System Event to Feed Smart Service. |
| **Message Event Count** | Number of message events posted by users. |
| **Kudos Event Count** | Number of kudos given by users. |
| **Starred Event Count** | Number of starred events across all users. |
| **Unique Event Author Count** | Number of unique authors who have posted an event. |
| **Events with Data Table Count** | Number of events with associated data tables. |
| **Events with Action Count** | Number of events with configured action links. |
| **Total Comments Count** | Total number of comments, including hazards. |
| **Hazard Count** | Number of hazards. |
| **Unique Comment Author Count** | Number of unique authors who have commented on any event. |
| **Most Comments By A Single Author** | Number of comments posted by the author with the most comments posted. |
| **Public Event Count** | Number of events that are publicly visible. |
| **Mean Users Targeted By A Single Event** | Mean number of users that are targeted by non-public events. |
| **Least Users Targeted By A Single Event** | Least number of users that are targeted by a single non-public event. |
| **Most Users Targeted By A Single Event** | Most number of users that are targeted by a single non-public event. |
| **Mean Groups Targeted By A Single Event** | Mean number of groups that are targeted by non-public events. |
| **Least Groups Targeted By A Single Event** | Least number of groups that are targeted by a single non-public event. |
| **Most Groups Targeted By A Single Event** | Most number of groups that are targeted by a single non-public event. |
| **Social Task Count** | Number of social tasks created by all users in the system. |
| **Closed Social Task Count** | Number of social tasks closed by all users in the system. |
| **Unique Social Task Author Count** | Number of unique users who have sent a social task. |
| **Unique Social Task Recipient Count** | Number of unique users who have received a social task. |
| **Unique Events with File Attachments** | Number of unique events with at least one file attachment. |
| **Total Event/File Relationships** | Total number of links between events and files. |
| **Most File Attachments By Event** | Largest number of files attached to a single event. |
| **Unique Files Attached To Events** | Number of unique files attached to at least one event. |
| **Most Events By File Attachment** | Largest number of events a single file is attached to. |
| **Unique Events with Related Records** | Total number of events that are related to at least one record. |
| **Total Event/Record Relationships** | Total number of links between events and records. |
| **Most Related Records By Event** | Largest number of records associated with a single event. |
| **Unique Records Related To Events** | Number of unique records related to at least one event. |
| **Most Events By Related Record** | Largest number of events associated with any single record. |

### OAuth 2.0 Clients metrics log

The **OAuth 2.0 Clients** log file (`oauth_clients.csv`) provides information about [OAuth 2.0 clients](Web_API_Authentication.html#oauth-20-client-credentials-grant).

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number of Active Clients in the System** | The number of active clients in your environment. |
| **Number of Inactive Clients in the System** | The number of inactive clients in your environment. |
| **Number of Service Accounts** | The number of groups in the Service Accounts system group in your environment. |
| **Max Number of Clients Associate With One Account** | The maximum number of clients associated with a single service account in your environment. |
| **Avg Number of Clients Associate per Account** | The average number of clients associated with a single service account in your environment. |

### Package metrics log

The **Package metrics** log (`packages.csv`) records information about general package use in the system.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number of Applications** | Total number of applications with at least one package. |
| **Number of Packages** | Total number of packages in the system. |
| **Packages without Description** | Number of packages without a description. |
| **Packages without a Ticket** | Number of packages without a link to a ticket. |
| **Packages with common objects** | Number of packages that contain the same objects. |
| **Oldest package** | Age of the oldest package in the system in days. |
| **Users Creating Packages** | Number of unique developers who have created a package. |
| **Apps with between 1 and 9 packages** | Number of applications with between 1 and 9 packages. |
| **Apps with between 10 and 49 packages** | Number of applications with between 10 and 49 packages. |
| **Apps with between 50 and 100 packages** | Number of applications with between 50 and 100 packages. |
| **Maximum Packages Count** | Largest number of packages in a single application. |
| **Packages with between 1 and 9 objects** | Number of packages with between 1 and 9 objects. |
| **Packages with between 10 and 49 objects** | Number of packages with between 10 and 49 objects. |
| **Packages with between 50 and 99 objects** | Number of packages with between 50 and 99 objects. |
| **Packages with between 100 and 499 objects** | Number of packages with between 100 and 499 objects. |
| **Packages with between 500 and 999 objects** | Number of packages with between 500 and 999 objects. |
| **Packages with more than 999 objects** | Number of packages with more than 999 objects. |
| **Maximum Objects Count** | Number of objects in the largest package. |
| **Number of packages with just one database script** | Number of packages with a single database script. |
| **Packages with between 2 and 5 database scripts** | Number of packages with between 2 and 5 database scripts. |
| **Packages with between 6 and 10 database scripts** | Number of packages with between 6 and 10 database scripts. |
| **Packages with greater than 10 database script** | Number of packages with more than 10 database scripts. |
| **Largest number of scripts in a package** | Highest number of database scripts in an individual package. |
| **Packages with 1 plug-in** | Number of packages with one plug-in. |
| **Packages with between 2 and 5 plug-ins** | Number of packages with between 2 and 5 plug-ins. |
| **Packages with between 6 and 10 plug-ins** | Number of packages with between 6 and 10 plug-ins. |
| **Packages with 11 or more plug-ins** | Number of packages with 11 or more plug-ins. |
| **Maximum Plug-ins Count** | Highest number of database scripts in an individual package. |
| **Packages with application configurations** | Number of packages with [application configurations](prepare-deployment-packages.html#prodlink-application-configurations). |
| **Packages without application configurations** | Number of packages without application configurations. |
| **Packages with an ICF** | Number of packages that include an [import customization file](prepare-deployment-packages.html#add-icf). |

### Patch metrics log

The **Patch metrics** log (`patches.csv`) provides general usage data about the patches in the system.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Total Patches** | Total patches in the system. |
| **Maximum Patches** | Maximum number of patches for a single user in the system. |
| **Mean Patches** | Average number of patches for a single user in the system. |
| **Maximum Objects** | Maximum number of objects in a single patch. |
| **Mean Objects** | Average number of objects in a single patch. |

### Plug-in metrics logs

The **Plug-in metrics** log file (`plugins.csv`) provides information about plug-ins in the system.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Plug-ins** | Total number of plug-ins. |
| **Connected System Plug-ins** | Total number of connected system plug-ins. |
| **Component Plug-ins** | Total number of component plug-ins. |
| **Function and Smart Service Plug-ins** | Total number of function and smart service plug-ins. |
| **Plug-in Deployments Enabled** | Whether or not the system accepts incoming deployments with plug-in changes. Possible value: `true` or `false`. |
| **Update available** | Total number of plug-ins with a [version status](Appian_Administration_Console.html#view-version-status) of Update Available. |
| **Not listed in AppMarket** | Total number of plug-ins with a [version status](Appian_Administration_Console.html#view-version-status) of Not Listed in AppMarket. |

The **AppMarket Plug-in Usage Metrics Log** (`app_market_plugins_usage.csv`) provides information about plug-ins deployed in the system from the [AppMarket](https://community.appian.com/b/appmarket).

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Plug-in Key** | Unique identifier of the plug-in. |
| **Plug-in Name** | Name of the plug-in. |
| **Plug-in Version** | Version of the plug-in. |
| **Number of Dependents** | Total number of objects that reference the plug-in. |
| **Encryption Service Enabled** | Whether or not the plug-in is allowed to encrypt or decrypt values of type Encrypted Text. |

### Portals metrics log

The **Portals Metrics** log file (`portals.csv`) provides information about the [portal object](portal-object.html).

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number of Portals** | Total number of portal objects in the environment. |
| **Minimum Number of Role Map Entries** | Least number of users and groups referenced in any portal object's security rolemap. |
| **Maximum Number of Role Map Entries** | Maximum number of users and groups referenced in any portal object's security rolemap. |
| **Average Number of Role Map Entries** | Average number of users and groups referenced across the portal object's security rolemaps in the system. |
| **Portals with Squared Button Shape** | Total number of portal objects that have squared buttons. |
| **Portals with Semi-Rounded Button Shape** | Total number of portal objects that have semi-rounded buttons. |
| **Portals with Rounded Button Shape** | Total number of portal objects that have rounded buttons. |
| **Portals with Default Loading Bar Color** | Total number of portal objects that have the default loading bar color. |
| **Portals with Hex Loading Bar Color** | Total number of portal objects that have a loading bar color configured with a hex code. |
| **Portals with Squared Input Shape** | Total number of portal objects that use the squared shape for inputs. |
| **Portals with Semi-Rounded Input Shape** | Total number of portal objects that use the semi-rounded shape for inputs. |
| **Portals with a Service Account Specified** | Total number of portal objects that use a service account. |
| **Portals that are Published** | Total number of published portals in the environment. |
| **Portals that are Unpublished** | Total number of unpublished portal objects in the environment. |
| **Portals with Recaptcha** | Total number of portal objects that use reCAPTCHA. |
| **Portals Configured as PWA** | Total number of portal objects that are configured as [progressive web apps](portal-object.html#progressive-web-app-pwa). |
| **Number of Portal Pages** | Total number of pages across all portal objects in the environment. |
| **Portals with Header Bar** | Total number of portal objects that have a navigation bar. |
| **Single Page Portals with Header Bar** | Total number of single page portal objects that have a navigation bar. |
| **Portals with Display Name** | Total number of portal objects that have a display name shown. |
| **Portals with Default Header Bar Color** | Total number of portal objects that have a navigation bar configured with the default color. |
| **Portals with Hex Header Bar Color** | Total number of portal objects that have a navigation bar configured with a hex code. |
| **Portals with Default Selected Highlight Color** | Total number of portal objects that have a selected page highlight color configured with the default color. |
| **Portals with Hex Selected Highlight Color** | Total number of portal objects that have a selected page highlight color configured with a hex code. |
| **Number of Record Backed Pie Charts in Portals** | Total number of pie charts being used across all portal objects in the environment. |
| **Number of Record Backed Bar Charts in Portals** | Total number of bar charts being used across all portal objects in the environment. |
| **Number of Record Backed Scatter Charts in Portals** | Total number of scatter charts being used across all portal objects in the environment. |
| **Number of Record Backed Line Charts in Portals** | Total number of line charts being used across all portal objects in the environment. |
| **Number of Record Backed Area Charts in Portals** | Total number of area charts being used across all portal objects in the environment. |
| **Number of Record Backed Column Charts in Portals** | Total number of column charts being used across all portal objects in the environment. |
| **Number of Record Backed Card Choices in Portals** | Total number of card choices being used across all portal objects in the environment. |
| **Number of Record Backed Read-Only Grids in Portals** | Total number of read-only grids being used across all portal objects in the environment. |
| **Number of Portals with 1 Page** | Total number of portals that have 1 page. |
| **Number of Portals with 2 Pages** | Total number of portals that have 2 pages. |
| **Number of Portals with 3 Pages** | Total number of portals that have 3 pages. |
| **Number of Portals with 4 Pages** | Total number of portals that have 4 pages. |
| **Number of Portals with 5 Pages** | Total number of portals that have 5 pages. |
| **Number of Portals with 6 Pages** | Total number of portals that have 6 pages. |
| **Number of Portals with 7 Pages** | Total number of portals that have 7 pages. |
| **Number of Portals with 8 Pages** | Total number of portals that have 8 pages. |
| **Number of Portals with 9 Pages** | Total number of portals that have 9 pages. |
| **Number of Portals with 10 Pages** | Total number of portals that have 10 pages. |
| **Number of portals using rule inputs** | Total number of portals that have a portal page using an interface that contains rule inputs. |
| **Number of portals using secure context URLs** | Total number of portals that have at least one portal page with rule inputs and the encryption checkbox checked. |
| **Number of portals using plaintext context URLs** | at least one portal page with URL parameters, the encryption checkbox unchecked, and at least 1 URL parameter parameter toggled-on. |
| **Number of portals using default values** | Total number of portals that have at least one default value. |
| **Number of portals using default values as page inputs** | Total number of portals that have at least one rule input that's toggled off and also has a default value. |
| **Number of portals using default values as URL parameters** | Total number of portals that have at least one rule input that's toggled on and also has a default value. |
| **Number of Portals with 1 Page Group** | Total number of portals that have 1 page group. |
| **Number of Portals with 2 Page Groups** | Total number of portals that have 2 page groups. |
| **Number of Portals with 3 Page Groups** | Total number of portals that have 3 page groups. |
| **Number of Portals with 4 Page Groups** | Total number of portals that have 4 page groups. |
| **Number of Portals with 5 Page Groups** | Total number of portals that have 5 page groups. |
| **Number of Portals with 6 Page Groups** | Total number of portals that have 6 page groups. |
| **Number of Portals with 7 Page Groups** | Total number of portals that have 7 page groups. |
| **Number of Portals with 8 Page Groups** | Total number of portals that have 8 page groups. |
| **Number of Portals with 9 Page Groups** | Total number of portals that have 9 page groups. |
| **Number of Portals with 10 Page Groups** | Total number of portals that have 10 page groups. |
| **Number of Portals with at Least One Group That Has 0 Nested Pages** | Total number of portals with at least one page group that has 0 nested pages. |
| **Number of Portals with at Least One Group That Has 1 Nested Page** | Total number of portals with at least one page group that has 1 nested page. |
| **Number of Portals with at Least One Group That Has 2 Nested Pages** | Total number of portals with at least one page group that has 2 nested pages. |
| **Number of Portals with at Least One Group That Has 3 Nested Pages** | Total number of portals with at least one page group that has 3 nested pages. |
| **Number of Portals with at Least One Group That Has 4 Nested Pages** | Total number of portals with at least one page group that has 4 nested pages. |
| **Number of Portals with at Least One Group That Has 5 Nested Pages** | Total number of portals with at least one page group that has 5 nested pages. |
| **Number of Portals with at Least One Group That Has 6 Nested Pages** | Total number of portals with at least one page group that has 6 nested pages. |
| **Number of Portals with at Least One Group That Has 7 Nested Pages** | Total number of portals with at least one page group that has 7 nested pages. |
| **Number of Portals with at Least One Group That Has 8 Nested Pages** | Total number of portals with at least one page group that has 8 nested pages. |
| **Number of Portals with at Least One Group That Has 9 Nested Pages** | Total number of portals with at least one page group that has 9 nested pages. |
| **Number of Portals with at Least One Group That Has 10 Nested Pages** | Total number of portals with at least one page group that has 10 nested pages. |
| **Number of portals with HEADER BAR Primary Navigation Layout** | Total number of portals that have the header bar layout selected for the navigation bar. |
| **Number of portals with SIDEBAR Primary Navigation Layout** | Total number of portals that have the sidebar layout selected for the navigation bar. |
| **Number of portals with Show Display Name ON with HEADER BAR navigation layout** | Total number of portals that have the header bar layout selected and "Show portal display name in navigation bar" turned on. |
| **Number of portals with Show Display Name ON with SIDEBAR navigation layout** | Total number of portals that have the sidebar layout selected and "Show portal display name in navigation bar" turned on. |
| **Number of single page portals with HEADER BAR navigation layout** | Total number of portals with only one page that have the header bar layout selected for the navigation bar. |
| **Number of single page portals with SIDEBAR navigation layout** | Total number of portals with only one page that have the sidebar layout selected for the navigation bar. |
| **Number of portals with component plugins** | Total number of portals using at least one component plug-in. |
| **Number of Portals using 1 Component Plugin** | Total number of portals using one component plug-in. |
| **Number of Portals using 2 Component Plugins** | Total number of portals using two component plug-ins. |
| **Number of Portals using 3 Component Plugins** | Total number of portals using three component plug-ins. |
| **Number of Portals using 4 or more Component Plugins** | Total number of portals using four or more component plug-ins. |

### Process execution metrics log

The **Process execution metrics** log file (`process.csv`) provides information about the different types of processes and nodes that exist in the system.

All counts are for the present time and do not include archived processes or their nodes. If, for example, a paused process is restarted before the log executes, it no longer counts as a paused process.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Processes** | Total number of unarchived processes in the execution environment. |
| **Active Processes** | Number of processes currently executing. |
| **Completed Processes** | Number of processes that have completed but have yet to be archived. |
| **Paused Processes** | Number of processes that are paused. A paused process may or may not include a paused node. |
| **Paused by Exception Processes** | Number of processes that are paused by exception. A process paused by exception may or may not include nodes that have paused by exception. |
| **Cancelled Processes** | Number of processes that have been cancelled but have yet to be archived. |
| **Unfinished Processes** | Number of active subprocesses whose parent process has already completed. |
| **Terminating Processes** | Number of processes that have reached their end node but have not yet completed it. |
| **Total Nodes** | Total number of nodes that have executed as part of unarchived processes. |
| **Completed Nodes** | Number of nodes that completed successfully. |
| **Waiting Nodes** | Number of attended nodes waiting for user input. |
| **In-Process Nodes** | Number of nodes currently executing. |
| **Paused Nodes** | Number of nodes that have been paused. This does not include completed, waiting, or in-process nodes in paused processes. |
| **Paused By Exception Nodes** | Number of nodes that have paused by exception. |

### Process insights logs

These logs provide information about [Appian's process insights capability](process-insights.html). You can find relevant logs about process insights in follow log files:

-   [Process metrics log](#process-metrics-log)
-   [Process insights metrics log](#process-insights-metrics-log)
-   [Process insights KPIs log](#process-insights-kpis-log)
-   [Process views log](#process-views-log)
-   [Data governance metrics log](#data-governance-metrics-log)

#### Process metrics log

The **Process metrics** log file (`phq_process.csv`) provides information about the [processes](add-process.html) and [users](processhq.html#who-can-use-process-hq) involved in process insights.

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number Of Processes With Scheduled Updates** | Number of processes with [scheduled updates](add-process.html#schedule-process-updates). |
| **Number Of Processes Without Scheduled Updates** | Number of processes without scheduled updates. |
| **Number Of Processes With Daily Updates** | Number of processes with daily updates. |
| **Number Of Processes With Weekly Updates** | Number of processes with weekly updates. |
| **Number Of Processes With Monthly Updates** | Number of processes with monthly updates. |
| **Number Of Processes With Automation Type** | Number of processes with an attribute mapped to the [Automation attribute type](add-process.html#map-attributes). If multiple attributes are mapped to the Automation attribute type, only one attribute will be counted. |
| **Number Of Processes Without Automation Type** | Number of processes with no attribute mapped to the Automation attribute type. |
| **Number Of Processes With Event User** | Number of processes with an attribute mapped to an [Event User attribute type](add-process.html#map-attributes). If multiple attributes are mapped to the Event User type in a single process, only one attribute will be counted. |
| **Number Of Processes Without Event User** | Number of processes without an attribute mapped to the Event User type. |
| **Number Of Processes With Both Start And End** | Number of processes with Start and End timestamps. |
| **Number Of Processes With Only Start** | Number of processes with only Start timestamps configured. If multiple Start timestamps are configured for a process, only one is counted. |
| **Number Of Processes With Only End** | Number of processes with only End timestamps configured. If multiple end timestamps are configured for a process, only one is counted. |
| **Average Number Of Case Rows** | Average number of cases per case record type in the environment. |
| **Maximum Number Of Case Rows** | Maximum number of cases per case record type in the environment. |
| **Minimum Number Of Case Rows** | Minimum number of cases per case record type in the environment. |
| **Number Of Processes Using Record Events** | Number of processes that use a case record type that is configured for record events. |
| **Number Of Processes Not Using Record Events** | Number of processes that use a case record type that is not configured for record events. |
| **Number Of Processes With 1 to 5 Case Attributes** | Number of processes with 1-5 case attributes. |
| **Number Of Processes With 6 to 10 Case Attributes** | Number of processes with 6-10 case attributes. |
| **Number Of Processes With 11 to 20 Case Attributes** | Number of processes with 10-20 case attributes. |
| **Number Of Processes With 21 to 30 Case Attributes** | Number of processes with 20-30 case attributes. |
| **Number Of Processes With More Than 30 Case Attributes** | Number of processes with more than 30 case attributes. |
| **Number Of Processes With 1 to 5 Event Attributes** | Number of processes with 1-5 event attributes. |
| **Number Of Processes With 6 to 10 Event Attributes** | Number of processes with 6-10 event attributes. |
| **Number Of Processes With 11 to 20 Event Attributes** | Number of processes with 10-20 event attributes. |
| **Number Of Processes With 21 to 30 Event Attributes** | Number of processes with 20-30 event attributes. |
| **Number Of Processes With More Than 30 Event Attributes** | Number of processes with more than 30 event attributes. |
| **Average Attribute Values** | Average number of unique attribute values in a process. |
| **Maximum Number Of Event Rows** | Maximum number of event rows. |
| **Minimum Number Of Event Rows** | Minimum number of event rows. |
| **Average Number Of Event Rows** | Average number of event rows. |
| **Average Number Of Analysts** | Average number of [users with Analyst permissions](configure-security.html#grant-access-to-processes) per process. |
| **Maximum Number Of Analysts** | Maximum number of users with Analyst permissions per process. |
| **Minimum Number Of Analysts** | Minimum number of users with Analyst permissions per process. |
| **Average Number Of Viewers** | Average number of [users with Viewer permissions](configure-security.html#grant-access-to-processes) per process. |
| **Maximum Number Of Viewers** | Maximum number of users with Viewer permissions per process. |
| **Minimum Number Of Viewers** | Minimum number of users with Viewer permissions per process. |
| **Average Number Of Data Stewards** | Average number of [users with Data Steward permissions](configure-security.html#assign-data-stewards-to-record-types) per process. |
| **Maximum Number Of Data Stewards** | Maximum number of users with Data Steward permissions per process. |
| **Minimum Number Of Data Stewards** | Minimum number of users with Data Steward permissions per process. |
| **Groups Based On Date Difference Custom Attribute Count** | Total number of groups based on [date difference custom attributes](process-custom-attributes.html#groups-based-on-a-date-difference) in a process. |
| **Minimum Groups Based On Date Difference Custom Attribute Count** | Minimum number of groups based on date difference custom attributes in a process. |
| **Average Groups Based On Date Difference Custom Attribute Count** | Average number of groups based on date difference custom attributes in a process. |
| **Maximum Groups Based On Date Difference Custom Attribute Count** | Maximum number of groups based on date difference custom attributes in a process. |
| **Groups Based On Range Custom Attribute Count** | Total number of groups based on [range custom attributes](process-custom-attributes.html#groups-based-on-a-range) in a process. |
| **Minimum Groups Based On Range Custom Attribute Count** | Minimum number of groups based on range custom attributes in a process. |
| **Average Groups Based On Range Custom Attribute Count** | Average number of groups based on range custom attributes in a process. |
| **Maximum Groups Based On Range Custom Attribute Count** | Maximum number of groups based on range custom attributes in a process. |
| **Groups Based On Aggregation Custom Attribute Count** | Total number of groups based on [aggregation custom attributes](process-custom-attributes.html#groups-based-on-aggregations) in a process. |
| **Minimum Groups Based On Aggregation Custom Attribute Count** | Minimum number of groups based on aggregation custom attributes in a process. |
| **Average Groups Based On Aggregation Custom Attribute Count** | Average number of groups based on aggregation custom attributes in a process. |
| **Maximum Groups Based On Aggregation Custom Attribute Count** | Maximum number of groups based on aggregation custom attributes in a process. |
| **Processes With One Or More Groups Based On Date Diff Custom Attributes** | Total number of processes with at least 1 group based on date difference custom attribute. |
| **Processes With One Or More Groups Based On Range Custom Attribute Count** | Total number of processes with at least 1 group based on range custom attribute. |
| **Processes With One Or More Groups Based On Aggregation Custom Attribute Count** | Total number of processes with at least 1 group based on aggregation custom attribute. |
| **Maximum Number Of Unique Activities Per Process** | Maximum number of unique activities in a process. |
| **Minimum Number Of Unique Activities Per Process** | Minimum number of unique activities in a process. |
| **Average Number Of Unique Activities Per Process** | Average number of unique activities in a process. |

#### Process insights metrics log

The **Process insights metrics** log file (`phq_insight.csv`) provides information about [creating](investigate.html) and [collaborating on](collaborate-on-insight.html) saved insights in process insights.

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Num Investigations Total** | Total number of saved investigations in the environment. |
| **Average Potential Savings** | Average value of potential savings for saved insights in the environment. |
| **Minimum Potential Savings** | Lowest potential savings for saved insights in the environment. |
| **Maximum Potential Savings** | Highest potential savings for saved insights in the environment. |
| **Number Of Insights** | Total number of saved insights in the environment. |
| **Saved Findings Count** | Total number of characteristics across all insights in the environment. |
| **Average Impact Days For Cycle Time Insight** | How much (on average) a characteristic contributes to the total potential savings of saved insights in this environment. |
| **Maximum Impact Days For Cycle Time Insight** | The highest amount a characteristic contributes to the total potential savings of saved insights in this environment. |
| **Minimum Impact Days For Cycle Time Insight** | The lowest amount a characteristic contributes to the total potential savings of saved insights in this environment. |
| **Average Number Of Factors In Insight** | Average number of characteristics in an individual insight in this environment. |
| **Minimum Number Of Factors In Insight** | Lowest number of characteristics in an individual insight in this environment. |
| **Maximum Number Of Factors In Insight** | Highest number of characteristics in an individual insight in this environment. |
| **Average Number of Comments on Insight** | Average number of comments on an individual insight in this environment. |
| **Minimum Number of Comments on Insight** | Lowest number of comments on an individual insight in this environment. |
| **Maximum Number of Comments on Insight** | Highest number of comments on an individual insight in this environment. |
| **Number of Insights with 1 to 5 Comments** | Total number of insights with 1 to 5 comments in this environment. |
| **Number of Insights with 6 to 10 Comments** | Total number of insights with 6 to 10 comments in this environment. |
| **Number of Insights with 11 to 15 Comments** | Total number of insights with 11 to 15 comments in this environment. |
| **Number of Insights with 16 to 20 Comments** | Total number of insights with 16 to 20 comments in this environment. |
| **Number of Insights with over 20 Comments** | Total number of insights with more than 20 comments in this environment. |

#### Process insights KPIs log

The **Process insights KPIs** log file (`phq_kpi.csv`) provides information about the [custom KPIs](process-custom-kpis.html) created in process insights.

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Kpis Count** | Total number of user-created KPIs configured in this environment. |
| **Number Of Sla Kpis** | Number of user-created SLA KPIs configured in this environment. |
| **Number Of Duration Kpis** | Number of user-created duration KPIs configured in this environment. |
| **Number Of Aggregation Kpis** | Number of user-created aggregation KPIs configured in this environment. |
| **Number Of Count Kpis** | Number of user-created count KPIs configured in this environment. |
| **Average Number Of Kpis** | Average number of user-created KPIs configured per process. |
| **Minimum Number Of Kpis** | Lowest number of user-created KPIs configured per process. |
| **Maximum Number Of Kpis** | Highest number of user-created KPIs configured per process. |
| **Average Number Of Sla Kpis** | Average number of user-created SLA KPIs per process. |
| **Average Number Of Duration Kpis** | Average number of user-created duration KPIs per process. |
| **Average Number Of Aggregation Kpis** | Average number of user-created aggregation KPIs per process. |
| **Average Number Of Count Kpis** | Average number of user-created count KPIs per process. |
| **Average Number Of Pinned Kpis Per View** | Average number of user-created KPIs pinned to the Summary tab in a [process view](process-views.html). |
| **Minimum Number Of Pinned Kpis Per View** | Lowest number of user-created KPIs pinned to the Summary tab in a process view. |
| **Number of Kpis with Alerts not enabled** | Number of KPIs that have the alerting capability but don't have their alerts enabled. |
| **Number of SLA Kpis with active alerts** | Number of Duration (SLA) KPIs with alerting enabled. |
| **Number of Duration Kpis with active alerts** | Number of Duration (Time) KPIs with alerting enabled. |
| **Number of Duration Kpis with thresholds and no alerts** | Number of Duration (Time) KPIs with thresholds and no alerts enabled. |
| **Number of process with at least 1 Kpi alert** | Number of processes with at least 1 KPI that has alerting enabled. |
| **Average number of subscribers for active Kpi alerts** | Total number of subscribers for KPIs with active alerts / Total number of KPIs with active alerts. |

#### Process views log

The **Process views** log file (`phq_view.csv`) provides information about [process views](process-views.html) created in process insights.

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Invalid Views Count** | Number of invalid process views across all processes in the environment. A view is invalid if the attributes used as filter in the view were missing or changed in the [latest process update](add-process.html#schedule-process-updates). |
| **Views Count** | Total number of user-created views in the environment. |
| **Average Number of Views** | Average number of user-created views per process. |
| **Maximum Number of Views** | Highest number of user-created views per process. |
| **Minimum Number of Views** | Lowest number of user-created views per process. |
| **Views With Attribute Filters Applied Count** | Total number of user-created views configured with at least one attribute filter. |
| **Average Number of Views with Attribute Filters** | Average number of user-created views configured with at least one attribute filter. |
| **Maximum Number of Views with Attribute Filters** | Highest number of user-created views configured with at least one attribute filter. |
| **Minimum Number of Views with Attribute Filters** | Lowest number of user-created views configured with at least one attribute filter configured. |
| **Views with Activity Filter Applied Count** | Total number of user-created views configured with at least one activity filter. |
| **Average Number of View Activity Filters** | Average number of user-created views configured with at least one activity filter. |
| **Maximum Number of View Activity Filters** | Highest number of user-created views configured with at least one activity filter. |
| **Minimum Number of View Activity Filters** | Lowest number of user-created views configured with at least one activity filter. |
| **Average Number of View Attribute Value Filters** | Average number of attribute value filters configured on a user-created view. |
| **Maximum Number of View Attribute Value Filters** | Maximum number of attribute value filters configured on a user-created view. |
| **Minimum Number of View Attribute Value Filters** | Minimum number of attribute value filters configured on a user-created view. |

#### Data governance metrics log

The **Data governance metrics** log file (`phq_governance.csv`) provides information about data stewards assigned from the [Data Governance](data-governance-page.html) page of Process HQ and information about the record types used in a [process](add-process.html).

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Unique Data Stewards Assigned Through Governance Count** | The total number of unique [data stewards assigned to a record type](configure-security.html#assign-data-stewards-to-record-types) from the Data Governance page. |
| **Data Stewards Assigned Through Governance Count** | The total number of data stewards assigned to a record type from the Data Governance page. |
| **Maximum Number of Data Governance Data Stewards** | The highest number of data stewards assigned to a record type from the Data Governance page. |
| **Data Governors Count** | The total number of [users assigned to the Data Governors group](configure-security.html#assign-data-governors). |
| **Record types With At Least One Governance Data Steward Count** | The total number of record types with at least 1 data steward assigned from the Data Governance page. |
| **Average Number Of Dependent Process Per Record Type** | The average number of processes that use a record type as a data source. |
| **Maximum Number Of Dependent Processes Per Record Type** | The maximum number of processes that use a record type as a data source. |
| **Record Types Used In At Least One Mining Process Count** | The number of record types that are used as a data source for a process. |

### Process model metrics log

The **Process model metrics** log file (`models.csv`) provides information on the different process models and data types created in the system.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Published Models** | Number of published process models. |
| **Draft Models** | Number of draft process models. |
| **Past Versions of Models** | Number of past versions of process models. |
| **Model Attachments** | Number of attachments to published process models. |
| **Model Notes** | Number of notes added to published process models (not including notes added to nodes). |
| **Models Configured Without Cleanup** | Number of published process models configured to not be archived or deleted after completion. |
| **Models Configured for Archive Cleanup** | Number of published process models configured for archival after completion. |
| **Models Configured for Delete Cleanup** | Number of published process models configured to be deleted after completion. |
| **Models Configured for Default Cleanup** | Number of published process models using the default cleanup action. |
| **Maximum Archive Delay** | Longest number of days any published process model is set to wait between completion and archival. |
| **Maximum Deletion Delay** | Longest number of days any published process model is set to wait between completion and deletion. |
| **Models with Deadlines** | Number of published process models with deadlines. |
| **Swim Lanes** | Number of swim lanes in all published process models. |
| **Models Alerting Initiator** | Number of published process models configured to alert the process initiator when encountering a problem. |
| **Models Alerting Owners** | Number of published process models configured to alert the process owners when encountering a problem. |
| **Models Alerting by Expression** | Number of published process models configured to alert based on the results of an expression when encountering a problem. |
| **Models Alerting Users and Groups** | Number of published process models configured to alert specific users and groups when encountering a problem. |
| **Nodes** | Number of nodes added to all published process models. |
| **Minimum Nodes in a Model** | Number of nodes in the published process model with the fewest nodes. |
| **Maximum Nodes in a Model** | Number of nodes in the published process model with the most nodes. |
| **Attended Nodes** | Number of attended nodes in all published process models. |
| **MNI Nodes** | Number of nodes configured to use either sequential or parallel multiple instances in all published process models. |
| **Parallel MNI** | Number of nodes configured to use parallel multiple instances in all published process models. |
| **Repeating Nodes** | Number of nodes configured to repeat in all published process models. |
| **Scheduled Nodes** | Number of nodes configured to start on a schedule in all published process models. |
| **Escalating Nodes** | Number of nodes configured to escalate in all published process models. |
| **Quick Tasks** | Number of quick tasks in all published process models. |
| **Node Attachments** | Number of attachments to nodes in all published process models. |
| **Node Notes** | Number of notes on nodes in all published process models. |
| **Model Forms** | Number of start forms in all published process models. |
| **Node Forms** | Number of node forms in all published process models. |
| **Dynamic Forms** | Number of dynamic forms in all published process models and their nodes. |
| **JSP Forms** | Number of JSP forms in all published process models and their nodes. |
| **Internal Forms** | Number of HTML or PDF forms in all published process models and their nodes. |
| **Mobile Forms** | Number of mobile-enabled forms in all published process models and their nodes. |
| **Unchained Flows** | Number of non-activity-chained flows in all published process models. |
| **Chained Flows** | Number of activity-chained flows in all published process models. |
| **Maximum Rolemap Groups** | Maximum number of groups referenced in any process model's security rolemap. |
| **Maximum Rolemap Users** | Maximum number of users referenced in any process model's security rolemap. |
| **Mean Rolemap Groups** | Average number of groups referenced in any process model's security rolemap. |
| **Mean Rolemap Users** | Average number of users referenced in any process model's security rolemap. |

### Product metrics log

The **Product metrics** log (`product_metrics_details.csv`) records information about how the Appian platform is functioning so that Appian Technical Support can help troubleshoot issues. It contains quantitative data only and no sensitive information.

### Push notifications metrics log

The **Push notifications metrics** log file (`push_notifications.csv`) provides information about mobile users who are using push notifications.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Count of Users with Tokens** | Number of mobile users with active tokens. |
| **Count of Users without Tokens** | Number of mobile users without active tokens. |
| **Count of Tokens** | Number of tokens issued. |
| **Count of Android Tokens** | Number of tokens in use on Android devices. |
| **Count of iOS Tokens** | Number of tokens in use on iOS devices. |
| **Average Tokens per User** | Total number of tokens divided by the total number of mobile users. |
| **Max Tokens for a Single User** | Maximum number of active tokens for a single user in the system. |

### Records metrics log

The **Records metrics** log file (`records.csv`) provides information about record types.

Metrics in this log include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Record Type Count** | Total number of record types. |
| **Process Model Record Type Count** | Number of record types that are backed by process models. |
| **Data Store Entity Record Type Count** | Number of record types that are backed by data store entities. |
| **Exportable Data Store Entity Record Type Count** | Number of record types that are backed by data store entities and also have the _Show Export to Excel Button_ option enabled. |
| **Unique Users Following Records Count** | Total number of users following one or more records. |
| **Average Records Followed By User** | Total number of records being followed across all record types divided by the total number of users. |
| **Record Types With Related Actions Count** | Count of record types that have one or more related actions associated with them. |
| **Related Actions Count** | Total number of related actions across all record types. |
| **Related Actions With Null Titles Count** | Total number of related actions with a null display name. |
| **Expression Record Type Count** | Number of record types that are backed by expressions. |
| **Exportable Process Model Record Type Count** | Number of record types that are backed by process models and also have the _Show Export to Excel Button_ option enabled. |
| **Exportable Expression Record Type Count** | Number of record types that are backed by expressions and also have the _Show Export to Excel Button_ option enabled. |
| **Expressionable Default Filters For Data Store Entity Record Type Count** | Number of record types that are backed by data store entities and have default filters saved as an expression. |
| **Expressionable Default Filters For Process Model Record Type Count** | Number of record types that are backed by process models and have default filters saved as an expression. |
| **Expressionable Default Filters For Expression Record Type Count** | Number of record types that are backed by expressions and have default filters saved as an expression. |
| **Default Filters By Field For All Record Types Count** | Total number of record types that have default filters saved using the _By Field_ option. |
| **Default Filters By Field For Data Store Entity Record Type Count** | Number of record types that are backed by data store entities and have default filters saved using the _By Field_ option. |
| **Default Filters By Field For Process Model Record Type Count** | Number of record types that are backed by process models and have default filters saved using the _By Field_ option. |
| **Expression Record Type With Split Source Count** | Number of record types that are backed by expressions and use two expressions for the source. |
| **Expression Record Type With Single Source Count** | Number of record types that are backed by expressions and use a single expression for the source. |
| **Rule Record Type Count** | Total number of expression rule-backed record types. |
| **Record Type with Grid List View Count** | Number of record types using a grid list view. |
| **Record Type with Feed List View Count** | Number of record types using a feed list view. |
| **Data Store Entity Record Type using Grid List View Count** | Number of entity-backed record types using a grid view. |
| **Data Store Entity Record Type using Feed List View Count** | Number of entity-backed record types using a feed view. |
| **Process Model Record Type using Grid List View Count** | Number of process-backed record types using a grid view. |
| **Process Model Record Type using Feed List View Count** | Number of process-backed record types using a feed view. |
| **Expression Record Type using Grid List View Count** | Number of expression-backed record types using a grid view. |
| **Expression Record Type using Feed List View Count** | Number of expression-backed record types using a feed view. |
| **Record Types With User Filters Count** | Total number of record types that have user filters. |
| **Data Store Entity Record Types With User Filters Count** | Number of record types that are backed by data store entities and have at least one user filter. |
| **Process Model Record Types With User Filters Count** | Number of record types that are backed by process models and have at least one user filter. |
| **Expression Record Type with Picker With User Filters Count** | Number of expression-backed record types that are configured using expression rule pickers and have at least one user filter. |
| **Record Types With Record List Actions Count** | Number of record types that have record list actions configured. |
| **Minimum Number of Role Map Entries** | Minimum number of users and groups referenced in any record's security rolemap. |
| **Maximum Number of Role Map Entries** | Maximum number of users and groups referenced in any record's security rolemap. |
| **Average Number of Role Map Entries** | Average number of users and groups referenced in any record's security rolemap. |
| **Data Store Entity Record Types With Date Range User Filters Count** | Number of record types that are backed by data store entities and have at least one date range user filter. |
| **Process Model Record Types With Date Range User Filters Count** | Number of record types that are backed by process models and have at least one date range user filter. |
| **Related Actions with the Default Icon** | Number of related actions with the default icon. |
| **Related Actions with a Static Icon** | Number of related actions with the static icon. |
| **Record Types with the Default Icon** | Number of record types with the default icon. |
| **Record Types with a Static Icon** | Number of record types with a static icon. |
| **Record Types with the Default Icon Color** | Number of record types with the default icon color. |
| **Record Types with a Static Icon Color** | Number of record types with a static icon color. |
| **Record Types with an Expressionable Icon Color** | Number of record types with an expressionable icon color. |
| **Data Store Entity Record Types With List User Filters Count** | Number of data store entity record types with list user filters. |
| **Process Model Record Types With List User Filters Count** | Number of process model record types with list user filters. |
| **Hidden Record Type Count** | Number of hidden record types. |
| **Record Types with Record List Actions that Launch in a Dialog Count** | Number of record types with record list actions configured to launch in a dialog. |
| **Record Types with Record List Actions that Launch in the Same Tab Count** | Number of record types with record list actions configured to launch in the same tab. |
| **Record Types with Record List Actions that Launch in a New Tab Count** | Number of record types with record list actions configured to launch in a new tab. |
| **Record Views with Shortcuts that Launch in a Dialog Count** | Number of record views with related actions configured to launch in a dialog. |
| **Record Views with Shortcuts that Launch in the Same Tab Count** | Number of record views with related actions configured to launch in the same tab. |
| **Record Views with Shortcuts that Launch in a New Tab Count** | Number of record views with related actions configured to launch in a new tab. |
| **Expression Record Type with Picker Count** | Number of expression-backed record types that are configured using expression rule pickers. |
| **Exportable Expression Record Type with Picker Count** | Number of expression-backed record types that are configured using expression rule pickers and also have the _Show Export to Excel Button_ option enabled. |
| **Expression Record Type with Picker using Grid List View Count** | Number of expression-backed record types configured using expression rule pickers using a grid view. |
| **Expression Record Type with Picker using Feed List View Count** | Number of expression-backed record types configured using expression rule pickers using a feed view. |
| **Expression Record Type with Picker With User Filters Count** | Number of expression-backed record types that are configured using expression rule pickers and have at least one user filter. |
| **Average Number of User Filters for Expression Record Type with Picker** | Average number of user filters specified across expression-backed record types configured using expression rule pickers. |
| **Expression Record Type with Picker with Search Text Mapped** | The number of expression-backed record types configured using expression rule pickers that have Search Text mapped to a rule input. |
| **Expression Record Type with Picker with Paging Info Mapped** | The number of expression-backed record types configured using expression rule pickers that have Paging Info mapped to a rule input. |
| **Record Types with no Header style or standard Header style** | Number of record types with no header style or standard header style. |
| **Record Types with a Static Header Color** | Number of record types with a static header color. |
| **Record Types with a Variable Header Color** | Number of record types with a variable header color. |
| **Record Types with an Expressionable Header Color** | Number of record types with expressionable header color. |
| **Record Types with a Document Header Image** | Number of record types with a document header image. |
| **Record Types with a URL Header Image** | Number of record types with a URL header image. |
| **Record Types with a Variable Header Image** | Number of record types with a variable header image. |
| **Record Types with a Expressionable Header Image** | Number of record types with an expressionable header image. |
| **Record Types with invalid JSON for their header config** | Number of record types with invalid JSON for the header. |
| **Record Types that have Record Action Uuids** | Number of record types that just have the Appian 20.1 update to use record action field. |
| **Record Types that use Field References and Records-Powered Grid** | Number of record types updated in Appian 20.3 to use record data in grids. |
| **Synced Database Record Type Count** | Total number of synced record types with a database table as their source. |
| **Synced Salesforce Record Type Count** | Total number of synced record types with Salesforce as their source. |
| **Exportable Synced Database Record Type Count** | Number of synced record types that have a database as their source and also have the _Show Export to Excel Button_ option enabled. |
| **Exportable Synced Salesforce Record Type Count** | Number of synced record types that have Salesforce as their source and also have the _Show Export to Excel Button_ option enabled. |
| **Expressionable Default Filters For Synced Database Record Type Count** | Number of synced record types that have a database as their source and have default filters saved as an expression. |
| **Expressionable Default Filters For Synced Salesforce Record Type Count** | Number of synced record types that have Salesforce as their source and have default filters saved as an expression. |
| **Default Filters By Field For Synced Database Record Type Count** | Number of synced record types that have a database table as their source and have default filters saved using the _By Field_ option. |
| **Default Filters By Field For Synced Salesforce Record Type Count** | Number of synced record types that have Salesforce as their source and have default filters saved using the _By Field_ option. |
| **Synced Database Record Types With Grid List View Count** | Total number of synced record types that have a database table as their source and are also using a grid view. |
| **Synced Database Record Types With Feed List View Count** | Total number of synced record types that have a database table as their source and are also using a feed view. |
| **Synced Salesforce Record Types With Grid List View Count** | Total number of synced record types that have Salesforce as their source and are also using a grid view. |
| **Synced Salesforce Record Types With Feed List View Count** | Total number of synced record types that have Salesforce as their source and are also using a list view. |
| **Synced Database Record Types With User Filters Count** | Total number of synced record types that have a database table as their source and also have user filters. |
| **Synced Salesforce Record Types With User Filters Count** | Total number of synced record types that have Salesforce as their source and also have user filters. |
| **Synced OWS Record Type Count** | Number of synced record types backed by other web services. |
| **Exportable Synced OWS Record Type Count** | Number of synced record types backed by other web services with export enabled. |
| **Expressionable Default Filters For Synced OWS Record Type Count** | Number of expressionable default filters configured on synced record types backed by other web services. |
| **Default Filters By Field For Synced OWS Record Type Count** | Number of static default filters configured on synced record types backed by other web services. |
| **Synced OWS Record Types With Grid List View Count** | Number of synced record types backed by other web services with Grid list view. |
| **Synced OWS Record Types With Feed List View Count** | Number of synced record types backed by other web services with Feed list view. |
| **Synced OWS Record Types With User Filters Count** | Number of synced record types backed by other web services with user filters. |
| **Record Types with hidden News view only** | Record types with the News view hidden. |
| **Record Types with hidden News view and Related Actions view** | Record types with both the News and the Related Actions views hidden. |
| **Record Types with hidden Related Actions view only** | Record types with the Related Actions view hidden. |
| **Synced Database Record Types With Source Filters Count** | Count of database-backed record types that have a [sync filter](records-filter-source-data.html) (formerly known as a source filter) configured to filter by source fields. |
| **Synced Salesforce Record Types With Source Filters Count** | Count of Salesforce-backed record types that have a [sync filter](records-filter-source-data.html) (formerly known as a source filter) configured to filter by source fields |
| **Many to One Relationship Type Count** | Count of many-to-one relationships. |
| **One to One Relationship Type Count** | Count of one-to-one relationships. |
| **Record Types with Relationships Count** | Count of record types with at least one relationship. |
| **Synced Record Types Where Max Reached Due To Total Number Of Fields** | Number of synced record types that have reached the maximum number of custom record fields because the record type has the [maximum number of record fields](about-data-sync.html#usage-considerations). |
| **Synced Record Types Where Max Reached Due To Custom Record Field Max** | Number of synced record types that have reached the maximum number of custom record fields because the record type has the maximum number of custom record fields. |
| **Synced Record Types With Custom Record Fields Count** | Number of synced record types that have custom record fields. |
| **Custom Record Fields Count** | Number of custom record fields across all synced record types. |
| **Synced Record Type User Filter Count** | Number of user filters on record types with data sync enabled. |
| **User Filters from Foreign Key Count** | Number of user filters created using a foreign key. |
| **User Filters from Direct Related Record Fields Count** | Number of user filters created using a related record field from a many-to-one relationship where the choice options are a list of related record field values. |
| **One to Many Relationship Type Count** | Number of one-to-many record type relationships. |
| **Record Actions with Large Dialog Size** | Number of record actions with a large dialog size. |
| **Record Actions with Medium Dialog Size** | Number of record actions with a medium dialog size. |
| **Record Actions with Small Dialog Size** | Number of record actions with a small dialog size. |
| **Synced Records With Rate Limit Count** | Number of synced record types that have the [rate limit](records-data-sync.html#rate-limit) enabled. |
| **Record Types With Multiple Record List Actions Count** | Number of record types with multiple record list actions. |
| **Total Record List Actions Count** | Total number of record list actions. |
| **Record Types with Record List Search Box Disabled** | Number of record types with the record list search disabled. |
| **Record Types with Custom Search Fields** | Number of record types that limit the record list search to specific fields. |
| **Record Types with Expressionable Placeholder Text** | Number of record types that use a custom placeholder in the record list search. |
| **Max number of record relationships on a single record type** | The maximum number of record type relationships on a record type. |
| **Synced records with skip failure enabled** | Number of synced record types that have [Skip Failed Syncs](records-data-sync.html#skip-failed-syncs) enabled. |
| **Summary Tab With Expressionable Name Count** | Number of record types with a summary view name configured with an expression. |
| **Summary Tab With Default Name Count** | Number of record types with the default summary view name. |
| **RLS rules configured** | Total number of [security rules](record-level-security.html#security-rules) configured in your environment. |
| **RLS rules configured with Group membership** | Number of security rules configured with the [Users found in groups](record-level-security.html#users-found-in-groups) option. |
| **RLS rules configured with Group membership with multiple groups** | Number of record-level security rules configured with the [Users found in groups](record-level-security.html#users-found-in-groups) option where more than one group is selected. |
| **RLS rules configured with Field membership** | Number of record-level security rules configured with the [Users found in fields](record-level-security.html#users-found-in-fields) option. |
| **RLS rules configured with Field membership with multiple fields** | Number of record-level security rules configured with the [Users found in fields](record-level-security.html#users-found-in-fields) option where more than one field is selected. |
| **RLS rules configured with inheritance membership** | Number of record-level security rules configured with the [Users who can view related records](record-level-security.html#users-who-can-view-related-records) option. |
| **RLS rules configured with any references to relationships** | Number of record-level security rules that reference a related record field. |
| **Max number of RLS rules on a single record type** | Maximum number of record-level security rules configured on a record type. |
| **RLS rules configured with condition sets** | Number of record-level security rules configured with a condition set. |
| **Count of all disabled security rules** | Total number of [disabled security rules](record-level-security.html#disable-security-rules). |
| **Record types with all security rules disabled** | Number of record types that have all record-level security rules disabled. |
| **Max depth of RLS rules with nested condition sets** | Maximum depth for condition set nesting across all record-level security rules. |
| **Number of Relationships Between Record Types With Different Source Types** | Number of relationships between record types that have a different source type (database, process model, Salesforce, or web service). |
| **Record Types with a Fixed Header** | Number of record types that use a fixed header. |
| **Record Types without a Fixed Header** | Number of record types that don't use a fixed header. |
| **Record Types with a Fixed Header and No Header Style** | Number of record types that use a fixed header and no header style. |
| **Record Types with a Fixed Header and Color Header Style** | Number of record types that use a fixed header and a color header style. |
| **Record Types with a Fixed Header and Image Header Style** | Number of record types that use a fixed header and an image header style. |
| **Record Types that use a sync expression** | Number of service-backed record types that have a [sync by identifier expression](records-data-sync.html#prodlink-getbyid) configured. |
| **Synced Records With Sequence Count** | Number of record types that use a [sequence](configure-record-data-source.html#prodlink-database-fields) to generate primary key values for records created by Appian. |
| **User Record is Sync Enabled** | Whether or not the User record type was [updated](Configure_Tempo_Users.html#update-the-user-record-type) to have data sync enabled. |
| **Count of relationships with the User Record as the target record type** | Number of relationships to the User record type. |
| **Count of custom fields that contain a reference to a User Record Field** | Number of custom record fields that reference a field in the User record type. |
| **Count of View Security Rules that Use Groups as Membership** | Number of view-level security rules configured with the [Users found in groups](record-view-security.html#users-found-in-groups) option. |
| **Count of View Security Rules that Use Fields as Membership** | Number of view-level security rules configured with the [Users found in fields](record-view-security.html#users-found-in-fields) option. |
| **Count of View Security Rules that Use Both Fields and Groups as Membership** | Number of view-level security rules configured using the Users found in groups and Users found in fields options. |
| **Count of Views that Have a Security Rule that Uses “Everyone” and “All the Time”** | Number of record views that have the following security rule configuration: **Who can see this view?** set to **All users who can see the record**, and **When can they see this view?** set to **Always**. |
| **Count of Views that Have a Security Rule that Uses “Everyone” and Conditions** | Number of record views that have the following security rule configuration: **Who can see this view?** set to **All users who can see the record**, and **When can they see this view?** set to **Only when…**. |
| **Count of Views that Have a Security Rule that Uses “Only Users…” and “All the Time”** | Number of record views that have the following security rule configuration: **Who can see this view?** set to **Only users…**, and **When can they see this view?** set to **Always**. |
| **Count of Views that Have a Security Rule that Uses “Only Users…” and Conditions** | Number of record views that have the following security rule configuration: **Who can see this view?** set to **Only users…**, and **When can they see this view?** set to **Only when…**. |
| **Count of Records with Duplicate Security Configurations Across Multiple Views** | Number of record types that have duplicate security rules configured for multiple record views. |
| **Count of Views that Use GUIDED Configurations** | Number of views that have security rules configured. |
| **Count of Views that Use EXPRESSION Configurations** | Number of views that have security expressions configured. |
| **Count of Record Types That Have at Least One View with a GUIDED Configuration** | Number of record types that have at least one record view with a security rule configured. |
| **Count of List Actions that Have an Expressionable Name or Description AND a Security Expression Using Record Data** | Number of record list actions that use an expression to define the name or description, and use a security expression for the record action security. |
| **Count of Related Actions that Have an Expressionable Name or Description AND a Security Expression Using Record Data** | Number of related actions that use an expression to define the name or description, and use a security expression for the record action security. |
| **Count of Record Types with Record Events Configured** | Number of record types with [record events](record-events.html) configured. |
| **Count of Action Security Rules that Use Groups as Membership** | Number of record action security rules configured with the [Users found in groups](record-action-security.html#users-found-in-groups) option. |
| **Count of Action Security Rules that Use Fields as Membership** | Number of record action security rules configured with the [Users found in fields](record-action-security.html#users-found-in-fields) option. |
| **Count of Action Security Rules that Use Both Fields and Groups as Membership** | Number of record action security rules configured using the Users found in groups and Users found in fields options. |
| **Count of Actions that Have a Security Rule that Uses “Everyone” and “All the Time”** | Number of record actions that have the following security rule configuration: **Who can see this action?** set to **All users who can see the action**, and **When can they see this action?** set to **Always**. |
| **Count of Actions that Have a Security Rule that Uses “Everyone” and Conditions** | Number of record actions that have the following security rule configuration: **Who can see this action?** set to **All users who can see the record**, and **When can they see this action?** set to **Only when…**. |
| **Count of Actions that Have a Security Rule that Uses “Only Users…” and “All the Time”** | Number of record actions that have the following security rule configuration: **Who can see this action?** set to **Only users…**, and **When can they see this action?** set to **Always**. |
| **Count of Actions that Have a Security Rule that Uses “Only Users…” and Conditions** | Number of record actions that have the following security rule configuration: **Who can see this action?** set to **Only users…**, and **When can they see this action?** set to **Only when…**. |
| **Count of Records with Duplicate Security Configurations Across Multiple Actions** | Number of record types that have duplicate security rules configured for multiple record actions. |
| **Count of Actions that Use GUIDED Configurations** | Number of record actions that have security rules configured. |
| **Count of Actions that Use EXPRESSION Configurations** | Number of record actions that have security expressions configured. |
| **Count of Record Types That Have at Least One Action with a GUIDED Configuration** | Number of record types that have at least one record action with a security rule configured. |
| **Count of One to Many Relationships Where Updating is Allowed** | Number of one-to-many relationships that [allow writes and deletes](record-type-relationships.html#allow-writes-and-deletes). |
| **Count of One to One Relationships Where Updating is Allowed** | Number of one-to-one relationships that [allow writes and deletes](record-type-relationships.html#allow-writes-and-deletes). |
| **Records-Backed Record Type Count** | Number of [records-backed record types](records-backed-record-types.html). |
| **Exportable Records-Backed Record Type Count** | Number of records-backed record types that have the _Show Export to Excel Button_ option enabled. |
| **Records-Backed Record Types With Grid List View Count** | Number of records-backed record types that use a grid list view. |
| **Records-Backed Record Types With Feed List View Count** | Number of records-backed record types that use a feed list view. |
| **Records-Backed Record Types With User Filters Count** | Number of records-backed record types that have user filters configured. |
| **Count of Record Types with Related Actions That Use Field Discovery** | Number of record types that were [updated](update-a-record-type.html) to use the improved `rv!record` behavior and have related actions that use `rv!record`. |
| **Count of Related Actions That Use Field Discovery** | Number of related actions that use the improved `rv!record` behavior, which skips redundant queries. |
| **Record Fields in Synced Record Types Count** | Number of fields in synced record types. |
| **Record Field Display Names in Synced Record Types Count** | Number of record types that have record fields with a Display Name configuration. |
| **Record Field Descriptions in Synced Record Types Count** | Number of record types that have record fields with a description. |
| **Max Number of Related Actions on a Single Record Type** | Maximum number of related actions on a record type. |
| **Record Types with Sync Latest Data Enabled** | Number of record types with [Keep data available at high volumes](records-data-sync.html#keep-data-available-at-high-volumes) enabled. |
| **Synced Database-Backed Record Types with Default Cloud MariaDB Data Source Count** | Number of synced record types that connect to the Appian Cloud MariaDB database. |
| **Synced Database-Backed Record Types with External MariaDB Data Source Count** | Number of synced record types that connect to a self-managed MariaDB database. |
| **Synced Database-Backed Record Types with MySQL Data Source Count** | Number of synced record types that connect to a MySQL database. |
| **Synced Database-Backed Record Types with Postgres Data Source Count** | Number of synced record types that connect to a Postgres database. |
| **Synced Database-Backed Record Types with SQL Server Data Source Count** | Number of synced record types that connect to a SQL server database. |
| **Synced Database-Backed Record Types with Oracle Data Source Count** | Number of synced record types that connect to an Oracle database. |
| **Synced Database-Backed Record Types with IBM DB2 Data Source Count** | Number of synced record types that connect to an IBM DB2 database. |
| **Record Types With Data Stewards** | Total number of record types that have at least one user or group assigned [**Data Steward** permissions](record-security.html). |
| **Average Number Of Data Stewards On a Record Types** | Average number of record types that have at least one user or group assigned **Data Steward** permissions. |
| **Minimum Number Of Data Stewards On a Record Type** | Minimum number of record types that have at least one user or group assigned **Data Steward** permissions. |
| **Maximum Number Of Data Stewards On a Record Type** | Maximum number of record types that have at least one user or group assigned **Data Steward** permissions. |
| **Record Types With Data Stewards and Record Events** | Total number of record types that have [record events](record-events.html) configured and have at least one user or group assigned **Data Steward** permissions. |
| **Record Types With Record Events and No Data Stewards** | Total number of record types with record events configured, but do not have any users or groups assigned **Data Steward** permissions. |
| **Record Types With Data Stewards and No Record Events** | Total number of record types without record events configured, but have at least one user or group assigned **Data Steward** permissions. |
| **Record Types With Data Stewards and RLS Configured** | Total number of record types with [record-level security](record-level-security.html) configured and at least one user or group assigned **Data Steward** permissions. |
| **Record Types With Data Stewards and No RLS Configured** | Total number of record types without record-level security configured and at least one user or group assigned **Data Steward** permissions. |
| **Count of Record-Level Security Rules Using Real-Time Custom Record Fields** | Number of record-level security rules that reference real-time custom record fields. |
| **Synced Database Record types with Recovery Sync Count** | Number of database-backed record types that have [**Recovery syncs**](records-data-sync.html#recover-failed-syncs) enabled. |
| **Synced Salesforce Record Types with Recovery Sync Count** | Number of Salesforce-backed record types that have **Recovery syncs** enabled. |
| **Synced OWS Record Types with Recovery Sync Count** | Number of service-backed record types that have **Recovery syncs** enabled. |
| **Synced Database Record Type With Relationship-Based Filters Count** | Number of database-backed record types that have a sync filter configured to [filter by relationship](records-filter-source-data.html). |
| **Count of Unique Sources for Record Types** | Distinct count of sources used in record types. |
| **Count of Record Types That Have at Least One Record Field Configured with Record Field Security** | Number of record types that have [field-level security](field-level-security.html) configured on at least one record field. |
| **Count of Record Fields Configured with Record Field Security** | Number of record fields that have field-level security configured. |
| **Count of Record Types That Have at Least One Extra Long Text Field** | Number of record types that have at least one field of type Extra Long Text. |
| **Count of Extra Long Text Fields Used Across All Record Types** | Number of fields set to type Extra Long Text. |
| **Count of Record Types That Have At Least One Field with Indexing Enabled** | Number of record types that have at least one field with an index. |
| **Count of All Fields Across All Record Types with Indexing Enabled** | Number of fields across all record types that have an index. |
| **Count of Text Fields Used Across All Record Types with Indexing Enabled** | Number of fields of type Text that have an index. |
| **Count of Extra Long Text Fields Used Across All Record Types with Indexing Enabled** | Number of fields of type Extra Long Text that have an index. |
| **Count of Document Fields Used Across All Record Types with Indexing Enabled** | Number of fields of type Document that have an index. |
| **Record Actions with Auto Dialog Height** | Number of record actions that have the dialog height set to the default value. |
| **Record Actions with Full Dialog Height** | Number of record actions that have the dialog height set to "Full". |
| **Record Actions with Short Dialog Height** | Number of record actions that have the dialog height set to "Short". |
| **Record Actions with Medium Dialog Height** | Number of record actions that have the dialog height set to "Medium". |
| **Record Actions with Tall Dialog Height** | Number of record actions that have the dialog height set to "Tall". |
| **Record Actions with Extra Tall Dialog Height** | Number of record actions that have the dialog height set to "Extra Tall". |
| **Record Actions with Narrow Dialog Width** | Number of record actions that have the dialog width set to "Narrow". |
| **Record Actions with Medium Dialog Width** | Number of record actions that have the dialog width set to "Medium". |
| **Record Actions with Medium Plus Dialog Width** | Number of record actions that have the dialog width set to "Medium Plus". |
| **Record Actions with Wide Dialog Width** | Number of record actions that have the dialog width set to "Wide". |
| **Record Actions with Extra Wide Dialog Width** | Number of record actions that have the dialog width set to "Extra Wide". |
| **Record Actions with Full Dialog Width** | Number of record actions that have the dialog width set to "Full". |
| **Count of Record Types with an Incremental Sync Frequency of 15 Minutes** | Number of record types that [schedule incremental syncs](records-data-sync.html#schedule-incremental-syncs) every 15 minutes. |
| **Count of Record Types with an Incremental Sync Frequency of 20 Minutes** | Number of record types that schedule incremental sync every 20 minutes. |
| **Count of Record Types with an Incremental Sync Frequency of 30 Minutes** | Number of record types that schedule incremental syncs every 30 minutes. |
| **Count of Record Types with an Incremental Sync Frequency of 1 Hour** | Number of record types that schedule incremental syncs every hour. |
| **Count of Record Types with an Incremental Sync Frequency of 2 Hours** | Number of record types that schedule incremental syncs every two hours. |
| **Count of Record Types with an Incremental Sync Frequency of 3 Hours** | Number of record types that schedule incremental syncs every three hours. |
| **Count of Record Types with an Incremental Sync Frequency of 4 Hours** | Number of record types that schedule incremental syncs every four hours. |
| **Count of Record Types with an Incremental Sync Frequency of 6 Hours** | Number of record types that schedule incremental syncs every six hours. |
| **Count of Record Types with an Incremental Sync Frequency of 8 Hours** | Number of record types that schedule incremental syncs every six hours. |
| **Count of Record Types with an Incremental Sync Frequency of 12 Hours** | Number of record types that schedule incremental syncs every 12 hours. |
| **Count of Record Types with an Incremental Sync Frequency of 24 Hours** | Number of record types that schedule incremental syncs every 24 hours. |
| **Count of Record Types with a field of type Document** | Number of record types that have a field of type [Document](Appian_Data_Types.html#document). |
| **Count of records (documents) synced in ADS for the System Document Record Type** | Number of rows in the out-of-the-box Document record type. This record type will have a row of data for each [document managed by record types](about-doc-management.html). |
| **Record types with min process metric field** | Count of record types with the minimum process metric field. |
| **Record types with max process metric field** | Count of record types with the maximum process metric field. |
| **Record types with duration process metric field** | Count of record types with the duration process metric field. |
| **Record types with process metrics** | Count of record types with the all three process metric fields. |

### Reports metrics log

The **Tempo report metrics** log file (`tempo_reports.csv`) provides information about Tempo reports.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number of Tempo Reports** | Total number of Tempo reports in the system. |
| **Minimum Number of Role Map Entries** | Minimum number of users and groups referenced in any Tempo report's security rolemap. |
| **Maximum Number of Role Map Entries** | Maximum number of users and groups referenced in any Tempo report's security rolemap. |
| **Average Number of Role Map Entries** | Average number of users and groups referenced in any Tempo report's security rolemap. |

### Search server metrics log

The **Search server metrics** log file (`search_server.csv`) provides information on the search server component of the Appian architecture. This information is written by an agent within the application server, so in a multiple application server environment this log will be written on each application server running rather than the machine(s) running the search server (if separate).

If there is an error when connecting to the search server to gather the metrics, the values in the numeric columns will be -1 and the text-based columns will have an error message or be blank.

All of the total Count and Time columns are calculated since the last startup of the search server. Restarting the application server running the search server will cause these values to reset to 0 in the next write to the log.

The full set of metrics are as follows:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Node UUID** | Unique identifier of the node to which this row of metrics belongs. |
| **Node Name** | Name of the node to which this row of metrics belongs. |
| **Host** | Hostname of the server running the node. |
| **Transport Address** | IP address and port on which the node of the search server is listening. |
| **Document Count** | Number of non-deleted documents in all indices combined. |
| **Deleted Document Count** | Number of documents marked as deleted in all indices combined. The system automatically reclaims deleted document space as needed. |
| **Store Disk Size (MB)** | Amount of disk space used by this node. |
| **Data Partition Space Remaining (MB)** | Amount of disk space remaining on the disk partition mounting the search server data directory. |
| **Disk Throttling Time (ms)** | Amount of time in milliseconds the search server spent throttling the disk I/O since the last startup. This can happen when the writes overwhelm the disk I/O. A rapidly increasing number can be indicative of insufficient disk speed. |
| **Active Indexing Count** | Number of items that are being indexed at the current time. |
| **Indexing Count** | Total number of items indexed. |
| **Indexing Time (ms)** | Total amount of time in milliseconds that the search server spent indexing since the last startup. The ratio of index count to index time can give you a sense of indexing efficiency. The difference between the current printout and the previous printout can give a more granular view of the current indexing health. |
| **Indexing Queue Count** | Number of work items in the indexing queue waiting to be processed. |
| **Indexing Rejection Count** | Number of work items that were rejected because the indexing queue was full. |
| **Bulk Indexing Queue Count** | Number of work items in the bulk indexing queue waiting to be processed. |
| **Bulk Indexing Rejection Count** | Number of work items that were rejected because the bulk indexing queue was full. |
| **Search Query Count** | Total number of search queries performed. |
| **Search Query Time (ms)** | Total amount of time in milliseconds that the search server spent in search queries since the last startup. |
| **Search Fetch Count** | Total number of fetches that result from search queries. |
| **Search Fetch Time (ms)** | Total amount of time in milliseconds that the search server spent in fetching query results since the last startup. A fetch time that is greater than query time can be indicative of a slow disk. |
| **Search Queue Count** | Number of work items in the search queue waiting to be processed. |
| **Search Rejection Count** | Number of work items that were rejected because the search queue was full. |
| **Active Merge Count** | Number of merges that are taking place at the current time. |
| **Merge Count** | Total number of merges performed. |
| **Merge Time (ms)** | Amount of time the search server has spent merging since the last startup. |
| **Merge Queue Count** | Number of work items in the merge queue waiting to be processed. |
| **Merge Rejection Count** | Number of work items that were rejected because the merge queue was full. |
| **Filter Cache Memory Size (MB)** | Amount of memory used by the filter cache. |
| **Filter Cache Evictions** | Number of evictions that have taken place in the filter cache. |
| **ID Cache Memory Size (MB)** | Amount of memory used by the memory cache. |
| **Field Data Memory Size (MB)** | Amount of memory used by field data. |
| **Field Data Evictions** | Number of evictions field data. A value greater than 0 can be an indication of not enough memory is available to the search server. |
| **Field Data Breaker Triggers** | Number of times the circuit breaker has triggered for field data. This happens when the field data memory usage is greater than 15% of heap size. A value other than 0 means the JVM needs more memory to efficiently handle data queries. |
| **Segment Count** | Number of segments in the search index. |
| **Segment Memory Size (MB)** | Amount of memory used by segments. |
| **Thread Count** | Current number of threads used by JVM that is running the search server. |
| **Thread Count Peak** | Peak number of threads used by JVM that is running the search server. |
| **Open File Descriptors** | Number of file descriptors currently in use by JVM that is running the search server. It is not uncommon to have several thousand open file descriptors. |
| **Used Heap Space (MB)** | Amount of Java heap space (memory) used by JVM that is running the search server. |
| **Used Heap Percentage** | Percentage of the available Java heap space used by the JVM running the search server. A value approaching 100 indicates insufficient memory the JVM. |
| **Available Heap Space (MB)** | Total amount of Java heap space (memory) available to JVM that is running the search server. This is the value configured as max heap the JVM. |
| **Young Collection Count** | Number of Java garbage collections that have occurred in the young generation space for the JVM that is running the search server. |
| **Young Collection Time (ms)** | Amount of time spent in garbage collection for the young generation collections since the last search server startup. |
| **Young Space Used (MB)** | Amount of Java heap space (memory) used by the young (eden) generation space for the JVM that is running the search server. |
| **Survivor Space Used (MB)** | Amount of Java heap space (memory) used by the survivor space for the JVM that is running the search server. |
| **Tenured Collection Count** | Number of Java garbage collections that have occurred in the tenured generation space for the JVM that is running the search server. |
| **Tenured Collection Time (ms)** | Amount of time spent in garbage collection for the tenured generation collections since the last search server startup. |
| **Tenured Space Used (MB)** | Amount of Java heap space (memory) used by the tenured (old) generation space for the JVM that is running the search server. |

### Search server cluster metrics log

The **Search server cluster metrics** log file (`search_server_cluster.csv`) provides information on the overall health of the search server cluster and the number of nodes and shards in the cluster. The information is written to the file even in environments where there is only a single search server node. In that case it is a cluster of one node. This information is written by an agent within the application server, so in a multiple application server environment this log will be written on each application server rather than the machine(s) running the search server (if separate).

If there is an error when connecting to the search server to gather the metrics, the values in the numeric columns will be -1 and the text-based columns will have an error message or be blank.

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Cluster Name** | Name of the search server cluster. The default cluster name is `appian-search-cluster`. |
| **Status** | Overall health status of the cluster. An error statement is printed to the status column if an error occurs while attempting to query the cluster health.
-   **GREEN** - All of the configured nodes are up and running and all shards are allocated to those nodes. The search server can accept reads and writes.
-   **YELLOW** - Some shards are not allocated to nodes, most likely because one or more of the configured nodes are unavailable. The search server can accept reads and writes.
-   **RED** - The search server cluster no longer has a master node because fewer than half plus one of the configured nodes are available. The search server will continue to serve read requests, but will not be able to accept writes.

 |
| **Timed Out** | Whether or not the attempt to query the cluster health timed out. Possible value: `true` or `false` |
| **Number of Nodes** | Total number of nodes currently running in the cluster. |
| **Number of Data Nodes** | Number of nodes currently running in the cluster that can accept data, either as writes from the Appian EAR or as replicated data from other nodes. |
| **Active Primary Shards** | Number of shards that are active and accept writes from the Appian EAR. |
| **Active Shards** | Total number of shards that are active, including both primary and replica shards. This number is the number of active shards times the number of nodes in the cluster. |
| **Relocating Shards** | Number of shards that are in the process of moving from one node to another. It is important not to make changes to the search cluster while this number is non-zero. |
| **Initializing Shards** | Number of shards that are currently being initialized. This occurs when the indices are first created either at system startup or on first usage. |
| **Unassigned Shards** | Number of shards that are currently not assigned to any nodes. This number will be non-zero when one or more of the configured nodes is unavailable. |

### Self-Service Analytics log

The **Self-Service Analytics** log file (`self_service_analytics.csv`) provides information about the record types available to business users in [data fabric insights](allow-users-to-build-reports.html) (formerly called self-service analytics), and the types of reports and dashboards they've created.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Number of Saved Reports** | Total number of saved reports. |
| **Total Number of Saved Reports That Are Marked Private** | Total number of saved reports that are not shared. |
| **Total Number of Saved Reports That Are Marked Shared** | Total number of saved reports that are shared. |
| **Number of Reports Using the Grid Design** | Number of saved reports that use the Grid design. |
| **Number of Reports Using the Pie Chart Design** | Number of saved reports that use the Pie Chart design. |
| **Number of Reports Using the Line Chart Reports** | Number of saved reports that use the Line Chart design. |
| **Number of Reports Using the Area Chart Reports** | Number of saved reports that use the Area Chart design. |
| **Number of Reports Using the Bar Chart Reports** | Number of saved reports that use the Bar Chart design. |
| **Number of Reports Using the Column Chart Reports** | Number of saved reports that use the Column Chart design. |
| **Number of Reports KPI Chart Reports** | Number of saved reports that use a KPI design. |
| **Number of Reports With an Aggregated Grid** | Number of saved reports that use the Grid design with aggregated data. |
| **Number of Reports With a Non-Aggregated Grid** | Number of saved reports that use the Grid design with non-aggregated data. |
| **Number of Reports With a Charts Design and the Grid Shown Below** | Number of saved reports that use a chart design and show the grid of selected data below. |
| **Number of Reports With Export Enabled** | Number of saved reports that show the Export to Excel button. |
| **Number of Reports With Image Download Enabled** | Number of saved reports that show the Download Chart Image button. |
| **Count of record types shown in SSA - all sources** | Count of record types available in self-service analytics. |
| **Count of record types shown in SSA - MariaDB Cloud (Appian default db)** | Count of record types available in self-service analytics that use Appian’s cloud database (MariaDB) as the source. |
| **Count of record types shown in SSA - MariaDB** | Count of record types available in self-service analytics that use MariaDB as the source. |
| **Count of record types shown in SSA - MySQL** | Count of record types available in self-service analytics that use MySQL as the source. |
| **Count of record types shown in SSA - Postgres** | Count of record types available in self-service analytics that use Postgres as the source. |
| **Count of record types shown in SSA - SQL Server** | Count of record types available in self-service analytics that use SQL Server as the source. |
| **Count of record types shown in SSA - Oracle** | Count of record types available in self-service analytics that use Oracle as the source. |
| **Count of record types shown in SSA - DB2** | Count of record types available in self-service analytics that use DB2 as the source. |
| **Count of record types shown in SSA - Salesforce** | Count of record types available in self-service analytics that use Salesforce as the source. |
| **Count of record types shown in SSA - Expression backed record** | Count of record types available in self-service analytics that use a web service as the expression. |
| **Minimum Number of Fields Across Reports** | Minimum number of fields used on a saved report. |
| **Maximum Number of Fields Across Reports** | Maximum number of fields used on a saved report. |
| **Average Number of Fields Across Reports** | Average number of fields used on a saved report. |
| **Minimum Number of Filters Across Reports** | Minimum number of filters on a saved report. |
| **Maximum Number of Filters Across Reports** | Maximum number of filters on a saved report. |
| **Average Number of Filters Across Reports** | Average number of filters on a saved report. |
| **Minimum Number of Sorts Across Reports** | Minimum number of sorts applied to a saved report. |
| **Maximum Number of Sorts Across Reports** | Maximum number of sorts applied to a saved report. |
| **Average Number of Sorts Across Reports** | Average number of sorts applied to a saved report. |
| **Count of Reports with at least one Action** | Count of saved reports that have at least one [record action](record-actions.html). |
| **Count of Reports with at least one Record List Action** | Count of saved reports that have at least one [record action](record-actions.html#record-list-actions). |
| **Count of Reports with at least one Related Action** | Count of saved reports that have at least one [related action](record-actions.html#related-actions). |
| **Minimum number of Actions on single report** | Minimum number of record actions displayed on a saved report. |
| **Maximum number of Actions on a single report** | Maximum number of record actions displayed on a saved report. |
| **Average number of Actions on a single report** | Average number of record actions displayed on a saved report. |
| **Minimum number of Record List Actions on a single report** | Minimum number of record list actions on a saved report. |
| **Maximum number of Record List Actions on a single report** | Maximum number of record list action on a saved report. |
| **Average number of Record List Actions on a single report** | Average number of record list actions on a saved report. |
| **Minimum number of Related Actions on a single report** | Minimum number of related actions on a saved report. |
| **Maximum number of Related Actions on a single report** | Maximum number of related actions on a saved report. |
| **Average number of Related Actions on a single report** | Average number of related actions on a saved report. |
| **Number of KPI Reports** | Number of saved reports that use a KPI design. |
| **Total Number of Saved Dashboards - All** | Total number of saved dashboards. |
| **Total Number of Saved Dashboards - Private** | Number of saved dashboards that are not shared. |
| **Total Number of Saved Dashboards - Shared** | Number of saved dashboards that are shared. |
| **Minimum Number of Reports Across Dashboards** | Minimum number of reports displayed on a saved dashboard. |
| **Maximum Number of Reports Across Dashboards** | Maximum number of reports displayed on a saved dashboard. |
| **Average Number of Reports Across Dashboards** | Average number of reports on a saved dashboard. |
| **Total Number of Reports with a drilldown report** | Number of reports with a drilldown report selected. |
| **Total Number of Dashboards with at least one drilldown report** | Number of dashboards with at least one drilldown report configured. |

### Sites metrics log

The **Sites metrics** log file (`sites.csv`) provides information about [sites](Sites.html).

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number of Sites** | Total number of sites in the system. |
| **Number of Site Pages** | Total number of pages across all sites in the system. |
| **Number of Task Report Pages** | Total number of pages containing a task report across all sites in the system. |
| **Number of Action Pages** | Total number of pages containing an action across all sites in the system. |
| **Number of Pages with Titles Configured via Expression** | Total number of pages that have titles configured via expression across all sites in the system. |
| **Number of Pages with Visibility Configured via Expression** | Total number of pages that have visibility configured via expression across all sites in the system. |
| **Number of Record List Pages** | Total number of pages containing a record list across all sites in the system. |
| **Number of Report Pages** | Total number of pages containing a Tempo report across all sites in the system. |
| **Number of Branded Sites** | Total number of sites that have branding configured in the system. |
| **Number of Sites with Record News** | Total number of sites that are configured to show record news. |
| **Minimum Number of Role Map Entries** | Minimum number of users and groups referenced in any site's security rolemap. |
| **Maximum Number of Role Map Entries** | Maximum number of users and groups referenced in any site's security rolemap. |
| **Average Number of Role Map Entries** | Average number of users and groups referenced in any site's security rolemap. |
| **Sites with Mobile Task List Enabled Always** | Total number of sites that have the mobile task list configuration enabled. |
| **Sites with Mobile Task List Disabled** | Total number of sites that have the mobile task list configuration disabled. |
| **Sites with Mobile Task List Enabled for Select Groups** | Total number of sites that have mobile task list configuration enabled only for selected groups. |
| **Sites with Squared Button Shape** | Total number of sites that are configured to have squared buttons. |
| **Sites with Semi-Rounded Button Shape** | Total number of sites that are configured to have semi-rounded buttons. |
| **Sites with Rounded Button Shape** | Total number of sites that are configured to have rounded buttons. |
| **Sites with Accent Loading Bar Color** | Total number of sites that utilize the default loading bar color. |
| **Sites with Hex Loading Bar Color** | Total number of sites that have a loading bar color configured with a hex code. |
| **Sites with Expressionable Loading Bar Color** | Total number of sites that have a loading bar color configured with an expression. |
| **Sites with Helium Header Bar Style** | Total number of sites that utilize the helium header bar style. |
| **Sites with Mercury Header Bar Style** | Total number of sites that utilize the mercury header bar style. |
| **Number of Interface Pages** | Total number of sites pages containing an interface across all sites in the system. |
| **Sites with Squared Input Shape** | Total number of sites that use the squared shape for inputs. |
| **Sites with Semi-Rounded Input Shape** | Total number of sites that use the semi-rounded shape for inputs. |
| **Sites with Static Display Name** | Total number of sites that have a display name configured with static text. |
| **Sites with Expressionable Display Name** | Total number of sites that have a display name configured with an expression. |
| **Number of sites with 0 pages** | Total number of sites that have 0 pages. |
| **Number of sites with 1 page** | Total number of sites that have 1 page. |
| **Number of sites with 2 pages** | Total number of sites that have 2 pages. |
| **Number of sites with 3 pages** | Total number of sites that have 3 pages. |
| **Number of sites with 4 pages** | Total number of sites that have 4 pages. |
| **Number of sites with 5 pages** | Total number of sites that have 5 pages. |
| **Number of sites with 6 pages** | Total number of sites that have 6 pages. |
| **Number of sites with 7 pages** | Total number of sites that have 7 pages. |
| **Number of sites with 8 pages** | Total number of sites that have 8 pages. |
| **Number of sites with 9 pages** | Total number of sites that have 9 pages. |
| **Number of sites with 10 pages** | Total number of sites that have 10 pages. |
| **Number of sites with 0 page groups** | Total number of sites that have 0 page groups. |
| **Number of sites with 1 page group** | Total number of sites that have 1 page group. |
| **Number of sites with 2 page groups** | Total number of sites that have 2 page groups. |
| **Number of sites with 3 page groups** | Total number of sites that have 3 page groups. |
| **Number of sites with 4 page groups** | Total number of sites that have 4 page groups. |
| **Number of sites with 5 page groups** | Total number of sites that have 5 page groups. |
| **Number of sites with 6 page groups** | Total number of sites that have 6 page groups. |
| **Number of sites with 7 page groups** | Total number of sites that have 7 page groups. |
| **Number of sites with 8 page groups** | Total number of sites that have 8 page groups. |
| **Number of sites with 9 page groups** | Total number of sites that have 9 page groups. |
| **Number of sites with 10 page groups** | Total number of sites that have 10 page groups. |
| **Number of sites with 0 pages per page group** | Total number of sites that have 0 pages per page group. |
| **Number of sites with 1 page per page group** | Total number of sites that have 1 page per page group. |
| **Number of sites with 2 pages per page group** | Total number of sites that have 2 pages per page group. |
| **Number of sites with 3 pages per page group** | Total number of sites that have 3 pages per page group. |
| **Number of sites with 4 pages per page group** | Total number of sites that have 4 pages per page group. |
| **Number of sites with 5 pages per page group** | Total number of sites that have 5 pages per page group. |
| **Number of sites with 6 pages per page group** | Total number of sites that have 6 pages per page group. |
| **Number of sites with 7 pages per page group** | Total number of sites that have 7 pages per page group. |
| **Number of sites with 8 pages per page group** | Total number of sites that have 8 pages per page group. |
| **Number of sites with 9 pages per page group** | Total number of sites that have 9 pages per page group. |
| **Number of sites with 10 pages per page group** | Total number of sites that have 10 pages per page group. |
| **Sites with HEADER BAR Primary Navigation Layout** | Total number of sites that have the header bar layout selected for the navigation bar. |
| **Sites with SIDEBAR Primary Navigation Layout** | Total number of sites that have the sidebar layout selected for the navigation bar. |
| **Sites with SIDEBAR Primary Navigation Layout and Show Display Name** | Total number of sites that have the sidebar layout selected and "Show site display name in navigation bar" turned on. |
| **Number of sites using rule inputs** | The number of sites that have a site page using an interface that contains rule inputs |
| **Number of sites using an encrypted URL parameter** | The number of sites that have at least one site page with supported rule inputs and the encryption checkbox checked. |
| **Number of sites using a plaintext URL parameter** | The number of sites that have at least one site page with URL parameters, the encryption checkbox unchecked, and at least one URL parameter toggled-on. |
| **Number of sites using a default value** | Count of sites with at least one default value. |
| **Number of sites using a default value without URL parameters** | Count of sites with at least one rule input that is toggled off and also has a default value. |
| **Number of sites using a default value with URL parameters** | Count of sites with at least one rule input that is toggled on and also has a default value. |
| **Number of sites with Process HQ pages** | Total number of sites with Process HQ pages. |
| **Number of sites with Reports and Dashboards Library pages** | Total number of sites with Reports and Dashboards Library pages. |
| **Number of Process HQ pages not using site branding** | Total number of Process HQ site pages that do not use site branding configurations. |
| **Number of light theme Process HQ pages** | Total number of Process HQ site pages using light theme. |
| **Number of dark theme Proceses HQ pages** | Total number of Process HQ site pages using dark theme. |

### Solution versions metrics log

The **Solution versions metrics** log file (`solution_versions.csv`) provides information about the versions of Appian Solutions present on the environment. Each solution application includes a constant that tracks its major and minor version.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Solution Name** | Name of the solution present on the environment. |
| **Constant UUID** | UUID for the constant. |
| **Version** | Version of the solution present on the environment, according to the constant. |
| **Last Modified Timestamp** | Date and time when the constant was last modified. |

### SSL Certificates metrics log

The **SSL Certificates metrics** log file (`ssl_certificates.csv`) provides information about [SSL Certificates](Appian_Administration_Console.html#certificates).

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Number of Client Certificates in the System** | The number of certificates uploaded to the Client Certificates grid in the admin console. |
| **Number of Trusted Certificates in the System** | The number of certificates uploaded to the Trusted Server Certificates grid in the admin console. |

### System metrics logs

The **System metrics** log file (`system.csv`) provides information about the JVM environment.

Due to the fluid nature of this data, these are recorded every five minutes. In certain environments one or more metrics may not be available. When not available, a column remains present but the value is set to -1. Deprecated columns are left blank.

Some columns are not available on Windows.

Metrics include the following:

| Metric | Description |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Thread Count** | Total number of threads running within the JVM.
\- This includes threads in pools for application server requests and external data sources. |
| **Daemon Thread Count** | Number of daemon threads running within the JVM.
\- Daemon threads are long-lived threads that perform system tasks. |
| **Used Heap Space (MB)** | Amount of memory currently in use by the JVM heap. |
| **Available Heap Space (MB)** | Amount of memory available for use by the JVM heap. |
| **Tenured Generation Usage After Collection (MB)** | Amount of memory used by Java's tenured or "old" generation after the most recent garbage collection. |
| **Tenured Generation Used (MB)** | Amount of memory currently used by Java's tenured or "old" generation. |
| **Tenured Generation Available (MB)** | Amount of memory available for use by Java's tenured or "old" generation. |
| **Permanent Generation Used (MB)** | Java 8 does not have a permanent generation space. This column will always have the value -1. |
| **Permanent Generation Available (MB)** | Java 8 does not have a permanent generation space. This column will always have the value -1. |
| **Young Collection Count** | Number of minor garbage collections in the last interval. |
| **Young Collection Time (ms)** | Time spent on minor garbage collections in the last interval. |
| **Tenured Collection Count** | Number of major garbage collections in the last interval. |
| **Tenured Collection Time (ms)** | Time spent on major garbage collections in the last interval.
\- This only includes time spent with the rest of the JVM paused and does not include time spent on concurrent garbage collection. |
| **Disk Partition Used (MB)** | Formerly, the amount of disk space used on the partition hosting `/_admin/`. |
| **Disk Partition Available (MB)** | Formerly, the amount of disk space available on the partition hosting `/_admin/`. |
| **Load Average** | Average number of runnable CPU processes over the past five minutes. |
| **CPU Core Count** | Number of cores on the system, provided here to aid in interpreting the load average. |
| **Total System Memory (MB)** | Amount of system memory available on this server. |
| **Used System Memory (MB)** | Amount of system memory currently used on this server. This number includes only memory used for applications and does not include space used for transient caches and buffers. |
| **Total Swap Space (MB)** | Amount of swap space available on this server. |
| **Used Swap Space (MB)** | Amount of swap space currently used on this server. |
| **Session Count** | Number of active application server sessions. |

The **Engine System metrics** log file (`engine_system.csv`) provides information about the engine server. Like `system.csv`, these metrics are recorded every five minutes.

**Note:**  This log is disabled for Appian Cloud customers and will not collect new data.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Load Average** | Average number of runnable CPU processes over the past five minutes. |
| **Configured Engine Count** | Number of engines configured to run on this server, provided here to aid in interpreting the load average. |
| **CPU Core Count** | Number of cores on the system, provided here to aid in interpreting the load average. |
| **Total System Memory (MB)** | Amount of system memory available on this server. |
| **Used System Memory (MB)** | Amount of system memory currently used on this server. This number includes only memory used for applications and does not include space used caches and buffers. |
| **Total Swap Space (MB)** | Amount of swap space available on this server. |
| **Used Swap Space (MB)** | Amount of swap space currently used on this server. |
| **Rollbacks** | Number of rollback .l files present in the `<AE_HOME>/logs/` directory. |
| **Transaction Replay Errors** | Number of transaction replay error .l files present in the `<AE_HOME>/logs/` directory. |
| **Write To Disk Errors** | Number of write to disk error .l files present in the `<AE_HOME>/logs/` directory. |
| **Incremental Update Errors** | Number of incremental update error .l files present in the `<AE_HOME>/logs/` directory. |
| **Replication Failures** | Number of replication failure .l files present in the `<AE_HOME>/logs/` directory. |
| **Memory Spike Warnings** | Number of memory spike warning .l files present in the `<AE_HOME>/logs/` directory. |
| **Long Transaction Warnings** | Number of long transaction warning .l files present in the `<AE_HOME>/logs/` directory. |

**Tip:**  `memory_spike_and_long_transaction_warning.l` files are counted in both the **Memory Spike Warnings** and **Long Transaction Warnings** columns.

### Translation set metrics log

The **Translation set** log (`translationSet.csv`) records metrics on the translation sets in the environment.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Total Number Of Translation Sets In The System** | Total number of translation sets in the environment. |
| **Maximum Number Of Translation Strings For Any Translation Set In The System** | The number of the most translation strings within any translation set in the environment. |
| **Minimum Number Of Translation Strings For Any Translation Set In The System** | The number of the least translation strings within any translation set in the environment. |
| **Average Number Of Translation Strings Per Translation Set** | The average number of translation strings per translation set in the environment. |
| **Average Number Of Translation Sets Per Application** | The average number of translation sets per application in the environment. |
| **Most Used Primary Locale for The Translation Set** | The most commonly used primary translation locale for the translation sets in the environment. |
| **Most Used Supported Locale for The Translation Set** | The most commonly used translation locale for the translation sets in the environment. |

### Typefaces metrics logs

The **Typefaces** log (`typefaces.csv`) records metrics on the typefaces enabled in the environment.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Number of Custom Typeface** | This metric captures whether an Appian environment has a custom typeface enabled. |
| **Custom Typeface Active** | This is the total number of custom typefaces an administrator has added to their Appian environment. |

### User metrics logs

The **User metrics** log (`users.csv`) records metrics on the users in the system.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Total Users** | Number of users in the system, including deactivated users but not including the Administrator user. |
| **Active Users** | Number of active users in the system, not including the Administrator user. |
| **Active System Administrators** | Number of active system administrator users in the system, not including the Administrator user. |
| **Active SAML Users** | Number of active users that authenticate through SAML. |
| **Active LDAP Users** | Number of active users that authenticate through LDAP. |

### User settings logs

The **User settings** log (`user_settings.csv`) records metrics on the user settings applied by users in the system.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Number of Users with a11y Increase Contrast On** | Number of users who have turned on accessibility high contrast mode. |
| **Number of Users with a11y Chart Pattern Fill On** | Number of users who have turned on accessibility chart pattern fills mode. |

### Web API metrics logs

The **Web API metrics** log (`web_apis.csv`) records metrics on Web APIs.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Total Number of Web APIs** | Total number of web API objects in the system. |
| **Total Number of Web API Versions** | Total number of web API versions in the system. |
| **Maximum Number of Versions for any Web API** | The maximum number of versions for a single web API. |
| **Total Number of Web APIs that Upload Documents** | The total number of web APIs that are configured to convert a binary request body to an Appian document. |

### Outdated type references metrics log

The **Outdated type references metrics** log (`types_outdated_refs_summary.csv`) records metrics on outdated type references.

Metrics include the following:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Data Store Count** | The number of Data Stores that reference outdated data types. |
| **Data Type Count** | The number of Data Types that reference outdated data types. |
| **Expression Rule Count** | The number of Expression Rules that reference outdated data types. |
| **Interface Count** | The number of Interfaces that reference outdated data types. |
| **Process Model Count** | The number of Process Models that reference outdated data types. |
| **Record Type Count** | The number of Record Types that reference outdated data types. |
| **Report Count** | The number of Tempo Reports that reference outdated data types. |
| **Web API Count** | The number of Web APIs that reference outdated data types. |

## Troubleshooting

Log files are an important tool for troubleshooting system problems. Because logs are assumed to be only accessible by system administrators, information about problems arising from individual process models is made available through the interface and sent via notifications to the process designer. Information is written to logs about issues that affect the entire system, including those arising from the content of configuration files, availability of connections to other services, ability to interact with file system resources, and unexpected runtime errors.

### Design error log

Expression errors in start forms, task forms, Tempo reports, record lists, record views, related actions, and Web APIs are written to a comma separated value (CSV) file (`design_errors.csv`) in the `<APPIAN_HOME>/logs` directory. This log has the following columns:

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an error occurred. |
| **Username** | The username of the user who experienced the error. |
| **Design Object Name** | The name of the design object where the error occurred. Process model names are given in the en\_US locale if available, otherwise the first is used. |
| **Design Object Type** | The type of the design object where the error occurred. Possible values: Start Form, Record Lists, Record View, Related Action, Report, Task Form, Web API. |
| **Application Name** | The name of the application containing the design object, or N/A if it is not in an application. If the object is in multiple applications, the names in a semicolon-delimited list. |
| **Error Code** | The Appian error code for the error. |
| **Error Message** | A message describing the error that occurred. |
| **Evaluation ID** | A unique identifier for the expression evaluation the error occurred in. The same ID will be displayed in the error message, so you can use it to find the corresponding log entry. |
| **Object UUID** | The UUID of the design object the error occurred in. You can [search for objects by UUID](find_and_search_in_appian.html#uuid-or-id) in Appian Designer. |
| **Record Instance ID** | For errors that occur on record views, the identifier of the record the error occurred in. |
| **Record View URL Stub** | For errors that occur on record views, the URL stub of the view the error occurred in. |
| **Environment** | The environment where the error occurred. Possible values: "TEMPO", "SITES", and "EMBEDDED". |
| **Site UUID** | For Site errors only, the Site UUID where the error occurred. If the error occurred in Tempo or Embedded, this column is null. |
| **Site Name** | For Site errors only, the name of the Site where the error occurred. If the error occurred in Tempo or Embedded, this column is null. |
| **Site Page Web Address Identifier** | For Site errors only, the web address identifier for the Site where the error occurred. If the error occurred in Tempo or Embedded, this column is null. |
| **Site Application Name** | For Site errors only, the name of the application that contains the Site where the error occurred. If the Site exists in multiple applications, the application names are displayed in a semicolon-delimited list. If the Site exists outside of an application, the value "N/A" is logged. If the error occurred in Tempo or Embedded, this column is null. |

### Portal error logs

These logs capture errors encountered by end users for each published portal in an environment. They are written to a CSV file (`portal_errors.csv`) located in the `APPIAN_HOME/logs/perflogs/portals/` subdirectory.

You can also view these errors in:

-   The [Troubleshoot tab](portal-object.html#troubleshoot-tab) of a portal object.
-   The [Portal Monitoring](monitoring_view.html#portal-monitoring) tab of the Monitor view, which allows you to view errors for connected environments.

**Note:**  In Appian Cloud environments where [enhanced portal logs](portals-troubleshooting.html#environment-support-for-enhanced-portal-logs) aren't available, this log will be empty and the errors will not display in the Troubleshoot tab or Portal Monitoring tab. Instead, use the [Portal Server Log](portals-troubleshooting.html#portal-server-log) in the portal object to help troubleshoot.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **Error Code** | The Appian error code for the error. |
| **Portal Name** | Name of the portal object. |
| **Portal ID** | UUID of the portal object. |
| **Error Message** | A message describing the error that occurred. |

### Health Check log

Logs for [Health Check](health-check.html) are located in the `<APPIAN_HOME>/logs` directory. Health Check must be set up and [configured](Appian_Administration_Console.html#health-check) on your environment in order for logging to take place.

The `health-check.log` file records details about Health Check runs and lists errors.

The `<APPIAN_HOME>/logs/health-check` directory contains files generated by the most recent Health Check run. These files can only be viewed by system administrators.

### HTTP request/response logs

The **HTTP request/response logs for integrations** (`integration_req_resp_activity.log`) capture the raw HTTP request and response messages for integrations. These logs can be used for troubleshooting. They're located in the `APPIAN_HOME/logs/perflogs/http-requests-and-responses/` subdirectory, which can only be accessed by system administrators.

Integration calls are only logged when they have been enabled in both the [Admin Console](Appian_Administration_Console.html#logging) and the individual [integration objects](Integration_Object.html#http-integration-definition). Developers can only turn on logging for integrations that use an HTTP or OpenAPI connected system.

Similarly, the **HTTP request/response logs for web APIs** (`web_api_req_resp_activity.log`) capture the raw HTTP request and response messages for web APIs. These logs can be used for troubleshooting. They're located in the `APPIAN_HOME/logs/perflogs/http-requests-and-responses/` subdirectory, which can only be accessed by system administrators.

Web API calls are only logged when they have been enabled in both the [Admin Console](Appian_Administration_Console.html#logging) and the individual [web API objects](Web_APIs.html).

**Note:**  The HTTP request/response logs may contain sensitive data or credentials. Before enabling HTTP request/response logs, it's important to understand the [integration logging guidelines](Integration_Object.html#prodlink-logging) and [web API](Web_APIs.html#prodlink-web-api-logging) logging guidelines.

To view information about log rotation and retention, see [Managing Log Files](managing-log-files.html).

### Deployment log

Logs for direct deployment are located in the `<APPIAN_HOME>/logs` directory. The `deployment.log` file records details about incoming and outgoing deployments from the environment. Deployment between environments in your infrastructure must be set up and enabled in order for logging to take place.

### Application server

When the application server encounters an unexpected error, a message describing the error is logged to `tomcat-stdOut.log` in `<APPIAN_HOME>/logs`. Issues encountered during startup are written either to a separate file managed by the application server itself or to standard output.

You can refer to these files to acquire a specific error message and use it in a help ticket, News feed post, or documentation search as part of your troubleshooting.

For example, you may see the following error and report it:

```
1
[default-threads - 29] ERROR com.appiancorp.ra.workpoller.WorkPoller - Could not obtain 3 thread(s) after 10000 attempts
```

The error means an unattended node, possibly one running a Custom Smart Service Plug-In, is taking an abnormally long time to complete.

#### Tomcat Access Log

All requests that are processed by the application server are logged to `tomcat-access.log` in `<APPIAN_HOME>/logs`. Tomcat access logs give you information about who has access to your application, what resources were accessed, the IP, queries, date, etc.

Data captured includes the following:

| **Column** | **Description** |
| --- | --- |
| **Date** | Date the request was served in yyyy-mm-dd format for GMT. |
| **Time** | Time the request was served in HH:mm:ss format for GMT. |
| **Request URI** | The URL as it is given in the actual HTTP request. |
| **Returned URL** | The URL that was accessed by the HTTP request. |
| **HTTP Status Code** | Status code of the response. |
| **Time Taken** | Time (in milisecond fraction) taken to serve the request |

### Plug-in functions running during high system memory

When the application server enters a state of high memory usage (i.e. memory used is greater than 75%), an entry is logged to `plugin_functions_running_during_high_system_memory.csv` for each plug-in function running at that time. The goal of this log is to help identify why the application server's memory usage is so high. Plug-in functions are often the culprits of memory spikes, and therefore all of the plug-in functions running while the application server is in a state of high memory usage warrant investigation. Pay special attention to those plug-ins with the longest elapsed time since plug-ins functions with long evaluation times tend to use more memory as well.

| **Metric** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the metric is taken. |
| **User UUID** | UUID of user who invoked the plug-in function. |
| **Function** | Name of the plug-in function. |
| **Evaluation Type** | The type of object that contains the plug-in function. Possible values: record list, record view, report, start form, task form, related action (process start), related action (quick task), process node, web API, internal, interface designer. |
| **Object UUID** | The UUID of the design object where the plug-in was evaluated. You can [search for objects by UUID](find_and_search_in_appian.html#uuid-or-id) in Appian Designer. |
| **Record Instance ID** | For evaluation types of record view, the record identifier (rv!identifier). |
| **Record View URL Stub** | For evaluation types of record view, the record view URL stub. |
| **Process Instance ID** | For evaluation types of start form, task form, related action, or process node, the process instance's ID (pp!id). |
| **Task ID** | For evaluation types of task form, the task's ID (tp!id). |
| **Elapsed Time (ms)** | Total time spent evaluating the plug-in function from its start until the log entry occurred. This is not the plug-in function's entire evaluation time. |

### Data service

Logs for the data service are located in the `<APPIAN_HOME>/logs/data-server/` directory. The `watchdog.log` file contains information about data service startup and shutdown, configuration values being used by the data service, and entries for general data service operations and errors. The other logs in the directory contain log entries specific to the various subcomponents of the data service.

The logs in the `<APPIAN_HOME>/logs/data-server` directory do not contain any proprietary or sensitive data. In the event that sensitive data might be required to troubleshoot an issue with the data service, the `data-server-client-errors-detail.log` file in the `<APPIAN_HOME/logs>` directory will contain this information.

### Search server

By default, logs for the search server are located in the `<APPIAN_HOME>/logs/search-server/` directory. This can be controlled by editing `<APPIAN_HOME>/search-server/conf/log4j.properties`.

### Service Manager

Service Manager, the process that coordinates the Appian Engines, records information about engine startup and shutdown, checkpointing, and transaction replication in `/logs/service_manager.log`.

### Engine databases

Database communication events and errors are logged in text files within the `<APPIAN_HOME>/logs/` directory.

Each database event and error log filename is constructed in the following syntax:

```
1
db_EngineAcronym_DATE_TIME.log
```

Examples:

```
1
2
db_CO1_2011-07-22_2020.log
db_PD1_2011-07-22_1917.log
```

Each database event and error log is written in the following syntax:

```
1
DATE TIMESTAMP [Engine Acronym] {Engine File} LOGGING LEVEL Message Type "User Context" "Timing in milliseconds" "Action"
```

Examples:

```
1
2
2011-07-22 20:20:18 [PA00011] {pa2.kdb 13} (Default) WARN .a.pf.te "Administrator" "251.0251" ".a.p.TOPICS.send_message"
2011-07-22 20:20:17 [PX001] {pe2.kdb 1} (Default) WARN .a.p.PROCESS.i "Incremental Update: Exec Engine is not ready to start Incremental update."
```

Message Types include the following:

-   te = transaction execution
-   tg = table growth

By default, the logging level for all is set to **INFO**.

For diagnostic reasons, you may want to temporarily increase the amount of information that is logged. You can change this setting by creating a new `log_XX_YY.properties` file that configures logging for an individual gateway.

The logging property file names that can be used to customize logging for an individual application engine database include the following:

| **Server ID** | **Custom Server Logging File** |
| --- | --- |
| CH Channels | log\_db\_CH.properties |
| CS Collaboration Statistics | log\_db\_CS.properties |
| CO Collaboration | log\_db\_CO.properties |
| NE Notifications Email | log\_db\_NE.properties |
| NO Notifications Service | log\_db\_NO.properties |
| PE Personalization | log\_db\_PE.properties |
| PO Portal | log\_db\_PO.properties |
| DF Discussion Forums | log\_db\_DF.properties |
| PA Process-Analytics | log\_db\_PA.properties |
| PX Process-Execution (All) | log\_db\_PX.properties |
| PD Process-Design | log\_db\_PD.properties |

### Engine event logs

The Appian engines produce `.l` files whenever they encounter certain types of unexpected events. These `.l` files contain diagnostic information about the event as well as the transaction that initiated it. The names of the `.l` files are all of the form `<engine identifier>_<timestamp>_<event type>.l`. Use the `<APPIAN_HOME>/server/_scripts/diagnostic/convert_l_to_text.sh` (`.bat`) script to convert these logs to text for review.

| **Name** | **Description** | **Recommended Action** |
| --- | --- | --- |
| incremental\_update\_error.l | Data could not replicate from a process execution engine to the corresponding process analytics engine, but the system should repair itself automatically | These errors are safe to ignore unless they continue. If the errors continue, contact Appian Support. |
| long\_transaction\_warning.l | A transaction took longer than 60 seconds for the engine to process | These errors are safe to ignore unless they continue, but this incident should be reported to Appian Support for diagnosis to help prevent future occurrences. |
| memory\_spike\_warning.l | A transaction resulted in the engine allocating more than 512 MB of memory | These errors are safe to ignore unless they continue. If the errors continue, contact Appian Support. |
| memory\_spike\_and\_long\_transaction\_warning.l | A transaction resulted in the engine allocating more than 512 MB of memory and took longer than 60 seconds to process | These errors are safe to ignore unless they continue, but this incident should be reported to Appian Support for diagnosis to help prevent future occurrences. |
| replication\_failure.l | A transaction could not replicate from the primary engine to a replica | Checkpoint the engine and restart the replica |
| rollback.l | The engine encountered an internal error when processing a transaction and had to restart | The automatic restart of the engine should allow the system to recover automatically, but this incident should be reported to Appian Support for diagnosis to help prevent future occurrences. |
| transaction\_replay\_error.l | The engine could not replay a transaction from its log when restarting | Contact Appian Support |
| write\_to\_disk\_failure.l | The engine could not persist a transaction to disk and had to restart | Ensure that the engines have permissions to write to their gateway directory and that there is enough free disk space available. |

### Data type locks

The log for information regarding locks on data types (`data-type-locks.log`) is located in `<APPIAN_HOME>/logs` directory. The log shows all the calls to lock and unlock data types, at the INFO level, when a data type is updated by various mechanisms like application import, XSD import, etc. The log can help resolve issues regarding data types being locked when attempting to update them or their precedents.

### MariaDB upgrade check logs

**Note:**  These logs are only applicable for Appian Cloud customers.

The logs regarding potential compatibility issues for upgrade to MariaDB as the Appian Cloud database are captured in `<APPIAN_HOME>/logs`. There are three corresponding logs:

1.  The Database Incompatibility Check Log (`mariadb-incompatibility-report.log`) captures compatibility issues within scripts in the Cloud database.
2.  Query Database Smart Service Incompatibility Check Log (`query_node_mariadb_incompatibility.log`) captures compatibility issues in the Query Database Smart Service.
3.  MariaDB Column Type Conversion Log (`mariadb-column-type-conversions.log`) captures the database columns that changed their type after Appian Cloud database is upgraded from MySQL to MariaDB.

For more information regarding these logs and how to use them, see [MariaDB Upgrade Guide](Mariadb_Upgrade_Guide.html) page.

## Auditing

Audit logs provide a record of specific kinds of actions that have previously taken place in the system for later investigative use.

### API Keys

The OAuth 2.0 Clients log, located in the `<APPIAN_HOME>/logs/audit` directory is a CSV file, `api_key.csv`, that can be used to audit both the management and usage of OAuth 2.0 clients.

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an action occurred. |
| **Key ID** | The unique identifier associated with the API key. |
| **Key Alias** | The Description associated with the API key. |
| **Service Account** | The username of the Service Account associated with the API key. |
| **Event** | The event that took place. Possible values include `CREATED`, `DEACTIVATED`, `REACTIVATED`, `RENAMED`, `DELETED`, and `USED`. |
| **Actor** | The user that took the action. |
| **Endpoint** | The web API endpoint being accessed. |
| **Client IP Address** | The IP address of the client making the request. |

### Admin Console

Changes to configurations made through the Admin Console are logged in a comma-separated value (CSV) file, `admin_console_audit.csv`, in the `<APPIAN_HOME>/logs/audit` directory.

Data captured includes the following:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the modification of a configuration value occurred. yyyy-mm-dd hh:mm:ss (Milliseconds are excluded.) |
| **Username** | The username of the user that changed the configuration value. |
| **Property** | The fully-qualified name of the configuration property that was changed. |
| **Previous Value** | The previous value of the configuration property. |
| **New Value** | The new value of the configuration property. |

Also in the `<APPIAN_HOME>/logs/audit` directory is another CSV file, `admin_console_user_start_pages_audit.csv`, that logs a snapshot of the values on the User Start Pages view every time an administrator makes and saves changes.

Data captured includes the following:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the corresponding configuration value was saved. yyyy-mm-dd hh:mm:ss (Milliseconds are excluded.) |
| **Username** | The username of the user that made and saved changes. |
| **Row Number** | The row number in the Start Pages grid on the User Start Pages view. "Default Start Page" if the corresponding configuration value is for the Default Start Page field. |
| **Start Page URL** | The configured URL with the base URL and application context truncated. |
| **Groups** | The group IDs corresponding to the configured groups. Null for Default Start Page field. |

See also: [Admin Console](Appian_Administration_Console.html)

### Authorizations

The authorization audit log file (`authz-audit.csv`) records information about the authorization of already authenticated users within the system.

This covers user access to services, servlet paths, and URIs that are restricted to a particular type of user (i.e. designer users). By default only denials are logged.

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an action occurred. |
| **Username** | The username of the user who attempted the action. If for some reason the username is unknown, this column will be blank. |
| **Action Target** | The type of action that was attempted: One of `uri`, `uri-filter`, `struts`, `java-service`, `hybrid-service`, `k-service-` followed by a service name, or `dao-` followed by a data source JNDI name |
| **Action Name** | The specific action that was attempted. For example, a uri or method name. |
| **Decision** | The result of the action. One of `ALLOWED`, `DENIED`, or `ERROR`. |
| **Details** | Details about the attempted action, usually including the attempting user's roles and the roles required to complete the action |

### Blocked files

When a file upload is blocked by the [virus scanner](Anti-Virus_on_Cloud.html) (Cloud only) or by [file extension](Appian_Administration_Console.html#file-upload), information is logged in a comma-separated (CSV) file, `blocked_files.csv`, in `<AE_HOME>/logs/audit/`. Data captured include the following:

| Column | Description |
| --- | --- |
| **Timestamp** | Date and time when the request was made in yyyy-mm-dd hh:mm:ss format. |
| **User** | The username of the user who uploaded the file. |
| **Document Name** | The name of the uploaded file, including the extension. |
| **Reason** | The reason why the file was blocked. Options: "Virus Detected", "File Extension", "File Type" |
| **Details** | The details depend on the reason the file was blocked:
-   If the reason is "Virus Detected", the name of the virus signature that blocked the file from being uploaded.
-   If the reason is "File Extension", the extension of the file.
-   If the reason is "File Type", additional details on the underlying type and expected extension versus the found extension

 |
| **Hash** | The hash of the file that was blocked. This column provides insight into whether a single file or multiple file are being blocked. The "Document Name" column is not sufficient in identifying whether a file is being blocked multiple times since file names can be changed easily. |

### Cloud database requests

**Tip:**  Cloud database audit logs are only available for Appian Cloud customers. Additionally, these logs are disabled if database encryption feature is enabled on your Appian Cloud site.

Requests sent to the business data source in the Appian Cloud relational database are captured in the `rdbms-audit.log.yyyy-MM-dd` file, located in the `<APPIAN_HOME>/logs/audit/rdbms` directory. The log only contains requests that were sent from Appian, the Cloud Database administrative interface (phpMyAdmin), or the [Enhanced Data Pipeline](Enhanced_Data_Pipeline_for_Appian_Cloud.html). For data security compliance reasons, this log is only accessible to members of the `Database Administrators` group.

The following data is captured in this log:

```
1
[timestamp],[serverhost],[username],[host],[connectionid],[queryid],[operation],[database],[object],[retcode]
```

| **Column** | **Description** |
| --- | --- |
| **timestamp** | Time at which the event occurred. |
| **serverhost** | The RDBMS server host name. |
| **username** | RDBMS user under which the statement was executed. |
| **host** | Host from which the user connected. |
| **connectionid** | Connection ID number for the related operation. |
| **queryid** | Query ID number. |
| **operation** | Recorded action type. |
| **database** | Active database (as set by USE). |
| **object** | The query that was executed. |
| **retcode** | Return code of the logged operation. |

### Cloud database management

Changes to the cloud database made through the [Update Enhanced Data Pipeline user credential endpoint](Update_Enhanced_Data_Pipeline_Credential_Endpoint.html) are recorded in a comma-separated value (CSV) file, `cloud_database_mgmt.csv` in the `<APPIAN_HOME>/logs/audit` directory. You can use this file to see who made a change, where the request originated, and when the change occurred.

The following data is captured in this log:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Time at which the event occurred. |
| **Event** | The type of change requested. |
| **Actor** | The username of the user account that requested the change. |
| **Actor UUID** | The UUID of the user account that requested the change. |
| **IP Address** | The IP address of the user account that requested the change. |
| **Database User** | The username of the database user whose property was changed. |
| **HTTP Response Code** | The HTTP response code of the API request call. |
| **APNX Error Code** | The Appian error code of the API request call. |

### Connected system management

Changes to connected system properties made through the [Update Connected System endpoint](Update_Connected_System_Endpoint.html) are recorded in a comma-separated value (CSV) file, `connected-system-mgmt.csv` in the `<APPIAN_HOME>/logs/audit` directory. You can use this file to see who made a change, where the request originated, and when the change occurred.

The following data is captured in this log:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Time at which the event occurred. |
| **CS UUID** | The identifier of the affected connected system object. |
| **CS Name** | The name of the affected connected system object. |
| **Actor** | The username of the user account that requested the change. |
| **Actor UUID** | The UUID of the user account that requested the change. |
| **Event** | The type of change requested. |
| **Actor IP Address** | The IP address of the user account that requested the change. |
| **Event Status** | A indication of whether the requested change was made. |

### Data governance security

Changes to the [Data Stewards assigned to record type](configure-security.html#assign-data-stewards-to-record-types) on the Data Governance page are logged in a comma-separated value (CSV) file, `data_governance_security.csv`, in the `<APPIAN_HOME>/logs/audit` directory.

Data captured includes the following:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the change occurred formatted as `yyyy-mm-dd hh:mm:ss`. |
| **Username** | The username of the user that modified the record type permissions in the Data Governance page. |
| **Name** | The name of the record type where data stewards were assigned or removed. |
| **UUID** | The UUID of the record type that was modified. |
| **Previous Rolemap** | A text representation of the data stewards previously assigned to the record type on the Data Governance page. |
| **New Rolemap** | A text representation of the new value of the data stewards assigned to the record type on the Data Governance page. |

### Decryption

When a user attempts to access the plaintext content of an encrypted text component, this action is recorded in the `decryption.csv` file in the `<APPIAN_HOME>/logs/audit` directory.

Data captured includes the following:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time of the access event formatted as `yyyy-mm-dd hh:mm:ss` |
| **Username** | Username of the user that accessed the component |
| **Action** | Type of auditable event (`Decrypt`) |
| **Success** | Whether the user accessed the plaintext of the value |
| **Context** | Where the value was decrypted (either `Public API`, `EncryptedTextField`, or `Internal Encryption`) |

### Deletions

Object and plug-in deletions are recorded in a comma-separated value (CSV) file, `deletion.log`, in the `<APPIAN_HOME>/logs` directory. If an object or plug-in is deleted and you need to know when it was deleted and which user did it, you can refer to this log file.

The following object deletions are recorded:

-   Connected System
-   Constant
-   Data Store
-   Data Type
-   Document
-   Document Folder
-   Expression Rule
-   Feed
-   Group
-   Group Type
-   Integration
-   Interface
-   Portal
-   Process Model
-   Process Model Folder
-   Record Type
-   Rule Folder
-   Site
-   Tempo Feed Entry
-   Tempo Report
-   Web API

Object version deletions are also recorded for [objects that support versioning](Managing_Object_Versions.html).

Note that for document files, only deletions (which are not reversible) are logged. Deactivations (which are reversible) are not logged because the files still exist in the system even though they do not appear in the interface.

You can also view object deletions in the [design objects log](#design-objects).

**Example Document Deletion**

```
1
2021-05-31 15:12:25,889 [http-0.0.0.0-8080-13] INFO  com.appiancorp.common.logging.DeleteLogger - Successful deletion of objects: id=521; types=Document; names=["server"]; deleted by user=[john.smith.s]
```

**Example Document Version Deletion**

```
1
2021-05-31 15:12:25,883 [http-0.0.0.0-8080-13] INFO  com.appiancorp.common.logging.DeleteLogger - Successful deletion of object version: id=5221; types=Document; names=["server"]; deleted by user=[john.smith.s]
```

**Example Tempo Feed Entry Deletion**

```
1
2011-12-19 13:31:25,509 [http-0.0.0.0-8080-2] INFO  com.appiancorp.tempo.rdbms.RdbmsFeedSourceImpl_Delete - Administrator deleted entry [id=b-2] by [user=Administrator]: [body=hello world]
```

### Design objects

Changes to design objects are recorded in a comma-separated value (CSV) file, `design_objects.csv`, in the `<APPIAN_HOME>/logs/audit` directory. You can refer to this log file to learn when an object was created, updated, or deleted, and which user took the action.

For objects with [versions](Managing_Object_Versions.html), this log will contain more entries for a given object than you see when viewing its version history. This is because certain actions like [changing the security of an object](object-security.html) or [deleting a version](Managing_Object_Versions.html#delete-versions) are logged as updates, but don’t result in a new version of the object being created.

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an object change occurs. yyyy-mm-dd hh:mm:ss (Milliseconds are excluded.) |
| **User UUID** | The UUID of the user who took the action. |
| **Username** | The username of the user who took the action. |
| **Object UUID** | The object upon which the action is taken. |
| **Object Type** | The type of the object upon which the action is taken. (Valid values: English Appian Designer object type names). |
| **Action** | The action taken on the object. |

### Devops Infrastructure

The DevOps Infrastructure audit logs are split across three log files:

-   [DevOps Infrastructure Requests](#devops-infrastructure-requests)
-   [DevOps Infrastructure Management](#devops-infrastructure-management)
-   [DevOps Infrastructure Handler](#devops-infrastructure-handler)

#### DevOps Infrastructure requests

The DevOps Infrastructure Request log, located in the `<APPIAN_HOME>/logs/audit` directory is a CSV file, `devops_infrastructure_request.csv`, that can be used to audit the request and approval process for adding environments to your infrastructure. This includes the request initiation, withdrawal, approval, denial, and timeout.

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an action occurred. |
| **Status** | The status of this request. |
| **ID** | A unique identifier for the request. |
| **Name** | The name of the remote environment. |
| **URL** | The URL of the remote environment. |
| **Request Type** | The action that triggered this log entry. |
| **Initiated Date** | The date of the initial request to add an environment. |
| **Initiator Name** | The display name of the system administrator that made the initial request. |
| **Initiator Username** | The username of the system administrator that made the initial request. |
| **Initiator IP** | The IP address of the system administrator that made the initial request. |
| **Approver Name** | The display name of the system administrator who approves or denies the initial request. |
| **Approver Username** | The username of the system administrator who approves or denies the initial request. |
| **Approver IP** | The IP address of the system administrator who approves or denies the initial request. |
| **Decision Date** | The date of the decision. |
| **Expiration Date** | The datetime at which the request is set to expire. |

#### DevOps Infrastructure management

The DevOps Infrastructure management log, located in the `<APPIAN_HOME>/logs/audit` directory is a CSV file, `devops_infrastructure.csv`, that can be used to audit the management of environments in your infrastructure. This includes the addition of an environment to your infrastructure, the enabling and disabling of communication with an environment in your infrastructure, and the removal of an environment from your infrastructure.

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an action occurred. |
| **Event** | The action that triggered this log entry. |
| **Name** | The name of the environment in your infrastructure. |
| **URL** | The URL of the environment in your infrastructure. |
| **Enabled** | Indicates whether communication is enabled in your environment. |
| **Remote Enabled** | Indicates whether communication is enabled in the remote environment. |
| **Created Date** | The date that this environment was initially added to your infrastructure. |
| **Last Action Type** | The last action that took place with this environment. |
| **Last Action Actor Name** | The display name of the system administrator that took the last action. |
| **Last Action Actor Username** | The username of the system administrator that took the last action. |
| **Last Action Date** | The date of the last action. |
| **Last Action IP** | The IP address from which the system administrator took the last action. |

#### DevOps Infrastructure handler

The DevOps Infrastructure handler log, located in the `<APPIAN_HOME>/logs/audit` directory is a CSV file, `devops_infrastructure_handler.csv`, that can be used to audit all communication between environments in your infrastructure.

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an action occurred. |
| **Direction** | Incoming or Outgoing. `Incoming` indicates that a capability was initiated from the remote environment and must be handled. `Outgoing` indicates that the capability was initiated from your environment. |
| **Before or After Request Processed** | Indicates the step in the request handling process. In the initiating environment, `Before` means you're sending a capability request and `After` indicates that the remove environment responded. In the environment handling the request, `Before` means you're receiving a request to handle and `After` indicates that you're responding with how the request was handled. |
| **ID** | A unique identifier in your infrastructure for the environment in your infrastructure. |
| **Name** | The name of the environment in your infrastructure. |
| **URL** | The URL of the environment in your infrastructure. |
| **IP Address** | The IP address of the request or response from the environment in your infrastructure. |
| **Feature** | Indicates which capability this exchange is associated with. |
| **Sub Path** | Indicates the specific action being leveraged for that capability. |
| **Status Code** | The HTTP status code. |
| **Error Occurred** | Indicates whether an error occurred. |
| **Error Message** | Error details. |

### File attachment downloads

Each attempted download of a file is recorded in the log file `<APPIAN_HOME>/logs/audit/file_attachment_downloads.csv`. This is a comma-separated value (CSV) file with the following columns:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when a user attempted to download a file. |
| **User** | The UUID of the user who attempted to download a file. |
| **File ID** | Identifier of the file. |
| **File Opaque ID** | Opaque identifier of the file. |
| **File Name** | Name of the file. |
| **Download Successful** | Indicates whether the download was successful. The download can fail if the file attachment or news entry to which it was attached is deleted or if the user loses privileges to the file or news entry. |

### Forgot password requests

User requests to reset a forgotten password are logged in a comma-separated (CSV) file, `forgot_password_requests.csv`, in `<AE_HOME>/logs/audit/`. Data captured includes the following:

| Column | Description |
| --- | --- |
| **Timestamp** | Date and time when the request was made in yyyy-mm-dd hh:mm:ss format. |
| **Username** | The username entered in the reset request. |
| **Email Address** | The email address to which the email was sent. If no email was sent, this field will be blank. |
| **Email Type** | The type of email sent. Valid values are: "Password Reset," "Deactivated User," "Password Not Old Enough," and "Not Authenticated Through Appian." The value may also be blank if an email was not sent. In such a case, "Reason Email Was Not Sent" will have a value explaining why an email was not sent. |
| **Requestor IP Address** | The IP address that the application server associated with this request. |
| **Reason Email Was Not Sent** |
The value will be empty if email was sent. Otherwise, value will be one of the following:

-   User does not exist.
-   User does not have an email address
-   User email address is invalid
-   [Invalid "from address" in custom.properties](Mail_Server_Setup.html)

 |

### Group management

Any time a user makes a [direct membership change](Group_Management.html#add-or-remove-members) to a group, this change is recorded in the `group_management.csv` file. This file is located in the `<APPIAN_HOME>/logs/audit` directory.

The following events are recorded:

-   A user, group, or child group is added to a group.
-   A user, group, or child group is removed from a group.

Data captured includes the following:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an action occurred. |
| **Action** | The action performed by the user or system. Possible actions:
1.  Users Added
2.  Users Removed
3.  Groups Added
4.  Groups Removed
5.  Child Group Added
6.  Child Group Removed

 |
| **Actor UUID** | The UUID of the user who performed the action. |
| **Actor Username** | The UUID of the user who performed the action. |
| **Acting On Behalf Of UUID** | The UUID of the user who initiated the action. |
| **Acting On Behalf Of Username** | The username of the user who initiated the action. |
| **Group UUID** | The UUID of the group which had members added to it or removed from it. |
| **Group Name** | The name of the group which had members added to it or removed from it. |
| **Member UUIDs** | A semicolon-delimited list of UUIDs of the users and groups that were added or removed as members. |
| **Member Names** | A semicolon-delimited list of usernames or group names of the users and groups that were added or removed as members. |

### Logins

Each log in attempt is recorded in the `login-audit.csv` file. This file is located in the `<APPIAN_HOME>/logs` directory.

The following login events are recorded:

-   Internal authentication through the login page.
-   Single Sign On and/or an external directory service.
-   Successfully authenticated web API call.

Data captured includes the following:

| Column | Description |
| --- | --- |
| **Login Timestamp** | Date and time when a login or access attempt occurs. yyyy-mm-dd hh:mm:ss (Milliseconds are excluded.) |
| **User** | The username submitted by the login attempt. |
| **Status** | The login attempt status is recorded as Succeeded, Failed, or Transient (Appian Mobile Application logins only) . |
| **IP** | The IP address that the application server associated with this request. |
| **Source** | One of the following authentication sources is listed:-   `Portal` (includes [LDAP](Authentication.html#ldap-authentication) and [SAML](Authentication.html#saml-authentication) authentication)
-   `Email`
-   `JMS Message`
-   `SharePoint`
-   `Web Service`
-   `Web API` (if HTTP basic authentication logging is enabled) |
| **User Agent** | The self-reported client information (such as browser version) for web browsers. Mobile clients list the following details.-   Agent name, such as AppianiOS or AppianBB
-   Appian Mobile application version number
-   Device name, such as iPad, iPhone, or 9780Device
-   Device OS version, such as 4.2.1 (iOS) or 6.0.0.359 (BB OS)
-   Internal build number |
| **Transaction ID** | A unique identifier (UUID) for each login attempt. Can be utilized to group Appian Mobile application logins, for which both a "Transient" and "Succeeded" entry can be recorded. |
| **Session UUID** | The Appian user's unique identifier (UUID) for the session that was logged in. Also found in \`logout-audit.csv\` |

A login is determined to have **Succeeded** when the following valid credentials are passed:

1.  The username and password combination is correct.
2.  The user is not deactivated.
3.  The user is not locked.
4.  The user has not reached the maximum allowed number of concurrent sessions.
5.  (Appian Cloud only) If the Trusted IP Address feature is enabled, the login must also meet the established IP address or origination domain criteria.
6.  The user's password is expired, but the user is prompted to change their password before proceeding.
    -   It is possible for a user to repeatedly attempt to login and cancel the password change.
    -   Each such attempt is logged as a success.
7.  When Single Sign On is enabled, a successful login occurs when the user accesses Appian (according to each window opened during the session).
    -   For example, should the user close the browser, then reopen it a few minutes later before the Appian session expired, another success is recorded.

Logins via the Appian Mobile application are handled via an in-app browser. For these logins, a Transient entry is recorded when the user identity has been validated in the in-app browser, but a session has not yet been created. When a valid session is established, a Succeeded entry is added. All successful mobile logins will be preceded by a Transient entry. If you are looking to count successful logins, ignore Transient entries and only count Succeeded entries.

The user agent information reported by the web browser often includes industry acronyms and jargon with unclear meaning.

For example:

-   Mozilla/4.0 may be reported by any browser that is compatible with Firefox.
-   Windows NT 6.1 is reported by browsers that are using Windows 7.

**Special Consideration for Cloud**

To view the login-audit file, access the navigation menu in Appian and select **System Logs**.

**Note:**  If your Appian Cloud environment uses [inbound access over PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html), the source IPs displayed in the login-audit file are from the Appian Cloud network load balancer which backs your PrivateLink connection, not the client source IPs.

### Logouts

User session logouts are recorded in the `logout-audit.csv` file. This file is located in the `<APPIAN_HOME>/logs` directory.

The following logout events are recorded:

-   A user session has expired.
-   A user manually logs themselves out.
-   A user is renamed, logging out all active sessions.
-   A user is deactivated, logging out all active sessions.
-   A maintenance window is triggered, logging out relevant user sessions.

Data captured includes the following:

| Column | Description |
| --- | --- |
| **Login Timestamp** | Date and time when the login occurred and session was created. yyyy-mm-dd hh:mm:ss |
| **Last Activity Time** | Date and time for the last session activity. yyyy-mm-dd hh:mm:ss |
| **Session Deletion Time** | Date and time when the user was logged out and the session deleted. yyyy-mm-dd hh:mm:ss |
| **User Active Duration (HH:mm:ss)** | Amount of time from login to "Last Activity Time". |
| **Session Duration (HH:mm:ss)** | Amount of time from login to logout. |
| **User** | The username for the user session. |
| **Logout Reason** | One of the following values:-   `SESSION_EXPIRATION`
-   `LOGOUT`
-   `USER_RENAME`
-   `USER_DEACTIVATION`
-   `MAINTENANCE_WINDOWS` |
| **User UUID** | The Appian user's unique identifier (UUID). |
| **Session UUID** | The Appian user's unique identifier (UUID) for the session that was logged out. Also found in \`login-audit.csv\`. |

> If the node hosting the web application server or the web application server itself is shutdown unexpectedly, any active user sessions will not be recorded in the logout audit at this time.

Session audits can easily be accomplished by joining login-audit and logout-audit data with **Session UUID**.

![/Combining Login and Logout Audits](images/Combining_Login_and_Logout_Audits.png)

For example, below are three successfully created user sessions taken from a login-audit.

##### login-audit sample data

| Login Timestamp | User | Status | IP | Source | Transaction ID | Session UUID |
| --- | --- | --- | --- | --- | --- | --- |
| 2022-06-21 15:27:19 | joshua.ledge | Succeeded | 12.3... | Portal | 7eec7b33... | 721491af... |
| 2022-06-21 19:31:49 | joel.redd | Succeeded | 98.7... | Portal | d9df2346... | fc9986cd... |
| 2022-06-21 21:31:49 | talhah.hamm | Succeeded | 90.8... | Portal | ebccd463... | 977e83a8... |

By identifying the matching rows using Session UUID in the logout-audit, a full session analysis can be done. Not all properties from both audit files are shown.

##### login + logout audit sample data

| User | IP | Login Timestamp | Session Deletion Time | Session Duration (HH:mm:ss) | Logout Reason | Session UUID |
| --- | --- | --- | --- | --- | --- | --- |
| joshua.ledge | 12.3... | 2022-06-21 15:27:34 | 2022-06-22 00:21:51 | 08:54:16 | SESSION\_EXPIRATION | 721491af... |
| joel.redd | 98.7... | 2022-06-21 19:31:49 | 2022-06-22 00:32:51 | 05:01:02 | SESSION\_EXPIRATION | fc9986cd... |
| talhah.hamm | 90.8... | 2022-06-21 21:31:56 | 2022-06-22 04:09:55 | 06:37:59 | LOGOUT | 977e83a8... |

### Multi-factor authentication

When a user is configured to use [multi-factor authentication](Appian_Administration_Console.html#multi-factor-authentication) (MFA) with Appian authentication, all verification code activity is recorded in the `multi_factor_authentication.csv` file. This file is located in the `<APPIAN_HOME>/logs/audit` directory.

The following events are recorded:

-   A verification code is sent to a user.
-   A valid verification code is entered successfuly.
-   An invalid verification code is entered.

Data captured includes the following:

| Column | Description |
| --- | --- |
| **Timestamp** | Date and time when the login occurred and session was created. Formatted as `yyyy-mm-dd hh:mm:ss` |
| **Username** | The user who either had a verification code sent to their email or attempted to enter a verification code. |
| **Sent To Location** | The email address that the verification code was sent to. |
| **IP Address** | The IP address of the user associated with this request. |
| **Method** | The MFA method used. For now, the only valid value for this column is "Email". |
| **Event** | One of the following values:-   `Code Sent`
-   `Code Verification Failed`
-   `Code Verification Successful` |
| **Code ID** | The ID associated with the verification code. This will be null when an invalid verification code is entered. |

### Mutual TLS (mTLS) certificate authentication

When an environment is configured to use mTLS and a web API request fails because the certificate fails authentication, the failure is logged in the `mtls_for_web_api_certificate_authentication_failures.csv` file. This file is located in the `<APPIAN_HOME>/logs/audit` directory.

Data captured includes the following:

| Column | Description |
| --- | --- |
| **Timestamp** | Date and time when the request occurred and authentication was attempted. Formatted as `yyyy-mm-dd hh:mm:ss`. |
| **Certificate Thumbprint** | The certificate's identifying hash. |
| **Request Path** | The endpoint the request was sent to. |

### News usage

User activity related to the Tempo news feed is recorded in the log file `<APPIAN_HOME>/logs/audit/news_usage.csv`. This is a comma-separated value (CSV) file with the following columns:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an action occurred. |
| **User** | The UUID of the user who performed the action. |
| **Action** | The action performed by the user. Possible actions: `Post From User`, `Message From User`, `Locked Message From User`, `Comment From User`, `Added Participants`, `Social Task From User`, `Kudos From User`, `Star a News Event`, `Un-star a News Event`, `Event From Process`, `Comment From Process`, `View Site Interface` |

### OAuth 2.0: Authorization Code Grant for connected systems

Every time a user hits the OAuth callback for the Authorization Code grant, Appian will log a line to the log file, `oauth_callback.csv`, in the `<APPIAN_HOME>/logs/audit` directory with the following columns:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the callback was hit. _yyyy-MM-dd HH:mm:ss_ |
| **User** | The user hitting the callback endpoint |
| **Connected System UUID** | The UUID of the connected system that the user is authorizing. This value will be blank if a user reaches the callback endpoint without having followed an [Authorization Link](authorization_link_component.html) |
| **Connected System Name** | The name of the connected system that the user is authorizing. This value will be blank if a user reaches the callback endpoint without having followed an [Authorization Link](authorization_link_component.html) |
| **Success** | _True_ if the authorization succeeded and an access token was stored, otherwise _false_ |
| **Scope** | The requested scope for the access token |
| **Token Expiration** | If a token was retrieved, when it is set to expire if such data was provided by the resource |
| **Is Test** | _True_ if the callback was for an authorization test, otherwise _false_ |

### OAuth 2.0 Clients Credentials Grant for Web APIs

The OAuth 2.0 Clients log, located in the `<APPIAN_HOME>/logs/audit` directory is a CSV file, `oauth_client_credentials_grant_for_web_apis.csv`, that can be used to audit both the management and usage of OAuth 2.0 clients.

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an action occurred. |
| **Client ID** | The Client ID associated with the OAuth 2.0 client. |
| **Client Description** | The Description associated with the OAuth 2.0 client. |
| **Service Account** | The username of the Service Account associated with the OAuth 2.0 client. |
| **Event** | The event that took place. Possible values include `CREATED`, `DEACTIVATED`, `REACTIVATED`, `RENAMED`, `DELETED`, `ACCESS_TOKEN_RETURNED`, and `ACCESS_TOKEN_USED`. |
| **Actor** | The user that took the action. |
| **Endpoint** | The web API endpoint being accessed. |
| **Client IP Address** | The IP address of the client making the request. |

### Object rolemaps

Changes to the rolemaps of existing [design objects](design-objects.html) are logged in a comma-separated value (CSV) file, `object_rolemap_audit.csv`, in the `<APPIAN_HOME>/logs/audit` directory. The rolemaps of the following objects are not logged:

-   Discussion Thread
-   Forum
-   Process Instance
-   User

Only rolemap changes to existing objects are logged; changes to other security properties (including changes due to inheritance) are not logged. Rolemaps are not logged on object creation.

Data captured includes the following:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the rolemap change occurred. yyyy-mm-dd hh:mm:ss (Milliseconds are excluded.) |
| **Username** | The username of the user that changed the rolemap. |
| **Name** | The name of the object whose rolemap was changed. |
| **Type** | The type of the object whose rolemap was changed. |
| **UUID** | The UUID of the object whose rolemap was changed. |
| **Previous Rolemap** | A text representation of the object's rolemap prior to the change. The rolemap varies based on object type. |
| **New Rolemap** | A text representation of the new value of the object's rolemap. |
| **Location** | The location of where the rolemap change occurred. This column indicates when the rolemap change occurred during Import and is blank otherwise. |

### Outdated type references

When this [check is enabled](understanding-the-health-check-report.html#outdatedincompatible-data-type-references), every reference to an outdated type is recorded on start-up and every 12 hours following in a comma separated value (CSV) file (`types_outdated_refs.csv`) in the `<APPIAN_HOME>/logs/audit` directory.

Data captured includes the following:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time of reporting. |
| **Data Type** | The name and namespace of the datatype, including version number. |
| **Data Type Fields** | A semi-colon separated list of the fields of this outdated version of the data type (e.g., fieldName1; fieldName2; …). |
| **Design Object Type** | The type of design object that is referencing the outdated data type version. |
| **Name** | The name of the design object referencing the outdated type. |
| **UUID** | The UUID of the design object referencing the outdated type. |
| **URL** | The URL to access the definition of the design object. |
| **Location** | The breadcrumbs location of where the object references the data type. If there are multiple, each instance will be its own row. |

**Tip:**  Data stores will not have a URL value. Use the Appian designer to locate data stores by name.

### Password resets

When a user resets their password by following an email generated by the Forgot Password page, Appian logs information in a comma-separated (CSV) file, `password_resets.csv`, in `<AE_HOME>/logs/audit/`. Data captured includes the following:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when the request was made in yyyy-mm-dd hh:mm:ss format. |
| **Username** | The user whose password was reset. |
| **User IP Address** | The IP address that the application server associated with this request. |
| **Source** | The initiator of the password reset process. Valid values: "Forgot Password." More values may be added to this list in the future. |

### Received emails

Each email received is recorded in the log file `mail-listener.log` in the `<APPIAN_HOME>/logs` directory.

This log consists of the information such as the time-stamp, subject line of every email received and the status of the email handling service.

To learn more about setting up the mail server to receive emails, see the documentation for [receiving emails](Mail_Server_Setup.html#receiving-emails).

### Records usage

User activity related to records is recorded in the log file `<APPIAN_HOME>/logs/audit/records_usage.csv`. This is a comma-separated value (CSV) file with the following columns:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an action occurred. |
| **User** | The UUID of the user who performed the action. |
| **Action** | The action performed by the user. Possible actions: `View Record Type List`, `View Record List`, `View Record Dashboard`, `View Related Action List`, `View Related News`, `Record List Search` |
| **Record Type Name** | The name of the record type involved in the action, if applicable. |
| **Record Type URL Stub** | The URL stub of the record type involved in the action, if applicable. |
| **Record Identifier** | The identifier of the record involved in the action, if applicable. |
| **View** | The URL stub of the URL stub of the record view involved in the action, if applicable. |
| **Filters** | Facet filters and/or searches that were selected at the time of the action, if applicable. Searches are shown in the form "search=\[search term\]". When facets are selected, the underlying filter is shown. Multiple filters are shown combined with "AND". |
| **Environment** | Environment where the record type was used. Possible values are `Tempo` and `Sites` |
| **Site URL Stub** | The URL stub of the site where the record type was used, if applicable. |

### Removed processes

When processes are [deleted or archived](Archiving_Processes.html), these events are recorded in a comma-separated (CSV) log file in the `<APPIAN_HOME>/logs/audit/` directory. Each log file is named according to the convention `removed_processes_db_PX<ENGINE_NUMBER>_<TIMESTAMP>.csv`. Only the primary engines will write to this log.

**Example log file name:**

```
1
removed_processes_db_PX001_2019-08-19_1436.csv
```

Data captured in the log include the following:

| Column | Description |
| --- | --- |
| **Timestamp** | Date and time when the action occurred in yyyy-mm-dd hh:mm:ss format |
| **Transaction ID** | The transaction ID of the action |
| **Action** | The type of action that occurred. Valid values are `delete` or `archive` |
| **Username** | The username of the user who attempted the action. If the deletion or archival is performed automatically by the system, the value will be `Administrator`. |
| **User UUID** | The UUID of the user who attempted the action. If the Username is `Administrator`, the UUID will be blank. |
| **Process ID** | The ID of the process |
| **Process Name** | The name of the process |
| **Process Model Handle (Local)** | The local, internal identifier for the process model on the execution engine, which may be useful for debugging purposes |
| **Process Model ID (Design)** | The ID of the process model |
| **Process Model Name** | The name of the process model |

### Secure Credentials Store

Access to credentials stored in the Secure Credentials Store are logged in a comma-separated value (CSV) file, `secure_credentials_store.csv`, in the `<APPIAN_HOME>/logs/audit` directory. All reads and modifications of third-party credentials are recorded in this file. No encrypted values are ever logged here.

Data captured includes the following:

| Column | Description |
| --- | --- |
| **Timestamp** | Date and time when an access or modification of values occurs. yyyy-mm-dd hh:mm:ss (Milliseconds are excluded.) |
| **Username** | The username of the user accessing the secure credentials store values. |
| **Action** |
-   Create
-   Read
-   Update
-   Delete

 |
| **Scope** |

-   System-Wide - the system-wide credentials for the external system were accessed
-   Per-User - the user's personal credentials for the external system were accessed

 |
| **External System Key** | The key of the external system for which the credentials were accessed. `ALL` if all external systems are accessed in a bulk call, or `ALL for _username_` when accessing credentials for all external systems for a given user. |
| **Attribute** | The key of the specific attribute whose value was accessed. `ALL` if all attributes for an external system are accessed in a bulk call, or `ALL for _username_` when accessing all attributes for a given user. |
| **Plug-in** | If the secure credentials store is accessed from a plug-in, the key of the plug-in. Otherwise, `N/A`. |

See also: [Secure Credentials Store](Secure_Credentials_Store.html)

### Sites usage

User activity related to sites is recorded in the log file `<APPIAN_HOME>/logs/audit/sites_usage.csv`. This is a comma-separated value (CSV) file with the following columns:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an action occurred. |
| **User** | The UUID of the user who performed the action. |
| **Action** | The action performed by the user. Possible actions: `View Site Task Report`, `View Process Task Form`, `Submit Process Task Form`, `View Site Action Start Form`, `Submit Site Action Start Form`, `View Site Record List`, `View Site Report`,`View Site Record View`,`View Site Related Actions List`, `Site Record List Search`, `View Reports and Dashboards Library` |
| **Site** | The URL stub of the site involved in the action. |
| **Page** | The URL stub of the page involved in the action. |
| **Page Group** | The URL stub of the page group involved in the action. |

### Portals usage

Visitor activity related to sites is recorded in the log file `APPIAN_HOME/logs/perflogs/portals/portal_usage.csv`. This is a comma-separated value (CSV) file with the following columns:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time of the interaction. |
| **Session ID** | A unique identifier for the session, which includes all interactions a visitor makes without closing or refreshing the portal. |
| **Visitor ID** | A unique identifier for the visitor. |
| **Portal** | The name of the portal that the visitor accessed. |
| **Page** | The name of the portal page that the visitor accessed. |
| **Device Type** | The type of device that the visitor used to access the portal. |
| **Device Width** | The page width used when loading the portal. |

### Task errors

Errors that occur when users access invalid tasks are recorded in the log file `<APPIAN_HOME>/logs/audit/task_errors.csv`. This is a comma-separated value (CSV) file with the following columns:

| Column | Description |
| --- | --- |
| **Timestamp** | Date and time when the error occurred in yyyy-mm-dd hh:mm:ss format. |
| **User** | The UUID of the user who performed the action. |
| **Details** | A brief description of the error. Possible errors:
-   Task does not exist
-   Task is canceled or completed
-   User does not have permission to view this task
-   User accessed a task using an integer in the URL. (Note: if this message is logged, the task ID is also returned in the error message.)

 |

### User deactivations

User accounts that are deactivated due to inactivity are listed at the INFO level in `db_PE_yyyy-mm-dd_hhmm.log` in the `<APPIAN_HOME>/logs/` directory.

The following message appears in the logs before a comma-separated list of usernames.

These user accounts were deactivated automatically due to inactivity: `[<usernames>]`

### User management

Activity related to user management is recorded in the log file `<APPIAN_HOME>/logs/audit/user_management.csv`. This is a comma-separated value (CSV) file with the following columns:

| **Column** | **Description** |
| --- | --- |
| **Timestamp** | Date and time when an action occurred. |
| **Action** | The action taken on the user account. Possible actions: `Create`, `Change Username`, `Change User Type`, `Change User Status`, `Change Lock Status`, `Change Password`, `Change Email` |
| **User UUID** | The UUID of the user the action was taken on. |
| **Username** | The username of the user the action was taken on. |
| **Original Value** | The original value, before the action took place. Does not apply for `Create` and `Change Password` actions. |
| **New Value** | The new value, after the action took place. Does not apply for `Create` and `Change Password` actions. |
| **Modified By UUID** | The UUID of the user who performed the action. |
| **Modified By Username** | The username of the user who performed the action. |

The first line of the log prints out the log initialization timestamp. The following actions have specific behavior:

-   **Change User Status** - This action distinguishes between when a user is deactivated manually (in the Users view or via smart service) and when a user is [deactivated due to inactivity](Appian_Administration_Console.html#account-locking). The logged values are `Inactive (manual)` and `Inactive (idle user)`.
-   **Change Lock Status** - This action is logged when an account is locked because of too many failed login attempts and when it is manually unlocked by a system administrator. The action does not log when an account is [automatically unlocked](Appian_Administration_Console.html#account-locking) based on the lock expiring.
-   **Change Password** - This action is logged when the user changes their own password, someone clicks the Forgot Password link, or an administrator resets a password. See the [forgot password requests log](#forgot-password-requests) and [password resets log](#password-resets) for more details on those specific types of password changes.

### Unscanned files

When the scan of an uploaded file is skipped by the [virus scanner](Anti-Virus_on_Cloud.html) (Cloud only), information is logged in a comma-separated (CSV) file, `unscanned_files.csv`, in `<AE_HOME>/logs/audit/`. Data captured include the following:

| Column | Description |
| --- | --- |
| **Timestamp** | Date and time when the file was uploaded in yyyy-mm-dd hh:mm:ss format. |
| **User** | The user who uploaded the file. |
| **Document ID** | The content ID of the uploaded file. |
| **Reason** | The reason that the file went unscanned. Possible values: "File too large", "Timeout", "Scanner unreachable", and "Other." |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...