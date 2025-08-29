---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessSummary.html
original_path: api/com/appiancorp/suiteapi/process/ProcessSummary.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessSummary

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.process.ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.ProcessSummary

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ProcessDetails](ProcessDetails.html "class in com.appiancorp.suiteapi.process")`

* * *

public class ProcessSummary extends [ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process")

Holds high-level, summary metadata about a process.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessSummary)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_COMPLETED_TASK_COUNT](#SORT_BY_PROCESS_COMPLETED_TASK_COUNT)`

    Constant for sorting by the number of tasks in the process with "Completed" status

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_CURRENT_TASK_COUNT](#SORT_BY_PROCESS_CURRENT_TASK_COUNT)`

    Constant for sorting by the number of tasks in the process with "Current" status

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_ELAPSED_MILLISECONDS](#SORT_BY_PROCESS_ELAPSED_MILLISECONDS)`

    Constant for sorting by the number of milliseconds that have elapsed since the process started

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_END_TIME](#SORT_BY_PROCESS_END_TIME)`

    Constant for sorting by the process end time

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_ID](#SORT_BY_PROCESS_ID)`

    Constant for sorting by the process id

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_INITIATOR](#SORT_BY_PROCESS_INITIATOR)`

    Constant for sorting by the username of the process initiator

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_MODEL_NAME](#SORT_BY_PROCESS_MODEL_NAME)`

    Constant for sorting by the process model name

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_NAME](#SORT_BY_PROCESS_NAME)`

    Constant for sorting by process name

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_PARENT_NAME](#SORT_BY_PROCESS_PARENT_NAME)`

    Constant for sorting by the parent process name

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_PRIORITY](#SORT_BY_PROCESS_PRIORITY)`

    Constant for sorting by the priority name

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_PRIORITY_NAME](#SORT_BY_PROCESS_PRIORITY_NAME)`

    Constant for sorting by the priority name

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_START_TIME](#SORT_BY_PROCESS_START_TIME)`

    Constant for sorting by the start time

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_STATUS_NAME](#SORT_BY_PROCESS_STATUS_NAME)`

    Constant for sorting by the status name

    `static final int`

    `[STATE_ACTIVE](#STATE_ACTIVE)`

    Constant indicating a running process.

    `static final int`

    `[STATE_CANCELLED](#STATE_CANCELLED)`

    Constant indicating a cancelled process.

    `static final int`

    `[STATE_COMPLETED](#STATE_COMPLETED)`

    Constant indicating a completed process.

    `static final int`

    `[STATE_PAUSED](#STATE_PAUSED)`

    Constant indicating a paused process.

    `static final int`

    `[STATE_PAUSED_BY_EXCEPTION](#STATE_PAUSED_BY_EXCEPTION)`

    Constant indicating a paused-by-exception process.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessSummary](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAutoscaleUuid](#getAutoscaleUuid\(\))()`

    Gets the uuid of the process if it is Autoscale

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getCompletedTaskCount](#getCompletedTaskCount\(\))()`

    Retrieves the number of completed tasks in the process

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getCurrentTaskCount](#getCurrentTaskCount\(\))()`

    Retrieves the number of tasks that are active

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDashboardId](#getDashboardId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDesigner](#getDesigner\(\))()`

    Gets the designer of the running process model

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getElapsedMilliseconds](#getElapsedMilliseconds\(\))()`

    Retrieves the number of milliseconds since the process has started

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getEndTime](#getEndTime\(\))()`

    Returns the time at which the process ended.

    `[ProcessException](ProcessException.html "class in com.appiancorp.suiteapi.process")`

    `[getException](#getException\(\))()`

    Returns the ProcessException that occurred in the process execution.

    `boolean`

    `[getFavorite](#getFavorite\(\))()`

    `boolean`

    `[getMutablePriority](#getMutablePriority\(\))()`

    Returns true if the Priority of the process can be changed else false

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getParentId](#getParentId\(\))()`

    gets the id of the parent process if one exists

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getParentName](#getParentName\(\))()`

    Gets the parent process name if one exists

    `[ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissions](#getPermissions\(\))()`

    Retrieves the permissions of the user for the process.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessModelId](#getProcessModelId\(\))()`

    Retrieves the id of the process model

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessModelName](#getProcessModelName\(\))()`

    Retrieves the name of the process model

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessModelVersion](#getProcessModelVersion\(\))()`

    Retrieves the version of the Process Model

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getStartTime](#getStartTime\(\))()`

    Retrieves the time at which the process started

    `int`

    `[getStatus](#getStatus\(\))()`

    Retrieves the status of the process.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStatusName](#getStatusName\(\))()`

    Retrieves the string representation of the current status of the process.

    `void`

    `[setAutoscaleUuid](#setAutoscaleUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") autoscaleUuid_)`

    Sets the uuid of the autoscale process

    `void`

    `[setCompletedTaskCount](#setCompletedTaskCount\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskCount_)`

    Sets the number of completed tasks in the process

    `void`

    `[setCurrentTaskCount](#setCurrentTaskCount\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskCount_)`

    Sets the number of active tasks

    `void`

    `[setDashboardId](#setDashboardId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dashboardId_)`

    `void`

    `[setDesigner](#setDesigner\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") designer_)`

    Sets the name of the designer of running process model

    `void`

    `[setElapsedMilliseconds](#setElapsedMilliseconds\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") milliseconds_)`

    Sets the number of milliseconds since the process has started

    `void`

    `[setEndTime](#setEndTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    Sets the time at which the process ended.

    `void`

    `[setException](#setException\(com.appiancorp.suiteapi.process.ProcessException\))([ProcessException](ProcessException.html "class in com.appiancorp.suiteapi.process") exception_)`

    Sets the ProcessException that occurred in the process execution.

    `void`

    `[setFavorite](#setFavorite\(boolean\))(boolean favorite_)`

    `void`

    `[setMutablePriority](#setMutablePriority\(boolean\))(boolean mutablePriority_)`

    Sets whether or not the priority of this process can be changed

    `void`

    `[setParentId](#setParentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentId_)`

    Sets the id of the parent process

    `void`

    `[setParentName](#setParentName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentName_)`

    Sets the name of the process' parent

    `void`

    `[setPermissions](#setPermissions\(com.appiancorp.suiteapi.process.security.ProcessPermissions\))([ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security") permissions_)`

    Sets the permissions of the user for the process

    `void`

    `[setProcessModelId](#setProcessModelId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId_)`

    Sets the id of the process model

    `void`

    `[setProcessModelName](#setProcessModelName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") modelName_)`

    Sets the name of the process model

    `void`

    `[setProcessModelVersion](#setProcessModelVersion\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Sets the version of the Process Model

    `void`

    `[setStartTime](#setStartTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    Sets the time at which the process started

    `void`

    `[setStatus](#setStatus\(int\))(int status_)`

    Sets status of the process.

    `void`

    `[setStatusName](#setStatusName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Sets the string representation of the current status of the process.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the `Identity`.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    ### Methods inherited from class com.appiancorp.suiteapi.process.[ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process")

    `[getDepth](ProcessProperties.html#getDepth\(\)), [getInitiator](ProcessProperties.html#getInitiator\(\)), [getPriority](ProcessProperties.html#getPriority\(\)), [setDepth](ProcessProperties.html#setDepth\(int\)), [setInitiator](ProcessProperties.html#setInitiator\(java.lang.String\)), [setPriority](ProcessProperties.html#setPriority\(com.appiancorp.suiteapi.process.Priority\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_PROCESS\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_NAME

        Constant for sorting by process name

    -   ### SORT\_BY\_PROCESS\_INITIATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_INITIATOR

        Constant for sorting by the username of the process initiator

    -   ### SORT\_BY\_PROCESS\_STATUS\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_STATUS\_NAME

        Constant for sorting by the status name

    -   ### SORT\_BY\_PROCESS\_PRIORITY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_PRIORITY\_NAME

        Constant for sorting by the priority name

    -   ### SORT\_BY\_PROCESS\_MODEL\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_MODEL\_NAME

        Constant for sorting by the process model name

    -   ### SORT\_BY\_PROCESS\_START\_TIME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_START\_TIME

        Constant for sorting by the start time

    -   ### SORT\_BY\_PROCESS\_END\_TIME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_END\_TIME

        Constant for sorting by the process end time

    -   ### SORT\_BY\_PROCESS\_ELAPSED\_MILLISECONDS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_ELAPSED\_MILLISECONDS

        Constant for sorting by the number of milliseconds that have elapsed since the process started

    -   ### SORT\_BY\_PROCESS\_CURRENT\_TASK\_COUNT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_CURRENT\_TASK\_COUNT

        Constant for sorting by the number of tasks in the process with "Current" status

    -   ### SORT\_BY\_PROCESS\_COMPLETED\_TASK\_COUNT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_COMPLETED\_TASK\_COUNT

        Constant for sorting by the number of tasks in the process with "Completed" status

    -   ### SORT\_BY\_PROCESS\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_ID

        Constant for sorting by the process id

    -   ### SORT\_BY\_PROCESS\_PARENT\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_PARENT\_NAME

        Constant for sorting by the parent process name

    -   ### SORT\_BY\_PROCESS\_PRIORITY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_PRIORITY

        Constant for sorting by the priority name

    -   ### STATE\_ACTIVE

        public static final int STATE\_ACTIVE

        Constant indicating a running process. For use with ProcessExecutionService.getProcessesForGroup.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessSummary.STATE_ACTIVE)

    -   ### STATE\_COMPLETED

        public static final int STATE\_COMPLETED

        Constant indicating a completed process. For use with ProcessExecutionService.getProcessesForGroup.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessSummary.STATE_COMPLETED)

    -   ### STATE\_PAUSED

        public static final int STATE\_PAUSED

        Constant indicating a paused process. For use with ProcessExecutionService.getProcessesForGroup.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessSummary.STATE_PAUSED)

    -   ### STATE\_CANCELLED

        public static final int STATE\_CANCELLED

        Constant indicating a cancelled process. For use with ProcessExecutionService.getProcessesForGroup.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessSummary.STATE_CANCELLED)

    -   ### STATE\_PAUSED\_BY\_EXCEPTION

        public static final int STATE\_PAUSED\_BY\_EXCEPTION

        Constant indicating a paused-by-exception process.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessSummary.STATE_PAUSED_BY_EXCEPTION)

