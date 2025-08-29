---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/AuditHistoryRowConstants.html
original_path: api/com/appiancorp/suiteapi/process/history/AuditHistoryRowConstants.html
version: "25.3"
title: "Enum Class AuditHistoryRowConstants"
page_id: "api/com/appiancorp/suiteapi/process/history/AuditHistoryRowConstants"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.history](package-summary.html)

# Enum Class AuditHistoryRowConstants

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history")\>

com.appiancorp.suiteapi.process.history.AuditHistoryRowConstants

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history")>`, `[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant")`

* * *

public enum AuditHistoryRowConstants extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history")\>

AuditHistoryRowConstants The domain!key recorded for an AuditHistoryRow represents the data item being modified in the recorded audit history event, available from AuditHistoryRow.getDomKey(). PROCESS\_PROPERTY\_\* are the domain and key recorded in a process context, and will not have a task id. TASK\_PROPERTY\_\* are the domain and key recorded in a task context, and will typically have a task id. Which process properties and task properties are recorded may change over time, given that such history may span years of data, so processing audit history should emphasize code resilience, checking assumptions. It's inherently a different form of persisted data than most developers would assume given past experience working with live data. Additional, process variables in the "pv" domain are recorded, where those names depend on the process variables declared and used in the given process model. For example, process variable abc is recorded as pv!abc. Process variables will not have a task id.

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[Enum.EnumDesc](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang") extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")>>`

