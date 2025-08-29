---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/TaskSummary.html
original_path: api/com/appiancorp/suiteapi/process/TaskSummary.html
version: "25.3"
title: "Class TaskSummary"
page_id: "api/com/appiancorp/suiteapi/process/TaskSummary"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class TaskSummary

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.process.TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.TaskSummary

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[TaskDetails](TaskDetails.html "class in com.appiancorp.suiteapi.process")`

* * *

public class TaskSummary extends [TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process")

Holds a high-level summary for a task.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.TaskSummary)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ACCEPTED_TIME](#SORT_BY_ACCEPTED_TIME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ACCEPTMODE](#SORT_BY_ACCEPTMODE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ASSIGNED_TIME](#SORT_BY_ASSIGNED_TIME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_COMPLETED_TIME](#SORT_BY_COMPLETED_TIME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ELAPSED](#SORT_BY_ELAPSED)`

    Deprecated.

    Use [`SORT_BY_ELAPSED_MILLISECONDS`](#SORT_BY_ELAPSED_MILLISECONDS) instead.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ELAPSED_MILLISECONDS](#SORT_BY_ELAPSED_MILLISECONDS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ONE_USER_ASSIGNED](#SORT_BY_ONE_USER_ASSIGNED)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_OWNERS](#SORT_BY_OWNERS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PRIORITY_ID](#SORT_BY_PRIORITY_ID)`

    Deprecated.

    Use [`SORT_BY_PRIORITY_NAME`](#SORT_BY_PRIORITY_NAME) instead, which produces the same results.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PRIORITY_NAME](#SORT_BY_PRIORITY_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_INITIATOR](#SORT_BY_PROCESS_INITIATOR)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_NAME](#SORT_BY_PROCESS_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESSID](#SORT_BY_PROCESSID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_STATUS](#SORT_BY_STATUS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_ABORTED](#TASK_STATUS_ABORTED)`

    Deprecated.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_ACCEPTED](#TASK_STATUS_ACCEPTED)`

    A task receives this status when it is accepted by a user.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_ASSIGNED](#TASK_STATUS_ASSIGNED)`

    A status indicating that a task's initialization is complete and the task is ready to be accepted, but no user has accepted it yet.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_CANCELLED](#TASK_STATUS_CANCELLED)`

    A final status indicating that a task has been canceled.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_COMPLETED](#TASK_STATUS_COMPLETED)`

    A final status indicating that a task has been completed.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_ERROR](#TASK_STATUS_ERROR)`

    A status indicating that an error has occurred during execution of a legacy web service activity.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_NOT_STARTED](#TASK_STATUS_NOT_STARTED)`

    A status indicating that a task has been created but its initialization has not yet begun.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_PAUSED](#TASK_STATUS_PAUSED)`

    A status indicating that a task has been paused.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_PAUSED_BY_EXCEPTION](#TASK_STATUS_PAUSED_BY_EXCEPTION)`

    A status indicating that a task has been paused by exception.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_RUNNING](#TASK_STATUS_RUNNING)`

    A status indicating that a legacy web service activity is running.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_SKIPPED](#TASK_STATUS_SKIPPED)`

    A final status indicating that a task has been skipped.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_SUBMITTED](#TASK_STATUS_SUBMITTED)`

    A status indicating that a legacy web service activity has been submitted.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_STATUS_UNATTENDED](#TASK_STATUS_UNATTENDED)`

    A status indicating that an unattended task has finished initialization and is either executing or about to be executed.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TaskSummary](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getAcceptedTime](#getAcceptedTime\(\))()`

    Returns the time at which the task was accepted or `null` if it has not yet been accepted.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getAcceptMode](#getAcceptMode\(\))()`

    Returns the accept mode of the task: 0 is Auto Accept Always, 1 is Auto Accept When Assigned, and 2 is Manually Accept Always.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getAssignedTime](#getAssignedTime\(\))()`

    Returns the time at which the task was assigned or `null` if it has not yet been assigned.

    `[Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAssignees](#getAssignees\(\))()`

    Returns the users/groups that the task is assigned to.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getChildProcessId](#getChildProcessId\(\))()`

    If this task is a Sub-Process or Linked-Process node, returns the id of the child process that this task references; otherwise returns `null`.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getCompletedTime](#getCompletedTime\(\))()`

    Returns the time at which the task was completed, or `null` if it has not yet been completed.

    `[Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")`

    `[getElapsed](#getElapsed\(\))()`

    Returns the amount of time (in days) since the task was started.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getElapsedMilliseconds](#getElapsedMilliseconds\(\))()`

    Deprecated.

    Use [`getElapsed()`](#getElapsed\(\)) instead.

    `[ProcessException](ProcessException.html "class in com.appiancorp.suiteapi.process")`

    `[getException](#getException\(\))()`

    If the task is paused by exception, returns the exception on the task; otherwise, returns `null`.

    `boolean`

    `[getFavorite](#getFavorite\(\))()`

    `int`

    `[getFormCapability](#getFormCapability\(\))()`

    Get the form capabilities required for this task (FormConfig CAPABILITY\_\* constants merged together via bitwise 'or').

    `boolean`

    `[getIsAttended](#getIsAttended\(\))()`

    Returns `true` if the task is attended, and `false` otherwise

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getOwners](#getOwners\(\))()`

    Returns the usernames of the owners of the task.

    `[NodePermissions](security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissions](#getPermissions\(\))()`

    Return the permissions for the task.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getProcessDeadline](#getProcessDeadline\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessId](#getProcessId\(\))()`

    Returns the id of the process that the task is part of.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessInitiator](#getProcessInitiator\(\))()`

    Returns the username of the initiator of the process that this task is part of.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessName](#getProcessName\(\))()`

    Returns the name of the process that this task is part of.

    `int`

    `[getProcessStatus](#getProcessStatus\(\))()`

    Returns the status of the process that this task is part of; using this property could result in race conditions if the process status is updated after the task summary object is retrieved.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getStatus](#getStatus\(\))()`

    Returns the status of the task, which is one of the TASK\_STATUS\_XXX constants defined by this class.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStatusBy](#getStatusBy\(\))()`

    If the task is paused or cancelled, returns the username of the user who paused/cancelled the task; otherwise returns `null`.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getStatusTime](#getStatusTime\(\))()`

    If the task is paused or cancelled, returns the time at which the task was paused/cancelled; otherwise returns `null`.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTaskDeadline](#getTaskDeadline\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getTemplateId](#getTemplateId\(\))()`

    Returns the id of the node (in the process model for the process that the task is part of) that is the "template" for the task.

    `boolean`

    `[isAllowInlineApproval](#isAllowInlineApproval\(\))()`

    Gets whether the task's form supports inline approval in the context user's effective locale.

    `boolean`

    `[isCompleted](#isCompleted\(\))()`

    Returns `true` if the task has been completed, and `false` otherwise.

    `boolean`

    `[isInChain](#isInChain\(\))()`

    `boolean`

    `[isMobileEnabled](#isMobileEnabled\(\))()`

    Gets whether the task's form is mobile enabled in the context user's effective locale.

    `boolean`

    `[isMutablePriority](#isMutablePriority\(\))()`

    Returns `true` if the priority of this task is mutable (ie can be changed), and `false` otherwise.

    `boolean`

    `[isOneUserAssigned](#isOneUserAssigned\(\))()`

    Returns `true` if the task is assigned to exactly one user, and `false` otherwise.

    `void`

    `[setAcceptedTime](#setAcceptedTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    See [`getAcceptedTime()`](#getAcceptedTime\(\)).

    `void`

    `[setAcceptMode](#setAcceptMode\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") mode_)`

    See [`getAcceptMode()`](#getAcceptMode\(\)).

    `void`

    `[setAllowInlineApproval](#setAllowInlineApproval\(boolean\))(boolean allowInlineApproval)`

    The form's inline approval status is set by the system when this bean is returned.

    `void`

    `[setAssignedTime](#setAssignedTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    See [`getAssignedTime()`](#getAssignedTime\(\)).

    `void`

    `[setAssignees](#setAssignees\(com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\))([Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")[] assignees_)`

    See [`getAssignees()`](#getAssignees\(\)).

    `void`

    `[setChildProcessId](#setChildProcessId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") childProcessId_)`

    See [`getChildProcessId()`](#getChildProcessId\(\)).

    `void`

    `[setCompletedTime](#setCompletedTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    See [`getCompletedTime()`](#getCompletedTime\(\)).

    `void`

    `[setElapsed](#setElapsed\(java.lang.Double\))([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") elapsed_)`

    See [`getElapsed()`](#getElapsed\(\)).

    `void`

    `[setElapsedMilliseconds](#setElapsedMilliseconds\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") milliseconds_)`

    Deprecated.

    Use `#setElapsed()` instead.

    `void`

    `[setException](#setException\(com.appiancorp.suiteapi.process.ProcessException\))([ProcessException](ProcessException.html "class in com.appiancorp.suiteapi.process") exception_)`

    See [`getException()`](#getException\(\)).

    `void`

    `[setFavorite](#setFavorite\(boolean\))(boolean favorite_)`

    `void`

    `[setFormCapability](#setFormCapability\(int\))(int formCapability)`

    Set the form capabilities required for this task (FormConfig CAPABILITY\_\* constants merged together via bitwise 'or').

    `void`

    `[setInChain](#setInChain\(boolean\))(boolean inChain_)`

    `void`

    `[setIsAttended](#setIsAttended\(boolean\))(boolean isAttended_)`

    See [`getIsAttended()`](#getIsAttended\(\))

    `void`

    `[setMobileEnabled](#setMobileEnabled\(boolean\))(boolean isMobileEnabled)`

    The form's mobile enabled status is set by the system when this bean is returned.

    `void`

    `[setMutablePriority](#setMutablePriority\(boolean\))(boolean mutablePriority_)`

    See [`isMutablePriority()`](#isMutablePriority\(\)).

    `void`

    `[setOneUserAssigned](#setOneUserAssigned\(boolean\))(boolean oneUserAssigned_)`

    See [`isOneUserAssigned()`](#isOneUserAssigned\(\)).

    `void`

    `[setOwners](#setOwners\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] owners_)`

    See [`getOwners()`](#getOwners\(\)).

    `void`

    `[setPermissions](#setPermissions\(com.appiancorp.suiteapi.process.security.NodePermissions\))([NodePermissions](security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security") permissions_)`

    See [`getPermissions()`](#getPermissions\(\)).

    `void`

    `[setProcessDeadline](#setProcessDeadline\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") processDeadline_)`

    `void`

    `[setProcessId](#setProcessId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    See [`getProcessId()`](#getProcessId\(\)).

    `void`

    `[setProcessInitiator](#setProcessInitiator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") initiator_)`

    See [`getProcessInitiator()`](#getProcessInitiator\(\)).

    `void`

    `[setProcessName](#setProcessName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    See [`getProcessName()`](#getProcessName\(\)).

    `void`

    `[setProcessStatus](#setProcessStatus\(int\))(int processStatus_)`

    See [`getProcessStatus()`](#getProcessStatus\(\)).

    `void`

    `[setStatus](#setStatus\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") status_)`

    See [`setStatus(Integer)`](#setStatus\(java.lang.Integer\)).

    `void`

    `[setStatusBy](#setStatusBy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") statusBy_)`

    See [`getStatusBy()`](#getStatusBy\(\)).

    `void`

    `[setStatusTime](#setStatusTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    See [`getStatusTime()`](#getStatusTime\(\)).

    `void`

    `[setTaskDeadline](#setTaskDeadline\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") taskDeadline_)`

    `void`

    `[setTemplateId](#setTemplateId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    See [`getTemplateId()`](#getTemplateId\(\)).

    ### Methods inherited from class com.appiancorp.suiteapi.process.[TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process")

    `[getDescription](TaskProperties.html#getDescription\(\)), [getDisplayName](TaskProperties.html#getDisplayName\(\)), [getPriority](TaskProperties.html#getPriority\(\)), [getUuid](TaskProperties.html#getUuid\(\)), [setDescription](TaskProperties.html#setDescription\(java.lang.String\)), [setDisplayName](TaskProperties.html#setDisplayName\(java.lang.String\)), [setPriority](TaskProperties.html#setPriority\(com.appiancorp.suiteapi.process.Priority\)), [setUuid](TaskProperties.html#setUuid\(java.lang.String\)), [toString](TaskProperties.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### TASK\_STATUS\_ASSIGNED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_ASSIGNED

        A status indicating that a task's initialization is complete and the task is ready to be accepted, but no user has accepted it yet.

    -   ### TASK\_STATUS\_ACCEPTED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_ACCEPTED

        A task receives this status when it is accepted by a user.

    -   ### TASK\_STATUS\_COMPLETED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_COMPLETED

        A final status indicating that a task has been completed.

    -   ### TASK\_STATUS\_NOT\_STARTED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_NOT\_STARTED

        A status indicating that a task has been created but its initialization has not yet begun. Spawned tasks that execute sequentially have this status until the preceding task in the sequence is completed.

    -   ### TASK\_STATUS\_CANCELLED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_CANCELLED

        A final status indicating that a task has been canceled.

    -   ### TASK\_STATUS\_PAUSED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_PAUSED

        A status indicating that a task has been paused.

    -   ### TASK\_STATUS\_UNATTENDED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_UNATTENDED

        A status indicating that an unattended task has finished initialization and is either executing or about to be executed.

    -   ### TASK\_STATUS\_ABORTED

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_ABORTED

        Deprecated.

        This status is not used.

    -   ### TASK\_STATUS\_PAUSED\_BY\_EXCEPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_PAUSED\_BY\_EXCEPTION

        A status indicating that a task has been paused by exception.

    -   ### TASK\_STATUS\_SUBMITTED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_SUBMITTED

        A status indicating that a legacy web service activity has been submitted.

    -   ### TASK\_STATUS\_RUNNING

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_RUNNING

        A status indicating that a legacy web service activity is running.

    -   ### TASK\_STATUS\_ERROR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_ERROR

        A status indicating that an error has occurred during execution of a legacy web service activity.

    -   ### TASK\_STATUS\_SKIPPED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_STATUS\_SKIPPED

        A final status indicating that a task has been skipped. A task is skipped when its exception flow is taken.

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

    -   ### SORT\_BY\_STATUS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_STATUS

    -   ### SORT\_BY\_PRIORITY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PRIORITY\_NAME

    -   ### SORT\_BY\_ASSIGNED\_TIME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ASSIGNED\_TIME

    -   ### SORT\_BY\_ACCEPTED\_TIME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ACCEPTED\_TIME

    -   ### SORT\_BY\_ELAPSED\_MILLISECONDS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ELAPSED\_MILLISECONDS

    -   ### SORT\_BY\_COMPLETED\_TIME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_COMPLETED\_TIME

    -   ### SORT\_BY\_PROCESS\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_NAME

    -   ### SORT\_BY\_PROCESS\_INITIATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_INITIATOR

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

    -   ### SORT\_BY\_OWNERS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_OWNERS

    -   ### SORT\_BY\_PROCESSID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESSID

    -   ### SORT\_BY\_ACCEPTMODE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ACCEPTMODE

    -   ### SORT\_BY\_ONE\_USER\_ASSIGNED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ONE\_USER\_ASSIGNED

    -   ### SORT\_BY\_ELAPSED

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ELAPSED

        Deprecated.

        Use [`SORT_BY_ELAPSED_MILLISECONDS`](#SORT_BY_ELAPSED_MILLISECONDS) instead.

    -   ### SORT\_BY\_PRIORITY\_ID

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PRIORITY\_ID

        Deprecated.

        Use [`SORT_BY_PRIORITY_NAME`](#SORT_BY_PRIORITY_NAME) instead, which produces the same results.

-   ## Constructor Details

    -   ### TaskSummary

        public TaskSummary()

-   ## Method Details

    -   ### getProcessStatus

        public int getProcessStatus()

        Returns the status of the process that this task is part of; using this property could result in race conditions if the process status is updated after the task summary object is retrieved.

    -   ### setProcessStatus

        public void setProcessStatus(int processStatus\_)

        See [`getProcessStatus()`](#getProcessStatus\(\)).

    -   ### getException

        public [ProcessException](ProcessException.html "class in com.appiancorp.suiteapi.process") getException()

        If the task is paused by exception, returns the exception on the task; otherwise, returns `null`.

    -   ### setException

        public void setException([ProcessException](ProcessException.html "class in com.appiancorp.suiteapi.process") exception\_)

        See [`getException()`](#getException\(\)).

    -   ### getChildProcessId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getChildProcessId()

        If this task is a Sub-Process or Linked-Process node, returns the id of the child process that this task references; otherwise returns `null`.

    -   ### setChildProcessId

        public void setChildProcessId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") childProcessId\_)

        See [`getChildProcessId()`](#getChildProcessId\(\)).

    -   ### getAcceptedTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getAcceptedTime()

        Returns the time at which the task was accepted or `null` if it has not yet been accepted.

    -   ### setAcceptedTime

        public void setAcceptedTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        See [`getAcceptedTime()`](#getAcceptedTime\(\)).

    -   ### getAcceptMode

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getAcceptMode()

        Returns the accept mode of the task: 0 is Auto Accept Always, 1 is Auto Accept When Assigned, and 2 is Manually Accept Always.

    -   ### setAcceptMode

        public void setAcceptMode([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") mode\_)

        See [`getAcceptMode()`](#getAcceptMode\(\)).

    -   ### getAssignedTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getAssignedTime()

        Returns the time at which the task was assigned or `null` if it has not yet been assigned.

    -   ### setAssignedTime

        public void setAssignedTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        See [`getAssignedTime()`](#getAssignedTime\(\)).

    -   ### getCompletedTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getCompletedTime()

        Returns the time at which the task was completed, or `null` if it has not yet been completed.

    -   ### setCompletedTime

        public void setCompletedTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        See [`getCompletedTime()`](#getCompletedTime\(\)).

    -   ### getElapsedMilliseconds

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getElapsedMilliseconds()

        Deprecated.

        Use [`getElapsed()`](#getElapsed\(\)) instead.

        Returns the amount of time (in ms) since the task was started.

    -   ### setElapsedMilliseconds

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setElapsedMilliseconds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") milliseconds\_)

        Deprecated.

        Use `#setElapsed()` instead.

        See [`getElapsedMilliseconds()`](#getElapsedMilliseconds\(\)).

    -   ### getElapsed

        public [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") getElapsed()

        Returns the amount of time (in days) since the task was started.

    -   ### setElapsed

        public void setElapsed([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") elapsed\_)

        See [`getElapsed()`](#getElapsed\(\)).

    -   ### getOwners

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getOwners()

        Returns the usernames of the owners of the task.

    -   ### setOwners

        public void setOwners([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] owners\_)

        See [`getOwners()`](#getOwners\(\)).

    -   ### getProcessId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessId()

        Returns the id of the process that the task is part of.

    -   ### setProcessId

        public void setProcessId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        See [`getProcessId()`](#getProcessId\(\)).

    -   ### getProcessName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessName()

        Returns the name of the process that this task is part of.

    -   ### setProcessName

        public void setProcessName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        See [`getProcessName()`](#getProcessName\(\)).

    -   ### getStatus

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getStatus()

        Returns the status of the task, which is one of the TASK\_STATUS\_XXX constants defined by this class.

    -   ### setStatus

        public void setStatus([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") status\_)

        See [`setStatus(Integer)`](#setStatus\(java.lang.Integer\)).

    -   ### getProcessInitiator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessInitiator()

        Returns the username of the initiator of the process that this task is part of.

    -   ### setProcessInitiator

        public void setProcessInitiator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") initiator\_)

        See [`getProcessInitiator()`](#getProcessInitiator\(\)).

    -   ### isOneUserAssigned

        public boolean isOneUserAssigned()

        Returns `true` if the task is assigned to exactly one user, and `false` otherwise.

    -   ### setOneUserAssigned

        public void setOneUserAssigned(boolean oneUserAssigned\_)

        See [`isOneUserAssigned()`](#isOneUserAssigned\(\)).

    -   ### getIsAttended

        public boolean getIsAttended()

        Returns `true` if the task is attended, and `false` otherwise

    -   ### setIsAttended

        public void setIsAttended(boolean isAttended\_)

        See [`getIsAttended()`](#getIsAttended\(\))

    -   ### isCompleted

        public boolean isCompleted()

        Returns `true` if the task has been completed, and `false` otherwise.

    -   ### getAssignees

        public [Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")\[\] getAssignees()

        Returns the users/groups that the task is assigned to.

    -   ### setAssignees

        public void setAssignees([Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")\[\] assignees\_)

        See [`getAssignees()`](#getAssignees\(\)).

    -   ### getPermissions

        public [NodePermissions](security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissions()

        Return the permissions for the task.

    -   ### setPermissions

        public void setPermissions([NodePermissions](security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security") permissions\_)

        See [`getPermissions()`](#getPermissions\(\)).

    -   ### getStatusBy

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStatusBy()

        If the task is paused or cancelled, returns the username of the user who paused/cancelled the task; otherwise returns `null`.

    -   ### setStatusBy

        public void setStatusBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") statusBy\_)

        See [`getStatusBy()`](#getStatusBy\(\)).

    -   ### getStatusTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getStatusTime()

        If the task is paused or cancelled, returns the time at which the task was paused/cancelled; otherwise returns `null`.

    -   ### setStatusTime

        public void setStatusTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        See [`getStatusTime()`](#getStatusTime\(\)).

    -   ### getTemplateId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getTemplateId()

        Returns the id of the node (in the process model for the process that the task is part of) that is the "template" for the task.

    -   ### setTemplateId

        public void setTemplateId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        See [`getTemplateId()`](#getTemplateId\(\)).

    -   ### isMutablePriority

        public boolean isMutablePriority()

        Returns `true` if the priority of this task is mutable (ie can be changed), and `false` otherwise.

    -   ### setMutablePriority

        public void setMutablePriority(boolean mutablePriority\_)

        See [`isMutablePriority()`](#isMutablePriority\(\)).

    -   ### getFavorite

        public boolean getFavorite()

    -   ### setFavorite

        public void setFavorite(boolean favorite\_)

    -   ### getProcessDeadline

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getProcessDeadline()

    -   ### setProcessDeadline

        public void setProcessDeadline([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") processDeadline\_)

    -   ### getTaskDeadline

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTaskDeadline()

    -   ### setTaskDeadline

        public void setTaskDeadline([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") taskDeadline\_)

    -   ### isInChain

        public boolean isInChain()

    -   ### setInChain

        public void setInChain(boolean inChain\_)

    -   ### isAllowInlineApproval

        public boolean isAllowInlineApproval()

        Gets whether the task's form supports inline approval in the context user's effective locale. This corresponds to the [`FormConfig.TASK_ALLOW_INLINE_APPROVAL`](forms/FormConfig.html#TASK_ALLOW_INLINE_APPROVAL) flag.

        Returns:

        whether the task's form supports inline approval

        See Also:

        -   [`FormConfig.getHiddenSections()`](forms/FormConfig.html#getHiddenSections\(\))

    -   ### setAllowInlineApproval

        public void setAllowInlineApproval(boolean allowInlineApproval)

        The form's inline approval status is set by the system when this bean is returned. Calling this method has no effect.

        Parameters:

        `allowInlineApproval` - whether the task's form supports inline approval in the context user's effective locale

        See Also:

        -   [`FormConfig.setHiddenSections(java.lang.Integer)`](forms/FormConfig.html#setHiddenSections\(java.lang.Integer\))

    -   ### isMobileEnabled

        public boolean isMobileEnabled()

        Gets whether the task's form is mobile enabled in the context user's effective locale. This corresponds to the [`FormConfig.FORM_IS_MOBILE_ENABLED`](forms/FormConfig.html#FORM_IS_MOBILE_ENABLED) flag.

        Returns:

        whether the task's form is mobile enabled

        See Also:

        -   [`FormConfig.getHiddenSections()`](forms/FormConfig.html#getHiddenSections\(\))

    -   ### setMobileEnabled

        public void setMobileEnabled(boolean isMobileEnabled)

        The form's mobile enabled status is set by the system when this bean is returned. Calling this method has no effect.

        Parameters:

        `isMobileEnabled` - whether the task's form is mobile enabled in the context user's effective locale

        See Also:

        -   [`FormConfig.setHiddenSections(java.lang.Integer)`](forms/FormConfig.html#setHiddenSections\(java.lang.Integer\))

    -   ### getFormCapability

        public int getFormCapability()

        Get the form capabilities required for this task (FormConfig CAPABILITY\_\* constants merged together via bitwise 'or'). This is available only for TaskSummary objects returned by ProcessAnalyticsService (e.g., via getMyTasks). Example: If a form requires UI Expression capabilities, then it returns FormConfig.CAPABILITY\_ALLOW\_TYPE\_UI\_EXPRESSION.

        Returns:

        form capabilities required

        See Also:

        -   [`FormConfig`](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")

    -   ### setFormCapability

        public void setFormCapability(int formCapability)

        Set the form capabilities required for this task (FormConfig CAPABILITY\_\* constants merged together via bitwise 'or').

        Parameters:

        `formCapability` - bit vector

        See Also:

        -   [`FormConfig`](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")