-   ## Constructor Details

    -   ### ProcessSummary

        public ProcessSummary()

-   ## Method Details

    -   ### getFavorite

        public boolean getFavorite()

    -   ### setFavorite

        public void setFavorite(boolean favorite\_)

    -   ### getException

        public [ProcessException](ProcessException.html "class in com.appiancorp.suiteapi.process") getException()

        Returns the ProcessException that occurred in the process execution.

        Returns:

        Returns the exception.

    -   ### setException

        public void setException([ProcessException](ProcessException.html "class in com.appiancorp.suiteapi.process") exception\_)

        Sets the ProcessException that occurred in the process execution.

        Parameters:

        `exception_` - process exception

    -   ### getProcessModelVersion

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessModelVersion()

        Retrieves the version of the Process Model

        Returns:

        the process mode version of this process

    -   ### setProcessModelVersion

        public void setProcessModelVersion([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_)

        Sets the version of the Process Model

        Parameters:

        `version_` - the version for Process Model

    -   ### getMutablePriority

        public boolean getMutablePriority()

        Returns true if the Priority of the process can be changed else false

        Returns:

        whether or not the priority of this process can be changed

    -   ### setMutablePriority

        public void setMutablePriority(boolean mutablePriority\_)

        Sets whether or not the priority of this process can be changed

        Parameters:

        `mutablePriority_` - true if the priority of the process can be changed

    -   ### getParentId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getParentId()

        gets the id of the parent process if one exists

        Returns:

        the id of the parent process

    -   ### setParentId

        public void setParentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentId\_)

        Sets the id of the parent process

        Parameters:

        `parentId_` - the id of the parent to set

    -   ### getAutoscaleUuid

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAutoscaleUuid()

        Gets the uuid of the process if it is Autoscale

    -   ### setAutoscaleUuid

        public void setAutoscaleUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") autoscaleUuid\_)

        Sets the uuid of the autoscale process

        Parameters:

        `autoscaleUuid_` - of the process

    -   ### getParentName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getParentName()

        Gets the parent process name if one exists

        Returns:

        the parent process' name

    -   ### setParentName

        public void setParentName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentName\_)

        Sets the name of the process' parent

        Parameters:

        `parentName_` - the name to set for the parent process

    -   ### getCompletedTaskCount

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getCompletedTaskCount()

        Retrieves the number of completed tasks in the process

        Returns:

        number of completed Tasks.

    -   ### setCompletedTaskCount

        public void setCompletedTaskCount([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskCount\_)

        Sets the number of completed tasks in the process

        Parameters:

        `taskCount_` - number of completed tasks.

    -   ### getCurrentTaskCount

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getCurrentTaskCount()

        Retrieves the number of tasks that are active

        Returns:

        number of active tasks

    -   ### setCurrentTaskCount

        public void setCurrentTaskCount([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskCount\_)

        Sets the number of active tasks

        Parameters:

        `taskCount_` - number of active tasks.

    -   ### getElapsedMilliseconds

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getElapsedMilliseconds()

        Retrieves the number of milliseconds since the process has started

        Returns:

        number of milliseconds.

    -   ### setElapsedMilliseconds

        public void setElapsedMilliseconds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") milliseconds\_)

        Sets the number of milliseconds since the process has started

        Parameters:

        `milliseconds_` - elapsed milliseconds

    -   ### getEndTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getEndTime()

        Returns the time at which the process ended. Null if the process is currently active.

        Returns:

        Returns the timestamp of the process end time.

    -   ### setEndTime

        public void setEndTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        Sets the time at which the process ended.

        Parameters:

        `time_` - the end timestamp of the process.

    -   ### getProcessModelId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessModelId()

        Retrieves the id of the process model

        Returns:

        process model id.

    -   ### setProcessModelId

        public void setProcessModelId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId\_)

        Sets the id of the process model

        Parameters:

        `modelId_` - id of process model to set.

    -   ### getProcessModelName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessModelName()

        Retrieves the name of the process model

        Returns:

        name of process model.

    -   ### setProcessModelName

        public void setProcessModelName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") modelName\_)

        Sets the name of the process model

        Parameters:

        `modelName_` - name of the process model to set.

    -   ### getStartTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getStartTime()

        Retrieves the time at which the process started

        Returns:

        timestamp of the process start time.

    -   ### setStartTime

        public void setStartTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        Sets the time at which the process started

        Parameters:

        `time_` - timestamp of the process start time.

    -   ### getStatusName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStatusName()

        Retrieves the string representation of the current status of the process.

        Returns:

        status.

    -   ### setStatusName

        public void setStatusName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Sets the string representation of the current status of the process.

        Parameters:

        `name_` - status string of the process.

    -   ### getStatus

        public int getStatus()

        Retrieves the status of the process. Should be one of the STATE\_XXX constants.

        Returns:

        the status, as one of the STATE\_XXX constants.

    -   ### setStatus

        public void setStatus(int status\_)

        Sets status of the process. Should be one of the STATE\_XXX constants.

        Parameters:

        `status_` - the status, as one of the STATE\_XXX constants.

    -   ### getPermissions

        public [ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissions()

        Retrieves the permissions of the user for the process. The user is the one under whos context the service instance was created.

        Returns:

        ProcessPermission of the user

    -   ### setPermissions

        public void setPermissions([ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security") permissions\_)

        Sets the permissions of the user for the process

        Parameters:

        `permissions_` - ProcessPermissions of the user from the process

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

    -   ### getDashboardId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDashboardId()

    -   ### setDashboardId

        public void setDashboardId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dashboardId\_)

    -   ### getDesigner

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDesigner()

        Gets the designer of the running process model

        Returns:

        the designer of the process model

    -   ### setDesigner

        public void setDesigner([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") designer\_)

        Sets the name of the designer of running process model

        Parameters:

        `designer_` - the name to set for the parent process

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Description copied from class: `[Identity](../common/Identity.html#toString\(\))`

        Returns a string representation of the `Identity`. In general, the toString method returns a string that "textually represents" this object.

        Overrides:

        `[toString](ProcessProperties.html#toString\(\))` in class `[ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process")`

        Returns:

        String representation of the object