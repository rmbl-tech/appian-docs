---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/TaskDetails.html
original_path: api/com/appiancorp/suiteapi/process/TaskDetails.html
version: "25.3"
title: "Class TaskDetails"
page_id: "api/com/appiancorp/suiteapi/process/TaskDetails"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class TaskDetails

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.process.TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process")

[com.appiancorp.suiteapi.process.TaskSummary](TaskSummary.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.TaskDetails

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class TaskDetails extends [TaskSummary](TaskSummary.html "class in com.appiancorp.suiteapi.process")

More details about a task (attended activity) than are provided in the TaskSummary, including the notes and attachments on the task.

See Also:

-   [`ProcessExecutionService`](ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")
-   [`NotesContentService`](NotesContentService.html "interface in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.TaskDetails)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.[TaskSummary](TaskSummary.html "class in com.appiancorp.suiteapi.process")

    `[SORT_BY_ACCEPTED_TIME](TaskSummary.html#SORT_BY_ACCEPTED_TIME), [SORT_BY_ACCEPTMODE](TaskSummary.html#SORT_BY_ACCEPTMODE), [SORT_BY_ASSIGNED_TIME](TaskSummary.html#SORT_BY_ASSIGNED_TIME), [SORT_BY_COMPLETED_TIME](TaskSummary.html#SORT_BY_COMPLETED_TIME), [SORT_BY_DESCRIPTION](TaskSummary.html#SORT_BY_DESCRIPTION), [SORT_BY_ELAPSED](TaskSummary.html#SORT_BY_ELAPSED), [SORT_BY_ELAPSED_MILLISECONDS](TaskSummary.html#SORT_BY_ELAPSED_MILLISECONDS), [SORT_BY_ID](TaskSummary.html#SORT_BY_ID), [SORT_BY_NAME](TaskSummary.html#SORT_BY_NAME), [SORT_BY_ONE_USER_ASSIGNED](TaskSummary.html#SORT_BY_ONE_USER_ASSIGNED), [SORT_BY_OWNERS](TaskSummary.html#SORT_BY_OWNERS), [SORT_BY_PRIORITY_ID](TaskSummary.html#SORT_BY_PRIORITY_ID), [SORT_BY_PRIORITY_NAME](TaskSummary.html#SORT_BY_PRIORITY_NAME), [SORT_BY_PROCESS_INITIATOR](TaskSummary.html#SORT_BY_PROCESS_INITIATOR), [SORT_BY_PROCESS_NAME](TaskSummary.html#SORT_BY_PROCESS_NAME), [SORT_BY_PROCESSID](TaskSummary.html#SORT_BY_PROCESSID), [SORT_BY_STATUS](TaskSummary.html#SORT_BY_STATUS), [TASK_STATUS_ABORTED](TaskSummary.html#TASK_STATUS_ABORTED), [TASK_STATUS_ACCEPTED](TaskSummary.html#TASK_STATUS_ACCEPTED), [TASK_STATUS_ASSIGNED](TaskSummary.html#TASK_STATUS_ASSIGNED), [TASK_STATUS_CANCELLED](TaskSummary.html#TASK_STATUS_CANCELLED), [TASK_STATUS_COMPLETED](TaskSummary.html#TASK_STATUS_COMPLETED), [TASK_STATUS_ERROR](TaskSummary.html#TASK_STATUS_ERROR), [TASK_STATUS_NOT_STARTED](TaskSummary.html#TASK_STATUS_NOT_STARTED), [TASK_STATUS_PAUSED](TaskSummary.html#TASK_STATUS_PAUSED), [TASK_STATUS_PAUSED_BY_EXCEPTION](TaskSummary.html#TASK_STATUS_PAUSED_BY_EXCEPTION), [TASK_STATUS_RUNNING](TaskSummary.html#TASK_STATUS_RUNNING), [TASK_STATUS_SKIPPED](TaskSummary.html#TASK_STATUS_SKIPPED), [TASK_STATUS_SUBMITTED](TaskSummary.html#TASK_STATUS_SUBMITTED), [TASK_STATUS_UNATTENDED](TaskSummary.html#TASK_STATUS_UNATTENDED)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TaskDetails](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAttachments](#getAttachments\(\))()`

    Deprecated.

    Attachments and Notes are now loaded in a separate grid.

    `[EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")[]`

    `[getEscalationInstances](#getEscalationInstances\(\))()`

    Returns the task's escalation properties

    `int`

    `[getFormType](#getFormType\(\))()`

    Gets the type of form used with this task.

    `[Note](Note.html "class in com.appiancorp.suiteapi.process")[]`

    `[getNotes](#getNotes\(\))()`

    Deprecated.

    Attachments and Notes are now loaded in a separate grid.

    `[ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process")`

    `[getScheduleInstance](#getScheduleInstance\(\))()`

    Returns the schedule information for the task

    `void`

    `[setAttachments](#setAttachments\(com.appiancorp.suiteapi.process.Attachment%5B%5D\))([Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")[] attachments_)`

    Deprecated.

    Attachments and Notes are now loaded in a separate grid.

    `void`

    `[setEscalationInstances](#setEscalationInstances\(com.appiancorp.suiteapi.process.EscalationInstance%5B%5D\))([EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")[] instances_)`

    Sets the task's escalation properties

    `void`

    `[setFormType](#setFormType\(int\))(int formType)`

    Sets the type of form used in this task.

    `void`

    `[setNotes](#setNotes\(com.appiancorp.suiteapi.process.Note%5B%5D\))([Note](Note.html "class in com.appiancorp.suiteapi.process")[] notes_)`

    Deprecated.

    Attachments and Notes are now loaded in a separate grid.

    `void`

    `[setScheduleInstance](#setScheduleInstance\(com.appiancorp.suiteapi.process.ScheduleInstance\))([ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process") instance_)`

    Sets the schedule information for the task

    ### Methods inherited from class com.appiancorp.suiteapi.process.[TaskSummary](TaskSummary.html "class in com.appiancorp.suiteapi.process")

    `[getAcceptedTime](TaskSummary.html#getAcceptedTime\(\)), [getAcceptMode](TaskSummary.html#getAcceptMode\(\)), [getAssignedTime](TaskSummary.html#getAssignedTime\(\)), [getAssignees](TaskSummary.html#getAssignees\(\)), [getChildProcessId](TaskSummary.html#getChildProcessId\(\)), [getCompletedTime](TaskSummary.html#getCompletedTime\(\)), [getElapsed](TaskSummary.html#getElapsed\(\)), [getElapsedMilliseconds](TaskSummary.html#getElapsedMilliseconds\(\)), [getException](TaskSummary.html#getException\(\)), [getFavorite](TaskSummary.html#getFavorite\(\)), [getFormCapability](TaskSummary.html#getFormCapability\(\)), [getIsAttended](TaskSummary.html#getIsAttended\(\)), [getOwners](TaskSummary.html#getOwners\(\)), [getPermissions](TaskSummary.html#getPermissions\(\)), [getProcessDeadline](TaskSummary.html#getProcessDeadline\(\)), [getProcessId](TaskSummary.html#getProcessId\(\)), [getProcessInitiator](TaskSummary.html#getProcessInitiator\(\)), [getProcessName](TaskSummary.html#getProcessName\(\)), [getProcessStatus](TaskSummary.html#getProcessStatus\(\)), [getStatus](TaskSummary.html#getStatus\(\)), [getStatusBy](TaskSummary.html#getStatusBy\(\)), [getStatusTime](TaskSummary.html#getStatusTime\(\)), [getTaskDeadline](TaskSummary.html#getTaskDeadline\(\)), [getTemplateId](TaskSummary.html#getTemplateId\(\)), [isAllowInlineApproval](TaskSummary.html#isAllowInlineApproval\(\)), [isCompleted](TaskSummary.html#isCompleted\(\)), [isInChain](TaskSummary.html#isInChain\(\)), [isMobileEnabled](TaskSummary.html#isMobileEnabled\(\)), [isMutablePriority](TaskSummary.html#isMutablePriority\(\)), [isOneUserAssigned](TaskSummary.html#isOneUserAssigned\(\)), [setAcceptedTime](TaskSummary.html#setAcceptedTime\(java.sql.Timestamp\)), [setAcceptMode](TaskSummary.html#setAcceptMode\(java.lang.Integer\)), [setAllowInlineApproval](TaskSummary.html#setAllowInlineApproval\(boolean\)), [setAssignedTime](TaskSummary.html#setAssignedTime\(java.sql.Timestamp\)), [setAssignees](TaskSummary.html#setAssignees\(com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\)), [setChildProcessId](TaskSummary.html#setChildProcessId\(java.lang.Long\)), [setCompletedTime](TaskSummary.html#setCompletedTime\(java.sql.Timestamp\)), [setElapsed](TaskSummary.html#setElapsed\(java.lang.Double\)), [setElapsedMilliseconds](TaskSummary.html#setElapsedMilliseconds\(java.lang.Long\)), [setException](TaskSummary.html#setException\(com.appiancorp.suiteapi.process.ProcessException\)), [setFavorite](TaskSummary.html#setFavorite\(boolean\)), [setFormCapability](TaskSummary.html#setFormCapability\(int\)), [setInChain](TaskSummary.html#setInChain\(boolean\)), [setIsAttended](TaskSummary.html#setIsAttended\(boolean\)), [setMobileEnabled](TaskSummary.html#setMobileEnabled\(boolean\)), [setMutablePriority](TaskSummary.html#setMutablePriority\(boolean\)), [setOneUserAssigned](TaskSummary.html#setOneUserAssigned\(boolean\)), [setOwners](TaskSummary.html#setOwners\(java.lang.String%5B%5D\)), [setPermissions](TaskSummary.html#setPermissions\(com.appiancorp.suiteapi.process.security.NodePermissions\)), [setProcessDeadline](TaskSummary.html#setProcessDeadline\(java.sql.Timestamp\)), [setProcessId](TaskSummary.html#setProcessId\(java.lang.Long\)), [setProcessInitiator](TaskSummary.html#setProcessInitiator\(java.lang.String\)), [setProcessName](TaskSummary.html#setProcessName\(java.lang.String\)), [setProcessStatus](TaskSummary.html#setProcessStatus\(int\)), [setStatus](TaskSummary.html#setStatus\(java.lang.Integer\)), [setStatusBy](TaskSummary.html#setStatusBy\(java.lang.String\)), [setStatusTime](TaskSummary.html#setStatusTime\(java.sql.Timestamp\)), [setTaskDeadline](TaskSummary.html#setTaskDeadline\(java.sql.Timestamp\)), [setTemplateId](TaskSummary.html#setTemplateId\(java.lang.Long\))`

    ### Methods inherited from class com.appiancorp.suiteapi.process.[TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process")

    `[getDescription](TaskProperties.html#getDescription\(\)), [getDisplayName](TaskProperties.html#getDisplayName\(\)), [getPriority](TaskProperties.html#getPriority\(\)), [getUuid](TaskProperties.html#getUuid\(\)), [setDescription](TaskProperties.html#setDescription\(java.lang.String\)), [setDisplayName](TaskProperties.html#setDisplayName\(java.lang.String\)), [setPriority](TaskProperties.html#setPriority\(com.appiancorp.suiteapi.process.Priority\)), [setUuid](TaskProperties.html#setUuid\(java.lang.String\)), [toString](TaskProperties.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TaskDetails

        public TaskDetails()

-   ## Method Details

    -   ### getNotes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] getNotes()

        Deprecated.

        Attachments and Notes are now loaded in a separate grid.

        Returns the notes attached to the task

        Returns:

        an `Array` of the `Note` objects attached to the task

    -   ### setNotes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setNotes([Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] notes\_)

        Deprecated.

        Attachments and Notes are now loaded in a separate grid.

        Sets the notes attached to the task

        Parameters:

        `notes_` - the notes to set.

    -   ### getAttachments

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")\[\] getAttachments()

        Deprecated.

        Attachments and Notes are now loaded in a separate grid.

        Returns the task attachments

        Returns:

        the attachments

    -   ### setAttachments

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setAttachments([Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")\[\] attachments\_)

        Deprecated.

        Attachments and Notes are now loaded in a separate grid.

        Sets the task attachments

        Parameters:

        `attachments_` - the attachments

    -   ### getEscalationInstances

        public [EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")\[\] getEscalationInstances()

        Returns the task's escalation properties

        Returns:

        an `Array` of the escalation properties

    -   ### setEscalationInstances

        public void setEscalationInstances([EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")\[\] instances\_)

        Sets the task's escalation properties

        Parameters:

        `instances_` - an `Array` of escalation properties

    -   ### getScheduleInstance

        public [ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process") getScheduleInstance()

        Returns the schedule information for the task

        Returns:

        the schedule information, or `null` if the task is not scheduled

    -   ### setScheduleInstance

        public void setScheduleInstance([ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process") instance\_)

        Sets the schedule information for the task

        Parameters:

        `instance_` - the schedule information

    -   ### getFormType

        public int getFormType()

        Gets the type of form used with this task. Should be one of the com.appiancorp.suiteapi.process.forms.FormConfig#FORM\_TYPE\_XXX constants.

        Returns:

        the form type

    -   ### setFormType

        public void setFormType(int formType)

        Sets the type of form used in this task. Should be one of the com.appiancorp.suiteapi.process.forms.FormConfig#FORM\_TYPE\_XXX constants.