-   ## Enum Constant Summary

    Enum Constants

    Enum Constant

    Description

    `[PROCESS_PROPERTY_ADDED_ATTACHMENTS](#PROCESS_PROPERTY_ADDED_ATTACHMENTS)`

    Added attachment ids to the process

    `[PROCESS_PROPERTY_ADDED_NOTES](#PROCESS_PROPERTY_ADDED_NOTES)`

    Added note ids to the process

    `[PROCESS_PROPERTY_ADDED_VARIABLE](#PROCESS_PROPERTY_ADDED_VARIABLE)`

    Added a variable with given name to the process dynamically The process variable row being added is ALSO associated with this, but this cannot be expressed with a constant here.

    `[PROCESS_PROPERTY_ARCHIVED_TO_FOLDER](#PROCESS_PROPERTY_ARCHIVED_TO_FOLDER)`

    Archived the process (generated archive.l file) to the given archive folder id

    `[PROCESS_PROPERTY_CANCELED](#PROCESS_PROPERTY_CANCELED)`

    Process is canceled BOOLEAN currently, earlier could be TIMESTAMP (treat TIMESTAMP as BOOLEAN true)

    `[PROCESS_PROPERTY_COMPLETED_AT](#PROCESS_PROPERTY_COMPLETED_AT)`

    Process was completed at given timestamp

    `[PROCESS_PROPERTY_MIGRATED_PROCESS_HISTORY_TO_KAFKA_AT](#PROCESS_PROPERTY_MIGRATED_PROCESS_HISTORY_TO_KAFKA_AT)`

    Process history was migrated to Kafka at the given timestamp (only present for migrated history)

    `[PROCESS_PROPERTY_NAME](#PROCESS_PROPERTY_NAME)`

    Process is now named the given name

    `[PROCESS_PROPERTY_PAUSED_AT](#PROCESS_PROPERTY_PAUSED_AT)`

    Process was paused at the given timestamp

    `[PROCESS_PROPERTY_PRIORITY](#PROCESS_PROPERTY_PRIORITY)`

    Priority of the process being set direction STRING newPriority STRING

    `[PROCESS_PROPERTY_PRIORITY_NAME](#PROCESS_PROPERTY_PRIORITY_NAME)`

    Name of the priority that process was set to, in com.appiancorp.suiteapi.common.LocaleString form which contains the name in various locales

    `[PROCESS_PROPERTY_PROCESS_ID_CHAIN](#PROCESS_PROPERTY_PROCESS_ID_CHAIN)`

    This process is a subprocess belonging to the given chain of process ids, listed from parent through child id.

    `[PROCESS_PROPERTY_RECORDING](#PROCESS_PROPERTY_RECORDING)`

    Is the process recording to audit process history?

    `[PROCESS_PROPERTY_REMOVED_ATTACHMENTS](#PROCESS_PROPERTY_REMOVED_ATTACHMENTS)`

    Removed the given attachment ids from the process

    `[PROCESS_PROPERTY_REMOVED_NOTES](#PROCESS_PROPERTY_REMOVED_NOTES)`

    Removed the given note ids from the process

    `[PROCESS_PROPERTY_RESUMED_AT](#PROCESS_PROPERTY_RESUMED_AT)`

    Resumed the process at the given timestamp

    `[PROCESS_PROPERTY_RUNNING](#PROCESS_PROPERTY_RUNNING)`

    Is the process currently running?

    `[PROCESS_PROPERTY_SECURED_TO](#PROCESS_PROPERTY_SECURED_TO)`

    This process has been secured to the given map, only written when process is deleted.

    `[PROCESS_PROPERTY_START_SUB_PROCESS_ID](#PROCESS_PROPERTY_START_SUB_PROCESS_ID)`

    This process started a subprocess at given process id

    `[PROCESS_PROPERTY_STARTED_AT](#PROCESS_PROPERTY_STARTED_AT)`

    The process was started at the given timestamp

    `[PROCESS_PROPERTY_STARTED_BY_PARENT_PROCESS_ID](#PROCESS_PROPERTY_STARTED_BY_PARENT_PROCESS_ID)`

    This process was started as a subprocess by the given process id

    `[PROCESS_PROPERTY_TERMINATED_AT](#PROCESS_PROPERTY_TERMINATED_AT)`

    Timestamp at which the process was terminated.

    `[PROCESS_PROPERTY_UPGRADE_PROCESS](#PROCESS_PROPERTY_UPGRADE_PROCESS)`

    Process has been upgraded via in flight modification.

    `[PROCESS_PROPERTY_UUID](#PROCESS_PROPERTY_UUID)`

    Process has UUID (unique identifier)

    `[PROCESS_PROPERTY_VERSION](#PROCESS_PROPERTY_VERSION)`

    Version string for updated process

    `[TASK_PROPERTY_ADDED_ATTACHMENTS](#TASK_PROPERTY_ADDED_ATTACHMENTS)`

    Added attachment ids to the task

    `[TASK_PROPERTY_ADDED_NOTES](#TASK_PROPERTY_ADDED_NOTES)`

    Added note ids to the task

    `[TASK_PROPERTY_ASSIGNEE](#TASK_PROPERTY_ASSIGNEE)`

    Set for either initial ASSIGNED or REASSIGNED

    `[TASK_PROPERTY_ASSIGNEE_ASSIGNED](#TASK_PROPERTY_ASSIGNEE_ASSIGNED)`

    Set for the initial assignment

    `[TASK_PROPERTY_ASSIGNEE_REASSIGNED](#TASK_PROPERTY_ASSIGNEE_REASSIGNED)`

    Set if the task is reassigned

    `[TASK_PROPERTY_CANCELED](#TASK_PROPERTY_CANCELED)`

    Task is canceled

    `[TASK_PROPERTY_COMPLETED_AT](#TASK_PROPERTY_COMPLETED_AT)`

    Task was completed at given timestamp

    `[TASK_PROPERTY_ESCALATED](#TASK_PROPERTY_ESCALATED)`

    Set when the task is escalated

    `[TASK_PROPERTY_ESCALATED_NOTIFICATION](#TASK_PROPERTY_ESCALATED_NOTIFICATION)`

    Escalated notification

    `[TASK_PROPERTY_NAME](#TASK_PROPERTY_NAME)`

    Task is now named the given name

    `[TASK_PROPERTY_PAUSED_AT](#TASK_PROPERTY_PAUSED_AT)`

    Task was paused at the given timestamp

    `[TASK_PROPERTY_PRIORITY](#TASK_PROPERTY_PRIORITY)`

    Priority of the task being set direction STRING newPriority STRING

    `[TASK_PROPERTY_PRIORITY_NAME](#TASK_PROPERTY_PRIORITY_NAME)`

    Name of the priority that task was set to, in com.appiancorp.suiteapi.common.LocaleString form which contains the name in various locales

    `[TASK_PROPERTY_REMOVED_ATTACHMENTS](#TASK_PROPERTY_REMOVED_ATTACHMENTS)`

    Removed the given attachment ids from the task

    `[TASK_PROPERTY_REMOVED_NOTES](#TASK_PROPERTY_REMOVED_NOTES)`

    Removed the given note ids from the task

    `[TASK_PROPERTY_RESUMED_AT](#TASK_PROPERTY_RESUMED_AT)`

    Resumed the task at the given timestamp

    `[TASK_PROPERTY_RUNNING](#TASK_PROPERTY_RUNNING)`

    Is the task currently running?

    `[TASK_PROPERTY_SCHEDULED_AT](#TASK_PROPERTY_SCHEDULED_AT)`

    Timer task scheduled at given timestamp

    `[TASK_PROPERTY_STARTED_AT](#TASK_PROPERTY_STARTED_AT)`

    Deprecated.

    see tp!

    `[TASK_PROPERTY_STARTED_IN](#TASK_PROPERTY_STARTED_IN)`

    Task started in the given task model template (tp!

    `[TASK_PROPERTY_TERMINATED_AT](#TASK_PROPERTY_TERMINATED_AT)`

    Timestamp at which the task was terminated.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getAssociatedDomKeys](#getAssociatedDomKeys\(\))()`

    Associated domain!

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayString](#getDisplayString\(\))()`

    dom!

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDom](#getDom\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDomKey](#getDomKey\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getKey](#getKey\(\))()`

    `int`

    `[getLegacyHistoryObjectType](#getLegacyHistoryObjectType\(\))()`

    `[Optional](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Optional.html "class or interface in java.util")<[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")>`

    `[getLegacyHistoryType](#getLegacyHistoryType\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getTypeId](#getTypeId\(\))()`

    `static [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history")`

    `[valueOf](#valueOf\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Returns the enum constant of this class with the specified name.

    `static [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history")[]`

    `[values](#values\(\))()`

    Returns an array containing the constants of this enum class, in the order they are declared.

    ### Methods inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#clone\(\) "class or interface in java.lang"), [compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#compareTo\(E\) "class or interface in java.lang"), [describeConstable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#describeConstable\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#finalize\(\) "class or interface in java.lang"), [getDeclaringClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#getDeclaringClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#hashCode\(\) "class or interface in java.lang"), [name](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#name\(\) "class or interface in java.lang"), [ordinal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#ordinal\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#toString\(\) "class or interface in java.lang"), [valueOf](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#valueOf\(java.lang.Class,java.lang.String\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Enum Constant Details

    -   ### PROCESS\_PROPERTY\_ADDED\_ATTACHMENTS

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_ADDED\_ATTACHMENTS

        Added attachment ids to the process

    -   ### PROCESS\_PROPERTY\_ADDED\_NOTES

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_ADDED\_NOTES

        Added note ids to the process

    -   ### PROCESS\_PROPERTY\_ADDED\_VARIABLE

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_ADDED\_VARIABLE

        Added a variable with given name to the process dynamically The process variable row being added is ALSO associated with this, but this cannot be expressed with a constant here.

    -   ### PROCESS\_PROPERTY\_CANCELED

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_CANCELED

        Process is canceled BOOLEAN currently, earlier could be TIMESTAMP (treat TIMESTAMP as BOOLEAN true)

    -   ### PROCESS\_PROPERTY\_COMPLETED\_AT

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_COMPLETED\_AT

        Process was completed at given timestamp

    -   ### PROCESS\_PROPERTY\_NAME

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_NAME

        Process is now named the given name

    -   ### PROCESS\_PROPERTY\_PAUSED\_AT

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_PAUSED\_AT

        Process was paused at the given timestamp

    -   ### PROCESS\_PROPERTY\_PRIORITY

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_PRIORITY

        Priority of the process being set direction STRING newPriority STRING

    -   ### PROCESS\_PROPERTY\_PRIORITY\_NAME

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_PRIORITY\_NAME

        Name of the priority that process was set to, in com.appiancorp.suiteapi.common.LocaleString form which contains the name in various locales

    -   ### PROCESS\_PROPERTY\_REMOVED\_ATTACHMENTS

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_REMOVED\_ATTACHMENTS

        Removed the given attachment ids from the process

    -   ### PROCESS\_PROPERTY\_REMOVED\_NOTES

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_REMOVED\_NOTES

        Removed the given note ids from the process

    -   ### PROCESS\_PROPERTY\_RESUMED\_AT

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_RESUMED\_AT

        Resumed the process at the given timestamp

    -   ### PROCESS\_PROPERTY\_ARCHIVED\_TO\_FOLDER

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_ARCHIVED\_TO\_FOLDER

        Archived the process (generated archive.l file) to the given archive folder id

    -   ### PROCESS\_PROPERTY\_UUID

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_UUID

        Process has UUID (unique identifier)

    -   ### PROCESS\_PROPERTY\_MIGRATED\_PROCESS\_HISTORY\_TO\_KAFKA\_AT

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_MIGRATED\_PROCESS\_HISTORY\_TO\_KAFKA\_AT

        Process history was migrated to Kafka at the given timestamp (only present for migrated history)

    -   ### PROCESS\_PROPERTY\_START\_SUB\_PROCESS\_ID

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_START\_SUB\_PROCESS\_ID

        This process started a subprocess at given process id

    -   ### PROCESS\_PROPERTY\_STARTED\_BY\_PARENT\_PROCESS\_ID

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_STARTED\_BY\_PARENT\_PROCESS\_ID

        This process was started as a subprocess by the given process id

    -   ### PROCESS\_PROPERTY\_PROCESS\_ID\_CHAIN

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_PROCESS\_ID\_CHAIN

        This process is a subprocess belonging to the given chain of process ids, listed from parent through child id.

    -   ### PROCESS\_PROPERTY\_RUNNING

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_RUNNING

        Is the process currently running?

    -   ### PROCESS\_PROPERTY\_STARTED\_AT

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_STARTED\_AT

        The process was started at the given timestamp

    -   ### PROCESS\_PROPERTY\_SECURED\_TO

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_SECURED\_TO

        This process has been secured to the given map, only written when process is deleted. Prior to that, all security is provided by the live process instance. u\_ROLENAME=LIST\_OF\_USERNAMES (e.g., u\_ADMIN\_OWNER, u\_VIEWER, u\_INITIATOR) g\_ROLENAME=LIST\_OF\_GROUP (e.g., g\_ADMIN\_OWNER, g\_VIEWER, g\_INITIATOR)

    -   ### PROCESS\_PROPERTY\_RECORDING

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_RECORDING

        Is the process recording to audit process history? If recording is disabled for any reason, one last recording set to false is recorded so this is not done invisibly.

    -   ### PROCESS\_PROPERTY\_TERMINATED\_AT

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_TERMINATED\_AT

        Timestamp at which the process was terminated.

    -   ### PROCESS\_PROPERTY\_VERSION

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_VERSION

        Version string for updated process

    -   ### PROCESS\_PROPERTY\_UPGRADE\_PROCESS

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") PROCESS\_PROPERTY\_UPGRADE\_PROCESS

        Process has been upgraded via in flight modification. sourceModelId INTEGER sourceModelVersion STRING sourceModelName STRING sourceModelUuid STRING targetModelId INTEGER targetModelVersion STRING targetModelName STRING targetModelUuid STRING

    -   ### TASK\_PROPERTY\_ADDED\_ATTACHMENTS

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_ADDED\_ATTACHMENTS

        Added attachment ids to the task

    -   ### TASK\_PROPERTY\_ADDED\_NOTES

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_ADDED\_NOTES

        Added note ids to the task

    -   ### TASK\_PROPERTY\_ASSIGNEE

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_ASSIGNEE

        Set for either initial ASSIGNED or REASSIGNED

    -   ### TASK\_PROPERTY\_ASSIGNEE\_ASSIGNED

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_ASSIGNEE\_ASSIGNED

        Set for the initial assignment

    -   ### TASK\_PROPERTY\_ASSIGNEE\_REASSIGNED

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_ASSIGNEE\_REASSIGNED

        Set if the task is reassigned

    -   ### TASK\_PROPERTY\_CANCELED

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_CANCELED

        Task is canceled

    -   ### TASK\_PROPERTY\_COMPLETED\_AT

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_COMPLETED\_AT

        Task was completed at given timestamp

    -   ### TASK\_PROPERTY\_ESCALATED

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_ESCALATED

        Set when the task is escalated

    -   ### TASK\_PROPERTY\_ESCALATED\_NOTIFICATION

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_ESCALATED\_NOTIFICATION

        Escalated notification

    -   ### TASK\_PROPERTY\_NAME

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_NAME

        Task is now named the given name

    -   ### TASK\_PROPERTY\_PAUSED\_AT

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_PAUSED\_AT

        Task was paused at the given timestamp

    -   ### TASK\_PROPERTY\_PRIORITY

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_PRIORITY

        Priority of the task being set direction STRING newPriority STRING

    -   ### TASK\_PROPERTY\_PRIORITY\_NAME

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_PRIORITY\_NAME

        Name of the priority that task was set to, in com.appiancorp.suiteapi.common.LocaleString form which contains the name in various locales

    -   ### TASK\_PROPERTY\_REMOVED\_ATTACHMENTS

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_REMOVED\_ATTACHMENTS

        Removed the given attachment ids from the task

    -   ### TASK\_PROPERTY\_REMOVED\_NOTES

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_REMOVED\_NOTES

        Removed the given note ids from the task

    -   ### TASK\_PROPERTY\_RESUMED\_AT

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_RESUMED\_AT

        Resumed the task at the given timestamp

    -   ### TASK\_PROPERTY\_RUNNING

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_RUNNING

        Is the task currently running?

    -   ### TASK\_PROPERTY\_SCHEDULED\_AT

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_SCHEDULED\_AT

        Timer task scheduled at given timestamp

    -   ### TASK\_PROPERTY\_STARTED\_AT

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_STARTED\_AT

        Deprecated.

        see tp!startedIn for newer data

        Task started at given timstamp (tp!startedIn will not be present for same task)

    -   ### TASK\_PROPERTY\_STARTED\_IN

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_STARTED\_IN

        Task started in the given task model template (tp!startedAt will not be present for same task)

    -   ### TASK\_PROPERTY\_TERMINATED\_AT

        public static final [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") TASK\_PROPERTY\_TERMINATED\_AT

        Timestamp at which the task was terminated.

-   ## Method Details

    -   ### values

        public static [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history")\[\] values()

        Returns an array containing the constants of this enum class, in the order they are declared.

        Returns:

        an array containing the constants of this enum class, in the order they are declared

    -   ### valueOf

        public static [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history") valueOf([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Returns the enum constant of this class with the specified name. The string must match _exactly_ an identifier used to declare an enum constant in this class. (Extraneous whitespace characters are not permitted.)

        Parameters:

        `name` - the name of the enum constant to be returned.

        Returns:

        the enum constant with the specified name

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if this enum class has no constant with the specified name

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is null

    -   ### getDomKey

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDomKey()

        Returns:

        domain!key entirely in lowercase, e.g., pp!startedat

    -   ### getTypeId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getTypeId()

        Returns:

        type id

    -   ### getDom

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDom()

        Returns:

        domain in lowercase

    -   ### getKey

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getKey()

        Returns:

        key in lowercase

    -   ### getDisplayString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayString()

        dom!key used for display purposes (e.g., in a toString()), including friendly capitalization, but not for logic.

    -   ### getLegacyHistoryObjectType

        public int getLegacyHistoryObjectType()

        Returns:

        object type used by HistoryRecord during migration, e.g., HistoryRecord.OBJECT\_TYPE\_TASK or HistoryRecord.OBJECT\_TYPE\_PROCESS

    -   ### getLegacyHistoryType

        public [Optional](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Optional.html "class or interface in java.util")<[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\> getLegacyHistoryType()

        Returns:

        type used by HistoryRecord during migration; if present, this row is used in generating legacy HistoryRecord

    -   ### getAssociatedDomKeys

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getAssociatedDomKeys()

        Associated domain!keys are those expected to be written at the same time, associated with rows having this domain!key, if the getLegacyHistoryType() is present. These are only possible defined where getLegacyHistoryType() is present, and not all such rows have any other associated domain!keys. As an example, if tp!pausedAt=timestamp is set, indicating that the task has paused, then tp!running is set to false, so it's associated -- but tp!running is ALSO set to false if tp!canceled is set to true. This allows one to check if tp!running is currently true or false to know if it's running, and check the other row for WHY it's running or not.

        Returns: