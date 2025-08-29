---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessExecutionService.html
original_path: api/com/appiancorp/suiteapi/process/ProcessExecutionService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Interface ProcessExecutionService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface ProcessExecutionService extends com.appiancorp.services.ContextSensitiveService

Interface to the business logic for the process runtime.

A process is an instance of a process model. The nodes added to processes at design time are translated into activities at execution time. Activities may need to be attended by human actors (in which case they are also called "tasks") or may be unattended. Activities can be run asynchronously.

Processes may contain process variables, or process-scoped variables that may be used and set by activities. Process variables can also be set up as process parameters, or variables for which the value can be set upon starting the process (and may also be required).
See: `#addProcessVariable(Long,ProcessVariable)`, `#addProcessVariables(Long,ProcessVariable[])`, [`getProcessParameter(Long,String)`](#getProcessParameter\(java.lang.Long,java.lang.String\)), [`getProcessParameters(Long)`](#getProcessParameters\(java.lang.Long\)), [`getProcessVariable(Long,String)`](#getProcessVariable\(java.lang.Long,java.lang.String\)), [`getProcessVariables(Long)`](#getProcessVariables\(java.lang.Long\)), `#setProcessVariable(Long,ProcessVariable)`, and `#setProcessVariables(Long,ProcessVariable[])`

Nodes may be executed more than once if they are set up with recurrence.
See: [`skipRecurrence(Long,Long,Long)`](#skipRecurrence\(java.lang.Long,java.lang.Long,java.lang.Long\)), [`triggerRecurrence(Long,Long,Long)`](#triggerRecurrence\(java.lang.Long,java.lang.Long,java.lang.Long\)), and [`getNextRecurrence(Long,Long)`](#getNextRecurrence\(java.lang.Long,java.lang.Long\))

Nodes may be set up with escalations, or actions that should be taken after a certain amount of time if the task is not complete.
See: [`skipTaskEscalation(Long,Long)`](#skipTaskEscalation\(java.lang.Long,java.lang.Long\)) and [`triggerTaskEscalation(Long,Long)`](#triggerTaskEscalation\(java.lang.Long,java.lang.Long\))

Processes can be archived, or saved to files, and unarchived.
See: [`archiveProcess(Long)`](#archiveProcess\(java.lang.Long\)), [`archiveProcesses(Long[])`](#archiveProcesses\(java.lang.Long%5B%5D\)), [`unarchiveProcess(Long)`](#unarchiveProcess\(java.lang.Long\)), [`unarchiveProcesses(Long[])`](#unarchiveProcesses\(java.lang.Long%5B%5D\))

The methods of this class may throw a [`PrivilegeException`](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions") if the current user does not have privileges (permission) to perform an action, as specified in [`NodePermissions`](security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security") and [`ProcessModelPermissions`](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") \*

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`ExceptionHandlerService`](ExceptionHandlerService.html "interface in com.appiancorp.suiteapi.process")
-   [`NotesContentService`](NotesContentService.html "interface in com.appiancorp.suiteapi.process")
-   [`ProcessAdministrationService`](ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process")
-   [`ProcessAnalyticsService`](analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")
-   [`ProcessDesignService`](ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[acceptTask$UPDATES](#acceptTask$UPDATES)`

    `static final boolean`

    `[acknowledgeActivity$UPDATES](#acknowledgeActivity$UPDATES)`

    `static final boolean`

    `[acknowledgeMessages$UPDATES](#acknowledgeMessages$UPDATES)`

    `static final int`

    `[ACTIVITY_CANCELLED](#ACTIVITY_CANCELLED)`

    A constant indicating that an activity has been cancelled

    `static final int`

    `[ACTIVITY_COMPLETED](#ACTIVITY_COMPLETED)`

    A constant indicating that an activity is in an invalid state.

    `static final int`

    `[ACTIVITY_INVALID_STATE](#ACTIVITY_INVALID_STATE)`

    A constant indicating that an activity is in an invalid state

    `static final int`

    `[ACTIVITY_PAUSED](#ACTIVITY_PAUSED)`

    A constant indicating that an activity has been paused

    `static final int`

    `[ACTIVITY_PROCESS_CANCELLED](#ACTIVITY_PROCESS_CANCELLED)`

    A constant indicating that an activity exists in a process that has been cancelled

    `static final int`

    `[ACTIVITY_PROCESS_COMPLETED](#ACTIVITY_PROCESS_COMPLETED)`

    A constant indicating that an activity exists in a process that has been completed

    `static final int`

    `[ACTIVITY_PROCESS_DELETED](#ACTIVITY_PROCESS_DELETED)`

    A constant indicating that an activity has been deleted, since its parent process has been deleted

    `static final int`

    `[ACTIVITY_PROCESS_PAUSED](#ACTIVITY_PROCESS_PAUSED)`

    A constant indicating that the process for an activity is paused

    `static final int`

    `[ACTIVITY_SKIPPED](#ACTIVITY_SKIPPED)`

    A constant indicating that an activity has been skipped by an exception flow.

    `static final int`

    `[ACTIVITY_VALID](#ACTIVITY_VALID)`

    A constant indicating that an activity is valid.

    `static final int`

    `[ACTIVITY_WAITING](#ACTIVITY_WAITING)`

    A constant indicating that an activity is waiting on an asynchronous workq item in Java.

    `static final boolean`

    `[addAttachmentsToProcess$UPDATES](#addAttachmentsToProcess$UPDATES)`

    `static final boolean`

    `[addAttachmentsToTask$UPDATES](#addAttachmentsToTask$UPDATES)`

    `static final boolean`

    `[addAttachmentToProcess$UPDATES](#addAttachmentToProcess$UPDATES)`

    `static final boolean`

    `[addAttachmentToProcesses$UPDATES](#addAttachmentToProcesses$UPDATES)`

    `static final boolean`

    `[addAttachmentToTask$UPDATES](#addAttachmentToTask$UPDATES)`

    `static final boolean`

    `[addAttachmentToTasks$UPDATES](#addAttachmentToTasks$UPDATES)`

    `static final boolean`

    `[addProcessToFavorites$UPDATES](#addProcessToFavorites$UPDATES)`

    `static final boolean`

    `[addProcessVariable$UPDATES](#addProcessVariable$UPDATES)`

    `static final boolean`

    `[addProcessVariables$UPDATES](#addProcessVariables$UPDATES)`

    `static final boolean`

    `[addTaskToFavorites$UPDATES](#addTaskToFavorites$UPDATES)`

    `static final boolean`

    `[archiveProcess$UPDATES](#archiveProcess$UPDATES)`

    `static final boolean`

    `[archiveProcesses$UPDATES](#archiveProcesses$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ATTACHMENT_RETURN_INVALID](#ATTACHMENT_RETURN_INVALID)`

    Result code indicating that an attachment may not be added/removed because the specified process, task, or attachment does not exist

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ATTACHMENT_RETURN_PERMISSIONS](#ATTACHMENT_RETURN_PERMISSIONS)`

    Result code indicating that an attachment may not be added/removed because the user does not have permission to do so

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ATTACHMENT_RETURN_PROCESS_CANCELLED](#ATTACHMENT_RETURN_PROCESS_CANCELLED)`

    Result code indicating that an attachment may not be added to the process because the process was cancelled

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ATTACHMENT_RETURN_SUCCESS](#ATTACHMENT_RETURN_SUCCESS)`

    Return code indicating that adding an attachment was successful

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ATTACHMENT_RETURN_TASK_CANCELLED](#ATTACHMENT_RETURN_TASK_CANCELLED)`

    Result code indicating that an attachment may not be added to the task because the task was cancelled

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ATTACHMENT_RETURN_TASK_UNATTENDED](#ATTACHMENT_RETURN_TASK_UNATTENDED)`

    Result code indicating that an attachment may not be added to the task because the task is unattended

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ATTACHMENT_RETURN_TOO_MANY](#ATTACHMENT_RETURN_TOO_MANY)`

    Result code indicating that an attachment may not be added because too many attachments have been added

    `static final int`

    `[ATTENDED_TASKS](#ATTENDED_TASKS)`

    Code for attended tasks only

    `static final boolean`

    `[cancelAllNodes$UPDATES](#cancelAllNodes$UPDATES)`

    `static final boolean`

    `[cancelProcess$UPDATES](#cancelProcess$UPDATES)`

    `static final boolean`

    `[cancelProcesses$UPDATES](#cancelProcesses$UPDATES)`

    `static final boolean`

    `[cancelStore$UPDATES](#cancelStore$UPDATES)`

    `static final boolean`

    `[cancelTask$UPDATES](#cancelTask$UPDATES)`

    `static final boolean`

    `[cancelTasks$UPDATES](#cancelTasks$UPDATES)`

    `static final boolean`

    `[canCompleteActivity$UPDATES](#canCompleteActivity$UPDATES)`

    `static final boolean`

    `[canCompleteClone$UPDATES](#canCompleteClone$UPDATES)`

    `static final boolean`

    `[checkActivityValidity$UPDATES](#checkActivityValidity$UPDATES)`

    `static final boolean`

    `[commitUpdateUsernames$UPDATES](#commitUpdateUsernames$UPDATES)`

    `static final boolean`

    `[completeActivity$UPDATES](#completeActivity$UPDATES)`

    `static final boolean`

    `[completeClone$UPDATES](#completeClone$UPDATES)`

    `static final boolean`

    `[completeStore$UPDATES](#completeStore$UPDATES)`

    `static final boolean`

    `[containsAsynchronousSubProcesses$UPDATES](#containsAsynchronousSubProcesses$UPDATES)`

    `static final boolean`

    `[containsLinkProcesses$UPDATES](#containsLinkProcesses$UPDATES)`

    `static final boolean`

    `[containsLinkProcessesInheritingPriority$UPDATES](#containsLinkProcessesInheritingPriority$UPDATES)`

    `static final boolean`

    `[containsSubProcesses$UPDATES](#containsSubProcesses$UPDATES)`

    `static final boolean`

    `[containsSubProcessesInheritingPriority$UPDATES](#containsSubProcessesInheritingPriority$UPDATES)`

    `static final boolean`

    `[containsSynchronousSubProcesses$UPDATES](#containsSynchronousSubProcesses$UPDATES)`

    `static final boolean`

    `[createNoteMetadata$UPDATES](#createNoteMetadata$UPDATES)`

    `static final boolean`

    `[createNoteMetadataForProcess$UPDATES](#createNoteMetadataForProcess$UPDATES)`

    `static final boolean`

    `[createNoteMetadataForProcesses$UPDATES](#createNoteMetadataForProcesses$UPDATES)`

    `static final boolean`

    `[createNoteMetadataForTask$UPDATES](#createNoteMetadataForTask$UPDATES)`

    `static final boolean`

    `[createNoteMetadataForTasks$UPDATES](#createNoteMetadataForTasks$UPDATES)`

    `static final boolean`

    `[createNoteMetadatas$UPDATES](#createNoteMetadatas$UPDATES)`

    `static final boolean`

    `[createNoteMetadatasForProcess$UPDATES](#createNoteMetadatasForProcess$UPDATES)`

    `static final boolean`

    `[createNoteMetadatasForTask$UPDATES](#createNoteMetadatasForTask$UPDATES)`

    `static final boolean`

    `[deleteNoteMetadataForProcess$UPDATES](#deleteNoteMetadataForProcess$UPDATES)`

    `static final boolean`

    `[deleteNoteMetadataForTask$UPDATES](#deleteNoteMetadataForTask$UPDATES)`

    `static final boolean`

    `[deleteNoteMetadatasForProcess$UPDATES](#deleteNoteMetadatasForProcess$UPDATES)`

    `static final boolean`

    `[deleteNoteMetadatasForTask$UPDATES](#deleteNoteMetadatasForTask$UPDATES)`

    `static final boolean`

    `[deleteProcess$UPDATES](#deleteProcess$UPDATES)`

    `static final boolean`

    `[deleteProcesses$UPDATES](#deleteProcesses$UPDATES)`

    `static final boolean`

    `[execute$UPDATES](#execute$UPDATES)`

    `static final int`

    `[EXECUTION_FAILURE_EXCEPTION](#EXECUTION_FAILURE_EXCEPTION)`

    Constant indicating that unattended activities could not be completed because an exception occurred

    `static final int`

    `[EXECUTION_FAILURE_TIMEOUT](#EXECUTION_FAILURE_TIMEOUT)`

    Constant indicating that unattended activities could not be completed because a timeout occurred connecting to Java from the process engine

    `static final boolean`

    `[executionFailure$UPDATES](#executionFailure$UPDATES)`

    `static final boolean`

    `[executionFailureMessage$UPDATES](#executionFailureMessage$UPDATES)`

    `static final boolean`

    `[getActivitiesMetadata$UPDATES](#getActivitiesMetadata$UPDATES)`

    `static final boolean`

    `[getActivityMetadata$UPDATES](#getActivityMetadata$UPDATES)`

    `static final boolean`

    `[getActivityProperties$UPDATES](#getActivityProperties$UPDATES)`

    `static final boolean`

    `[getAllExceptionNoteMetadatasForProcess$UPDATES](#getAllExceptionNoteMetadatasForProcess$UPDATES)`

    `static final boolean`

    `[getArchivePaths$UPDATES](#getArchivePaths$UPDATES)`

    `static final boolean`

    `[getAssigneePoolForTasks$UPDATES](#getAssigneePoolForTasks$UPDATES)`

    `static final boolean`

    `[getAsynchronousSubProcessesForProcess$UPDATES](#getAsynchronousSubProcessesForProcess$UPDATES)`

    `static final boolean`

    `[getAttachmentsAndNotesForTask$UPDATES](#getAttachmentsAndNotesForTask$UPDATES)`

    `static final boolean`

    `[getAttachmentsForProcess$UPDATES](#getAttachmentsForProcess$UPDATES)`

    `static final boolean`

    `[getAttachmentsForTask$UPDATES](#getAttachmentsForTask$UPDATES)`

    `static final boolean`

    `[getAttachmentsInProcess$UPDATES](#getAttachmentsInProcess$UPDATES)`

    `static final boolean`

    `[getAutoArchiveProperties$UPDATES](#getAutoArchiveProperties$UPDATES)`

    `static final boolean`

    `[getCancelledTasksForProcess$UPDATES](#getCancelledTasksForProcess$UPDATES)`

    `static final boolean`

    `[getCompletedTasksForProcess$UPDATES](#getCompletedTasksForProcess$UPDATES)`

    `static final boolean`

    `[getCurrentNotePaths$UPDATES](#getCurrentNotePaths$UPDATES)`

    `static final boolean`

    `[getCurrentTasksForProcess$UPDATES](#getCurrentTasksForProcess$UPDATES)`

    `static final boolean`

    `[getDeadlineForProcess$UPDATES](#getDeadlineForProcess$UPDATES)`

    `static final boolean`

    `[getDeadlineForTask$UPDATES](#getDeadlineForTask$UPDATES)`

    `static final boolean`

    `[getExceptionNoteMetadataForTask$UPDATES](#getExceptionNoteMetadataForTask$UPDATES)`

    `static final boolean`

    `[getExceptionNoteMetadatasForProcess$UPDATES](#getExceptionNoteMetadatasForProcess$UPDATES)`

    `static final boolean`

    `[getLingeringTasksForProcess$UPDATES](#getLingeringTasksForProcess$UPDATES)`

    `static final boolean`

    `[getLingeringTasksForProcessAndNode$UPDATES](#getLingeringTasksForProcessAndNode$UPDATES)`

    `static final boolean`

    `[getLinkProcessesForProcess$UPDATES](#getLinkProcessesForProcess$UPDATES)`

    `static final boolean`

    `[getMaximumNumberOfAttachments$UPDATES](#getMaximumNumberOfAttachments$UPDATES)`

    `static final boolean`

    `[getMaximumNumberOfNotes$UPDATES](#getMaximumNumberOfNotes$UPDATES)`

    `static final boolean`

    `[getMemoryUsageForExecEngine$UPDATES](#getMemoryUsageForExecEngine$UPDATES)`

    `static final boolean`

    `[getMemoryUsageForNodesInProcesses$UPDATES](#getMemoryUsageForNodesInProcesses$UPDATES)`

    `static final boolean`

    `[getMemoryUsageForProcesses$UPDATES](#getMemoryUsageForProcesses$UPDATES)`

    `static final boolean`

    `[getMemoryUsageForProcessesByModelUUID$UPDATES](#getMemoryUsageForProcessesByModelUUID$UPDATES)`

    `static final boolean`

    `[getMemoryUsageForProcessModels$UPDATES](#getMemoryUsageForProcessModels$UPDATES)`

    `static final boolean`

    `[getMemoryUsageForProcessModelsByUUID$UPDATES](#getMemoryUsageForProcessModelsByUUID$UPDATES)`

    `static final boolean`

    `[getNextRecurrence$UPDATES](#getNextRecurrence$UPDATES)`

    `static final boolean`

    `[getNoteMetadataForProcess$UPDATES](#getNoteMetadataForProcess$UPDATES)`

    `static final boolean`

    `[getNoteMetadataForTask$UPDATES](#getNoteMetadataForTask$UPDATES)`

    `static final boolean`

    `[getNoteMetadatasForProcess$UPDATES](#getNoteMetadatasForProcess$UPDATES)`

    `static final boolean`

    `[getNoteMetadatasForProcesses$UPDATES](#getNoteMetadatasForProcesses$UPDATES)`

    `static final boolean`

    `[getNoteMetadatasForTask$UPDATES](#getNoteMetadatasForTask$UPDATES)`

    `static final boolean`

    `[getNoteMetadatasForTasks$UPDATES](#getNoteMetadatasForTasks$UPDATES)`

    `static final boolean`

    `[getNoteMetadatasInProcess$UPDATES](#getNoteMetadatasInProcess$UPDATES)`

    `static final boolean`

    `[getNotePath$UPDATES](#getNotePath$UPDATES)`

    `static final boolean`

    `[getNotePaths$UPDATES](#getNotePaths$UPDATES)`

    `static final boolean`

    `[getPausedTasksForProcess$UPDATES](#getPausedTasksForProcess$UPDATES)`

    `static final boolean`

    `[getPermissionsForNode$UPDATES](#getPermissionsForNode$UPDATES)`

    `static final boolean`

    `[getPermissionsForNodes$UPDATES](#getPermissionsForNodes$UPDATES)`

    `static final boolean`

    `[getPermissionsForProcess$UPDATES](#getPermissionsForProcess$UPDATES)`

    `static final boolean`

    `[getPermissionsForProcessDiagram$UPDATES](#getPermissionsForProcessDiagram$UPDATES)`

    `static final boolean`

    `[getPermissionsForProcesses$UPDATES](#getPermissionsForProcesses$UPDATES)`

    `static final boolean`

    `[getPmIdForProcess$UPDATES](#getPmIdForProcess$UPDATES)`

    `static final boolean`

    `[getPriorityOfProcess$UPDATES](#getPriorityOfProcess$UPDATES)`

    `static final boolean`

    `[getPriorityOfProcesses$UPDATES](#getPriorityOfProcesses$UPDATES)`

    `static final boolean`

    `[getPriorityOfTask$UPDATES](#getPriorityOfTask$UPDATES)`

    `static final boolean`

    `[getPriorityOfTasks$UPDATES](#getPriorityOfTasks$UPDATES)`

    `static final boolean`

    `[getProcessDetails$UPDATES](#getProcessDetails$UPDATES)`

    `static final boolean`

    `[getProcessDiagram$UPDATES](#getProcessDiagram$UPDATES)`

    `static final boolean`

    `[getProcessHistoryRecords$UPDATES](#getProcessHistoryRecords$UPDATES)`

    `static final boolean`

    `[getProcessHistoryRecordsPaging$UPDATES](#getProcessHistoryRecordsPaging$UPDATES)`

    `static final boolean`

    `[getProcessParameter$UPDATES](#getProcessParameter$UPDATES)`

    `static final boolean`

    `[getProcessParameters$UPDATES](#getProcessParameters$UPDATES)`

    `static final boolean`

    `[getProcessProperties$UPDATES](#getProcessProperties$UPDATES)`

    `static final boolean`

    `[getProcessVariable$UPDATES](#getProcessVariable$UPDATES)`

    `static final boolean`

    `[getProcessVariables$UPDATES](#getProcessVariables$UPDATES)`

    `static final boolean`

    `[getProcessVariablesPaging$UPDATES](#getProcessVariablesPaging$UPDATES)`

    `static final boolean`

    `[getRecursiveProcessVariables$UPDATES](#getRecursiveProcessVariables$UPDATES)`

    `static final boolean`

    `[getScheduleSummariesForNode$UPDATES](#getScheduleSummariesForNode$UPDATES)`

    `static final boolean`

    `[getSecurityForNode$UPDATES](#getSecurityForNode$UPDATES)`

    `static final boolean`

    `[getSecurityForProcess$UPDATES](#getSecurityForProcess$UPDATES)`

    `static final boolean`

    `[getSubProcessesForProcess$UPDATES](#getSubProcessesForProcess$UPDATES)`

    `static final boolean`

    `[getSynchronousSubProcessesForProcess$UPDATES](#getSynchronousSubProcessesForProcess$UPDATES)`

    `static final boolean`

    `[getTaskAssignees$UPDATES](#getTaskAssignees$UPDATES)`

    `static final boolean`

    `[getTaskDetails$UPDATES](#getTaskDetails$UPDATES)`

    `static final boolean`

    `[getTaskFormExpression$UPDATES](#getTaskFormExpression$UPDATES)`

    `static final boolean`

    `[getTaskFormExpressions$UPDATES](#getTaskFormExpressions$UPDATES)`

    `static final boolean`

    `[getTaskOpaqueUri$UPDATES](#getTaskOpaqueUri$UPDATES)`

    `static final boolean`

    `[getTaskPrivileges$UPDATES](#getTaskPrivileges$UPDATES)`

    `static final boolean`

    `[getTaskProperties$UPDATES](#getTaskProperties$UPDATES)`

    `static final boolean`

    `[getTasksAssignees$UPDATES](#getTasksAssignees$UPDATES)`

    `static final boolean`

    `[getTasksDetails$UPDATES](#getTasksDetails$UPDATES)`

    `static final boolean`

    `[getTasksForProcess$UPDATES](#getTasksForProcess$UPDATES)`

    `static final boolean`

    `[getTasksWithExceptionsForProcess$UPDATES](#getTasksWithExceptionsForProcess$UPDATES)`

    `static final boolean`

    `[getTasksWithStatusForProcess$UPDATES](#getTasksWithStatusForProcess$UPDATES)`

    `static final boolean`

    `[getTasksWithStatusForProcesses$UPDATES](#getTasksWithStatusForProcesses$UPDATES)`

    `static final boolean`

    `[getTasksWithStatusForProcessModel$UPDATES](#getTasksWithStatusForProcessModel$UPDATES)`

    `static final boolean`

    `[getTasksWithStatusForProcessModels$UPDATES](#getTasksWithStatusForProcessModels$UPDATES)`

    `static final boolean`

    `[getTaskUrl$UPDATES](#getTaskUrl$UPDATES)`

    `static final boolean`

    `[getTopLevelProcessForProcess$UPDATES](#getTopLevelProcessForProcess$UPDATES)`

    `static final boolean`

    `[handleMessages$UPDATES](#handleMessages$UPDATES)`

    `static final boolean`

    `[isAsynchronousSubProcess$UPDATES](#isAsynchronousSubProcess$UPDATES)`

    `static final boolean`

    `[isLinkProcess$UPDATES](#isLinkProcess$UPDATES)`

    `static final boolean`

    `[isSubProcess$UPDATES](#isSubProcess$UPDATES)`

    `static final boolean`

    `[isSynchronousSubProcess$UPDATES](#isSynchronousSubProcess$UPDATES)`

    `static final boolean`

    `[keepSubmittedTasksAlive$UPDATES](#keepSubmittedTasksAlive$UPDATES)`

    `static final boolean`

    `[lockProcesses$UPDATES](#lockProcesses$UPDATES)`

    `static final boolean`

    `[lockProcessModelForProcess$UPDATES](#lockProcessModelForProcess$UPDATES)`

    `static final boolean`

    `[lowerPriorityOfProcess$UPDATES](#lowerPriorityOfProcess$UPDATES)`

    `static final boolean`

    `[lowerPriorityOfProcesses$UPDATES](#lowerPriorityOfProcesses$UPDATES)`

    `static final boolean`

    `[lowerPriorityOfTask$UPDATES](#lowerPriorityOfTask$UPDATES)`

    `static final boolean`

    `[lowerPriorityOfTasks$UPDATES](#lowerPriorityOfTasks$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_PROCESS_CANCELLED](#NOTE_CREATION_PROCESS_CANCELLED)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_PROCESS_INSUFFICIENT_PRIVILEGES](#NOTE_CREATION_PROCESS_INSUFFICIENT_PRIVILEGES)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_PROCESS_INVALID](#NOTE_CREATION_PROCESS_INVALID)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_PROCESS_INVALID_BEAN](#NOTE_CREATION_PROCESS_INVALID_BEAN)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_PROCESS_NOTE_LIMIT_EXCEEDED](#NOTE_CREATION_PROCESS_NOTE_LIMIT_EXCEEDED)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_PROCESS_SUCCESS](#NOTE_CREATION_PROCESS_SUCCESS)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_TASK_CANCELLED](#NOTE_CREATION_TASK_CANCELLED)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_TASK_INSUFFICIENT_PRIVILEGES](#NOTE_CREATION_TASK_INSUFFICIENT_PRIVILEGES)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_TASK_INVALID](#NOTE_CREATION_TASK_INVALID)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_TASK_INVALID_BEAN](#NOTE_CREATION_TASK_INVALID_BEAN)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_TASK_NOTE_LIMIT_EXCEEDED](#NOTE_CREATION_TASK_NOTE_LIMIT_EXCEEDED)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_TASK_SUCCESS](#NOTE_CREATION_TASK_SUCCESS)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_CREATION_TASK_UNATTENDED](#NOTE_CREATION_TASK_UNATTENDED)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_DELETION_INSUFFICIENT_PRIVILEGES](#NOTE_DELETION_INSUFFICIENT_PRIVILEGES)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_DELETION_INVALID](#NOTE_DELETION_INVALID)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_DELETION_SUCCESS](#NOTE_DELETION_SUCCESS)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTES_RETURN_INVALID](#NOTES_RETURN_INVALID)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTES_RETURN_PERMISSIONS](#NOTES_RETURN_PERMISSIONS)`

    Deprecated.

    since 23.2

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTES_RETURN_SUCCESS](#NOTES_RETURN_SUCCESS)`

    Deprecated.

    since 23.2

    `static final boolean`

    `[notifyException$UPDATES](#notifyException$UPDATES)`

    `static final boolean`

    `[notifyInvalidParameters$UPDATES](#notifyInvalidParameters$UPDATES)`

    `static final boolean`

    `[notifyUsersCreationByJava$UPDATES](#notifyUsersCreationByJava$UPDATES)`

    `static final boolean`

    `[pauseAllNodes$UPDATES](#pauseAllNodes$UPDATES)`

    `static final boolean`

    `[pauseProcess$UPDATES](#pauseProcess$UPDATES)`

    `static final boolean`

    `[pauseProcesses$UPDATES](#pauseProcesses$UPDATES)`

    `static final boolean`

    `[pauseTask$UPDATES](#pauseTask$UPDATES)`

    `static final boolean`

    `[pauseTasks$UPDATES](#pauseTasks$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PROCESS_CANCELLATION_INSUFFICIENT_PRIVILEGES](#PROCESS_CANCELLATION_INSUFFICIENT_PRIVILEGES)`

    Result code indicating that the cancellation of a process failed because the current user has insufficient privileges to cancel the process - that is, if [`ProcessPermissions.isStopAndPause()`](security/ProcessPermissions.html#isStopAndPause\(\)) returns false

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PROCESS_CANCELLATION_INVALID_PROCESS](#PROCESS_CANCELLATION_INVALID_PROCESS)`

    Result code indicating that the cancellation of a process failed because the process is invalid

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PROCESS_CANCELLATION_INVALID_STATE](#PROCESS_CANCELLATION_INVALID_STATE)`

    Result code indicating that the cancellation of a process failed because the process is in an invalid state - that is, if the status of the process is not one of [`ProcessSummary.STATE_ACTIVE`](ProcessSummary.html#STATE_ACTIVE), [`ProcessSummary.STATE_PAUSED`](ProcessSummary.html#STATE_PAUSED) or [`ProcessSummary.STATE_PAUSED_BY_EXCEPTION`](ProcessSummary.html#STATE_PAUSED_BY_EXCEPTION)

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PROCESS_CANCELLATION_LOCKED_PROCESS](#PROCESS_CANCELLATION_LOCKED_PROCESS)`

    Result code indicating that the cancellation of a process failed because the process is locked (see [`lockProcessModelForProcess(Long,boolean)`](#lockProcessModelForProcess\(java.lang.Long,boolean\)))

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PROCESS_CANCELLATION_SUCCESS](#PROCESS_CANCELLATION_SUCCESS)`

    Result code indicating that the cancellation of a process was successful

    `static final boolean`

    `[processToNextAttended$UPDATES](#processToNextAttended$UPDATES)`

    `static final boolean`

    `[raisePriorityOfProcess$UPDATES](#raisePriorityOfProcess$UPDATES)`

    `static final boolean`

    `[raisePriorityOfProcesses$UPDATES](#raisePriorityOfProcesses$UPDATES)`

    `static final boolean`

    `[raisePriorityOfTask$UPDATES](#raisePriorityOfTask$UPDATES)`

    `static final boolean`

    `[raisePriorityOfTasks$UPDATES](#raisePriorityOfTasks$UPDATES)`

    `static final boolean`

    `[reassignTask$UPDATES](#reassignTask$UPDATES)`

    `static final boolean`

    `[reassignTasksToAssigneePool$UPDATES](#reassignTasksToAssigneePool$UPDATES)`

    `static final boolean`

    `[reassignTasksToSameAssigneePool$UPDATES](#reassignTasksToSameAssigneePool$UPDATES)`

    `static final boolean`

    `[reassignTaskToSameAssigneePool$UPDATES](#reassignTaskToSameAssigneePool$UPDATES)`

    `static final boolean`

    `[refreshTaskForm$UPDATES](#refreshTaskForm$UPDATES)`

    `static final boolean`

    `[rejectTask$UPDATES](#rejectTask$UPDATES)`

    `static final boolean`

    `[reloadProperties$UPDATES](#reloadProperties$UPDATES)`

    `static final boolean`

    `[removeDashboardPageForProcesses$UPDATES](#removeDashboardPageForProcesses$UPDATES)`

    `static final boolean`

    `[removeProcessAttachment$UPDATES](#removeProcessAttachment$UPDATES)`

    `static final boolean`

    `[removeProcessAttachments$UPDATES](#removeProcessAttachments$UPDATES)`

    `static final boolean`

    `[removeProcessFromFavorites$UPDATES](#removeProcessFromFavorites$UPDATES)`

    `static final boolean`

    `[removeTaskAttachment$UPDATES](#removeTaskAttachment$UPDATES)`

    `static final boolean`

    `[removeTaskAttachments$UPDATES](#removeTaskAttachments$UPDATES)`

    `static final boolean`

    `[removeTaskFromFavorites$UPDATES](#removeTaskFromFavorites$UPDATES)`

    `static final boolean`

    `[restartAllNodes$UPDATES](#restartAllNodes$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_INSUFFICIENT_PRIVILEGES](#RESULT_CODE_INSUFFICIENT_PRIVILEGES)`

    Result code indicating that the current user does not have sufficient privileges to perform the action

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_INVALID_NODE](#RESULT_CODE_INVALID_NODE)`

    Result code indicating that the node is invalid because its activity chaining settings prohibit multiple instances

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_INVALID_OPERATION](#RESULT_CODE_INVALID_OPERATION)`

    Result code indicating that the attempted operation was invalid for the current user

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_INVALID_PROCESS](#RESULT_CODE_INVALID_PROCESS)`

    Result code indicating that the specified process is invalid

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_INVALID_STATE](#RESULT_CODE_INVALID_STATE)`

    Result code indicating that something is in an invalid state for the action to succeed

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_INVALID_TASK](#RESULT_CODE_INVALID_TASK)`

    Result code indicating that the specified task is invalid

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_LOCK_EXCEPTION](#RESULT_CODE_LOCK_EXCEPTION)`

    Result code indicating that an item is locked

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_LOGIC_NODE](#RESULT_CODE_LOGIC_NODE)`

    Result code indicating that an item is a logic node and cannot be started

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_NODE_CANNOT_PAUSE](#RESULT_CODE_NODE_CANNOT_PAUSE)`

    Result code indicating that this is an event and cannot be paused

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_NODE_MULTIPLICITY](#RESULT_CODE_NODE_MULTIPLICITY)`

    Result code indicating that a node cannot be started because multiple instances of the node are not allowed.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_RECURRING_TASK](#RESULT_CODE_RECURRING_TASK)`

    Result code indicating that the task is set to recur

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_SUCCESS](#RESULT_CODE_SUCCESS)`

    Result code indicating that the action is successful

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_TOO_MANY_INSTANCES](#RESULT_CODE_TOO_MANY_INSTANCES)`

    Result code indicating that the maximum number of task instances has been reached and a new one cannot be created.

    `static final boolean`

    `[resumeAllNodes$UPDATES](#resumeAllNodes$UPDATES)`

    `static final boolean`

    `[resumeProcess$UPDATES](#resumeProcess$UPDATES)`

    `static final boolean`

    `[resumeProcesses$UPDATES](#resumeProcesses$UPDATES)`

    `static final boolean`

    `[resumeTask$UPDATES](#resumeTask$UPDATES)`

    `static final boolean`

    `[resumeTasks$UPDATES](#resumeTasks$UPDATES)`

    `static final int`

    `[RETRIEVE_PROCESS_MODEL_NOTES](#RETRIEVE_PROCESS_MODEL_NOTES)`

    Deprecated.

    since 23.2

    `static final int`

    `[RETRIEVE_PROCESS_NOTES](#RETRIEVE_PROCESS_NOTES)`

    Deprecated.

    since 23.2

    `static final boolean`

    `[rollbackUpdateUsernames$UPDATES](#rollbackUpdateUsernames$UPDATES)`

    `static final boolean`

    `[saveActivityParameters$UPDATES](#saveActivityParameters$UPDATES)`

    `static final boolean`

    `[setActorsInRolesForNode$UPDATES](#setActorsInRolesForNode$UPDATES)`

    `static final boolean`

    `[setActorsInRolesForProcess$UPDATES](#setActorsInRolesForProcess$UPDATES)`

    `static final boolean`

    `[setApplicationAdministratorGroup$UPDATES](#setApplicationAdministratorGroup$UPDATES)`

    `static final boolean`

    `[setArchivePaths$UPDATES](#setArchivePaths$UPDATES)`

    `static final boolean`

    `[setCurrentNotePaths$UPDATES](#setCurrentNotePaths$UPDATES)`

    `static final boolean`

    `[setDashboardPageForProcesses$UPDATES](#setDashboardPageForProcesses$UPDATES)`

    `static final boolean`

    `[setDeadlineForProcess$UPDATES](#setDeadlineForProcess$UPDATES)`

    `static final boolean`

    `[setDeadlineForTask$UPDATES](#setDeadlineForTask$UPDATES)`

    `static final boolean`

    `[setInheritanceForNode$UPDATES](#setInheritanceForNode$UPDATES)`

    `static final boolean`

    `[setInheritanceForProcess$UPDATES](#setInheritanceForProcess$UPDATES)`

    `static final boolean`

    `[setPriorityOfProcess$UPDATES](#setPriorityOfProcess$UPDATES)`

    `static final boolean`

    `[setPriorityOfProcesses$UPDATES](#setPriorityOfProcesses$UPDATES)`

    `static final boolean`

    `[setPriorityOfTask$UPDATES](#setPriorityOfTask$UPDATES)`

    `static final boolean`

    `[setPriorityOfTasks$UPDATES](#setPriorityOfTasks$UPDATES)`

    `static final boolean`

    `[setProcessProperties$UPDATES](#setProcessProperties$UPDATES)`

    `static final boolean`

    `[setProcessVariable$UPDATES](#setProcessVariable$UPDATES)`

    `static final boolean`

    `[setProcessVariables$UPDATES](#setProcessVariables$UPDATES)`

    `static final boolean`

    `[setSecurityForNode$UPDATES](#setSecurityForNode$UPDATES)`

    `static final boolean`

    `[setSecurityForProcess$UPDATES](#setSecurityForProcess$UPDATES)`

    `static final boolean`

    `[setSiteLocaleSettings$UPDATES](#setSiteLocaleSettings$UPDATES)`

    `static final boolean`

    `[setTaskDisplayName$UPDATES](#setTaskDisplayName$UPDATES)`

    `static final boolean`

    `[setTaskProperties$UPDATES](#setTaskProperties$UPDATES)`

    `static final boolean`

    `[setTaskStateRunning$UPDATES](#setTaskStateRunning$UPDATES)`

    `static final boolean`

    `[setTaskStateSubmitted$UPDATES](#setTaskStateSubmitted$UPDATES)`

    `static final boolean`

    `[setTimeZone$UPDATES](#setTimeZone$UPDATES)`

    `static final boolean`

    `[setTimeZoneSameAs$UPDATES](#setTimeZoneSameAs$UPDATES)`

    `static final boolean`

    `[skipRecurrence$UPDATES](#skipRecurrence$UPDATES)`

    `static final boolean`

    `[skipTaskEscalation$UPDATES](#skipTaskEscalation$UPDATES)`

    `static final boolean`

    `[startAllNodes$UPDATES](#startAllNodes$UPDATES)`

    `static final boolean`

    `[startQuickTask$UPDATES](#startQuickTask$UPDATES)`

    `static final boolean`

    `[startTask$UPDATES](#startTask$UPDATES)`

    `static final boolean`

    `[startTasks$UPDATES](#startTasks$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_ACCEPTANCE_ACCEPTED_BY_ANOTHER](#TASK_ACCEPTANCE_ACCEPTED_BY_ANOTHER)`

    Result code indicating that a task could not be accepted because it was already accepted by another user.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_ACCEPTANCE_INVALID_STATE](#TASK_ACCEPTANCE_INVALID_STATE)`

    Result code indicating that a task could not be accepted because it is in an invalid state.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_ACCEPTANCE_NOT_ASSIGNEE](#TASK_ACCEPTANCE_NOT_ASSIGNEE)`

    Result code indicating that a task could not be accepted because the current user is not an assignee

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_ACCEPTANCE_NOT_ASSIGNEE_CAN_COMPLETE](#TASK_ACCEPTANCE_NOT_ASSIGNEE_CAN_COMPLETE)`

    Result code indicating that a task could not be accepted because the current user is not an assignee, but the user has complete permissions

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_ACCEPTANCE_PAUSED](#TASK_ACCEPTANCE_PAUSED)`

    Result code indicating that a task could not be accepted because the task is paused

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_ACCEPTANCE_PROCESS_PAUSED](#TASK_ACCEPTANCE_PROCESS_PAUSED)`

    Result code indicating that a task could not be accepted because the process is paused

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_ACCEPTANCE_SUCCESS](#TASK_ACCEPTANCE_SUCCESS)`

    Result code indicating that a task was accepted successfully

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_CANCELLATION_INSUFFICIENT_PRIVILEGES](#TASK_CANCELLATION_INSUFFICIENT_PRIVILEGES)`

    Result code indicating that the cancellation of a task failed because the current user has insufficient privileges to cancel the task - that is, if [`ProcessPermissions.isStopAndPause()`](security/ProcessPermissions.html#isStopAndPause\(\)) returns false for the process containing the task

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_CANCELLATION_INVALID_STATE](#TASK_CANCELLATION_INVALID_STATE)`

    Result code indicating that the cancellation of a task failed because the task is in an invalid state

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_CANCELLATION_INVALID_TASK](#TASK_CANCELLATION_INVALID_TASK)`

    Result code indicating that the cancellation of a task failed because the task is invalid

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_CANCELLATION_SUCCESS](#TASK_CANCELLATION_SUCCESS)`

    Result code indicating that the cancellation of a task was successful

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_PRIVILEGE_REASSIGN_ANY](#TASK_PRIVILEGE_REASSIGN_ANY)`

    Constant indicating that the current user has the privileges to reject a given task, or to reassign the task to any user or group (inside or outside of the assignment pool)

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_PRIVILEGE_REASSIGN_WITHIN_POOL](#TASK_PRIVILEGE_REASSIGN_WITHIN_POOL)`

    Constant indicating that the current user has the privileges to reject a given task, or to reassign the task within the assignment pool

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_PRIVILEGE_REJECT_ONLY](#TASK_PRIVILEGE_REJECT_ONLY)`

    Constant indicating that the current user only has the privileges to reject a given task

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_REJECTION_RESULT_INVALID_STATE](#TASK_REJECTION_RESULT_INVALID_STATE)`

    Result code indicating that the rejection of a task was unsuccessful because the task was in an invalid state to be rejected (i.e., the task was cancelled)

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_REJECTION_RESULT_NOT_OWNER](#TASK_REJECTION_RESULT_NOT_OWNER)`

    Result code indicating that the rejection of a task was unsuccessful because the current user is not the owner of the task

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TASK_REJECTION_RESULT_SUCCESS](#TASK_REJECTION_RESULT_SUCCESS)`

    Result code indicating that the rejection of a task was successful

    `static final boolean`

    `[triggerRecurrence$UPDATES](#triggerRecurrence$UPDATES)`

    `static final boolean`

    `[triggerSchedule$UPDATES](#triggerSchedule$UPDATES)`

    `static final boolean`

    `[triggerTaskEscalation$UPDATES](#triggerTaskEscalation$UPDATES)`

    `static final boolean`

    `[unarchiveProcess$UPDATES](#unarchiveProcess$UPDATES)`

    `static final boolean`

    `[unarchiveProcesses$UPDATES](#unarchiveProcesses$UPDATES)`

    `static final int`

    `[UNATTENDED_AND_ATTENDED_TASKS](#UNATTENDED_AND_ATTENDED_TASKS)`

    Code for attended and unattended tasks

    `static final int`

    `[UNATTENDED_TASKS](#UNATTENDED_TASKS)`

    Code for unattended tasks only

    `static final boolean`

    `[uncompleteActivity$UPDATES](#uncompleteActivity$UPDATES)`

    `static final boolean`

    `[unlockProcesses$UPDATES](#unlockProcesses$UPDATES)`

    `static final boolean`

    `[unlockProcessModelForProcess$UPDATES](#unlockProcessModelForProcess$UPDATES)`

    `static final boolean`

    `[unlockProcessModels$UPDATES](#unlockProcessModels$UPDATES)`

    `static final boolean`

    `[updateNoteMetadataForProcess$UPDATES](#updateNoteMetadataForProcess$UPDATES)`

    `static final boolean`

    `[updateNoteMetadataForTask$UPDATES](#updateNoteMetadataForTask$UPDATES)`

    `static final boolean`

    `[updateNoteMetadatasForProcess$UPDATES](#updateNoteMetadatasForProcess$UPDATES)`

    `static final boolean`

    `[updateNoteMetadatasForTask$UPDATES](#updateNoteMetadatasForTask$UPDATES)`

    `static final boolean`

    `[updateProcessModelForProcess$UPDATES](#updateProcessModelForProcess$UPDATES)`

    `static final boolean`

    `[updateUsernames$UPDATES](#updateUsernames$UPDATES)`

    `static final boolean`

    `[upgradeProcesses$UPDATES](#upgradeProcesses$UPDATES)`

    `static final boolean`

    `[validate$UPDATES](#validate$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[acceptTask](#acceptTask\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Accepts a task for a user.

    `void`

    `[acknowledgeActivity](#acknowledgeActivity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Deprecated.

    no longer necessary

    `void`

    `[acknowledgeActivity](#acknowledgeActivity\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] activityId_)`

    Deprecated.

    no longer necessary

    `void`

    `[acknowledgeMessages](#acknowledgeMessages\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] messageIds_)`

    Deprecated.

    replaced by work queue, no longer requires separate acknowledgement: call does nothing now

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[addAttachmentsToProcess](#addAttachmentsToProcess\(java.lang.Long,com.appiancorp.suiteapi.process.Attachment%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")[] attachments_)`

    Add attachments to a given process.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[addAttachmentsToTask](#addAttachmentsToTask\(java.lang.Long,com.appiancorp.suiteapi.process.Attachment%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")[] attachments_)`

    Adds attachments to a given task.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[addAttachmentToProcess](#addAttachmentToProcess\(java.lang.Long,com.appiancorp.suiteapi.process.Attachment\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process") attachment_)`

    Add an attachment to a process.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[addAttachmentToProcesses](#addAttachmentToProcesses\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.Attachment\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process") attachment_)`

    Adds a single attachment to a list of processes.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[addAttachmentToTask](#addAttachmentToTask\(java.lang.Long,com.appiancorp.suiteapi.process.Attachment\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process") attachment_)`

    Add an attachment to a task

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[addAttachmentToTasks](#addAttachmentToTasks\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.Attachment\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] taskIds_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process") attachment_)`

    Add an attachment to the given tasks

    `void`

    `[addProcessToFavorites](#addProcessToFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Adds a `Process` to the user's favorites list.

    `void`

    `[addProcessVariable](#addProcessVariable\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariableInstance\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process") pv_)`

    Adds a new variable to the specified process.

    `void`

    `[addProcessVariables](#addProcessVariables\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariableInstance%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")[] pvs_)`

    Adds new variables to the specified process.

    `void`

    `[addTaskToFavorites](#addTaskToFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Adds a `Task` to the user's favorites list.

    `void`

    `[archiveProcess](#archiveProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Archive the process with the given id.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[archiveProcesses](#archiveProcesses\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_)`

    Manually archive the processes with the given ids.

    `[NodeActionResult](NodeActionResult.html "class in com.appiancorp.suiteapi.process")`

    `[cancelAllNodes](#cancelAllNodes\(java.lang.String%5B%5D,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] nodeUuids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] withinProcessIds)`

    Cancel each given node in every applicable process.

    `void`

    `[cancelProcess](#cancelProcess\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, boolean cancelLinkedProcesses_)`

    Cancels the specified process.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[cancelProcesses](#cancelProcesses\(java.lang.Long%5B%5D,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_, boolean cancelLinkedProcesses_)`

    Cancel a list of processes.

    `void`

    `[cancelStore](#cancelStore\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionGroupId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") cancelMessage)`

    Cancel an external data store.

    `void`

    `[cancelTask](#cancelTask\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Cancels a given task

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[cancelTasks](#cancelTasks\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] activityIds_)`

    Cancels a list of tasks.

    `boolean`

    `[canCompleteActivity](#canCompleteActivity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Determines whether the specified activity can be completed by the user.

    `boolean`

    `[canCompleteClone](#canCompleteClone\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Indicates whether the current user can use [`completeClone(java.lang.Long, com.appiancorp.suiteapi.process.ActivityClassParameter[], com.appiancorp.suiteapi.process.ActivityReturnVariable[])`](#completeClone\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,com.appiancorp.suiteapi.process.ActivityReturnVariable%5B%5D\)) on the given task to complete the activity.

    `int`

    `[checkActivityValidity](#checkActivityValidity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Determines whether the specified activity is valid.

    `void`

    `[commitUpdateUsernames](#commitUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[completeActivity](#completeActivity\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityReturnVariable%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_, [ActivityReturnVariable](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")[] outputs_)`

    Signals the completion of an activity not implemented within the process engine itself.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[completeClone](#completeClone\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,com.appiancorp.suiteapi.process.ActivityReturnVariable%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_, [ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] inputs_, [ActivityReturnVariable](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")[] outputs_)`

    Clones the given task (only a new id is assigned to the cloned task, everything else stays the same), and completes it using the passed inputs (i.e. calls execute or completeActivity).

    `void`

    `[completeStore](#completeStore\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionGroupId)`

    Complete an external data store.

    `boolean`

    `[containsAsynchronousSubProcesses](#containsAsynchronousSubProcesses\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Determines whether or not the given process contains asynchronous subprocesses.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[containsAsynchronousSubProcesses](#containsAsynchronousSubProcesses\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processId_)`

    `boolean`

    `[containsLinkProcesses](#containsLinkProcesses\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated.

    Use [`containsAsynchronousSubProcesses(Long)`](#containsAsynchronousSubProcesses\(java.lang.Long\)) instead.

    `boolean`

    `[containsLinkProcessesInheritingPriority](#containsLinkProcessesInheritingPriority\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated.

    Use [`containsSubProcessesInheritingPriority(Long)`](#containsSubProcessesInheritingPriority\(java.lang.Long\)) instead.

    `boolean`

    `[containsSubProcesses](#containsSubProcesses\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated.

    Use [`containsSynchronousSubProcesses(Long)`](#containsSynchronousSubProcesses\(java.lang.Long\)) instead.

    `boolean`

    `[containsSubProcessesInheritingPriority](#containsSubProcessesInheritingPriority\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Checks if the specified `Process` contains sub-processes that inherit their priority instead of defining their own priority levels.

    `boolean`

    `[containsSynchronousSubProcesses](#containsSynchronousSubProcesses\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Determines whether or not the given process contains synchronous subprocesses.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[containsSynchronousSubProcesses](#containsSynchronousSubProcesses\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processId_)`

    `[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")`

    `[createNoteMetadata](#createNoteMetadata\(com.appiancorp.suiteapi.process.NoteMetadata\))([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm_)`

    Deprecated.

    since 23.2

    `[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")`

    `[createNoteMetadataForProcess](#createNoteMetadataForProcess\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm_)`

    Deprecated.

    since 23.2

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[createNoteMetadataForProcesses](#createNoteMetadataForProcesses\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.NoteMetadata\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm_)`

    Deprecated.

    since 23.2

    `[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")`

    `[createNoteMetadataForTask](#createNoteMetadataForTask\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm_)`

    Deprecated.

    since 23.2

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[createNoteMetadataForTasks](#createNoteMetadataForTasks\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.NoteMetadata\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] taskIds_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm_)`

    Deprecated.

    since 23.2

    `[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")[]`

    `[createNoteMetadatas](#createNoteMetadatas\(com.appiancorp.suiteapi.process.NoteMetadata%5B%5D\))([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")[] nms_)`

    Deprecated.

    since 23.2

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[createNoteMetadatasForProcess](#createNoteMetadatasForProcess\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")[] nms_)`

    Deprecated.

    since 23.2

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[createNoteMetadatasForTask](#createNoteMetadatasForTask\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")[] nms_)`

    Deprecated.

    since 23.2

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[deleteNoteMetadataForProcess](#deleteNoteMetadataForProcess\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated.

    since 23.2

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[deleteNoteMetadataForTask](#deleteNoteMetadataForTask\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Deprecated.

    since 23.2

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[deleteNoteMetadatasForProcess](#deleteNoteMetadatasForProcess\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] noteIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated.

    since 23.2

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[deleteNoteMetadatasForTask](#deleteNoteMetadatasForTask\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] noteIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Deprecated.

    since 23.2

    `void`

    `[deleteProcess](#deleteProcess\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, boolean deleteSubProcesses_)`

    Deletes the specified process.

    `void`

    `[deleteProcesses](#deleteProcesses\(java.lang.Long%5B%5D,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_, boolean deleteSubProcesses_)`

    Deletes all of the specified processes.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[execute](#execute\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Requests execution of an activity implemented within the process engine.

    `void`

    `[executionFailure](#executionFailure\(int,java.lang.Long%5B%5D\))(int errorType_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] activities_)`

    Deprecated.

    unattended activities now run from the work queue.

    `void`

    `[executionFailureMessage](#executionFailureMessage\(int,java.lang.Long%5B%5D,java.lang.String\))(int errorType_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] activities_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    Deprecated.

    unattended activities now run from the work queue.

    `[ActivityExecutionMetadata](framework/ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework")[]`

    `[getActivitiesMetadata](#getActivitiesMetadata\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] activityIds_)`

    Gets metadata for the specified activities.

    `[ActivityExecutionMetadata](framework/ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework")`

    `[getActivityMetadata](#getActivityMetadata\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Gets the metadata for a specified activity.

    `[ActivityProperties](ActivityProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getActivityProperties](#getActivityProperties\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Retrieves the activity properties for the given activity.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllExceptionNoteMetadatasForProcess](#getAllExceptionNoteMetadatasForProcess\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    since 23.2

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getArchivePaths](#getArchivePaths\(\))()`

    Retrieve the paths where archived processes are stored.

    `[Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAssigneePoolForTasks](#getAssigneePoolForTasks\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] taskIds_)`

    Gets the set of unique assignees among all the specified tasks.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getAsynchronousSubProcessesForProcess](#getAsynchronousSubProcessesForProcess\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int asynchronousSubProcessStatus_)`

    Gets the asynchronous subprocesses of the given process.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAttachmentsAndNotesForTask](#getAttachmentsAndNotesForTask\(java.lang.Long,boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_, boolean recursive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    since 23.2.

    `[Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAttachmentsForProcess](#getAttachmentsForProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated. 

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAttachmentsForProcess](#getAttachmentsForProcess\(java.lang.Long,boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, boolean recursive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns the attachments for a specified process

    `[Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAttachmentsForTask](#getAttachmentsForTask\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Gets all the attachments for a given task and its related process

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getAttachmentsInProcess](#getAttachmentsInProcess\(java.lang.Long,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] attachmentIds_)`

    Gets the specified attachments associated with a given process, or tasks in this process

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getAutoArchiveProperties](#getAutoArchiveProperties\(\))()`

    Retrieves auto archive properties from the backend

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCancelledTasksForProcess](#getCancelledTasksForProcess\(java.lang.Long,int,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int type_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the cancelled tasks for a process

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCompletedTasksForProcess](#getCompletedTasksForProcess\(java.lang.Long,int,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int type_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the completed tasks for a process

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getCurrentNotePaths](#getCurrentNotePaths\(\))()`

    Deprecated.

    since 23.2

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCurrentTasksForProcess](#getCurrentTasksForProcess\(java.lang.Long,int,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int type_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the current tasks for a process

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDeadlineForProcess](#getDeadlineForProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Retrieve the deadline of a given process.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDeadlineForTask](#getDeadlineForTask\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Retrieve the deadline for a given task.

    `[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")`

    `[getExceptionNoteMetadataForTask](#getExceptionNoteMetadataForTask\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Deprecated.

    since 23.2

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getExceptionNoteMetadatasForProcess](#getExceptionNoteMetadatasForProcess\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    since 23.2

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getLingeringTasksForProcess](#getLingeringTasksForProcess\(java.lang.Long,boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, boolean recursive, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns all instances of lingering nodes currently active in the specified process.

    `[TaskSummary](TaskSummary.html "class in com.appiancorp.suiteapi.process")[]`

    `[getLingeringTasksForProcessAndNode](#getLingeringTasksForProcessAndNode\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId_)`

    Returns all instances of the specified lingering node currently active in the specified process.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getLinkProcessesForProcess](#getLinkProcessesForProcess\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int linkProcessStatus_)`

    Deprecated.

    Use [`getAsynchronousSubProcessesForProcess(Long, int)`](#getAsynchronousSubProcessesForProcess\(java.lang.Long,int\)) instead.

    `int`

    `[getMaximumNumberOfAttachments](#getMaximumNumberOfAttachments\(\))()`

    Returns the Maximum number of attachmnets that can be added to Process or Task

    `int`

    `[getMaximumNumberOfNotes](#getMaximumNumberOfNotes\(\))()`

    Deprecated.

    since 23.2

    `[SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process")`

    `[getMemoryUsageForExecEngine](#getMemoryUsageForExecEngine\(\))()`

    Returns the `SizingReport` which contains top-level summary of memory usage by various objects in all Execution Engines.

    `[SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process")`

    `[getMemoryUsageForNodesInProcesses](#getMemoryUsageForNodesInProcesses\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_)`

    Returns the `SizingReport` which contains a breakdown of memory usage by individual nodes/activities in specific Process instances.

    `[SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process")`

    `[getMemoryUsageForProcesses](#getMemoryUsageForProcesses\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_)`

    Returns the `SizingReport` which contains a breakdown of memory usage by individual process instances

    `[SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process")`

    `[getMemoryUsageForProcessesByModelUUID](#getMemoryUsageForProcessesByModelUUID\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] processModelUUIDs_)`

    Returns the `SizingReport` which contains a breakdown of memory usage by individual process instances based of of specific Process Models given by Process Model UUIDs.

    `[SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process")`

    `[getMemoryUsageForProcessModels](#getMemoryUsageForProcessModels\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processModelIds_)`

    Returns the `SizingReport` which contains a breakdown of memory usage by all process instances based off of specific Process Models given by the Process Model IDs.

    `[SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process")`

    `[getMemoryUsageForProcessModelsByUUID](#getMemoryUsageForProcessModelsByUUID\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] processModelUUIDs_)`

    Returns the `SizingReport` which contains a breakdown of memory usage by all process instances based off of specific Process Models given by Process Model UUIDs.

    `[RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process")`

    `[getNextRecurrence](#getNextRecurrence\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId_)`

    Gets the next recurrence for a node within a process

    `[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")`

    `[getNoteMetadataForProcess](#getNoteMetadataForProcess\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated.

    since 23.2

    `[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")`

    `[getNoteMetadataForTask](#getNoteMetadataForTask\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Deprecated.

    since 23.2

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getNoteMetadatasForProcess](#getNoteMetadatasForProcess\(java.lang.Long,boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, boolean recursive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    since 23.2

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getNoteMetadatasForProcess](#getNoteMetadatasForProcess\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getNoteMetadatasForProcesses](#getNoteMetadatasForProcesses\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    since 23.2

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getNoteMetadatasForTask](#getNoteMetadatasForTask\(java.lang.Long,boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, boolean includeProcess_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    since 23.2

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getNoteMetadatasForTasks](#getNoteMetadatasForTasks\(java.lang.Long%5B%5D,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, boolean includeProcess_)`

    Deprecated.

    since 23.2

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getNoteMetadatasInProcess](#getNoteMetadatasInProcess\(java.lang.Long,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] noteIds_)`

    Deprecated.

    since 23.2

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getNotePath](#getNotePath\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId_)`

    Deprecated.

    since 23.2

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getNotePaths](#getNotePaths\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] noteIds_)`

    Deprecated.

    since 23.2

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPausedTasksForProcess](#getPausedTasksForProcess\(java.lang.Long,int,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int type_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the paused tasks for a process

    `[NodePermissions](security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissionsForNode](#getPermissionsForNode\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Gets the permissions that the user has by default on tasks of the specified node.

    `[NodePermissions](security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security")[]`

    `[getPermissionsForNodes](#getPermissionsForNodes\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] activityIds_)`

    Gets the permissions that the user has by default on tasks of the specified nodes.

    `[ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissionsForProcess](#getPermissionsForProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Gets the permissions that the user has on a specified process.

    `[ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissionsForProcessDiagram](#getPermissionsForProcessDiagram\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Gets a `ProcessModelPermissions` object that says which In-Flight Modifications the user can or cannot perform to a given process.

    `[ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security")[]`

    `[getPermissionsForProcesses](#getPermissionsForProcesses\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Gets the permissions that the user has on specified processes.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPmIdForProcess](#getPmIdForProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Get the specified Process's Process Model's ID

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[getPriorityOfProcess](#getPriorityOfProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Gets the priority of a specified Process.

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")[]`

    `[getPriorityOfProcesses](#getPriorityOfProcesses\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_)`

    Gets the priority for a list of processes.

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[getPriorityOfTask](#getPriorityOfTask\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Get the priority of the specified task.

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")[]`

    `[getPriorityOfTasks](#getPriorityOfTasks\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] taskIds_)`

    Get the priorities of the specified tasks.

    `[ProcessDetails](ProcessDetails.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessDetails](#getProcessDetails\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Gets the details for a specified process.

    `[ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessDiagram](#getProcessDiagram\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int typeOfNotesToRetrieve_)`

    Allows users to retrieve the instance of the process model that the process is run off.

    `[HistoryRecord](HistoryRecord.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessHistoryRecords](#getProcessHistoryRecords\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Get the process history record of the given process.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessHistoryRecordsPaging](#getProcessHistoryRecordsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Get the process history record of the given process.

    `[ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessParameter](#getProcessParameter\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parameterName_)`

    Retrieves the specified process parameter of the specified process.

    `[ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessParameters](#getProcessParameters\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Retrieves process parameters for the specified process.

    `[ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessProperties](#getProcessProperties\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Retrieves the properties for the given process.

    `[ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessVariable](#getProcessVariable\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pvName_)`

    Retrieves the specified process variable for the specified process.

    `[ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessVariables](#getProcessVariables\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated.

    Use [`getRecursiveProcessVariables(Long, boolean)`](#getRecursiveProcessVariables\(java.lang.Long,boolean\)) instead.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessVariablesPaging](#getProcessVariablesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves the process variables for the specified process.

    `[ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")[]`

    `[getRecursiveProcessVariables](#getRecursiveProcessVariables\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, boolean recursive_)`

    Retrieves the process variables for the specified process.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getScheduleSummariesForNode](#getScheduleSummariesForNode\(java.lang.Long,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets Summaries of schedules that are attached to the node.

    `[Security](../common/Security.html "class in com.appiancorp.suiteapi.common")`

    `[getSecurityForNode](#getSecurityForNode\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Gets the default security configuration of tasks for a specified node.

    `[Security](../common/Security.html "class in com.appiancorp.suiteapi.common")`

    `[getSecurityForProcess](#getSecurityForProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Gets the security configuration of a process.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getSubProcessesForProcess](#getSubProcessesForProcess\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int subProcessStatus_)`

    Deprecated.

    Use [`getSynchronousSubProcessesForProcess(Long, int)`](#getSynchronousSubProcessesForProcess\(java.lang.Long,int\)) instead.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getSynchronousSubProcessesForProcess](#getSynchronousSubProcessesForProcess\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int synchronousSubProcessStatus_)`

    Gets the synchronous subprocesses of the given process.

    `[Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")[]`

    `[getTaskAssignees](#getTaskAssignees\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Gets all assignees for a specified task.

    `[TaskDetails](TaskDetails.html "class in com.appiancorp.suiteapi.process")`

    `[getTaskDetails](#getTaskDetails\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Gets the details for the specified task.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTaskFormExpression](#getTaskFormExpression\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId)`

    Gets task form expressions for the specified task.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getTaskFormExpressions](#getTaskFormExpressions\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] taskIds)`

    Gets task form expressions for the specified tasks.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTaskOpaqueUri](#getTaskOpaqueUri\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Gets the opaque URI for the specified task.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getTaskPrivileges](#getTaskPrivileges\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Determines whether the user who is executing an attended activity is permitted to reject or reassign the task.

    `[TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getTaskProperties](#getTaskProperties\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Retrieves the properties for the given task.

    `[Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")[][]`

    `[getTasksAssignees](#getTasksAssignees\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] taskIds_)`

    Gets all assignees for the specified tasks.

    `[TaskDetails](TaskDetails.html "class in com.appiancorp.suiteapi.process")[]`

    `[getTasksDetails](#getTasksDetails\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] taskIds_)`

    Gets the details for the specified tasks.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTasksForProcess](#getTasksForProcess\(java.lang.Long,boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, boolean recursive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the summaries of the tasks in the process.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTasksForProcess](#getTasksForProcess\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTasksWithExceptionsForProcess](#getTasksWithExceptionsForProcess\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the tasks that are paused by exception for a specified process.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTasksWithStatusForProcess](#getTasksWithStatusForProcess\(java.lang.Long,java.lang.Integer,boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskStatus_, boolean recursive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Get the pages of tasks, within a particular process or its subprocesses, currently in a given state.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTasksWithStatusForProcesses](#getTasksWithStatusForProcesses\(java.lang.Long%5B%5D,java.lang.Integer,boolean,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskStatus_, boolean recursive_, int startIndex_, int batchSize_)`

    Get the pages of tasks, within particular processes or their subprocesses, currently in a given state.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTasksWithStatusForProcessModel](#getTasksWithStatusForProcessModel\(java.lang.Long,java.lang.Integer,boolean,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskStatus_, boolean recursive_, int startIndex_, int batchSize_)`

    Get the pages of tasks, within a particular process model, currently in a given state.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTasksWithStatusForProcessModels](#getTasksWithStatusForProcessModels\(java.lang.Long%5B%5D,java.lang.Integer,boolean,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processModelIds_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskStatus_, boolean recursive_, int startIndex_, int batchSize_)`

    Get the pages of tasks, within any of particular process models, currently in a given state.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTaskUrl](#getTaskUrl\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Gets the URL for the specified task.

    `[ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")`

    `[getTopLevelProcessForProcess](#getTopLevelProcessForProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Gets the top level process for a given process.

    `int[]`

    `[handleMessages](#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\))([InternalMessage](../messaging/InternalMessage.html "class in com.appiancorp.suiteapi.messaging")[] messages_)`

    Sends messages to the execution server, to be handled by the events framework.

    `boolean`

    `[isAsynchronousSubProcess](#isAsynchronousSubProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Determines whether or not the given process is an asynchronous subprocess.

    `boolean`

    `[isLinkProcess](#isLinkProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated.

    Use [`isAsynchronousSubProcess(Long)`](#isAsynchronousSubProcess\(java.lang.Long\)) instead.

    `boolean`

    `[isSubProcess](#isSubProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated.

    Use `#isSynchronousSubProcesses(Long)` instead.

    `boolean`

    `[isSynchronousSubProcess](#isSynchronousSubProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Determines whether or not the given process is a synchronous subprocess.

    `void`

    `[keepSubmittedTasksAlive](#keepSubmittedTasksAlive\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] activities_)`

    This method informs the Process Engine that the specified tasks are still in the queue, waiting to be executed asynchronously.

    `int[]`

    `[lockProcesses](#lockProcesses\(java.lang.Long%5B%5D,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds, boolean override)`

    Attempts to lock the specified processes.

    `void`

    `[lockProcessModelForProcess](#lockProcessModelForProcess\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, boolean override_)`

    Locks the underlying process model of the specified process.

    `void`

    `[lowerPriorityOfProcess](#lowerPriorityOfProcess\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, boolean propagatePriorityChangeToLinkProcesses_)`

    Lowers the priority of a process by one level.

    `void`

    `[lowerPriorityOfProcesses](#lowerPriorityOfProcesses\(java.lang.Long%5B%5D,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_, boolean propagatePriorityChangeToLinkProcesses_)`

    Lowers the priority of the specified processes by one level.

    `void`

    `[lowerPriorityOfTask](#lowerPriorityOfTask\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Lowers the priority of a task by one level.

    `void`

    `[lowerPriorityOfTasks](#lowerPriorityOfTasks\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] taskIds_)`

    Lowers the priority of specified tasks by one level.

    `void`

    `[notifyException](#notifyException\(java.lang.Long,java.lang.String,java.lang.String,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") exceptionClassName_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") stackTrace_)`

    Notifies the server that an exception has occurred while executing an activity.

    `void`

    `[notifyInvalidParameters](#notifyInvalidParameters\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_, [ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] acps_)`

    Notifies the user that the parameters sent as inputs to an unattended activity were invalid.

    `void`

    `[notifyUsersCreationByJava](#notifyUsersCreationByJava\(java.lang.Long,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

    This call should never be necessary.

    `void`

    `[notifyUsersCreationByJava](#notifyUsersCreationByJava\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

    done automatically by UserService.createUser

    `[NodeActionResult](NodeActionResult.html "class in com.appiancorp.suiteapi.process")`

    `[pauseAllNodes](#pauseAllNodes\(java.lang.String%5B%5D,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] nodeUuids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] withinProcessIds)`

    Pause each given node in every applicable process.

    `void`

    `[pauseProcess](#pauseProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Pauses the process, and all of its nodes.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[pauseProcesses](#pauseProcesses\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_)`

    Pauses the processes, and all of their nodes.

    `void`

    `[pauseTask](#pauseTask\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Pauses the task

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[pauseTasks](#pauseTasks\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] activityIds_)`

    Tries to pause the tasks, and returns an array of result codes on whether the operation was successful or an error had occurred.

    `void`

    `[processToNextAttended](#processToNextAttended\(java.lang.Long,boolean,com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId, boolean isQuickTask, [ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] parameters)`

    This method can be used to programatically execute an attended task and continue flow to the next attended activity.

    `void`

    `[raisePriorityOfProcess](#raisePriorityOfProcess\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, boolean propagatePriorityChangeToLinkProcesses_)`

    Raises the priority of a specified process by one level.

    `void`

    `[raisePriorityOfProcesses](#raisePriorityOfProcesses\(java.lang.Long%5B%5D,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_, boolean propagatePriorityChangeToLinkProcesses_)`

    Raises the priority of the specified processes by one level.

    `void`

    `[raisePriorityOfTask](#raisePriorityOfTask\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Raises the priority of the specified task by one level.

    `void`

    `[raisePriorityOfTasks](#raisePriorityOfTasks\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] taskIds_)`

    Raises the priority of the specified tasks by one level.

    `void`

    `[reassignTask](#reassignTask\(java.lang.Long,com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_, [Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")[] assignees_)`

    Reassigns a task to new assignees.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[reassignTasksToAssigneePool](#reassignTasksToAssigneePool\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] activityIds_, [Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")[] assignees_)`

    Deprecated.

    Use [`reassignTask(java.lang.Long, com.appiancorp.suiteapi.process.Assignment.Assignee[])`](#reassignTask\(java.lang.Long,com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\)) instead

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[reassignTasksToSameAssigneePool](#reassignTasksToSameAssigneePool\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] activityIds_)`

    Tries to reassign the tasks, and returns an array of result codes on whether the operation was successful or an error had occurred.

    `void`

    `[reassignTaskToSameAssigneePool](#reassignTaskToSameAssigneePool\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Reassigns the task to the assignee pool.

    `void`

    `[refreshTaskForm](#refreshTaskForm\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Deprecated.

    This method will cause a race condition between ACP refresh and form label refresh.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[rejectTask](#rejectTask\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Rejects a task that has already been accepted.

    `void`

    `[reloadProperties](#reloadProperties\(\))()`

    Deprecated.

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    `void`

    `[removeDashboardPageForProcesses](#removeDashboardPageForProcesses\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId)`

    Deprecated.

    Use {@link ProcessDesignService.removeProcessDashboardPageForProcessModel(Long)} instead.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[removeProcessAttachment](#removeProcessAttachment\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") attachmentId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Removes the specified attachment from a process.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[removeProcessAttachments](#removeProcessAttachments\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] attachmentIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Removes specified attachments from the specified process.

    `void`

    `[removeProcessFromFavorites](#removeProcessFromFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Removes a process from the user's Favorite's list

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[removeTaskAttachment](#removeTaskAttachment\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") attachmentId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Removes a specified attachment from a task

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[removeTaskAttachments](#removeTaskAttachments\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] attachmentIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Removes the specified attachments from a task

    `void`

    `[removeTaskFromFavorites](#removeTaskFromFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Removes a task from the user's Favorite's list

    `[NodeActionResult](NodeActionResult.html "class in com.appiancorp.suiteapi.process")`

    `[restartAllNodes](#restartAllNodes\(java.lang.String%5B%5D,java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.BulkNodeOption...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] nodeUuids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] withinProcessIds, [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")... bulkNodeOption)`

    Restart a task for each of the given nodeUuids in every applicable process.

    `[NodeActionResult](NodeActionResult.html "class in com.appiancorp.suiteapi.process")`

    `[resumeAllNodes](#resumeAllNodes\(java.lang.String%5B%5D,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] nodeUuids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] withinProcessIds)`

    Resume each given node in every applicable process.

    `void`

    `[resumeProcess](#resumeProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Resumes the process.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[resumeProcesses](#resumeProcesses\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_)`

    Tries to resume the processes, and returns an array of result codes on whether the operation was successful or an error had occurred.

    `void`

    `[resumeTask](#resumeTask\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Resumes the task

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[resumeTasks](#resumeTasks\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] activityIds_)`

    Tries to resume the tasks, and returns an array of result codes on whether the operation was successful or an error had occurred.

    `void`

    `[rollbackUpdateUsernames](#rollbackUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `void`

    `[saveActivityParameters](#saveActivityParameters\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_, [ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] acps_)`

    Saves the values for parameters of an activity.

    `void`

    `[setActorsInRolesForNode](#setActorsInRolesForNode\(java.lang.Long,java.lang.String%5B%5D,java.lang.String%5B%5D%5B%5D,java.lang.Long%5B%5D,java.lang.String%5B%5D%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] userRoles_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] groupRoles_)`

    Adds and/or modifies the default roles of users and groups for a node instance (activity).

    `void`

    `[setActorsInRolesForProcess](#setActorsInRolesForProcess\(java.lang.Long,java.lang.String%5B%5D,java.lang.String%5B%5D%5B%5D,java.lang.Long%5B%5D,java.lang.String%5B%5D%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] userRoles_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] groupRoles_)`

    Adds and/or modifies the roles of users and groups for a specified process.

    `void`

    `[setApplicationAdministratorGroup](#setApplicationAdministratorGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Determines which group users need to be in to have the application administrator role.

    `void`

    `[setArchivePaths](#setArchivePaths\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] archivePaths)`

    Set the paths where archived processes will be stored.

    `void`

    `[setCurrentNotePaths](#setCurrentNotePaths\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] notePaths)`

    Deprecated.

    since 23.2

    `void`

    `[setDashboardPageForProcesses](#setDashboardPageForProcesses\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId)`

    Deprecated.

    Use {@link ProcessDesignService.setProcessDashboardPageForProcessModel(Long, Long)} instead.

    `void`

    `[setDeadlineForProcess](#setDeadlineForProcess\(java.lang.Long,java.sql.Timestamp\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") deadline_)`

    Set the deadline for a given process.

    `void`

    `[setDeadlineForTask](#setDeadlineForTask\(java.lang.Long,java.sql.Timestamp\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") deadline_)`

    Set the deadline for a given task.

    `void`

    `[setInheritanceForNode](#setInheritanceForNode\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, boolean doesInherit_)`

    Sets whether a specified task inherits security from its process.

    `void`

    `[setInheritanceForProcess](#setInheritanceForProcess\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, boolean doesInherit_)`

    Sets whether a specified process inherits security from the process model of which it is an instance.

    `void`

    `[setPriorityOfProcess](#setPriorityOfProcess\(java.lang.Long,java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId_, boolean propagatePriorityChangeToSubProcesses_)`

    Sets the priority of a specified process

    `void`

    `[setPriorityOfProcesses](#setPriorityOfProcesses\(java.lang.Long%5B%5D,java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId_, boolean propagatePriorityChangeToSubProcesses_)`

    Sets the priority [`Priority`](Priority.html "class in com.appiancorp.suiteapi.process") of the specified processes [`ProcessDetails`](ProcessDetails.html "class in com.appiancorp.suiteapi.process").

    `void`

    `[setPriorityOfTask](#setPriorityOfTask\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId_)`

    Sets the priority of a specified task.

    `void`

    `[setPriorityOfTasks](#setPriorityOfTasks\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] taskIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId_)`

    Sets the priorities of specified tasks.

    `void`

    `[setProcessProperties](#setProcessProperties\(com.appiancorp.suiteapi.process.ProcessProperties\))([ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process") properties_)`

    Sets the properties of the specified process.

    `void`

    `[setProcessVariable](#setProcessVariable\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariableInstance\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pProcessId_, [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process") pv_)`

    Sets the value of the specified process variable for the specified process.

    `void`

    `[setProcessVariables](#setProcessVariables\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariableInstance%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pProcessId_, [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")[] pvs_)`

    Sets the values of the specified process variables for the specified process.

    `void`

    `[setSecurityForNode](#setSecurityForNode\(java.lang.Long,com.appiancorp.suiteapi.common.Security\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") s_)`

    Sets the default security configuration of tasks for a specified node.

    `void`

    `[setSecurityForProcess](#setSecurityForProcess\(java.lang.Long,com.appiancorp.suiteapi.common.Security\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") s_)`

    Sets the security configuration of a process.

    `void`

    `[setSiteLocaleSettings](#setSiteLocaleSettings\(com.appiancorp.suiteapi.portal.SiteLocaleSettings\))([SiteLocaleSettings](../portal/SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") settings_)`

    Registers the site locale settings on the process execution server.

    `void`

    `[setTaskDisplayName](#setTaskDisplayName\(java.lang.Long,com.appiancorp.suiteapi.common.LocaleString\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId, [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") displayName)`

    Sets the display name for the specified task to the specified string.

    `void`

    `[setTaskProperties](#setTaskProperties\(com.appiancorp.suiteapi.process.TaskProperties\))([TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process") properties_)`

    Sets the properties of the specified task .

    `void`

    `[setTaskStateRunning](#setTaskStateRunning\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Sets the Task in the Running state.

    `void`

    `[setTaskStateSubmitted](#setTaskStateSubmitted\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Sets the Task in the 'Submitted' state.

    `void`

    `[setTimeZone](#setTimeZone\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple\))([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz)`

    Set the time zone information using the format used by the engines to encapsulate time zone information.

    `void`

    `[setTimeZoneSameAs](#setTimeZoneSameAs\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple,java.lang.String\))([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sameAsId)`

    Deprecated.

    this method will be removed in a future release

    `[RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process")`

    `[skipRecurrence](#skipRecurrence\(java.lang.Long,java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") recurrenceNumber_)`

    Skips the recurrence instance of the given node

    `void`

    `[skipTaskEscalation](#skipTaskEscalation\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") escalationId_)`

    Skips the desired escalation instance for the task

    `[NodeActionResult](NodeActionResult.html "class in com.appiancorp.suiteapi.process")`

    `[startAllNodes](#startAllNodes\(java.lang.String%5B%5D,java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.BulkNodeOption...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] nodeUuids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] withinProcessIds, [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")... bulkNodeOption)`

    Start a task for each of the given nodeUuids in every applicable process.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[startQuickTask](#startQuickTask\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId_)`

    Starts a new task from the node If the process to which the node belongs is cancelled or completed, then the process is reactivated.

    `boolean`

    `[startTask](#startTask\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId_)`

    Starts a new task from the node If the process to which the node belongs is cancelled or completed, then the process is reactivated.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[startTasks](#startTasks\(java.lang.Long,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] nodeIds_)`

    Tries to start the tasks, and returns an array of result codes on whether the operation was successful or an error had occurred.

    `[RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process")`

    `[triggerRecurrence](#triggerRecurrence\(java.lang.Long,java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") recurrenceNumber_)`

    Triggers the recurrence instance of the given node

    `void`

    `[triggerSchedule](#triggerSchedule\(java.lang.Integer,java.lang.Long\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") scheduleType_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") scheduleId_)`

    Triggers the schedule instance for the task or node

    `void`

    `[triggerTaskEscalation](#triggerTaskEscalation\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") escalationId_)`

    Triggers the desired escalation instance for the task.Users must obtain escalation id from TaskDetails object.

    `void`

    `[unarchiveProcess](#unarchiveProcess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Bring all process data back to memory.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[unarchiveProcesses](#unarchiveProcesses\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_)`

    Bring all process data back to memory.

    `[ActivityExecutionMetadata](framework/ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework")`

    `[uncompleteActivity](#uncompleteActivity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId_)`

    Changes the status of an activity to ACCEPTED or ASSIGNED.

    `int[]`

    `[unlockProcesses](#unlockProcesses\(java.lang.Long%5B%5D,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds, boolean override)`

    Attempts to unlock the specified processes.

    `void`

    `[unlockProcessModelForProcess](#unlockProcessModelForProcess\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, boolean override_)`

    Unlocks the underlying process model for the process

    `void`

    `[unlockProcessModels](#unlockProcessModels\(\))()`

    Unlocks all process models locked by the current user.

    `[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")`

    `[updateNoteMetadataForProcess](#updateNoteMetadataForProcess\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.Long\))([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated.

    since 23.2

    `[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")`

    `[updateNoteMetadataForTask](#updateNoteMetadataForTask\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.Long\))([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Deprecated.

    since 23.2

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[updateNoteMetadatasForProcess](#updateNoteMetadatasForProcess\(com.appiancorp.suiteapi.process.NoteMetadata%5B%5D,java.lang.Long\))([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")[] nms_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_)`

    Deprecated.

    since 23.2

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[updateNoteMetadatasForTask](#updateNoteMetadatasForTask\(com.appiancorp.suiteapi.process.NoteMetadata%5B%5D,java.lang.Long\))([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")[] nms_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId_)`

    Deprecated.

    since 23.2

    `[ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process")`

    `[updateProcessModelForProcess](#updateProcessModelForProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.suiteapi.process.ProcessModel%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pd_, [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")[] childProcessModels_)`

    Deprecated.

    Use [`upgradeProcesses(java.lang.Long, java.lang.String, java.lang.Long[])`](#upgradeProcesses\(java.lang.Long,java.lang.String,java.lang.Long%5B%5D\)) instead

    `void`

    `[updateUsernames](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] oldUsernames_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] newUsernames_, long maxExpirationTimeInSeconds_)`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[UpgradeResult](upgrade/UpgradeResult.html "class in com.appiancorp.suiteapi.process.upgrade")`

    `[upgradeProcesses](#upgradeProcesses\(java.lang.Long,java.lang.String,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") toProcessModelId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toVersion, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds)`

    Attempts to upgrade the given processes to the specified process model id and version.

    `[UpgradeResult](upgrade/UpgradeResult.html "class in com.appiancorp.suiteapi.process.upgrade")`

    `[upgradeProcesses](#upgradeProcesses\(java.lang.Long,java.lang.String,java.lang.Long,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") toProcessModelId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toVersion, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fromProcessModelId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] fromVersions)`

    Attempts to upgrade the processes of the 'from' process model id and version to the 'to' process model id and version.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[validate](#validate\(\))()`

    Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### TASK\_ACCEPTANCE\_SUCCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_ACCEPTANCE\_SUCCESS

        Result code indicating that a task was accepted successfully

    -   ### TASK\_ACCEPTANCE\_ACCEPTED\_BY\_ANOTHER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_ACCEPTANCE\_ACCEPTED\_BY\_ANOTHER

        Result code indicating that a task could not be accepted because it was already accepted by another user.

    -   ### TASK\_ACCEPTANCE\_INVALID\_STATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_ACCEPTANCE\_INVALID\_STATE

        Result code indicating that a task could not be accepted because it is in an invalid state. A task may only be accepted if it has a status of [`TaskSummary.TASK_STATUS_ASSIGNED`](TaskSummary.html#TASK_STATUS_ASSIGNED) or [`TaskSummary.TASK_STATUS_ACCEPTED`](TaskSummary.html#TASK_STATUS_ACCEPTED)

    -   ### TASK\_ACCEPTANCE\_NOT\_ASSIGNEE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_ACCEPTANCE\_NOT\_ASSIGNEE

        Result code indicating that a task could not be accepted because the current user is not an assignee

    -   ### TASK\_ACCEPTANCE\_PROCESS\_PAUSED

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_ACCEPTANCE\_PROCESS\_PAUSED

        Result code indicating that a task could not be accepted because the process is paused

    -   ### TASK\_ACCEPTANCE\_PAUSED

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_ACCEPTANCE\_PAUSED

        Result code indicating that a task could not be accepted because the task is paused

    -   ### TASK\_ACCEPTANCE\_NOT\_ASSIGNEE\_CAN\_COMPLETE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_ACCEPTANCE\_NOT\_ASSIGNEE\_CAN\_COMPLETE

        Result code indicating that a task could not be accepted because the current user is not an assignee, but the user has complete permissions

    -   ### TASK\_PRIVILEGE\_REJECT\_ONLY

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_PRIVILEGE\_REJECT\_ONLY

        Constant indicating that the current user only has the privileges to reject a given task

    -   ### TASK\_PRIVILEGE\_REASSIGN\_WITHIN\_POOL

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_PRIVILEGE\_REASSIGN\_WITHIN\_POOL

        Constant indicating that the current user has the privileges to reject a given task, or to reassign the task within the assignment pool

    -   ### TASK\_PRIVILEGE\_REASSIGN\_ANY

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_PRIVILEGE\_REASSIGN\_ANY

        Constant indicating that the current user has the privileges to reject a given task, or to reassign the task to any user or group (inside or outside of the assignment pool)

    -   ### TASK\_REJECTION\_RESULT\_SUCCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_REJECTION\_RESULT\_SUCCESS

        Result code indicating that the rejection of a task was successful

    -   ### TASK\_REJECTION\_RESULT\_INVALID\_STATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_REJECTION\_RESULT\_INVALID\_STATE

        Result code indicating that the rejection of a task was unsuccessful because the task was in an invalid state to be rejected (i.e., the task was cancelled)

    -   ### TASK\_REJECTION\_RESULT\_NOT\_OWNER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_REJECTION\_RESULT\_NOT\_OWNER

        Result code indicating that the rejection of a task was unsuccessful because the current user is not the owner of the task

    -   ### PROCESS\_CANCELLATION\_SUCCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PROCESS\_CANCELLATION\_SUCCESS

        Result code indicating that the cancellation of a process was successful

    -   ### PROCESS\_CANCELLATION\_INVALID\_PROCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PROCESS\_CANCELLATION\_INVALID\_PROCESS

        Result code indicating that the cancellation of a process failed because the process is invalid

    -   ### PROCESS\_CANCELLATION\_INSUFFICIENT\_PRIVILEGES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PROCESS\_CANCELLATION\_INSUFFICIENT\_PRIVILEGES

        Result code indicating that the cancellation of a process failed because the current user has insufficient privileges to cancel the process - that is, if [`ProcessPermissions.isStopAndPause()`](security/ProcessPermissions.html#isStopAndPause\(\)) returns false

    -   ### PROCESS\_CANCELLATION\_INVALID\_STATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PROCESS\_CANCELLATION\_INVALID\_STATE

        Result code indicating that the cancellation of a process failed because the process is in an invalid state - that is, if the status of the process is not one of [`ProcessSummary.STATE_ACTIVE`](ProcessSummary.html#STATE_ACTIVE), [`ProcessSummary.STATE_PAUSED`](ProcessSummary.html#STATE_PAUSED) or [`ProcessSummary.STATE_PAUSED_BY_EXCEPTION`](ProcessSummary.html#STATE_PAUSED_BY_EXCEPTION)

    -   ### PROCESS\_CANCELLATION\_LOCKED\_PROCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PROCESS\_CANCELLATION\_LOCKED\_PROCESS

        Result code indicating that the cancellation of a process failed because the process is locked (see [`lockProcessModelForProcess(Long,boolean)`](#lockProcessModelForProcess\(java.lang.Long,boolean\)))

    -   ### TASK\_CANCELLATION\_SUCCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_CANCELLATION\_SUCCESS

        Result code indicating that the cancellation of a task was successful

    -   ### TASK\_CANCELLATION\_INVALID\_TASK

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_CANCELLATION\_INVALID\_TASK

        Result code indicating that the cancellation of a task failed because the task is invalid

    -   ### TASK\_CANCELLATION\_INSUFFICIENT\_PRIVILEGES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_CANCELLATION\_INSUFFICIENT\_PRIVILEGES

        Result code indicating that the cancellation of a task failed because the current user has insufficient privileges to cancel the task - that is, if [`ProcessPermissions.isStopAndPause()`](security/ProcessPermissions.html#isStopAndPause\(\)) returns false for the process containing the task

    -   ### TASK\_CANCELLATION\_INVALID\_STATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TASK\_CANCELLATION\_INVALID\_STATE

        Result code indicating that the cancellation of a task failed because the task is in an invalid state

    -   ### NOTE\_CREATION\_PROCESS\_INVALID\_BEAN

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_PROCESS\_INVALID\_BEAN

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a process failed because a null or invalid bean was passed as a parameter.

    -   ### NOTE\_CREATION\_PROCESS\_CANCELLED

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_PROCESS\_CANCELLED

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a process failed because the process has been cancelled

    -   ### NOTE\_CREATION\_PROCESS\_NOTE\_LIMIT\_EXCEEDED

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_PROCESS\_NOTE\_LIMIT\_EXCEEDED

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a process failed because the process already has the maximum allowed number of notes

    -   ### NOTE\_CREATION\_PROCESS\_INVALID

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_PROCESS\_INVALID

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a process failed because the process is invalid

    -   ### NOTE\_CREATION\_PROCESS\_INSUFFICIENT\_PRIVILEGES

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_PROCESS\_INSUFFICIENT\_PRIVILEGES

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a process failed because the current user has insufficient privileges to attach notes to the process. This will be the case if [`ProcessPermissions.isAddAttachment()`](security/ProcessPermissions.html#isAddAttachment\(\)) returns false

    -   ### NOTE\_CREATION\_PROCESS\_SUCCESS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_PROCESS\_SUCCESS

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a process was successful

    -   ### NOTE\_CREATION\_TASK\_INVALID\_BEAN

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_TASK\_INVALID\_BEAN

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a task failed because a null or invalid bean was passed as a parameter.

    -   ### NOTE\_CREATION\_TASK\_UNATTENDED

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_TASK\_UNATTENDED

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a task failed because the task is unattended

    -   ### NOTE\_CREATION\_TASK\_CANCELLED

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_TASK\_CANCELLED

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a task failed because the task has been cancelled

    -   ### NOTE\_CREATION\_TASK\_NOTE\_LIMIT\_EXCEEDED

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_TASK\_NOTE\_LIMIT\_EXCEEDED

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a task failed because the task already has the maximum allowed number of notes

    -   ### NOTE\_CREATION\_TASK\_INVALID

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_TASK\_INVALID

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a task failed because the task is invalid

    -   ### NOTE\_CREATION\_TASK\_INSUFFICIENT\_PRIVILEGES

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_TASK\_INSUFFICIENT\_PRIVILEGES

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a task failed because the current user has insufficient privileges to attach notes to the task. This will be the case if [`NodePermissions.isAddAttachment()`](security/NodePermissions.html#isAddAttachment\(\)) returns false

    -   ### NOTE\_CREATION\_TASK\_SUCCESS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_CREATION\_TASK\_SUCCESS

        Deprecated.

        since 23.2

        Result code indicating that the creation of note metadata for a task was successful

    -   ### NOTE\_DELETION\_INVALID

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_DELETION\_INVALID

        Deprecated.

        since 23.2

        Result code indicating that the deletion of note metadata from a process or task failed because the note does not exist

    -   ### NOTE\_DELETION\_INSUFFICIENT\_PRIVILEGES

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_DELETION\_INSUFFICIENT\_PRIVILEGES

        Deprecated.

        since 23.2

        Result code indicating that the deletion of note metadata from a process or task failed because the user does not have sufficient privileges to delete the note from the process or task. This is the case when [`ProcessPermissions.isRemoveAttachment()`](security/ProcessPermissions.html#isRemoveAttachment\(\)) returns false for the process, or for the process containing the task, respectively.

    -   ### NOTE\_DELETION\_SUCCESS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_DELETION\_SUCCESS

        Deprecated.

        since 23.2

        Result code indicating that the deletion of note metadata from a process or task succeeded

    -   ### ACTIVITY\_VALID

        static final int ACTIVITY\_VALID

        A constant indicating that an activity is valid. There are two options for an activity to be considered valid: 1) when the activity is unattended and not completed, and 2) when the activity is waiting on Java. For both options it is necessary that the process where the activity is contained must not be cancelled, completed or halted. ).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ACTIVITY_VALID)

    -   ### ACTIVITY\_PROCESS\_CANCELLED

        static final int ACTIVITY\_PROCESS\_CANCELLED

        A constant indicating that an activity exists in a process that has been cancelled

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ACTIVITY_PROCESS_CANCELLED)

    -   ### ACTIVITY\_PROCESS\_COMPLETED

        static final int ACTIVITY\_PROCESS\_COMPLETED

        A constant indicating that an activity exists in a process that has been completed

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ACTIVITY_PROCESS_COMPLETED)

    -   ### ACTIVITY\_PROCESS\_DELETED

        static final int ACTIVITY\_PROCESS\_DELETED

        A constant indicating that an activity has been deleted, since its parent process has been deleted

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ACTIVITY_PROCESS_DELETED)

    -   ### ACTIVITY\_COMPLETED

        static final int ACTIVITY\_COMPLETED

        A constant indicating that an activity is in an invalid state. Either the activity has been completed or the activity is in an invalid state.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ACTIVITY_COMPLETED)

    -   ### ACTIVITY\_PROCESS\_PAUSED

        static final int ACTIVITY\_PROCESS\_PAUSED

        A constant indicating that the process for an activity is paused

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ACTIVITY_PROCESS_PAUSED)

    -   ### ACTIVITY\_PAUSED

        static final int ACTIVITY\_PAUSED

        A constant indicating that an activity has been paused

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ACTIVITY_PAUSED)

    -   ### ACTIVITY\_CANCELLED

        static final int ACTIVITY\_CANCELLED

        A constant indicating that an activity has been cancelled

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ACTIVITY_CANCELLED)

    -   ### ACTIVITY\_INVALID\_STATE

        static final int ACTIVITY\_INVALID\_STATE

        A constant indicating that an activity is in an invalid state

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ACTIVITY_INVALID_STATE)

    -   ### ACTIVITY\_SKIPPED

        static final int ACTIVITY\_SKIPPED

        A constant indicating that an activity has been skipped by an exception flow.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ACTIVITY_SKIPPED)

    -   ### ACTIVITY\_WAITING

        static final int ACTIVITY\_WAITING

        A constant indicating that an activity is waiting on an asynchronous workq item in Java.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ACTIVITY_WAITING)

    -   ### RESULT\_CODE\_RECURRING\_TASK

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_RECURRING\_TASK

        Result code indicating that the task is set to recur

    -   ### RESULT\_CODE\_TOO\_MANY\_INSTANCES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_TOO\_MANY\_INSTANCES

        Result code indicating that the maximum number of task instances has been reached and a new one cannot be created.

    -   ### RESULT\_CODE\_SUCCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_SUCCESS

        Result code indicating that the action is successful

    -   ### RESULT\_CODE\_INVALID\_PROCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_INVALID\_PROCESS

        Result code indicating that the specified process is invalid

    -   ### RESULT\_CODE\_INSUFFICIENT\_PRIVILEGES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_INSUFFICIENT\_PRIVILEGES

        Result code indicating that the current user does not have sufficient privileges to perform the action

    -   ### RESULT\_CODE\_INVALID\_STATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_INVALID\_STATE

        Result code indicating that something is in an invalid state for the action to succeed

    -   ### RESULT\_CODE\_INVALID\_OPERATION

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_INVALID\_OPERATION

        Result code indicating that the attempted operation was invalid for the current user

    -   ### RESULT\_CODE\_INVALID\_TASK

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_INVALID\_TASK

        Result code indicating that the specified task is invalid

    -   ### RESULT\_CODE\_LOCK\_EXCEPTION

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_LOCK\_EXCEPTION

        Result code indicating that an item is locked

    -   ### RESULT\_CODE\_LOGIC\_NODE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_LOGIC\_NODE

        Result code indicating that an item is a logic node and cannot be started

    -   ### RESULT\_CODE\_INVALID\_NODE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_INVALID\_NODE

        Result code indicating that the node is invalid because its activity chaining settings prohibit multiple instances

    -   ### RESULT\_CODE\_NODE\_MULTIPLICITY

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_NODE\_MULTIPLICITY

        Result code indicating that a node cannot be started because multiple instances of the node are not allowed.

    -   ### RESULT\_CODE\_NODE\_CANNOT\_PAUSE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_NODE\_CANNOT\_PAUSE

        Result code indicating that this is an event and cannot be paused

    -   ### ATTACHMENT\_RETURN\_TASK\_UNATTENDED

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ATTACHMENT\_RETURN\_TASK\_UNATTENDED

        Result code indicating that an attachment may not be added to the task because the task is unattended

    -   ### ATTACHMENT\_RETURN\_TASK\_CANCELLED

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ATTACHMENT\_RETURN\_TASK\_CANCELLED

        Result code indicating that an attachment may not be added to the task because the task was cancelled

    -   ### ATTACHMENT\_RETURN\_PROCESS\_CANCELLED

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ATTACHMENT\_RETURN\_PROCESS\_CANCELLED

        Result code indicating that an attachment may not be added to the process because the process was cancelled

    -   ### ATTACHMENT\_RETURN\_TOO\_MANY

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ATTACHMENT\_RETURN\_TOO\_MANY

        Result code indicating that an attachment may not be added because too many attachments have been added

    -   ### ATTACHMENT\_RETURN\_INVALID

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ATTACHMENT\_RETURN\_INVALID

        Result code indicating that an attachment may not be added/removed because the specified process, task, or attachment does not exist

    -   ### ATTACHMENT\_RETURN\_PERMISSIONS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ATTACHMENT\_RETURN\_PERMISSIONS

        Result code indicating that an attachment may not be added/removed because the user does not have permission to do so

    -   ### ATTACHMENT\_RETURN\_SUCCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ATTACHMENT\_RETURN\_SUCCESS

        Return code indicating that adding an attachment was successful

    -   ### NOTES\_RETURN\_INVALID

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTES\_RETURN\_INVALID

        Deprecated.

        since 23.2

        Return code indicating that a note may not be added/removed because the specified process, task, or note does not exist

    -   ### NOTES\_RETURN\_PERMISSIONS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTES\_RETURN\_PERMISSIONS

        Deprecated.

        since 23.2

        Return code indicating that a note may not be added/removed because the user does not have permission to do so

    -   ### NOTES\_RETURN\_SUCCESS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTES\_RETURN\_SUCCESS

        Deprecated.

        since 23.2

        Return code indicating that adding/removing a Note was successful

    -   ### UNATTENDED\_TASKS

        static final int UNATTENDED\_TASKS

        Code for unattended tasks only

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.UNATTENDED_TASKS)

    -   ### ATTENDED\_TASKS

        static final int ATTENDED\_TASKS

        Code for attended tasks only

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.ATTENDED_TASKS)

    -   ### UNATTENDED\_AND\_ATTENDED\_TASKS

        static final int UNATTENDED\_AND\_ATTENDED\_TASKS

        Code for attended and unattended tasks

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.UNATTENDED_AND_ATTENDED_TASKS)

    -   ### EXECUTION\_FAILURE\_EXCEPTION

        static final int EXECUTION\_FAILURE\_EXCEPTION

        Constant indicating that unattended activities could not be completed because an exception occurred

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.EXECUTION_FAILURE_EXCEPTION)

    -   ### EXECUTION\_FAILURE\_TIMEOUT

        static final int EXECUTION\_FAILURE\_TIMEOUT

        Constant indicating that unattended activities could not be completed because a timeout occurred connecting to Java from the process engine

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.EXECUTION_FAILURE_TIMEOUT)

    -   ### RETRIEVE\_PROCESS\_MODEL\_NOTES

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int RETRIEVE\_PROCESS\_MODEL\_NOTES

        Deprecated.

        since 23.2

        Constant indicating that that the notes and attachments of the underlying process model should be retrieved by [`getProcessDiagram(java.lang.Long, int)`](#getProcessDiagram\(java.lang.Long,int\))

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.RETRIEVE_PROCESS_MODEL_NOTES)

    -   ### RETRIEVE\_PROCESS\_NOTES

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int RETRIEVE\_PROCESS\_NOTES

        Deprecated.

        since 23.2

        Constant indicating that that the notes and attachments of the process should be retrieved by [`getProcessDiagram(java.lang.Long, int)`](#getProcessDiagram\(java.lang.Long,int\))

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.RETRIEVE_PROCESS_NOTES)

    -   ### saveActivityParameters$UPDATES

        static final boolean saveActivityParameters$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.saveActivityParameters$UPDATES)

    -   ### completeActivity$UPDATES

        static final boolean completeActivity$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.completeActivity$UPDATES)

    -   ### acknowledgeActivity$UPDATES

        static final boolean acknowledgeActivity$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.acknowledgeActivity$UPDATES)

    -   ### completeClone$UPDATES

        static final boolean completeClone$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.completeClone$UPDATES)

    -   ### getLingeringTasksForProcess$UPDATES

        static final boolean getLingeringTasksForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getLingeringTasksForProcess$UPDATES)

    -   ### getLingeringTasksForProcessAndNode$UPDATES

        static final boolean getLingeringTasksForProcessAndNode$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getLingeringTasksForProcessAndNode$UPDATES)

    -   ### refreshTaskForm$UPDATES

        static final boolean refreshTaskForm$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.refreshTaskForm$UPDATES)

    -   ### execute$UPDATES

        static final boolean execute$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.execute$UPDATES)

    -   ### getActivityMetadata$UPDATES

        static final boolean getActivityMetadata$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getActivityMetadata$UPDATES)

    -   ### getActivitiesMetadata$UPDATES

        static final boolean getActivitiesMetadata$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getActivitiesMetadata$UPDATES)

    -   ### getTaskFormExpression$UPDATES

        static final boolean getTaskFormExpression$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTaskFormExpression$UPDATES)

    -   ### getTaskFormExpressions$UPDATES

        static final boolean getTaskFormExpressions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTaskFormExpressions$UPDATES)

    -   ### acceptTask$UPDATES

        static final boolean acceptTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.acceptTask$UPDATES)

    -   ### getTaskPrivileges$UPDATES

        static final boolean getTaskPrivileges$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTaskPrivileges$UPDATES)

    -   ### getTaskAssignees$UPDATES

        static final boolean getTaskAssignees$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTaskAssignees$UPDATES)

    -   ### getTasksAssignees$UPDATES

        static final boolean getTasksAssignees$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTasksAssignees$UPDATES)

    -   ### getAssigneePoolForTasks$UPDATES

        static final boolean getAssigneePoolForTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getAssigneePoolForTasks$UPDATES)

    -   ### reassignTask$UPDATES

        static final boolean reassignTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.reassignTask$UPDATES)

    -   ### rejectTask$UPDATES

        static final boolean rejectTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.rejectTask$UPDATES)

    -   ### getTaskDetails$UPDATES

        static final boolean getTaskDetails$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTaskDetails$UPDATES)

    -   ### getTasksDetails$UPDATES

        static final boolean getTasksDetails$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTasksDetails$UPDATES)

    -   ### getTaskOpaqueUri$UPDATES

        static final boolean getTaskOpaqueUri$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTaskOpaqueUri$UPDATES)

    -   ### getTaskUrl$UPDATES

        static final boolean getTaskUrl$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTaskUrl$UPDATES)

    -   ### getProcessDetails$UPDATES

        static final boolean getProcessDetails$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getProcessDetails$UPDATES)

    -   ### notifyException$UPDATES

        static final boolean notifyException$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.notifyException$UPDATES)

    -   ### executionFailure$UPDATES

        static final boolean executionFailure$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.executionFailure$UPDATES)

    -   ### executionFailureMessage$UPDATES

        static final boolean executionFailureMessage$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.executionFailureMessage$UPDATES)

    -   ### deleteProcess$UPDATES

        static final boolean deleteProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.deleteProcess$UPDATES)

    -   ### deleteProcesses$UPDATES

        static final boolean deleteProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.deleteProcesses$UPDATES)

    -   ### cancelProcess$UPDATES

        static final boolean cancelProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.cancelProcess$UPDATES)

    -   ### notifyInvalidParameters$UPDATES

        static final boolean notifyInvalidParameters$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.notifyInvalidParameters$UPDATES)

    -   ### notifyUsersCreationByJava$UPDATES

        static final boolean notifyUsersCreationByJava$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.notifyUsersCreationByJava$UPDATES)

    -   ### checkActivityValidity$UPDATES

        static final boolean checkActivityValidity$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.checkActivityValidity$UPDATES)

    -   ### canCompleteActivity$UPDATES

        static final boolean canCompleteActivity$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.canCompleteActivity$UPDATES)

    -   ### canCompleteClone$UPDATES

        static final boolean canCompleteClone$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.canCompleteClone$UPDATES)

    -   ### getSubProcessesForProcess$UPDATES

        static final boolean getSubProcessesForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getSubProcessesForProcess$UPDATES)

    -   ### getSynchronousSubProcessesForProcess$UPDATES

        static final boolean getSynchronousSubProcessesForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getSynchronousSubProcessesForProcess$UPDATES)

    -   ### getTopLevelProcessForProcess$UPDATES

        static final boolean getTopLevelProcessForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTopLevelProcessForProcess$UPDATES)

    -   ### isSubProcess$UPDATES

        static final boolean isSubProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.isSubProcess$UPDATES)

    -   ### isSynchronousSubProcess$UPDATES

        static final boolean isSynchronousSubProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.isSynchronousSubProcess$UPDATES)

    -   ### containsSubProcesses$UPDATES

        static final boolean containsSubProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.containsSubProcesses$UPDATES)

    -   ### containsLinkProcesses$UPDATES

        static final boolean containsLinkProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.containsLinkProcesses$UPDATES)

    -   ### containsSynchronousSubProcesses$UPDATES

        static final boolean containsSynchronousSubProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.containsSynchronousSubProcesses$UPDATES)

    -   ### containsAsynchronousSubProcesses$UPDATES

        static final boolean containsAsynchronousSubProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.containsAsynchronousSubProcesses$UPDATES)

    -   ### getLinkProcessesForProcess$UPDATES

        static final boolean getLinkProcessesForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getLinkProcessesForProcess$UPDATES)

    -   ### getAsynchronousSubProcessesForProcess$UPDATES

        static final boolean getAsynchronousSubProcessesForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getAsynchronousSubProcessesForProcess$UPDATES)

    -   ### isLinkProcess$UPDATES

        static final boolean isLinkProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.isLinkProcess$UPDATES)

    -   ### isAsynchronousSubProcess$UPDATES

        static final boolean isAsynchronousSubProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.isAsynchronousSubProcess$UPDATES)

    -   ### getActivityProperties$UPDATES

        static final boolean getActivityProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getActivityProperties$UPDATES)

    -   ### getTaskProperties$UPDATES

        static final boolean getTaskProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTaskProperties$UPDATES)

    -   ### setTaskProperties$UPDATES

        static final boolean setTaskProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setTaskProperties$UPDATES)

    -   ### setTaskDisplayName$UPDATES

        static final boolean setTaskDisplayName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setTaskDisplayName$UPDATES)

    -   ### getProcessProperties$UPDATES

        static final boolean getProcessProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getProcessProperties$UPDATES)

    -   ### setProcessProperties$UPDATES

        static final boolean setProcessProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setProcessProperties$UPDATES)

    -   ### getProcessParameters$UPDATES

        static final boolean getProcessParameters$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getProcessParameters$UPDATES)

    -   ### getProcessParameter$UPDATES

        static final boolean getProcessParameter$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getProcessParameter$UPDATES)

    -   ### getProcessVariables$UPDATES

        static final boolean getProcessVariables$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getProcessVariables$UPDATES)

    -   ### getRecursiveProcessVariables$UPDATES

        static final boolean getRecursiveProcessVariables$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getRecursiveProcessVariables$UPDATES)

    -   ### getProcessVariablesPaging$UPDATES

        static final boolean getProcessVariablesPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getProcessVariablesPaging$UPDATES)

    -   ### getProcessVariable$UPDATES

        static final boolean getProcessVariable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getProcessVariable$UPDATES)

    -   ### setProcessVariables$UPDATES

        static final boolean setProcessVariables$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setProcessVariables$UPDATES)

    -   ### setProcessVariable$UPDATES

        static final boolean setProcessVariable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setProcessVariable$UPDATES)

    -   ### addProcessVariable$UPDATES

        static final boolean addProcessVariable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.addProcessVariable$UPDATES)

    -   ### addProcessVariables$UPDATES

        static final boolean addProcessVariables$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.addProcessVariables$UPDATES)

    -   ### getSecurityForProcess$UPDATES

        static final boolean getSecurityForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getSecurityForProcess$UPDATES)

    -   ### setSecurityForProcess$UPDATES

        static final boolean setSecurityForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setSecurityForProcess$UPDATES)

    -   ### getSecurityForNode$UPDATES

        static final boolean getSecurityForNode$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getSecurityForNode$UPDATES)

    -   ### setSecurityForNode$UPDATES

        static final boolean setSecurityForNode$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setSecurityForNode$UPDATES)

    -   ### setActorsInRolesForProcess$UPDATES

        static final boolean setActorsInRolesForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setActorsInRolesForProcess$UPDATES)

    -   ### setActorsInRolesForNode$UPDATES

        static final boolean setActorsInRolesForNode$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setActorsInRolesForNode$UPDATES)

    -   ### setInheritanceForProcess$UPDATES

        static final boolean setInheritanceForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setInheritanceForProcess$UPDATES)

    -   ### setInheritanceForNode$UPDATES

        static final boolean setInheritanceForNode$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setInheritanceForNode$UPDATES)

    -   ### getPermissionsForProcess$UPDATES

        static final boolean getPermissionsForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getPermissionsForProcess$UPDATES)

    -   ### getPermissionsForProcesses$UPDATES

        static final boolean getPermissionsForProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getPermissionsForProcesses$UPDATES)

    -   ### getPermissionsForNode$UPDATES

        static final boolean getPermissionsForNode$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getPermissionsForNode$UPDATES)

    -   ### getPermissionsForNodes$UPDATES

        static final boolean getPermissionsForNodes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getPermissionsForNodes$UPDATES)

    -   ### getPermissionsForProcessDiagram$UPDATES

        static final boolean getPermissionsForProcessDiagram$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getPermissionsForProcessDiagram$UPDATES)

    -   ### getAttachmentsForProcess$UPDATES

        static final boolean getAttachmentsForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getAttachmentsForProcess$UPDATES)

    -   ### getAttachmentsAndNotesForTask$UPDATES

        static final boolean getAttachmentsAndNotesForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getAttachmentsAndNotesForTask$UPDATES)

    -   ### getAttachmentsForTask$UPDATES

        static final boolean getAttachmentsForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getAttachmentsForTask$UPDATES)

    -   ### removeProcessAttachments$UPDATES

        static final boolean removeProcessAttachments$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.removeProcessAttachments$UPDATES)

    -   ### removeProcessAttachment$UPDATES

        static final boolean removeProcessAttachment$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.removeProcessAttachment$UPDATES)

    -   ### removeTaskAttachments$UPDATES

        static final boolean removeTaskAttachments$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.removeTaskAttachments$UPDATES)

    -   ### removeTaskAttachment$UPDATES

        static final boolean removeTaskAttachment$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.removeTaskAttachment$UPDATES)

    -   ### addAttachmentToProcess$UPDATES

        static final boolean addAttachmentToProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.addAttachmentToProcess$UPDATES)

    -   ### addAttachmentToProcesses$UPDATES

        static final boolean addAttachmentToProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.addAttachmentToProcesses$UPDATES)

    -   ### addAttachmentsToProcess$UPDATES

        static final boolean addAttachmentsToProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.addAttachmentsToProcess$UPDATES)

    -   ### addAttachmentToTask$UPDATES

        static final boolean addAttachmentToTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.addAttachmentToTask$UPDATES)

    -   ### addAttachmentToTasks$UPDATES

        static final boolean addAttachmentToTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.addAttachmentToTasks$UPDATES)

    -   ### addAttachmentsToTask$UPDATES

        static final boolean addAttachmentsToTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.addAttachmentsToTask$UPDATES)

    -   ### getDeadlineForProcess$UPDATES

        static final boolean getDeadlineForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getDeadlineForProcess$UPDATES)

    -   ### setDeadlineForProcess$UPDATES

        static final boolean setDeadlineForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setDeadlineForProcess$UPDATES)

    -   ### getDeadlineForTask$UPDATES

        static final boolean getDeadlineForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getDeadlineForTask$UPDATES)

    -   ### setDeadlineForTask$UPDATES

        static final boolean setDeadlineForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setDeadlineForTask$UPDATES)

    -   ### getPriorityOfTask$UPDATES

        static final boolean getPriorityOfTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getPriorityOfTask$UPDATES)

    -   ### getPriorityOfTasks$UPDATES

        static final boolean getPriorityOfTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getPriorityOfTasks$UPDATES)

    -   ### getPriorityOfProcess$UPDATES

        static final boolean getPriorityOfProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getPriorityOfProcess$UPDATES)

    -   ### getPriorityOfProcesses$UPDATES

        static final boolean getPriorityOfProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getPriorityOfProcesses$UPDATES)

    -   ### setPriorityOfTask$UPDATES

        static final boolean setPriorityOfTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setPriorityOfTask$UPDATES)

    -   ### setPriorityOfTasks$UPDATES

        static final boolean setPriorityOfTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setPriorityOfTasks$UPDATES)

    -   ### setPriorityOfProcess$UPDATES

        static final boolean setPriorityOfProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setPriorityOfProcess$UPDATES)

    -   ### setPriorityOfProcesses$UPDATES

        static final boolean setPriorityOfProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setPriorityOfProcesses$UPDATES)

    -   ### raisePriorityOfTask$UPDATES

        static final boolean raisePriorityOfTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.raisePriorityOfTask$UPDATES)

    -   ### raisePriorityOfTasks$UPDATES

        static final boolean raisePriorityOfTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.raisePriorityOfTasks$UPDATES)

    -   ### raisePriorityOfProcess$UPDATES

        static final boolean raisePriorityOfProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.raisePriorityOfProcess$UPDATES)

    -   ### raisePriorityOfProcesses$UPDATES

        static final boolean raisePriorityOfProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.raisePriorityOfProcesses$UPDATES)

    -   ### lowerPriorityOfTask$UPDATES

        static final boolean lowerPriorityOfTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.lowerPriorityOfTask$UPDATES)

    -   ### lowerPriorityOfTasks$UPDATES

        static final boolean lowerPriorityOfTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.lowerPriorityOfTasks$UPDATES)

    -   ### lowerPriorityOfProcess$UPDATES

        static final boolean lowerPriorityOfProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.lowerPriorityOfProcess$UPDATES)

    -   ### lowerPriorityOfProcesses$UPDATES

        static final boolean lowerPriorityOfProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.lowerPriorityOfProcesses$UPDATES)

    -   ### containsLinkProcessesInheritingPriority$UPDATES

        static final boolean containsLinkProcessesInheritingPriority$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.containsLinkProcessesInheritingPriority$UPDATES)

    -   ### containsSubProcessesInheritingPriority$UPDATES

        static final boolean containsSubProcessesInheritingPriority$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.containsSubProcessesInheritingPriority$UPDATES)

    -   ### createNoteMetadata$UPDATES

        static final boolean createNoteMetadata$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadata$UPDATES)

    -   ### createNoteMetadatas$UPDATES

        static final boolean createNoteMetadatas$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadatas$UPDATES)

    -   ### getNotePath$UPDATES

        static final boolean getNotePath$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getNotePath$UPDATES)

    -   ### getNotePaths$UPDATES

        static final boolean getNotePaths$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getNotePaths$UPDATES)

    -   ### getCurrentNotePaths$UPDATES

        static final boolean getCurrentNotePaths$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getCurrentNotePaths$UPDATES)

    -   ### setCurrentNotePaths$UPDATES

        static final boolean setCurrentNotePaths$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setCurrentNotePaths$UPDATES)

    -   ### getExceptionNoteMetadataForTask$UPDATES

        static final boolean getExceptionNoteMetadataForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getExceptionNoteMetadataForTask$UPDATES)

    -   ### getExceptionNoteMetadatasForProcess$UPDATES

        static final boolean getExceptionNoteMetadatasForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getExceptionNoteMetadatasForProcess$UPDATES)

    -   ### getAllExceptionNoteMetadatasForProcess$UPDATES

        static final boolean getAllExceptionNoteMetadatasForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getAllExceptionNoteMetadatasForProcess$UPDATES)

    -   ### createNoteMetadataForProcess$UPDATES

        static final boolean createNoteMetadataForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadataForProcess$UPDATES)

    -   ### createNoteMetadataForProcesses$UPDATES

        static final boolean createNoteMetadataForProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadataForProcesses$UPDATES)

    -   ### createNoteMetadatasForProcess$UPDATES

        static final boolean createNoteMetadatasForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadatasForProcess$UPDATES)

    -   ### getNoteMetadatasForProcess$UPDATES

        static final boolean getNoteMetadatasForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadatasForProcess$UPDATES)

    -   ### getNoteMetadatasForProcesses$UPDATES

        static final boolean getNoteMetadatasForProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadatasForProcesses$UPDATES)

    -   ### createNoteMetadataForTask$UPDATES

        static final boolean createNoteMetadataForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadataForTask$UPDATES)

    -   ### createNoteMetadataForTasks$UPDATES

        static final boolean createNoteMetadataForTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadataForTasks$UPDATES)

    -   ### createNoteMetadatasForTask$UPDATES

        static final boolean createNoteMetadatasForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadatasForTask$UPDATES)

    -   ### getNoteMetadatasForTask$UPDATES

        static final boolean getNoteMetadatasForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadatasForTask$UPDATES)

    -   ### getNoteMetadatasForTasks$UPDATES

        static final boolean getNoteMetadatasForTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadatasForTasks$UPDATES)

    -   ### deleteNoteMetadataForProcess$UPDATES

        static final boolean deleteNoteMetadataForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.deleteNoteMetadataForProcess$UPDATES)

    -   ### deleteNoteMetadataForTask$UPDATES

        static final boolean deleteNoteMetadataForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.deleteNoteMetadataForTask$UPDATES)

    -   ### deleteNoteMetadatasForProcess$UPDATES

        static final boolean deleteNoteMetadatasForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.deleteNoteMetadatasForProcess$UPDATES)

    -   ### deleteNoteMetadatasForTask$UPDATES

        static final boolean deleteNoteMetadatasForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.deleteNoteMetadatasForTask$UPDATES)

    -   ### updateNoteMetadataForProcess$UPDATES

        static final boolean updateNoteMetadataForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.updateNoteMetadataForProcess$UPDATES)

    -   ### updateNoteMetadataForTask$UPDATES

        static final boolean updateNoteMetadataForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.updateNoteMetadataForTask$UPDATES)

    -   ### updateNoteMetadatasForProcess$UPDATES

        static final boolean updateNoteMetadatasForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.updateNoteMetadatasForProcess$UPDATES)

    -   ### updateNoteMetadatasForTask$UPDATES

        static final boolean updateNoteMetadatasForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.updateNoteMetadatasForTask$UPDATES)

    -   ### getNoteMetadataForTask$UPDATES

        static final boolean getNoteMetadataForTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadataForTask$UPDATES)

    -   ### getNoteMetadataForProcess$UPDATES

        static final boolean getNoteMetadataForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadataForProcess$UPDATES)

    -   ### getTasksForProcess$UPDATES

        static final boolean getTasksForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTasksForProcess$UPDATES)

    -   ### pauseProcess$UPDATES

        static final boolean pauseProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.pauseProcess$UPDATES)

    -   ### pauseProcesses$UPDATES

        static final boolean pauseProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.pauseProcesses$UPDATES)

    -   ### resumeProcess$UPDATES

        static final boolean resumeProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.resumeProcess$UPDATES)

    -   ### resumeProcesses$UPDATES

        static final boolean resumeProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.resumeProcesses$UPDATES)

    -   ### cancelProcesses$UPDATES

        static final boolean cancelProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.cancelProcesses$UPDATES)

    -   ### startQuickTask$UPDATES

        static final boolean startQuickTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.startQuickTask$UPDATES)

    -   ### startTask$UPDATES

        static final boolean startTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.startTask$UPDATES)

    -   ### startTasks$UPDATES

        static final boolean startTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.startTasks$UPDATES)

    -   ### resumeTask$UPDATES

        static final boolean resumeTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.resumeTask$UPDATES)

    -   ### resumeTasks$UPDATES

        static final boolean resumeTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.resumeTasks$UPDATES)

    -   ### pauseTask$UPDATES

        static final boolean pauseTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.pauseTask$UPDATES)

    -   ### pauseTasks$UPDATES

        static final boolean pauseTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.pauseTasks$UPDATES)

    -   ### cancelTask$UPDATES

        static final boolean cancelTask$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.cancelTask$UPDATES)

    -   ### cancelTasks$UPDATES

        static final boolean cancelTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.cancelTasks$UPDATES)

    -   ### startAllNodes$UPDATES

        static final boolean startAllNodes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.startAllNodes$UPDATES)

    -   ### restartAllNodes$UPDATES

        static final boolean restartAllNodes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.restartAllNodes$UPDATES)

    -   ### pauseAllNodes$UPDATES

        static final boolean pauseAllNodes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.pauseAllNodes$UPDATES)

    -   ### resumeAllNodes$UPDATES

        static final boolean resumeAllNodes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.resumeAllNodes$UPDATES)

    -   ### cancelAllNodes$UPDATES

        static final boolean cancelAllNodes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.cancelAllNodes$UPDATES)

    -   ### reassignTaskToSameAssigneePool$UPDATES

        static final boolean reassignTaskToSameAssigneePool$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.reassignTaskToSameAssigneePool$UPDATES)

    -   ### reassignTasksToAssigneePool$UPDATES

        static final boolean reassignTasksToAssigneePool$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.reassignTasksToAssigneePool$UPDATES)

    -   ### reassignTasksToSameAssigneePool$UPDATES

        static final boolean reassignTasksToSameAssigneePool$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.reassignTasksToSameAssigneePool$UPDATES)

    -   ### getProcessDiagram$UPDATES

        static final boolean getProcessDiagram$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getProcessDiagram$UPDATES)

    -   ### updateProcessModelForProcess$UPDATES

        static final boolean updateProcessModelForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.updateProcessModelForProcess$UPDATES)

    -   ### upgradeProcesses$UPDATES

        static final boolean upgradeProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.upgradeProcesses$UPDATES)

    -   ### triggerSchedule$UPDATES

        static final boolean triggerSchedule$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.triggerSchedule$UPDATES)

    -   ### triggerTaskEscalation$UPDATES

        static final boolean triggerTaskEscalation$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.triggerTaskEscalation$UPDATES)

    -   ### skipTaskEscalation$UPDATES

        static final boolean skipTaskEscalation$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.skipTaskEscalation$UPDATES)

    -   ### getScheduleSummariesForNode$UPDATES

        static final boolean getScheduleSummariesForNode$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getScheduleSummariesForNode$UPDATES)

    -   ### lockProcessModelForProcess$UPDATES

        static final boolean lockProcessModelForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.lockProcessModelForProcess$UPDATES)

    -   ### lockProcesses$UPDATES

        static final boolean lockProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.lockProcesses$UPDATES)

    -   ### unlockProcesses$UPDATES

        static final boolean unlockProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.unlockProcesses$UPDATES)

    -   ### unlockProcessModelForProcess$UPDATES

        static final boolean unlockProcessModelForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.unlockProcessModelForProcess$UPDATES)

    -   ### unlockProcessModels$UPDATES

        static final boolean unlockProcessModels$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.unlockProcessModels$UPDATES)

    -   ### getMaximumNumberOfNotes$UPDATES

        static final boolean getMaximumNumberOfNotes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getMaximumNumberOfNotes$UPDATES)

    -   ### getMaximumNumberOfAttachments$UPDATES

        static final boolean getMaximumNumberOfAttachments$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getMaximumNumberOfAttachments$UPDATES)

    -   ### skipRecurrence$UPDATES

        static final boolean skipRecurrence$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.skipRecurrence$UPDATES)

    -   ### triggerRecurrence$UPDATES

        static final boolean triggerRecurrence$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.triggerRecurrence$UPDATES)

    -   ### setTaskStateSubmitted$UPDATES

        static final boolean setTaskStateSubmitted$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setTaskStateSubmitted$UPDATES)

    -   ### keepSubmittedTasksAlive$UPDATES

        static final boolean keepSubmittedTasksAlive$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.keepSubmittedTasksAlive$UPDATES)

    -   ### setTaskStateRunning$UPDATES

        static final boolean setTaskStateRunning$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setTaskStateRunning$UPDATES)

    -   ### getCurrentTasksForProcess$UPDATES

        static final boolean getCurrentTasksForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getCurrentTasksForProcess$UPDATES)

    -   ### getCompletedTasksForProcess$UPDATES

        static final boolean getCompletedTasksForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getCompletedTasksForProcess$UPDATES)

    -   ### getCancelledTasksForProcess$UPDATES

        static final boolean getCancelledTasksForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getCancelledTasksForProcess$UPDATES)

    -   ### getPausedTasksForProcess$UPDATES

        static final boolean getPausedTasksForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getPausedTasksForProcess$UPDATES)

    -   ### getTasksWithExceptionsForProcess$UPDATES

        static final boolean getTasksWithExceptionsForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTasksWithExceptionsForProcess$UPDATES)

    -   ### unarchiveProcess$UPDATES

        static final boolean unarchiveProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.unarchiveProcess$UPDATES)

    -   ### unarchiveProcesses$UPDATES

        static final boolean unarchiveProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.unarchiveProcesses$UPDATES)

    -   ### archiveProcess$UPDATES

        static final boolean archiveProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.archiveProcess$UPDATES)

    -   ### archiveProcesses$UPDATES

        static final boolean archiveProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.archiveProcesses$UPDATES)

    -   ### getArchivePaths$UPDATES

        static final boolean getArchivePaths$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getArchivePaths$UPDATES)

    -   ### setArchivePaths$UPDATES

        static final boolean setArchivePaths$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setArchivePaths$UPDATES)

    -   ### getNextRecurrence$UPDATES

        static final boolean getNextRecurrence$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getNextRecurrence$UPDATES)

    -   ### getAttachmentsInProcess$UPDATES

        static final boolean getAttachmentsInProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getAttachmentsInProcess$UPDATES)

    -   ### getNoteMetadatasInProcess$UPDATES

        static final boolean getNoteMetadatasInProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadatasInProcess$UPDATES)

    -   ### updateUsernames$UPDATES

        static final boolean updateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.updateUsernames$UPDATES)

    -   ### commitUpdateUsernames$UPDATES

        static final boolean commitUpdateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.commitUpdateUsernames$UPDATES)

    -   ### rollbackUpdateUsernames$UPDATES

        static final boolean rollbackUpdateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.rollbackUpdateUsernames$UPDATES)

    -   ### uncompleteActivity$UPDATES

        static final boolean uncompleteActivity$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.uncompleteActivity$UPDATES)

    -   ### setApplicationAdministratorGroup$UPDATES

        static final boolean setApplicationAdministratorGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setApplicationAdministratorGroup$UPDATES)

    -   ### reloadProperties$UPDATES

        static final boolean reloadProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.reloadProperties$UPDATES)

    -   ### validate$UPDATES

        static final boolean validate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.validate$UPDATES)

    -   ### setSiteLocaleSettings$UPDATES

        static final boolean setSiteLocaleSettings$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setSiteLocaleSettings$UPDATES)

    -   ### handleMessages$UPDATES

        static final boolean handleMessages$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.handleMessages$UPDATES)

    -   ### acknowledgeMessages$UPDATES

        static final boolean acknowledgeMessages$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.acknowledgeMessages$UPDATES)

    -   ### getPmIdForProcess$UPDATES

        static final boolean getPmIdForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getPmIdForProcess$UPDATES)

    -   ### addProcessToFavorites$UPDATES

        static final boolean addProcessToFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.addProcessToFavorites$UPDATES)

    -   ### removeProcessFromFavorites$UPDATES

        static final boolean removeProcessFromFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.removeProcessFromFavorites$UPDATES)

    -   ### addTaskToFavorites$UPDATES

        static final boolean addTaskToFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.addTaskToFavorites$UPDATES)

    -   ### removeTaskFromFavorites$UPDATES

        static final boolean removeTaskFromFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.removeTaskFromFavorites$UPDATES)

    -   ### setDashboardPageForProcesses$UPDATES

        static final boolean setDashboardPageForProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setDashboardPageForProcesses$UPDATES)

    -   ### removeDashboardPageForProcesses$UPDATES

        static final boolean removeDashboardPageForProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.removeDashboardPageForProcesses$UPDATES)

    -   ### getAutoArchiveProperties$UPDATES

        static final boolean getAutoArchiveProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getAutoArchiveProperties$UPDATES)

    -   ### getMemoryUsageForExecEngine$UPDATES

        static final boolean getMemoryUsageForExecEngine$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getMemoryUsageForExecEngine$UPDATES)

    -   ### getMemoryUsageForProcessModels$UPDATES

        static final boolean getMemoryUsageForProcessModels$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getMemoryUsageForProcessModels$UPDATES)

    -   ### getMemoryUsageForProcessModelsByUUID$UPDATES

        static final boolean getMemoryUsageForProcessModelsByUUID$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getMemoryUsageForProcessModelsByUUID$UPDATES)

    -   ### getMemoryUsageForProcesses$UPDATES

        static final boolean getMemoryUsageForProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getMemoryUsageForProcesses$UPDATES)

    -   ### getMemoryUsageForProcessesByModelUUID$UPDATES

        static final boolean getMemoryUsageForProcessesByModelUUID$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getMemoryUsageForProcessesByModelUUID$UPDATES)

    -   ### getMemoryUsageForNodesInProcesses$UPDATES

        static final boolean getMemoryUsageForNodesInProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getMemoryUsageForNodesInProcesses$UPDATES)

    -   ### setTimeZone$UPDATES

        static final boolean setTimeZone$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setTimeZone$UPDATES)

    -   ### setTimeZoneSameAs$UPDATES

        static final boolean setTimeZoneSameAs$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.setTimeZoneSameAs$UPDATES)

    -   ### getProcessHistoryRecords$UPDATES

        static final boolean getProcessHistoryRecords$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getProcessHistoryRecords$UPDATES)

    -   ### getProcessHistoryRecordsPaging$UPDATES

        static final boolean getProcessHistoryRecordsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getProcessHistoryRecordsPaging$UPDATES)

    -   ### getTasksWithStatusForProcessModel$UPDATES

        static final boolean getTasksWithStatusForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTasksWithStatusForProcessModel$UPDATES)

    -   ### getTasksWithStatusForProcessModels$UPDATES

        static final boolean getTasksWithStatusForProcessModels$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTasksWithStatusForProcessModels$UPDATES)

    -   ### getTasksWithStatusForProcess$UPDATES

        static final boolean getTasksWithStatusForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTasksWithStatusForProcess$UPDATES)

    -   ### getTasksWithStatusForProcesses$UPDATES

        static final boolean getTasksWithStatusForProcesses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.getTasksWithStatusForProcesses$UPDATES)

    -   ### completeStore$UPDATES

        static final boolean completeStore$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.completeStore$UPDATES)

    -   ### cancelStore$UPDATES

        static final boolean cancelStore$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.cancelStore$UPDATES)

    -   ### processToNextAttended$UPDATES

        static final boolean processToNextAttended$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessExecutionService.processToNextAttended$UPDATES)

-   ## Method Details

    -   ### saveActivityParameters

        void saveActivityParameters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_, [ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] acps\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityClassParameterException](exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Saves the values for parameters of an activity. Does not complete the activity. The saved parameter values will be returned by calls to [`getActivityMetadata(Long)`](#getActivityMetadata\(java.lang.Long\)). In addition to persisting parameters for later retrieval, this method is used to set the parameters for activities executed within the process engine through a call to [`execute(Long)`](#execute\(java.lang.Long\)). The following fields must be populated in the `ActivityClassParameter` objects: `id`, `value`, `type`, and `multiple`

        Parameters:

        `activityId_` - the id of the activity whose parameters will be saved

        `acps_` - the parameters for the activity class, with desired values filled-in.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `acps_` is null

        `[InvalidActivityClassParameterException](exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if an `ActivityClassParameter` provided does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by a `ActivityClassParameter` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### completeActivity

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") completeActivity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_, [ActivityReturnVariable](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")\[\] outputs\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityClassParameterException](exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Signals the completion of an activity not implemented within the process engine itself. This notifies the engine that an activity has been completed so that the engine can continue the process. The [`ActivityReturnVariable`](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")s should be the identical to those provided by [`getActivityMetadata(java.lang.Long)`](#getActivityMetadata\(java.lang.Long\)), except for having the values filled-in.

        Parameters:

        `activityId_` - the id of the activity that has been completed

        `outputs_` - the return values of the completed activity

        Returns:

        the id of the next task for the user to perform, if available; `null` otherwise.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if activity is in a state other than in-progress, or if it is not a Java activity (attended or unattended)

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `outputs_` is null

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - (for attended only) if user is not the task owner or does not have permission to complete task

        `[InvalidActivityClassParameterException](exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if an `ActivityClassParameter` provided does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by a `ActivityReturnVariable` do not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### acknowledgeActivity

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void acknowledgeActivity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        no longer necessary

        Acknowledge the receipt of an activity request, preventing retry of the request. After acknowledgement, an activity will timeout rather than be retried. This method is intended for use only by the Unattended Activity Server.

        Parameters:

        `activityId_` - the id of the activity that has been completed

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### acknowledgeActivity

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void acknowledgeActivity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        no longer necessary

        Acknowledge the receipt of an activity request, preventing retry of the request. After acknowledgement, an activity will timeout rather than be retried. This method is intended for use only by the Unattended Activity Server.

        Parameters:

        `activityId_` - the id of the activity that has been completed

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### completeClone

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") completeClone([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_, [ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] inputs\_, [ActivityReturnVariable](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")\[\] outputs\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityClassParameterException](exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Clones the given task (only a new id is assigned to the cloned task, everything else stays the same), and completes it using the passed inputs (i.e. calls execute or completeActivity).

        Parameters:

        `activityId_` - the id of the task to clone and complete

        `inputs_` - the parameters for the activity class, with desired values filled in

        `outputs_` - the return values of the completed activity

        Returns:

        the id of the next task for the user to perform, if available; `null` otherwise

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if activity is in a state other than in-progress, or if it is not a Java activity (attended or unattended)

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - (for attended only) if user is not the task owner or does not have permission to complete task

        `[InvalidActivityClassParameterException](exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if an `ActivityClassParameter` provided does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by a `ActivityReturnVariable` do not exist

    -   ### getLingeringTasksForProcess

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getLingeringTasksForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, boolean recursive, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Returns all instances of lingering nodes currently active in the specified process. Lingering nodes are those whose instances are known only to the execution server and are not notified externally as long as they are active. One example of such nodes is quick tasks.

        Parameters:

        `processId_` - the id of the process for which the lingering tasks should be retrieved

        `recursive` - whether to return the lingering tasks of the sub-processes of the given process also

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a ResultPage of TaskSummary objects

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the given process id is invalid

    -   ### getLingeringTasksForProcessAndNode

        [TaskSummary](TaskSummary.html "class in com.appiancorp.suiteapi.process")\[\] getLingeringTasksForProcessAndNode([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns all instances of the specified lingering node currently active in the specified process.

        Parameters:

        `processId_` - the id of the process for which to retrieve the lingering nodes

        `nodeId_` - the id of the node within the model of the given process for which to retrieve the lingering nodes

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the given process id is invalid

        `[InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the given node id is invalid

    -   ### refreshTaskForm

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void refreshTaskForm([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        This method will cause a race condition between ACP refresh and form label refresh. Instead, use the "Refresh default values every time the task form is viewed" execution option in the task configuration in the model.

        Forces the form for a given task to be re-evaluated to reflect changes in the process state since the task was originally instantiated.

        Parameters:

        `activityId_` - the id of the task

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the given activity id is invalid

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the given task is not attended

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to complete the given task

    -   ### execute

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") execute([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Requests execution of an activity implemented within the process engine. Parameters for the activity should have been previously provided to the engine through [`saveActivityParameters(java.lang.Long, com.appiancorp.suiteapi.process.ActivityClassParameter[])`](#saveActivityParameters\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\)).

        Parameters:

        `activityId_` - the id of the activity to execute

        Returns:

        the id of the next task for the user to perform, if available; `null` otherwise.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if user is not the task owner or does not have permission to complete task

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is in paused by exception or cancelled state, or if the task is not in-progress, or if the activity is not implemented within the process engine (attended or unattended)

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getActivityMetadata

        [ActivityExecutionMetadata](framework/ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework") getActivityMetadata([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the metadata for a specified activity. The metadata provides the necessary information for the activity to be presented to the user, if the activity is attended, and then executed either by the process engine (see [`execute(java.lang.Long)`](#execute\(java.lang.Long\))) or outside of the engine (see [`completeActivity(java.lang.Long, com.appiancorp.suiteapi.process.ActivityReturnVariable[])`](#completeActivity\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityReturnVariable%5B%5D\))).

        Parameters:

        `activityId_` - the id of the activity for which to get metadata

        Returns:

        `ActivityExecutionMetadata` for the activity

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getActivitiesMetadata

        [ActivityExecutionMetadata](framework/ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework")\[\] getActivitiesMetadata([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] activityIds\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets metadata for the specified activities. This method performs the same as [`getActivityMetadata(java.lang.Long)`](#getActivityMetadata\(java.lang.Long\)), but in bulk.

        Parameters:

        `activityIds_` - an array of the ids of the activities for which to get metadata

        Returns:

        the metadata for the activities

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTaskFormExpression

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTaskFormExpression([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets task form expressions for the specified task. If a task's form is not in SAIL, return the empty string for the corresponding task id.

        Parameters:

        `taskId` - the id of the task for which to get the task form

        Returns:

        the task form expression for the task

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTaskFormExpressions

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getTaskFormExpressions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets task form expressions for the specified tasks. This method performs the same as [`getTaskFormExpression(Long)`](#getTaskFormExpression\(java.lang.Long\)), but in bulk.

        Parameters:

        `taskIds` - an array of the ids of the tasks for which to get the task forms

        Returns:

        the task form expressions for the tasks

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### acceptTask

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") acceptTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Accepts a task for a user.

        Parameters:

        `activityId_` - id of Task to accept

        Returns:

        a result code for the acceptance. This is one of the `TASK_ACCEPTANCE_XXX` constants.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTaskPrivileges

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getTaskPrivileges([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Determines whether the user who is executing an attended activity is permitted to reject or reassign the task. These privileges are configured for the assignee at process model design time.

        Parameters:

        `activityId_` - The id of the activity for which to get the privileges.

        Returns:

        the current users privileges. This is one of the `TASK_PRIVILEGE_XXX` constants. If the task is completed then this method will always return `TASK_PRIVILEGE_REASSIGN_ANY`.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTaskAssignees

        [Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")\[\] getTaskAssignees([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets all assignees for a specified task. Assignees have been assigned and can accept the task.

        Parameters:

        `taskId_` - The id of the task for which to get assignees.

        Returns:

        assignees for the task with the specified id. If the task is completed then this method will return an empty array.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTasksAssignees

        [Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")\[\]\[\] getTasksAssignees([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets all assignees for the specified tasks.

        Parameters:

        `taskIds_` - The ids of the tasks for which to get assignees

        Returns:

        assignees for each specified task; the first dimension of the returned array parallels the input array. An empty array is returned for each completed task.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAssigneePoolForTasks

        [Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")\[\] getAssigneePoolForTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the set of unique assignees among all the specified tasks.

        Parameters:

        `taskIds_` - the ids of the tasks for which to get assignees

        Returns:

        the union of assignees with no duplicates for the activities

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any task is unattended

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### reassignTask

        void reassignTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_, [Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")\[\] assignees\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Reassigns a task to new assignees.

        Parameters:

        `taskId_` - ID of the task to reassign

        `assignees_` - the new assignees for the task. Note that the `privilege` field will be ignored for all assignees that are already in the assignment pool.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task has been cancelled

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by an `Assignment.Assignee` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### rejectTask

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") rejectTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Rejects a task that has already been accepted. The process engine will determine to whom to reassign the task.

        Parameters:

        `taskId_` - the ID of the task to reject

        Returns:

        status code of success or rejection [`TASK_REJECTION_RESULT_SUCCESS`](#TASK_REJECTION_RESULT_SUCCESS) [`TASK_REJECTION_RESULT_INVALID_STATE`](#TASK_REJECTION_RESULT_INVALID_STATE) [`TASK_REJECTION_RESULT_NOT_OWNER`](#TASK_REJECTION_RESULT_NOT_OWNER)

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is the owner of the task but does not have permission to reject the task (the user was explicitly denied that privilege)

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getTaskDetails

        [TaskDetails](TaskDetails.html "class in com.appiancorp.suiteapi.process") getTaskDetails([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the details for the specified task.

        Parameters:

        `taskId_` - The id of the task for which to get details.

        Returns:

        The details of the task. For completed tasks, the assignees field of the `TaskDetails` bean will be an empty array.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTasksDetails

        [TaskDetails](TaskDetails.html "class in com.appiancorp.suiteapi.process")\[\] getTasksDetails([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the details for the specified tasks.

        Parameters:

        `taskIds_` - The ids of the tasks for which to get details.

        Returns:

        Task details for each specified task. For completed tasks, the assignees field of the `TaskDetails` bean will be an empty array.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTaskOpaqueUri

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTaskOpaqueUri([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_)

        Gets the opaque URI for the specified task.

        Parameters:

        `taskId_` - The id of the task for which to get the opaque URI.

        Returns:

        Opaque URI for the specified task.

    -   ### getTaskUrl

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTaskUrl([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_)

        Gets the URL for the specified task.

        Parameters:

        `taskId_` - The id of the task for which to get the URL.

        Returns:

        URL for the specified task.

    -   ### getProcessDetails

        [ProcessDetails](ProcessDetails.html "class in com.appiancorp.suiteapi.process") getProcessDetails([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [ArchivedProcessException](exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the details for a specified process.

        Parameters:

        `processId_` - The id of the process for which to get the details.

        Returns:

        Details of the specified process.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the specified process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[ArchivedProcessException](exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

    -   ### notifyException

        void notifyException([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") exceptionClassName\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") stackTrace\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Notifies the server that an exception has occurred while executing an activity.

        Parameters:

        `activityId_` - ID of the Activity on which the exception occurred

        `exceptionClassName_` - the fully qualified class name of the exception

        `message_` - message of the exception

        `stackTrace_` - stack trace of the exception

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is in any state other than in-progress

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### executionFailure

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void executionFailure(int errorType\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] activities\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Deprecated.

        unattended activities now run from the work queue.

        Called for unattended Java activities to let the process engine know that the activities could not be executed.

        Parameters:

        `errorType_` - this is one of the `EXECUTION_FAILURE_XXX` constants. For `EXECUTION_FAILURE_EXCEPTION`, don't attempt to execute again until configurable delay has passed. For `EXECUTION_FAILURE_TIMEOUT`, attempt to execute again at next usual execution time.

        `activities_` - acitivites that failed to execute

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is in any state other than in-progress, or if the process is not unattended, or if it is not a Java activity

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if `errorType_` is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### executionFailureMessage

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void executionFailureMessage(int errorType\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] activities\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Deprecated.

        unattended activities now run from the work queue.

        Called for unattended Java activities to let the process engine know that the activities could not be executed.

        Parameters:

        `errorType_` - this is one of the `EXECUTION_FAILURE_XXX` constants. For `EXECUTION_FAILURE_EXCEPTION`, don't attempt to execute again until configurable delay has passed. For `EXECUTION_FAILURE_TIMEOUT`, attempt to execute again at next usual execution time.

        `activities_` - activities that failed to execute

        `message_` - exception message

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is in any state other than in-progress, or if the process is not unattended, or if it is not a Java activity

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if `errorType_` is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteProcess

        void deleteProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, boolean deleteSubProcesses\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes the specified process. Purges process history in Kafka.

        Parameters:

        `processId_` - the id of the process to delete

        `deleteSubProcesses_` - `true` if all the sub processes in this process should also be deleted; `false` if not.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have sufficient privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteProcesses

        void deleteProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_, boolean deleteSubProcesses\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes all of the specified processes. This method performs the same as [`deleteProcess(java.lang.Long, boolean)`](#deleteProcess\(java.lang.Long,boolean\)), but in bulk. Purges process history in Kafka.

        Parameters:

        `processIds_` - the ids of the processes to delete

        `deleteSubProcesses_` - `true` if all the sub processes should be deleted; `false` if not.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have sufficient privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### cancelProcess

        void cancelProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, boolean cancelLinkedProcesses\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Cancels the specified process. Only active and paused processes can be cancelled.

        Parameters:

        `processId_` - the id of the process to cancel

        `cancelLinkedProcesses_` - `true` if all the linked processes should be cancelled; `false` if not.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the specified process does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified process is not active or already cancelled

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to cancel the specified process

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is locked

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`lockProcessModelForProcess(Long, boolean)`](#lockProcessModelForProcess\(java.lang.Long,boolean\))

    -   ### notifyInvalidParameters

        void notifyInvalidParameters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_, [ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] acps\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidActivityClassParameterException](exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Notifies the user that the parameters sent as inputs to an unattended activity were invalid. This is only called if [`ActivityParameterHelper.validate(com.appiancorp.suiteapi.process.ActivityClassParameter[], java.lang.Object, boolean, com.appiancorp.services.ServiceContext, com.appiancorp.suiteapi.process.framework.MessageHolder)`](framework/ActivityParameterHelper.html#validate\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,java.lang.Object,boolean,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.process.framework.MessageHolder\)) returned false.

        Parameters:

        `activityId_` - The ID of the activity for which validation failed

        `acps_` - The parameters with validation messages populated.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if activity is in a state other than in-progress

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `acps_` is null

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the ACP array is empty, or if no ACPs had validation messages

        `[InvalidActivityClassParameterException](exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if an `ActivityClassParameter` provided does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyUsersCreationByJava

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void notifyUsersCreationByJava([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        This call should never be necessary.

        Notifies the server that new users were created on the Personalization server

        Parameters:

        `activityId_` - The ID of the activity for which validation failed

        `usernames_` - the names of the users that were added

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any of the usernames are `null`

    -   ### notifyUsersCreationByJava

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void notifyUsersCreationByJava([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        done automatically by UserService.createUser

        Notifies the server that new users were created on the Personalization server

        Parameters:

        `usernames_` - the names of the users that were added

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any of the usernames are `null`

    -   ### checkActivityValidity

        int checkActivityValidity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Determines whether the specified activity is valid.

        Parameters:

        `activityId_` - the id of the activity

        Returns:

        one of the `ACTIVITY_XXX` constants

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the activityId\_ is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### canCompleteActivity

        boolean canCompleteActivity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_)

        Determines whether the specified activity can be completed by the user. It will ensure that the activity is in an assigned state and that the user is the owner of the activity. If the activity is invalid, `false` will be returned.

        Parameters:

        `activityId_` - the id of the activity

        Returns:

        `true`, if the user can complete the activity; `false` otherwise

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### canCompleteClone

        boolean canCompleteClone([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_)

        Indicates whether the current user can use [`completeClone(java.lang.Long, com.appiancorp.suiteapi.process.ActivityClassParameter[], com.appiancorp.suiteapi.process.ActivityReturnVariable[])`](#completeClone\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,com.appiancorp.suiteapi.process.ActivityReturnVariable%5B%5D\)) on the given task to complete the activity. Ensures that the specified task is the correct type of task (quick task) and is in a proper state to be completed by the current user.

        Parameters:

        `activityId_` - the id of the activity (aka task)

    -   ### getSubProcessesForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getSubProcessesForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int subProcessStatus\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getSynchronousSubProcessesForProcess(Long, int)`](#getSynchronousSubProcessesForProcess\(java.lang.Long,int\)) instead.

        Gets the direct subprocesses of the given process. This function will not return subprocesses of its subprocesses, if any

        Parameters:

        `processId_` - The id of the process for which to get subprocesses.

        `subProcessStatus_` - The status of the subprocesses to get, designated by one of the `STATE_XXX` constants in [`ProcessSummary`](ProcessSummary.html "class in com.appiancorp.suiteapi.process"). Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to retrieve subprocesses in any state.

        Returns:

        A [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") containing `ProcessSummary` objects for the subprocesses of the given process. The result codes can be `ResultList.CODE_NO_PERMISSION` or `ResultList.CODE_VALID`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If the process is invalid.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have sufficient privileges to retrieve the subprocesses of this process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSynchronousSubProcessesForProcess

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getSynchronousSubProcessesForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int synchronousSubProcessStatus\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the synchronous subprocesses of the given process. Only retrieves direct children, so subprocesses of subprocesses will not be returned.

        Parameters:

        `processId_` - the id of the process to get synchronous subprocesses for

        `synchronousSubProcessStatus_` - filters results by returning only those subprocesses with the status given here. Possible statuses are defined in [`ProcessSummary`](ProcessSummary.html "class in com.appiancorp.suiteapi.process") and look like `STATE_XXX`. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return ALL synchronous subprocesses, without filtering by status.

        Returns:

        a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") containing `ProcessSummary` objects that represent the synchronous subprocesses. The `ResultList`'s result codes can be: `ResultList.CODE_VALID` if the nth subprocess is accessible, or `ResultList.CODE_NO_PERMISSION` if the user does not have permission to access the nth subprocess.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this operation

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTopLevelProcessForProcess

        [ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process") getTopLevelProcessForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the top level process for a given process.

        Parameters:

        `processId_` - the id of the process to get the top level process for

        Returns:

        the [`ProcessSummary`](ProcessSummary.html "class in com.appiancorp.suiteapi.process") of the top level process for the given process if one exists. Returns only true top level processes. In the case that the process itself is a top level process the call will return itself.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user cannot view the top level process or the current process

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### isSubProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") boolean isSubProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        Use `#isSynchronousSubProcesses(Long)` instead.

        Determines whether or not the given process is a subprocess.

        Parameters:

        `processId_` - the ID of the process to check

        Returns:

        `true` if the process given is a subprocess, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### isSynchronousSubProcess

        boolean isSynchronousSubProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Determines whether or not the given process is a synchronous subprocess.

        Parameters:

        `processId_` - the ID of the process to check

        Returns:

        `true` if the process given is a synchronous subprocess, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### containsSubProcesses

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") boolean containsSubProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        Use [`containsSynchronousSubProcesses(Long)`](#containsSynchronousSubProcesses\(java.lang.Long\)) instead.

        Determines whether or not the given process contains subprocesses.

        Parameters:

        `processId_` - the id of the process to check for subprocesses

        Returns:

        `true` if the process given contains subprocesses, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### containsLinkProcesses

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") boolean containsLinkProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        Use [`containsAsynchronousSubProcesses(Long)`](#containsAsynchronousSubProcesses\(java.lang.Long\)) instead.

        Determines whether or not the given process contains linked processes.

        Parameters:

        `processId_` - the id of the process to check for linked processes

        Returns:

        `true` if the process given contains linked processes, otherwise `false`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

    -   ### containsSynchronousSubProcesses

        boolean containsSynchronousSubProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Determines whether or not the given process contains synchronous subprocesses.

        Parameters:

        `processId_` - the id of the process to check

        Returns:

        `true` if the process given contains synchronous subprocesses, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### containsSynchronousSubProcesses

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] containsSynchronousSubProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

    -   ### containsAsynchronousSubProcesses

        boolean containsAsynchronousSubProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Determines whether or not the given process contains asynchronous subprocesses.

        Parameters:

        `processId_` - the id of the process to check

        Returns:

        `true` if the process given contains asynchronous subprocesses, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### containsAsynchronousSubProcesses

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] containsAsynchronousSubProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

    -   ### getLinkProcessesForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getLinkProcessesForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int linkProcessStatus\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getAsynchronousSubProcessesForProcess(Long, int)`](#getAsynchronousSubProcessesForProcess\(java.lang.Long,int\)) instead.

        Gets the linked processes of the given process

        Parameters:

        `processId_` - the id of the process to get linked processes for

        `linkProcessStatus_` - the status of the linked processes to get; designated by one of the `STATE_XXX` constants in [`ProcessSummary`](ProcessSummary.html "class in com.appiancorp.suiteapi.process"), or [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return linked processes of any status

        Returns:

        a ResultList containing `ProcessSummary` objects for the linked processes of the given process. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, or `ResultList.CODE_NO_PERMISSION` if the user does not have permission

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this operation

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAsynchronousSubProcessesForProcess

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getAsynchronousSubProcessesForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int asynchronousSubProcessStatus\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the asynchronous subprocesses of the given process. Only retrieves direct children, so subprocesses of subprocesses will not be returned.

        Parameters:

        `processId_` - the id of the process to get asynchronous subprocesses for

        `asynchronousSubProcessStatus_` - filters results by returning only those subprocesses with the status given here. Possible statuses are defined in [`ProcessSummary`](ProcessSummary.html "class in com.appiancorp.suiteapi.process") and look like `STATE_XXX`. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return ALL asynchronous subprocesses, without filtering by status.

        Returns:

        a `ResultList` containing `ProcessSummary` objects that represent the asynchronous subprocesses. The `ResultList`'s result codes can be: `ResultList.CODE_VALID` if the nth subprocess is accessible, or `ResultList.CODE_NO_PERMISSION` if the user does not have permission to access the nth subprocess.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this operation

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### isLinkProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") boolean isLinkProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        Use [`isAsynchronousSubProcess(Long)`](#isAsynchronousSubProcess\(java.lang.Long\)) instead.

        Determines whether or not the given process is a linked process.

        Parameters:

        `processId_` - the ID of the process to check

        Returns:

        `true` if the given process is a linked process, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### isAsynchronousSubProcess

        boolean isAsynchronousSubProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Determines whether or not the given process is an asynchronous subprocess.

        Parameters:

        `processId_` - the ID of the process to check

        Returns:

        `true` if the given process is an asynchronous subprocess, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getActivityProperties

        [ActivityProperties](ActivityProperties.html "class in com.appiancorp.suiteapi.process") getActivityProperties([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves the activity properties for the given activity.

        Parameters:

        `activityId_` - the id of the activity (task)

        Returns:

        the properties of the task, process, and model. Because this method is on the execution server, the properties of the model that are returned are the ones that were set when the model was originally copied from the design server.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no activity exists with the given id

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTaskProperties

        [TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process") getTaskProperties([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves the properties for the given task.

        Parameters:

        `taskId_` - The id of the task.

        Returns:

        The properties of the task.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have access to the task.

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If no task exists with the given id.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setTaskProperties

        void setTaskProperties([TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process") properties\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the properties of the specified task . The task properties to update is determined by the `id` of the given properties object. The following fields must be populated in the `TaskProperties` object: `displayName`, `priority`, and `id` The `id` field must be populated in the `priority` member of the `TaskProperties` object Only `displayName` and `priority.id` may be updated

        Parameters:

        `properties_` - the properties of the task

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no activity exists with the given id

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the call tries to set the priority of the task to an invalid value

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setTaskDisplayName

        void setTaskDisplayName([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId, [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") displayName) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Sets the display name for the specified task to the specified string.

        Parameters:

        `taskId` - the id of the task whose display name should be updated

        `displayName` - the string for the new display name

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if there is no task for the specified taskId

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the display name is null, empty, or invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user lacks permissions to perform the action

    -   ### getProcessProperties

        [ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process") getProcessProperties([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves the properties for the given process.

        Parameters:

        `processId_` - The id of the process.

        Returns:

        The properties of the process.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have access to retrieve the properties of the process.

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If no process exists with the given id.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setProcessProperties

        void setProcessProperties([ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process") properties\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the properties of the specified process. The process to update is determined by the `id` of the given properties object. Only `name` and `priority.id` can be updated for the process.

        Parameters:

        `properties_` - The updated properties of the process. Only `name` and `priority.id` can be updated for the process. The following fields must be populated in the passed object: `id`, `name`, and `priority`. The `id` field in the `priority` member of the passed `ProcessProperties` object must also be populated.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges to perform the given operation

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process exists with the given id

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the call tries to set the priority of the process to an invalid value

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `ProcessProperties` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getProcessParameters

        [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")\[\] getProcessParameters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves process parameters for the specified process.

        Parameters:

        `processId_` - The id of the process.

        Returns:

        The parameters for the given process, with their initial values.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If no such process exists.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have access to retrieve the process parameters.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getProcessParameter

        [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process") getProcessParameter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parameterName\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the specified process parameter of the specified process.

        Parameters:

        `processId_` - The id of the process

        `parameterName_` - The name of the parameter to retrieve.

        Returns:

        The given parameter for the given process, with the initial value.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If no such process exists.

        `[InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If the process exists, but there is no process parameter with the given name for the process.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have access to retrieve the process parameter.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getProcessVariables

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")\[\] getProcessVariables([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getRecursiveProcessVariables(Long, boolean)`](#getRecursiveProcessVariables\(java.lang.Long,boolean\)) instead.

        Retrieves the process variables for the specified process.

        Parameters:

        `processId_` - The id of the process.

        Returns:

        The variables for the process.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If no such process exists.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have access to retrieve the process variables for the specified process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getRecursiveProcessVariables

        [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")\[\] getRecursiveProcessVariables([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, boolean recursive\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the process variables for the specified process. If the recursive flag is set to true, process variables for all sub-processes (that have the transparency flag set to true) will also be returned.

        Parameters:

        `processId_` - The id of the process.

        `recursive_` - true if you want to retrieve process variables from the child processes (and their children in turn).

        Returns:

        The variables for the process.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If no such process exists.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have access to retrieve the process variables for the specified process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getProcessVariablesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getProcessVariablesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the process variables for the specified process.

        Parameters:

        `processId_` - The id of the process.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`ProcessVariable`](ProcessVariable.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a ResultPage containing the variables for the process.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If no such process exists.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have access to retrieve the process variables for the specified process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getProcessVariable

        [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process") getProcessVariable([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pvName\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the specified process variable for the specified process.

        Parameters:

        `processId_` - The id of the process.

        `pvName_` - The name of a process variable.

        Returns:

        The variable with the given name for the specified process.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If no such process exists.

        `[InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If the process exists, but contains no variable with the given name.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have access to retrieve the process variable.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setProcessVariables

        void setProcessVariables([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pProcessId\_, [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")\[\] pvs\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the values of the specified process variables for the specified process. Only variables that already exist for the process can be set. New variables must first be added through `#addProcessVariable(Long, ProcessVariable)` or `#addProcessVariables(Long, ProcessVariable[])`. The process variables should be first retrieved via [`getProcessVariables(java.lang.Long)`](#getProcessVariables\(java.lang.Long\)), and their values set appropriately, before calling this method.

        Parameters:

        `pProcessId_` - the id of the process

        `pvs_` - the variables to set

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no such process exists

        `[InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if one of the names in pvs\_ refers to a variable that does not exist in the given process

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficent privielges to perform this operation

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by a `ProcessVariable` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setProcessVariable

        void setProcessVariable([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pProcessId\_, [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process") pv\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the value of the specified process variable for the specified process. Only a variable that already exists for the process can be set. New variables must first be added through `ProcessExecutionService#addProcessVariable(Long, ProcessVariable)` or `ProcessExecutionService#addProcessVariables(Long, ProcessVariable[])`. The process variable should be first retrieved via [`getProcessVariable(java.lang.Long, java.lang.String)`](#getProcessVariable\(java.lang.Long,java.lang.String\)), and its values set appropriately, before calling this method.

        Parameters:

        `pProcessId_` - the id of the process

        `pv_` - the variable to set

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no such process exists

        `[InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `name` of pv\_ refers to a variable that does not exist in the given process

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficent privielges to perform this operation

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `ProcessVariable` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addProcessVariable

        void addProcessVariable([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process") pv\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds a new variable to the specified process.

        The following fields must be populated in the `ProcessVariable` object: `key`, `type`, `multiple`, and `value`

        Parameters:

        `processId_` - the id of the process

        `pv_` - a new variable to add

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no such process exists

        `[InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the name of the process variable is `null`

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a variable with the same name already exists for the process

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficent privielges to perform this operation

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `ProcessVariable` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addProcessVariables

        void addProcessVariables([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")\[\] pvs\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds new variables to the specified process.

        The following fields must be populated in each `ProcessVariable` object: `key`, `type`, `multiple`, and `value`

        Parameters:

        `processId_` - the id of the process

        `pvs_` - the new variables to add

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no such process exists

        `[InvalidProcessVariableNameException](exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the name of one of the process variables is `null`

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a variable with the same name as one of the process variables that already exists for the process

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficent privileges to perform this operation

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by a `ProcessVariable` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSecurityForProcess

        [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") getSecurityForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the security configuration of a process.

        Parameters:

        `id_` - The id of the process.

        Returns:

        a [`Security`](../common/Security.html "class in com.appiancorp.suiteapi.common") object containing a [`ProcessRoleMap`](ProcessRoleMap.html "class in com.appiancorp.suiteapi.process") which encapsulates the security configuration of the process

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have changeRole privileges for the process

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setSecurityForProcess

        void setSecurityForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") s\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the security configuration of a process. This method does NOT set `canInherit` and `inheritable`.

        Parameters:

        `id_` - the id of the process

        `s_` - a [`Security`](../common/Security.html "class in com.appiancorp.suiteapi.common") object containing a [`ProcessRoleMap`](ProcessRoleMap.html "class in com.appiancorp.suiteapi.process") which encapsulates the security configuration of the process

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have changeRole privileges for the process

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `Security` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSecurityForNode

        [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") getSecurityForNode([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the default security configuration of tasks for a specified node.

        Parameters:

        `id_` - The id of the primary activity of the node.

        Returns:

        a [`Security`](../common/Security.html "class in com.appiancorp.suiteapi.common") object containing a [`ProcessRoleMap`](ProcessRoleMap.html "class in com.appiancorp.suiteapi.process") which encapsulates the security configuration of the process

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have changeRole privileges for the task

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setSecurityForNode

        void setSecurityForNode([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") s\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the default security configuration of tasks for a specified node. This method does NOT set `canInherit` and `inheritable`.

        Parameters:

        `id_` - the unique Id of the primary activity of the `ProcessNode` instance

        `s_` - a [`Security`](../common/Security.html "class in com.appiancorp.suiteapi.common") object containing a [`ProcessRoleMap`](ProcessRoleMap.html "class in com.appiancorp.suiteapi.process") which encapsulates the security configuration of the process

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have changeRole privileges for the task

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `Security` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setActorsInRolesForProcess

        void setActorsInRolesForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] userRoles\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] groupRoles\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds and/or modifies the roles of users and groups for a specified process. This method will only update existing permissions for the users and groups specified in the parameters. All other users and groups will not be changed. To overwrite roles for all users and groups use [`setSecurityForProcess(Long, Security)`](#setSecurityForProcess\(java.lang.Long,com.appiancorp.suiteapi.common.Security\))

        Parameters:

        `id_` - the id of the process

        `users_` - the list of usernames for users whose roles are to be added/modified. This parameter can be null, as long as `userRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown.

        `userRoles_` - a 2-dimentional array whose first dimension parallels `users_`. The array userRoles\_\[i\] represents the roles which users\_\[i\] will have. (If this array is null or zero-length, the user has no explicit permissions for the process). It is legal to have null within this array.

        `groups_` - the list of group ids for groups whose roles are to be added/modified. This parameter can be null, as long as `groupRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown.

        `groupRoles_` - a 2-dimentional array whose first dimension parallels `groups_` The array groupRoles\_\[i\] represents the roles which groups\_\[i\] will have. (If this array is null or zero-length, the group have no explicit permissions for the process). It is legal to have null within this array.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have changeRole privileges for the process

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setActorsInRolesForNode

        void setActorsInRolesForNode([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] userRoles\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] groupRoles\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds and/or modifies the default roles of users and groups for a node instance (activity). This method will only overwrite the roles for the users and groups specified in the parameters. All other roles will not be changed. To overwrite the roles for all users and groups use {@link #setSecurityForNode(Long, Security);

        Parameters:

        `id_` - the id of the primary activity of the node

        `users_` - the list of usernames for users whose roles are to be added/modified. This parameter can be null, as long as `userRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown.

        `userRoles_` - a 2-dimentional array whose first dimension parallels `users_`. The array userRoles\_\[i\] represents the roles which users\_\[i\] will have. (If this array is null or zero-length, the user has no explicit permissions for the tasks)

        `groups_` - the list of group ids for groups whose roles are to be added/modified. This parameter can be null, as long as `groupRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown.

        `groupRoles_` - a 2-dimentional array whose first dimension parallels `groups_` The array groupRoles\_\[i\] represents the roles which groups\_\[i\] will have. (If this array is null or zero-length, the group have no explicit permissions for the tasks)

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have changeRole privileges for the task

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setInheritanceForProcess

        void setInheritanceForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, boolean doesInherit\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets whether a specified process inherits security from the process model of which it is an instance.

        Parameters:

        `id_` - the id of the process

        `doesInherit_` - `true` if the process inherits, `false` otherwise.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have changeRole privileges for the process

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setInheritanceForNode

        void setInheritanceForNode([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, boolean doesInherit\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets whether a specified task inherits security from its process.

        Parameters:

        `id_` - the id of the task

        `doesInherit_` - `true` if the task inherits, `false` otherwise.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have changeRole privileges for the task

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForProcess

        [ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissionsForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the permissions that the user has on a specified process.

        Parameters:

        `id_` - The id of the process.

        Returns:

        The user's privileges.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForProcesses

        [ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security")\[\] getPermissionsForProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the permissions that the user has on specified processes.

        Parameters:

        `ids_` - The ids for the processes.

        Returns:

        The user's privileges.st

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if a specified process does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForNode

        [NodePermissions](security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissionsForNode([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the permissions that the user has by default on tasks of the specified node.

        Parameters:

        `activityId_` - The primary activity id of the node

        Returns:

        The user's default privileges.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForNodes

        [NodePermissions](security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security")\[\] getPermissionsForNodes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] activityIds\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the permissions that the user has by default on tasks of the specified nodes.

        Parameters:

        `activityIds_` - The ids of the primary activities of the nodes.

        Returns:

        The user's default privileges.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if a specified task does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForProcessDiagram

        [ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissionsForProcessDiagram([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets a `ProcessModelPermissions` object that says which In-Flight Modifications the user can or cannot perform to a given process.

        Parameters:

        `processId_` - The id of the process.

        Returns:

        The user's privileges.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAttachmentsForProcess

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAttachmentsForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, boolean recursive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the attachments for a specified process

        Parameters:

        `id_` - the id of the process

        `recursive_` - return recursive results if set to true

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants on [`Attachment`](Attachment.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing instances of `Attachment`. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process does not exist

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getAttachmentsForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")\[\] getAttachmentsForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets all the attachments for a given process

        Parameters:

        `processId_` - the id of the process

        Returns:

        the attachments

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAttachmentsAndNotesForTask

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAttachmentsAndNotesForTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_, boolean recursive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2. Retrieving Notes is deprecated, please use [`getAttachmentsForTask(java.lang.Long)`](#getAttachmentsForTask\(java.lang.Long\)) to retrieve attachments

        Returns the attachments and notes for a specified task

        Parameters:

        `taskId_` - the id of the task

        `recursive_` - when true, fetches the attachments and notes of the parent process as well. And those of the parent of that parent, etc., all the way up the parent process totem.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants on [`Attachment`](Attachment.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing instances of `Attachment`. The result codes can be: `ResultList.CODE_VALID` if the nth attachment/note is accessible, `ResultList.CODE_NO_PERMISSION` if the user does not have permission to access the nth attachment/note, or `ResultList.CODE_INVALID` if the specified attachment/note does not exist

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getAttachmentsForTask

        [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")\[\] getAttachmentsForTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets all the attachments for a given task and its related process

        Parameters:

        `taskId_` - the id of the task

        Returns:

        the attachments

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### removeProcessAttachments

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] removeProcessAttachments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] attachmentIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes specified attachments from the specified process.

        Parameters:

        `attachmentIds_` - the IDs of the attachments to remove

        `processId_` - the ID of the process

        Returns:

        an `Array` containing return codes for each attachment: [`ATTACHMENT_RETURN_SUCCESS`](#ATTACHMENT_RETURN_SUCCESS) if the attachment was added successfully, [`ATTACHMENT_RETURN_PERMISSIONS`](#ATTACHMENT_RETURN_PERMISSIONS) if the user does not have permission to remove the attachment, or [`ATTACHMENT_RETURN_INVALID`](#ATTACHMENT_RETURN_INVALID) if the attachment does not exist

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is cancelled

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeProcessAttachment

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") removeProcessAttachment([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") attachmentId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes the specified attachment from a process.

        Parameters:

        `attachmentId_` - the ID of the attachment to remove

        `processId_` - the ID of the process

        Returns:

        [`ATTACHMENT_RETURN_SUCCESS`](#ATTACHMENT_RETURN_SUCCESS) if the attachment was added successfully, [`ATTACHMENT_RETURN_PERMISSIONS`](#ATTACHMENT_RETURN_PERMISSIONS) if the user does not have permissions to remove the attachment, or [`ATTACHMENT_RETURN_INVALID`](#ATTACHMENT_RETURN_INVALID) if the attachment does not exist

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is cancelled

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeTaskAttachments

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] removeTaskAttachments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] attachmentIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes the specified attachments from a task

        Parameters:

        `attachmentIds_` - the ids of the attachments to remove

        `taskId_` - the id of the specified task

        Returns:

        an `Array` containing return codes for each attachment: [`ATTACHMENT_RETURN_SUCCESS`](#ATTACHMENT_RETURN_SUCCESS) if the attachment was added successfully, [`ATTACHMENT_RETURN_PERMISSIONS`](#ATTACHMENT_RETURN_PERMISSIONS) if the user does not have permissions to remove the attachment, or [`ATTACHMENT_RETURN_INVALID`](#ATTACHMENT_RETURN_INVALID) if the attachment does not exist

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is cancelled

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### removeTaskAttachment

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") removeTaskAttachment([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") attachmentId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes a specified attachment from a task

        Parameters:

        `attachmentId_` - the id of the `Attachment` to remove

        `taskId_` - the id of task

        Returns:

        [`ATTACHMENT_RETURN_SUCCESS`](#ATTACHMENT_RETURN_SUCCESS) if the attachment was added successfully, [`ATTACHMENT_RETURN_PERMISSIONS`](#ATTACHMENT_RETURN_PERMISSIONS) if the user does not have permissions to remove the attachment, or [`ATTACHMENT_RETURN_INVALID`](#ATTACHMENT_RETURN_INVALID) if the attachment does not exist

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is cancelled

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addAttachmentToProcess

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") addAttachmentToProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process") attachment\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ProcessAttachmentsLimitException](../common/exceptions/ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Add an attachment to a process.

        The following fields must be populated in the `Attachment` object: `attachedObject` (with type and either id or stringId), and `attachedUrl`

        Parameters:

        `processId_` - Id of process

        `attachment_` - the `Attachment` to add to the process

        Returns:

        the ID of the attachment that was added

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficent privileges to add attachments to this process - that is, if [`ProcessPermissions.isAddAttachment()`](security/ProcessPermissions.html#isAddAttachment\(\)) returns `false`

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is cancelled

        `[ProcessAttachmentsLimitException](../common/exceptions/ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no more attachments can be added to the process

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`getPermissionsForProcess(Long)`](#getPermissionsForProcess\(java.lang.Long\))

    -   ### addAttachmentToProcesses

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] addAttachmentToProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process") attachment\_)

        Adds a single attachment to a list of processes.

        The following fields must be populated in the `Attachment` object: `attachedObject` (with type and either id or stringId), `attachedUrl`, and `comment` (can be an empty string)

        Parameters:

        `processIds_` - IDs of processes

        `attachment_` - the attachment to add

        Returns:

        an Array of result codes for all specified processes:

        -   [`ATTACHMENT_RETURN_PROCESS_CANCELLED`](#ATTACHMENT_RETURN_PROCESS_CANCELLED) = Cancelled process
        -   [`ATTACHMENT_RETURN_TOO_MANY`](#ATTACHMENT_RETURN_TOO_MANY) = Too many attachments
        -   [`ATTACHMENT_RETURN_INVALID`](#ATTACHMENT_RETURN_INVALID) = Process does not exist
        -   [`ATTACHMENT_RETURN_PERMISSIONS`](#ATTACHMENT_RETURN_PERMISSIONS) = Insufficient permissions
        -   [`ATTACHMENT_RETURN_SUCCESS`](#ATTACHMENT_RETURN_SUCCESS) = Successful

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`getPermissionsForProcesses(Long[])`](#getPermissionsForProcesses\(java.lang.Long%5B%5D\))

    -   ### addAttachmentsToProcess

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] addAttachmentsToProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")\[\] attachments\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ProcessAttachmentsLimitException](../common/exceptions/ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Add attachments to a given process.

        The following fields must be populated in each `Attachment` object: `attachedObject` (with type and either id or stringId), `attachedUrl`, and `comment` (can be an empty string)

        Parameters:

        `processId_` - ID of the Process

        `attachments_` - attachments to add to process.

        Returns:

        the IDs of the attachments added to the process

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficent privileges to add attachments to this process - that is, if [`ProcessPermissions.isAddAttachment()`](security/ProcessPermissions.html#isAddAttachment\(\)) returns `false`

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist, or the `processId_` parameter is null.

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is cancelled

        `[ProcessAttachmentsLimitException](../common/exceptions/ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no more attachments can be added to the process

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the `attachments_` parameter is null or contains null values.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`getPermissionsForProcess(Long)`](#getPermissionsForProcess\(java.lang.Long\))

    -   ### addAttachmentToTask

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") addAttachmentToTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process") attachment\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ProcessAttachmentsLimitException](../common/exceptions/ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Add an attachment to a task

        Parameters:

        `taskId_` - Id of task

        `attachment_` - the attachment to add to the task

        Returns:

        the ID of the attachment added to the task

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficent privileges to add attachments to this task - that is, if [`NodePermissions.isAddAttachment()`](security/NodePermissions.html#isAddAttachment\(\)) returns `false`

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is cancelled

        `[ProcessAttachmentsLimitException](../common/exceptions/ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no more attachments can be added to the task

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node is unattended

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`getPermissionsForNode(Long)`](#getPermissionsForNode\(java.lang.Long\))

    -   ### addAttachmentToTasks

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] addAttachmentToTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds\_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process") attachment\_)

        Add an attachment to the given tasks

        Parameters:

        `taskIds_` - Ids of tasks

        `attachment_` - the attachment to add to the tasks

        Returns:

        an Array of result codes for all specified tasks:

        -   \-4 = Unattended task
        -   \-3 = Cancelled task
        -   \-2 = Too many attachments
        -   \-1 = Task does not exist
        -   0 = No permissions
        -   1 = Successful

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`getPermissionsForNodes(Long[])`](#getPermissionsForNodes\(java.lang.Long%5B%5D\))

    -   ### addAttachmentsToTask

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] addAttachmentsToTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")\[\] attachments\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ProcessAttachmentsLimitException](../common/exceptions/ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds attachments to a given task.

        Parameters:

        `taskId_` - the ID of the Task.

        `attachments_` - the attachments to be added to task.

        Returns:

        the IDs of the attachments that were added to the task

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficent privileges to add attachments to this task - that is, if [`NodePermissions.isAddAttachment()`](security/NodePermissions.html#isAddAttachment\(\)) returns `false`

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is cancelled

        `[ProcessAttachmentsLimitException](../common/exceptions/ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no more attachments can be added to the task

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node is unattended

        See Also:

        -   [`getPermissionsForNode(Long)`](#getPermissionsForNode\(java.lang.Long\))

    -   ### getDeadlineForProcess

        [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDeadlineForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieve the deadline of a given process.

        Parameters:

        `processId_` - The id of the process.

        Returns:

        The deadline of the process, or `null` if no deadline is set.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `processId_` is `null`

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

    -   ### setDeadlineForProcess

        void setDeadlineForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") deadline\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Set the deadline for a given process.

        Parameters:

        `processId_` - The id of a process.

        `deadline_` - The deadline to set for the process, or `null` to disable the deadline for the process.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `processId_` is `null`

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

    -   ### getDeadlineForTask

        [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDeadlineForTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieve the deadline for a given task.

        Parameters:

        `taskId_` - The id of the task.

        Returns:

        The deadline of the task, or `null` if no deadline is set.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `taskId_` is `null`

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

    -   ### setDeadlineForTask

        void setDeadlineForTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") deadline\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Set the deadline for a given task.

        Parameters:

        `taskId_` - The id of a task.

        `deadline_` - The deadline to set for the task, or `null` to disable the deadline for the task.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `taskId_` is `null`

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action does not exist

    -   ### getPriorityOfTask

        [Priority](Priority.html "class in com.appiancorp.suiteapi.process") getPriorityOfTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get the priority of the specified task.

        Parameters:

        `taskId_` - The id of the task for which to get the priority.

        Returns:

        The priority of the specified task.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPriorityOfTasks

        [Priority](Priority.html "class in com.appiancorp.suiteapi.process")\[\] getPriorityOfTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get the priorities of the specified tasks.

        Parameters:

        `taskIds_` - The ids of the tasks for which to get the priorities.

        Returns:

        An array of priorities corresponding to the given tasks.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If any of the tasks do not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPriorityOfProcess

        [Priority](Priority.html "class in com.appiancorp.suiteapi.process") getPriorityOfProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the priority of a specified Process.

        Parameters:

        `processId_` - The id of the process for which to retrieve the priority.

        Returns:

        The priority of the specified process.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If the process does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have the permissions to retrieve the priority of the process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPriorityOfProcesses

        [Priority](Priority.html "class in com.appiancorp.suiteapi.process")\[\] getPriorityOfProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the priority for a list of processes.

        Parameters:

        `processIds_` - The ids of the processes for which to retrieve the priorities.

        Returns:

        An array of priorities corresponding to the given process ids.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If any of the processes do not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have the permissions to retrieve the priority of any of the processes.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setPriorityOfTask

        void setPriorityOfTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the priority of a specified task.

        Parameters:

        `taskId_` - the task for which to set the priority

        `priorityId_` - the id of the `priority` to which to set the task; the id is one of the ids from web.war/WEB-INF/conf/process/priority-config-process.xml

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the priority does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR COMPLETED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setPriorityOfTasks

        void setPriorityOfTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the priorities of specified tasks.

        Parameters:

        `taskIds_` - the tasks for which to set the priorities

        `priorityId_` - the id of the priority to which to set the tasks; the id is one of the ids from web.war/WEB-INF/conf/process/priority-config-process.xml

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the priority does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR PAUSED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setPriorityOfProcess

        void setPriorityOfProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId\_, boolean propagatePriorityChangeToSubProcesses\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the priority of a specified process

        Parameters:

        `processId_` - the id of the process

        `priorityId_` - the id of the priority to which to set the process; the id is one of the ids from web.war/WEB-INF/conf/process/priority-config-process.xml

        `propagatePriorityChangeToSubProcesses_` - `true` if the priority will propagate to sub processes within this process, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the priority does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR COMPLETED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setPriorityOfProcesses

        void setPriorityOfProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId\_, boolean propagatePriorityChangeToSubProcesses\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the priority [`Priority`](Priority.html "class in com.appiancorp.suiteapi.process") of the specified processes [`ProcessDetails`](ProcessDetails.html "class in com.appiancorp.suiteapi.process").

        Parameters:

        `processIds_` - the ids of the processes for which to set the `priority`

        `priorityId_` - the `priority` to set for the processes; the id is one of the ids from web.war/WEB-INF/conf/process/priority-config-process.xml

        `propagatePriorityChangeToSubProcesses_` - `true` if the priority will propagate to sub processes within the processes, otherwise `false`.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the priority does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR COMPLETED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### raisePriorityOfTask

        void raisePriorityOfTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Raises the priority of the specified task by one level.

        Parameters:

        `taskId_` - the id of the task for which to raise the priority

        Throws:

        `InvalidTaskExpcetion` - if the task does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR COMPLETED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")`

    -   ### raisePriorityOfTasks

        void raisePriorityOfTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Raises the priority of the specified tasks by one level.

        Parameters:

        `taskIds_` - the ids of the tasks of which to raise the priority

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR COMPLETED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### raisePriorityOfProcess

        void raisePriorityOfProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, boolean propagatePriorityChangeToLinkProcesses\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Raises the priority of a specified process by one level.

        Parameters:

        `processId_` - the ID of a process of which to raise the priority

        `propagatePriorityChangeToLinkProcesses_` - `true` if the priority will propagate to linked processes within the processes, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR COMPLETED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### raisePriorityOfProcesses

        void raisePriorityOfProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_, boolean propagatePriorityChangeToLinkProcesses\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Raises the priority of the specified processes by one level.

        Parameters:

        `processIds_` - the ids of the processes of which to raise the priority

        `propagatePriorityChangeToLinkProcesses_` - `true` if the priority will propagate to linked processes within the processes, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR COMPLETED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### lowerPriorityOfTask

        void lowerPriorityOfTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Lowers the priority of a task by one level. If the priority of the task is at the lowest level, then no action is performed.

        Parameters:

        `taskId_` - the ID of the task of which to lower the priority

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR COMPLETED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### lowerPriorityOfTasks

        void lowerPriorityOfTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Lowers the priority of specified tasks by one level. If the priority of any task is at the lowest level, then no action is performed on that task

        Parameters:

        `taskIds_` - the ID's of the tasks of which to lower the priority

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR COMPLETED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### lowerPriorityOfProcess

        void lowerPriorityOfProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, boolean propagatePriorityChangeToLinkProcesses\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Lowers the priority of a process by one level. If the priority of the process is at the lowest level, then no action is performed on that process.

        Parameters:

        `processId_` - the ID of the process of which to lower the priority

        `propagatePriorityChangeToLinkProcesses_` - `true` if the priority will propagate to linked processes within the process, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the specified process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR COMPLETED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### lowerPriorityOfProcesses

        void lowerPriorityOfProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_, boolean propagatePriorityChangeToLinkProcesses\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Lowers the priority of the specified processes by one level. If the priority of the any process is at the lowest level, then no action is performed on that process.

        Parameters:

        `processIds_` - the ID's of the processes of which to lower the priority

        `propagatePriorityChangeToLinkProcesses_` - `true` if the priority will propagate to linked processes within the processes, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is already CANCELLED OR COMPLETED

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### containsLinkProcessesInheritingPriority

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") boolean containsLinkProcessesInheritingPriority([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        Use [`containsSubProcessesInheritingPriority(Long)`](#containsSubProcessesInheritingPriority\(java.lang.Long\)) instead.

        Checks if the process specified contains linked processes inheriting its priority.

        Parameters:

        `processId_` - id of process for which to check linked processes

        Returns:

        `true` if the given process contains at least one linked process inheriting its priority, `false` otherwise

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### containsSubProcessesInheritingPriority

        boolean containsSubProcessesInheritingPriority([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Checks if the specified `Process` contains sub-processes that inherit their priority instead of defining their own priority levels.

        Parameters:

        `processId_` - The ID of the parent `Process`.

        Returns:

        `true` if the given `Process` contains at least one sub-process that inherits its priority and `false` otherwise.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If the given `Process` does not exist.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - If an error occurs in the backend.

    -   ### createNoteMetadata

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") createNoteMetadata([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Create note metadata that is not attached to a process or task. The minimum required fields to create a note metadata are: `type`

        Parameters:

        `nm_` - the note metadata to be created

        Returns:

        the note metadata with `location` field populated, so that the note can be written to disk using [`NotesContentService.createNoteContent(NoteMetadata, String)`](NotesContentService.html#createNoteContent\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.String\))

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `NoteMetadata` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### createNoteMetadatas

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")\[\] createNoteMetadatas([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")\[\] nms\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Bulk create note metadata. This method performs the same action as [`createNoteMetadata(NoteMetadata)`](#createNoteMetadata\(com.appiancorp.suiteapi.process.NoteMetadata\)), except in bulk

        Parameters:

        `nms_` - the note metadatas to be created. If any of the `NoteMetadata` objects is null the method will throw a NullPointerException.

        Returns:

        the note metadata with `location` field populated, so that the notes can be created using [`NotesContentService.createNoteContent(NoteMetadata, String)`](NotesContentService.html#createNoteContent\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.String\))

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by a `NoteMetadata` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getNotePath

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getNotePath([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId\_) throws [InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        since 23.2

        Gets the location for storage of the content of an unattached note. Unattached notes are not attached to a particular process or task.

        Parameters:

        `noteId_` - Note id of the note path to get.

        Returns:

        Returns the path of the note whose id was passed.

        Throws:

        `[InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the note is invalid or does not exist.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getNotePaths

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getNotePaths([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] noteIds\_) throws [InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        since 23.2

        Gets the locations for storage of the content of unattached notes. Unattached notes are not attached to a particular process or task.

        Parameters:

        `noteIds_` - Note ids of the note paths to get.

        Returns:

        Returns the paths of the notes whose ids were passed.

        Throws:

        `[InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If any of the notes are invalid or do not exist.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getCurrentNotePaths

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getCurrentNotePaths()

        Deprecated.

        since 23.2

        Retrieve the paths where notes are stored on Execution engine 0.

        Returns:

        The paths where notes are stored.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### setCurrentNotePaths

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setCurrentNotePaths([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] notePaths) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Deprecated.

        since 23.2

        Sets the paths where notes are stored on Execution engine 0.

        Parameters:

        `notePaths` -

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to change the paths. Normally this only includes system admins.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the length of the array passed does not match the number of existing notes

    -   ### getExceptionNoteMetadataForTask

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") getExceptionNoteMetadataForTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        since 23.2

        Gets the last exception note (that is, the note attached to the exception) for the specified task; `null` if no exceptions have been raised on the task

        Parameters:

        `taskId_` - the id of the task for which to get the note

        Returns:

        NoteMetadata the note metadata for the requested note.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no task with the passed id exists.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getExceptionNoteMetadatasForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getExceptionNoteMetadatasForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Gets a page out of the note metadatas for process exceptions for a specified process. The results array will be empty if no exceptions have been raised on the process.

        Parameters:

        `processId_` - the ID of the process

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants on [`NoteMetadata`](NoteMetadata.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        Returns a `ResultPage` containing instances of `NoteMetadata`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process with the passed id exists.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permissions to view the note metadatas for the process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getAllExceptionNoteMetadatasForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllExceptionNoteMetadatasForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Gets a page out of the note metadatas for process and task exceptions for a specified process and all its tasks. The results array will be empty if no exceptions have been raised on the process or any of its tasks.

        Parameters:

        `processId_` - the ID of the process

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants on [`NoteMetadata`](NoteMetadata.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        Returns a `ResultPage` containing instances of `NoteMetadata`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process with the passed id exists.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permissions to view the note metadatas for the process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### createNoteMetadataForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") createNoteMetadataForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [NotesLimitException](../common/exceptions/NotesLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Creates a new Note for the specified Process. The minimum required fields to create a note metadata are: `type`

        Parameters:

        `processId_` - ID of the Process

        `nm_` - the note metadata to be created

        Returns:

        the note metadata with `location` field populated, so that the note can be written to disk using [`NotesContentService.createNoteContent(NoteMetadata, String)`](NotesContentService.html#createNoteContent\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.String\))

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is cancelled or paused by exception

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if [`ProcessPermissions.isAddAttachment()`](security/ProcessPermissions.html#isAddAttachment\(\)) is `false` for current user

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `NoteMetadata` does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `nm_` is `null`

        `[NotesLimitException](../common/exceptions/NotesLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if too many notes have already been added to the process

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### createNoteMetadataForProcesses

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") createNoteMetadataForProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        since 23.2

        Creates a new Note for the specified Processes. The minimum required fields to create a note metadata are: `type`

        Parameters:

        `processIds_` - Ids of the Processes

        `nm_` - the note metadata to be created

        Returns:

        `ResultList` of `String` objects, representing the location of the notes. Each of the result codes returned will be one of the `NOTE_CREATION_PROCESS_XXX` constants

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `NoteMetadata` does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `nm_` is `null` or `processIds_` is `null` or both `processIds_` and `nm_`are `null`.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### createNoteMetadatasForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") createNoteMetadatasForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")\[\] nms\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Creates multiple notes for a given Process. The minimum required fields to create a note metadata are: `type` Creating multiple notes for a single process will throw exceptions for process conditions - for example if the process does not exist or if the process is in an invalid state. Otherwise, any errors such as insufficient permissions to create a certain note will be returned in the `ResultList`'s result codes.

        Parameters:

        `processId_` - Id of the Process

        `nms_` - the note metadatas to be created

        Returns:

        `ResultList` of `String` objects, representing the location of the notes, so that the notes can be written to disk using [`NotesContentService.createNoteContent(NoteMetadata, String)`](NotesContentService.html#createNoteContent\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.String\)). Each of the returned result codes in the `ResultList` will be one of [`NOTE_CREATION_PROCESS_NOTE_LIMIT_EXCEEDED`](#NOTE_CREATION_PROCESS_NOTE_LIMIT_EXCEEDED), [`NOTE_CREATION_PROCESS_INSUFFICIENT_PRIVILEGES`](#NOTE_CREATION_PROCESS_INSUFFICIENT_PRIVILEGES), [`NOTE_CREATION_PROCESS_SUCCESS`](#NOTE_CREATION_PROCESS_SUCCESS), or {@link #NOTE\_CREATION\_PROCESS\_INVALID\_BEAN)}

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is cancelled

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if [`ProcessPermissions.isAddAttachment()`](security/ProcessPermissions.html#isAddAttachment\(\)) is `false` for current user

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by a `NoteMetadata` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getNoteMetadatasForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getNoteMetadatasForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, boolean recursive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Returns the metadata for the notes for a specified process

        Parameters:

        `id_` - the id of the process

        `recursive_` - return recursive results if set to true

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants on [`NoteMetadata`](NoteMetadata.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing instances of `NoteMetadata`. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process does not exist

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getNoteMetadatasForProcesses

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getNoteMetadatasForProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_)

        Deprecated.

        since 23.2

        Returns the metadata for the notes for specified processes.

        Parameters:

        `ids_` - the process ids

        Returns:

        a `ResultList` containing instances of `NoteMetadata`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getNoteMetadatasForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getNoteMetadatasForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns the metadata for the notes for a specified process

        Parameters:

        `id_` - the id of the process

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants on [`NoteMetadata`](NoteMetadata.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing instances of `NoteMetadata`. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process does not exist

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### createNoteMetadataForTask

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") createNoteMetadataForTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [NotesLimitException](../common/exceptions/NotesLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Creates a new Note for a given Task. The minimum required fields to create a note metadata are: `type`

        Parameters:

        `taskId_` - ID of the task

        `nm_` - the note metadata to be created

        Returns:

        he note metadata with `location` field populated, so that the note can be written to disk using [`NotesContentService.createNoteContent(NoteMetadata, String)`](NotesContentService.html#createNoteContent\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.String\))

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is in states [`TaskSummary.TASK_STATUS_CANCELLED`](TaskSummary.html#TASK_STATUS_CANCELLED), [`TaskSummary.TASK_STATUS_ABORTED`](TaskSummary.html#TASK_STATUS_ABORTED), [`TaskSummary.TASK_STATUS_ERROR`](TaskSummary.html#TASK_STATUS_ERROR), or if the process is in state [`ProcessSummary.STATE_CANCELLED`](ProcessSummary.html#STATE_CANCELLED)

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if [`NodePermissions.isAddAttachment()`](security/NodePermissions.html#isAddAttachment\(\)) is `false` for current user

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the activity is unattended

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `NoteMetadata` does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `nm_` is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

        `[NotesLimitException](../common/exceptions/NotesLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### createNoteMetadataForTasks

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") createNoteMetadataForTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds\_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        since 23.2

        Creates a new Note for the given Tasks. The minimum required fields to create a note metadata are: `type`

        Parameters:

        `taskIds_` - IDs of the tasks

        `nm_` - the note metadata to be created

        Returns:

        `ResultList` containing one `String`, representing the location where the `NoteMetadata` is stored so that the notes can be written to disk using [`NotesContentService.createNoteContent(NoteMetadata, String)`](NotesContentService.html#createNoteContent\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.String\)). The result code returned in the `ResultList` will be one of the `NOTE_CREATION_TASK_XXX` constants

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by a `NoteMetadata` does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `nm_` is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### createNoteMetadatasForTask

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") createNoteMetadatasForTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_, [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")\[\] nms\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Creates multiple notes for a given task. The minimum required fields to create a note metadata are: `type` Creating multiple notes for a single task will throw exceptions for task conditions - for example if the task does not exist or if the task is in an invalid state. Otherwise, any errors such as insufficient permissions to create a certain note will be returned in the `ResultList`'s result codes.

        Parameters:

        `taskId_` - ID of Task

        `nms_` - the note metadatas to be created

        Returns:

        `ResultList` of `NoteMetadata` objects, with the location field populated so that the notes can be written to disk using [`NotesContentService.createNoteContent(NoteMetadata, String)`](NotesContentService.html#createNoteContent\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.String\)). Each of the returned result codes in the `ResultList` will be one of [`NOTE_CREATION_TASK_NOTE_LIMIT_EXCEEDED`](#NOTE_CREATION_TASK_NOTE_LIMIT_EXCEEDED), [`NOTE_CREATION_TASK_INSUFFICIENT_PRIVILEGES`](#NOTE_CREATION_TASK_INSUFFICIENT_PRIVILEGES), [`NOTE_CREATION_TASK_SUCCESS`](#NOTE_CREATION_TASK_SUCCESS), or [`NOTE_CREATION_TASK_INVALID_BEAN`](#NOTE_CREATION_TASK_INVALID_BEAN)

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is in states [`TaskSummary.TASK_STATUS_CANCELLED`](TaskSummary.html#TASK_STATUS_CANCELLED), [`TaskSummary.TASK_STATUS_ABORTED`](TaskSummary.html#TASK_STATUS_ABORTED), [`TaskSummary.TASK_STATUS_ERROR`](TaskSummary.html#TASK_STATUS_ERROR), or if the process is in state [`ProcessSummary.STATE_CANCELLED`](ProcessSummary.html#STATE_CANCELLED)

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the activity is unattended

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by a `NoteMetadata` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getNoteMetadatasForTask

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getNoteMetadatasForTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, boolean includeProcess\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Gets the metadata for the notes of a specified task.

        Parameters:

        `id_` - the task id

        `includeProcess_` - `true` if the note metadata of the parent process should be returned as well; `false` otherwise

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants on [`NoteMetadata`](NoteMetadata.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing instances of `NoteMetadata`

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getNoteMetadatasForTasks

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getNoteMetadatasForTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, boolean includeProcess\_)

        Deprecated.

        since 23.2

        Gets the notes for the specified tasks

        Parameters:

        `ids_` - the task ids

        `includeProcess_` - if `true`, includes Process Notes, otherwise does not.

        Returns:

        ResultList containing `String` locations for storing the note contents using [`NotesContentService`](NotesContentService.html "interface in com.appiancorp.suiteapi.process"). The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified task does not exist

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### deleteNoteMetadataForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") deleteNoteMetadataForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        since 23.2

        Deletes the specified Note for the given process.

        Parameters:

        `noteId_` - ID of note to delete

        `processId_` - ID of the process from which to delete the note

        Returns:

        location of the note content file on disk.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is cancelled

        `[InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the note specified does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `noteId_` is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteNoteMetadataForTask

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") deleteNoteMetadataForTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        since 23.2

        Deletes the specified Note from a given task.

        Parameters:

        `noteId_` - ID of Note to delete

        `taskId_` - ID of the task from which the note is to be deleted

        Returns:

        location of the note content file on disk.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is cancelled

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the activity is unattended

        `[InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the note specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteNoteMetadatasForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") deleteNoteMetadatasForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] noteIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Deletes the specified notes from the given process

        Parameters:

        `noteIds_` - IDs of notes to delete

        `processId_` - ID of the process from which to delete the notes

        Returns:

        `ResultList` of `String` objects, representing the location of the deleted notes. Each of the returned result codes in the `ResultList` will be one of [`NOTE_DELETION_INVALID`](#NOTE_DELETION_INVALID), [`NOTE_DELETION_INSUFFICIENT_PRIVILEGES`](#NOTE_DELETION_INSUFFICIENT_PRIVILEGES) or [`NOTE_DELETION_SUCCESS`](#NOTE_DELETION_SUCCESS)

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is cancelled

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `noteIds_` is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteNoteMetadatasForTask

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") deleteNoteMetadatasForTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] noteIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Deletes the specified notes for the given task

        Parameters:

        `noteIds_` - IDs of notes to delete

        `taskId_` - ID of the task from which to delete the notes

        Returns:

        `ResultList` of `String` objects, representing the location of the deleted notes. Each of the returned result codes in the `ResultList` will be one of [`NOTE_DELETION_INVALID`](#NOTE_DELETION_INVALID), [`NOTE_DELETION_INSUFFICIENT_PRIVILEGES`](#NOTE_DELETION_INSUFFICIENT_PRIVILEGES) or [`NOTE_DELETION_SUCCESS`](#NOTE_DELETION_SUCCESS)

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is cancelled

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the activity is unattended

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateNoteMetadataForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") updateNoteMetadataForProcess([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Updates the specified Note for given process

        The following field must be populated in the `NoteMetadata` object: `id`

        Parameters:

        `nm_` - updated NoteMetadata Object

        Returns:

        `NoteMetadata` with updated info

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is cancelled

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to update the note

        `[InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the note specified does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `NoteMetadata` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`Note`](Note.html "class in com.appiancorp.suiteapi.process")

    -   ### updateNoteMetadataForTask

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") updateNoteMetadataForTask([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Updates the specified Note for given task

        The following field must be populated in the `NoteMetadata` object: `id`

        Parameters:

        `nm_` - updated `NoteMetadata` Object

        Returns:

        the updated `NoteMetadata`

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is in states [`TaskSummary.TASK_STATUS_CANCELLED`](TaskSummary.html#TASK_STATUS_CANCELLED), [`TaskSummary.TASK_STATUS_ABORTED`](TaskSummary.html#TASK_STATUS_ABORTED), [`TaskSummary.TASK_STATUS_ERROR`](TaskSummary.html#TASK_STATUS_ERROR), or if the process is in state [`ProcessSummary.STATE_CANCELLED`](ProcessSummary.html#STATE_CANCELLED)

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the activity is unattended

        `[InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the note specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to update the note

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `NoteMetadata` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`Note`](Note.html "class in com.appiancorp.suiteapi.process")

    -   ### updateNoteMetadatasForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") updateNoteMetadatasForProcess([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")\[\] nms\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Updates all the specified notes for the given process. Updating multiple notes for a single process will throw exceptions for process conditions - for example if the process does not exist or if the process is in an invalid state. Otherwise, any errors such as insufficient permissions to update a certain note will be returned in the `ResultList`'s result codes: [`NOTES_RETURN_SUCCESS`](#NOTES_RETURN_SUCCESS) if the note was added successfully, [`NOTES_RETURN_PERMISSIONS`](#NOTES_RETURN_PERMISSIONS) if the user does not have permission to remove the note, or [`NOTES_RETURN_INVALID`](#NOTES_RETURN_INVALID) if the note does not exist

        The following field must be populated in each `NoteMetadata` object: `id`

        Parameters:

        `nms_` - Array of updated `NoteMetadata` Objects.

        Returns:

        ResultList containing updated `NoteMetadatas` and result codes, which compared with the constants in `Note` tells the user if the `Note` was successfully updated or not

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is cancelled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by a `NoteMetadata` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`Note`](Note.html "class in com.appiancorp.suiteapi.process")

    -   ### updateNoteMetadatasForTask

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") updateNoteMetadatasForTask([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")\[\] nms\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Updates all the specified notes for a given task. Creating multiple notes for a single task will throw exceptions for task conditions for example if the task does not exist or if the task is in an invalid state. Otherwise, any errors such as insufficient permissions to create a certain note will be returned in the `ResultList`'s result codes.

        The following field must be populated in each `NoteMetadata` object: `id`

        Parameters:

        `nms_` - Array of updated `NoteMetadata` Objects.

        Returns:

        ResultList containing updated `NoteMetadatas` and result codes: [`NOTES_RETURN_SUCCESS`](#NOTES_RETURN_SUCCESS) if the note was added successfully, [`NOTES_RETURN_PERMISSIONS`](#NOTES_RETURN_PERMISSIONS) if the user does not have permission to remove the note, or [`NOTES_RETURN_INVALID`](#NOTES_RETURN_INVALID) if the note does not exist

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is in states [`TaskSummary.TASK_STATUS_CANCELLED`](TaskSummary.html#TASK_STATUS_CANCELLED), [`TaskSummary.TASK_STATUS_ABORTED`](TaskSummary.html#TASK_STATUS_ABORTED), [`TaskSummary.TASK_STATUS_ERROR`](TaskSummary.html#TASK_STATUS_ERROR), or if the process is in state [`ProcessSummary.STATE_CANCELLED`](ProcessSummary.html#STATE_CANCELLED)

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the activity is unattended

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by a `NoteMetadata` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        See Also:

        -   [`Note`](Note.html "class in com.appiancorp.suiteapi.process")

    -   ### getNoteMetadataForTask

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") getNoteMetadataForTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        since 23.2

        Returns a specified note for given task

        Parameters:

        `noteId_` - Note Id

        `taskId_` - Task Id

        Returns:

        NoteMetadata for requested note.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the note specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getNoteMetadataForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") getNoteMetadataForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Returns a specified note for given process

        Parameters:

        `noteId_` - Note Id

        `processId_` - Process Id

        Returns:

        NoteMetadata for requested note.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to perform this action

        `[InvalidNoteException](exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the note specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getTasksForProcess

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTasksForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, boolean recursive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the summaries of the tasks in the process. Even summaries for tasks that have not yet been assigned will be returned, though the metadata for such tasks will be `null`.

        Parameters:

        `processId_` - The id of the process.

        `recursive_` - return recursive results if set to true

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `ResultPage` containing `TaskSummary` objects representing tasks of the process. If a task is completed then its assignees field will be an empty array.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If the process does not exist or has been deleted.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permissions view the task summaries for the process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### getTasksForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTasksForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the summaries of the tasks in the process. Even summaries for tasks that have not yet been assigned will be returned, though the metadata for such tasks will be `null`.

        Parameters:

        `processId_` - The id of the process.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `ResultPage` containing `TaskSummary` objects representing tasks of the process. If a task is completed then its assignees field will be an empty array.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If the process does not exist or has been deleted.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permissions view the task summaries for the process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### pauseProcess

        void pauseProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Pauses the process, and all of its nodes. However, the nodes' states remain as they were before. This allows the user to START (Activate), RESUME, PAUSE, or CANCEL specific nodes, the effects of which will play out when the Process is RESUMED.

        Parameters:

        `processId_` - ID of the process

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist or has been deleted

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is cancelled or paused

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to pause the process - if [`ProcessPermissions.isStopAndPause()`](security/ProcessPermissions.html#isStopAndPause\(\)) returns `false`

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is locked (see [`lockProcessModelForProcess(Long,boolean)`](#lockProcessModelForProcess\(java.lang.Long,boolean\)))

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### pauseProcesses

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] pauseProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_)

        Pauses the processes, and all of their nodes. However, the nodes' states remain as they were before. This allows the user to START (Activate), RESUME, PAUSE, or CANCEL specific nodes, the effects of which will play out when the Processes are RESUMED. The result codes can be: `RESULT_CODE_SUCCESS` if the action succeeded, `RESULT_CODE_INVALID_PROCESS` if the process does not exist, `RESULT_CODE_INSUFFICIENT_PRIVILEGES` if the user does not have permission, `RESULT_CODE_INVALID_STATE` if the process is not active, or `RESULT_CODE_LOCK_EXCEPTION` if the specified process is locked

        Parameters:

        `processIds_` - IDs of the processes

        Returns:

        array of result codes. No exceptions will be thrown, and the developer will compare the returned codes to the constants to determine what happened.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### resumeProcess

        void resumeProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Resumes the process. Note: One can only resume a PAUSED process. CANCELLED processes cannot be resumed - however, new instances of processes can be started.

        Parameters:

        `processId_` - id of the process

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist or has been deleted

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is not paused

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to resume the process

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is locked (see [`lockProcessModelForProcess(Long,boolean)`](#lockProcessModelForProcess\(java.lang.Long,boolean\)))

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### resumeProcesses

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] resumeProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_)

        Tries to resume the processes, and returns an array of result codes on whether the operation was successful or an error had occurred. The result codes can be: `RESULT_CODE_SUCCESS` if the action succeeded, `RESULT_CODE_INVALID_PROCESS` if the process does not exist, `RESULT_CODE_INSUFFICIENT_PRIVILEGES` if the user does not have permission, `RESULT_CODE_INVALID_STATE` if the process is not active, or `RESULT_CODE_LOCK_EXCEPTION` if the specified process is locked

        Parameters:

        `processIds_` - ids of the processes

        Returns:

        array of result codes. No exceptions will be thrown, and the developer will compare the returned codes to the constants to determine what happened.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level errors occur

    -   ### cancelProcesses

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] cancelProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_, boolean cancelLinkedProcesses\_)

        Cancel a list of processes. This methods will try to cancel the processes, and return an array of result codes on whether the operation was successful or an error has occurred.

        Parameters:

        `processIds_` - the Ids of the processes

        `cancelLinkedProcesses_` - specifies whether or not to cancel all linked processes when cancelling the processes

        Returns:

        array of result codes. Each of these is one of the `PROCESS_CANCELLATION_XXX` constants

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`getPermissionsForProcess(Long)`](#getPermissionsForProcess\(java.lang.Long\))

    -   ### startQuickTask

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") startQuickTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidNodeTypeLogicException](../common/exceptions/InvalidNodeTypeLogicException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNodeTypeRecurringException](../common/exceptions/InvalidNodeTypeRecurringException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNodeMultiplicityException](../common/exceptions/InvalidNodeMultiplicityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Starts a new task from the node If the process to which the node belongs is cancelled or completed, then the process is reactivated. For a paused process, a new task is started but will not be kicked off until the process is resumed. N.B. Logic nodes cannot be started.

        Parameters:

        `processId_` - The id of the process.

        `nodeId_` - The id of the task's template node, which can be obtained from the `templateId` property of a `TaskSummary` object.

        Returns:

        `Long` the task id, if the task started correctly, null if the node has spawning or recurrence configured.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - the node used does not exist or if the node exists (it has a valid template) but does not belong to the given process

        `[InvalidNodeTypeLogicException](../common/exceptions/InvalidNodeTypeLogicException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node is a logic node.

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is paused by exception

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if [`NodePermissions.isModifyInFlight()`](security/NodePermissions.html#isModifyInFlight\(\)) is `false` for the current user

        `[InvalidNodeTypeRecurringException](../common/exceptions/InvalidNodeTypeRecurringException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node is set to recur

        `[InvalidNodeMultiplicityException](../common/exceptions/InvalidNodeMultiplicityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node cannot be started because its activity chaining settings prohibit multiple instances

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### startTask

        boolean startTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidNodeTypeLogicException](../common/exceptions/InvalidNodeTypeLogicException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNodeTypeRecurringException](../common/exceptions/InvalidNodeTypeRecurringException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNodeMultiplicityException](../common/exceptions/InvalidNodeMultiplicityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Starts a new task from the node If the process to which the node belongs is cancelled or completed, then the process is reactivated. For a paused process, a new task is started but will not be kicked off until the process is resumed. N.B. Logic nodes cannot be started.

        Parameters:

        `processId_` - The id of the process.

        `nodeId_` - The id of the task's template node, which can be obtained from the `templateId` property of a `TaskSummary` object.

        Returns:

        `true` if the task started correctly, otherwise `false`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - the node used does not exist or if the node exists (it has a valid template) but does not belong to the given process

        `[InvalidNodeTypeLogicException](../common/exceptions/InvalidNodeTypeLogicException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node is a logic node.

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is paused by exception

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if [`NodePermissions.isModifyInFlight()`](security/NodePermissions.html#isModifyInFlight\(\)) is `false` for the current user

        `[InvalidNodeTypeRecurringException](../common/exceptions/InvalidNodeTypeRecurringException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node is set to recur

        `[InvalidNodeMultiplicityException](../common/exceptions/InvalidNodeMultiplicityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node cannot be started because its activity chaining settings prohibit multiple instances

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### startTasks

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] startTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] nodeIds\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Tries to start the tasks, and returns an array of result codes on whether the operation was successful or an error had occurred. Will cancel and resolve existing instances of the node that were paused by exception. N.B. Logic nodes cannot be started. The result codes can be: `RESULT_CODE_SUCCESS` if the action succeeded, `RESULT_CODE_INVALID_TASK` if the node does not exist, `RESULT_CODE_INSUFFICIENT_PRIVILEGES` if the user does not have permission, or `RESULT_CODE_INVALID_STATE` if it is a logic node `RESULT_CODE_NODE_MULTIPLICITY` if the node cannot be started `RESULT_CODE_INVALID_NODE` if the node is invalid because its activity chaining settings prohibit multiple instances

        Parameters:

        `processId_` - The id of the process.

        `nodeIds_` - The ids of the tasks' template nodes, each of which can be obtained from the `templateId` property of the corresponding `TaskSummary` object.

        Returns:

        array of result codes. No exceptions will be thrown, and the developer will compare the returned codes to the constants to determine what happened.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process exists for the given ID

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### resumeTask

        void resumeTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Resumes the task

        Parameters:

        `activityId_` - the ID of the task

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist or has been deleted

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is not PAUSED

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permissions to resume the task

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`NodePermissions.isModifyInFlight()`](security/NodePermissions.html#isModifyInFlight\(\))

    -   ### resumeTasks

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] resumeTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] activityIds\_)

        Tries to resume the tasks, and returns an array of result codes on whether the operation was successful or an error had occurred. The result codes can be: `RESULT_CODE_SUCCESS` if the action succeeded, `RESULT_CODE_INVALID_TASK` if the node does not exist, `RESULT_CODE_INSUFFICIENT_PRIVILEGES` if the user does not have permission, or `RESULT_CODE_INVALID_STATE` if its state is not paused or paused-by-exception

        Parameters:

        `activityIds_` - the IDs of the tasks

        Returns:

        array of result codes. No exceptions will be thrown, and the developer will compare the returned codes to the constants to determine what happened.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### pauseTask

        void pauseTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Pauses the task

        Parameters:

        `activityId_` - the ID of the task

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist or has been deleted

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task has been CANCELLED

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permissions to pause the task

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### pauseTasks

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] pauseTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] activityIds\_)

        Tries to pause the tasks, and returns an array of result codes on whether the operation was successful or an error had occurred. The result codes can be: `RESULT_CODE_SUCCESS` if the action succeeded, `RESULT_CODE_INVALID_TASK` if the node does not exist, `RESULT_CODE_INSUFFICIENT_PRIVILEGES` if the user does not have permission, or `RESULT_CODE_INVALID_STATE` if its state is not started, paused, paused-by-exception, completed, or cancelled

        Parameters:

        `activityIds_` - the IDs of the tasks

        Returns:

        array of result codes. No exceptions will be thrown, and the developer will compare the returned codes to the constants to determine what happened.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### cancelTask

        void cancelTask([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Cancels a given task

        Parameters:

        `activityId_` - the ID of the task

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is cancelled

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficent privileges to cancel this task - that is, if [`ProcessPermissions.isStopAndPause()`](security/ProcessPermissions.html#isStopAndPause\(\)) returns `false` for the process containing this task

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`getPermissionsForProcess(Long)`](#getPermissionsForProcess\(java.lang.Long\))

    -   ### cancelTasks

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] cancelTasks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] activityIds\_)

        Cancels a list of tasks. This methos tries to cancel the tasks, and returns an array of result codes on whether the operation was successful or an error has occurred.

        Parameters:

        `activityIds_` - the IDs of the tasks

        Returns:

        array of result codes. Each of these is one of the `TASK_CANCELLATION_XXX` constants

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### startAllNodes

        [NodeActionResult](NodeActionResult.html "class in com.appiancorp.suiteapi.process") startAllNodes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] nodeUuids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] withinProcessIds, [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")... bulkNodeOption) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Start a task for each of the given nodeUuids in every applicable process. If not null, then withinProcessIds limits the processes in which these nodes will be started. Starting a large number of tasks from nodes simultaneously may affect system performance, so it's recommended that withinProcessIds be specified as fewer than 1000 processes at a time, and not to use null for withinProcessIds on other than small or test systems.

        Parameters:

        `nodeUuids` - The uuids of the tasks' template nodes, each of which can be obtained from the `uuid` property of the corresponding `TaskSummary` object.

        `withinProcessIds` - list of process ids; a null list means all processes containing these nodes.

        Returns:

        NodeActionResult indicating the actions taken for the nodes.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process exists for the given ID. If an invalid process id is passed in withinProcessIds, it's thrown immediately before any actions.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### restartAllNodes

        [NodeActionResult](NodeActionResult.html "class in com.appiancorp.suiteapi.process") restartAllNodes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] nodeUuids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] withinProcessIds, [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")... bulkNodeOption) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Restart a task for each of the given nodeUuids in every applicable process. This consists of a cancel, and if the cancel is successful, a start. If not null, then withinProcessIds limits the processes in which these nodes will be started. Starting a large number of tasks from nodes simultaneously may affect system performance, so it's recommended that withinProcessIds be specified as fewer than 1000 processes at a time, and not to use null for withinProcessIds on other than small or test systems.

        Parameters:

        `nodeUuids` - The uuids of the tasks' template nodes, each of which can be obtained from the `uuid` property of the corresponding `TaskSummary` object.

        `withinProcessIds` - list of process ids; a null list means all processes containing these nodes.

        Returns:

        NodeActionResult indicating the actions taken for the nodes.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process exists for the given ID. If an invalid process id is passed in withinProcessIds, it's thrown immediately before any actions.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### pauseAllNodes

        [NodeActionResult](NodeActionResult.html "class in com.appiancorp.suiteapi.process") pauseAllNodes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] nodeUuids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] withinProcessIds) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Pause each given node in every applicable process. If not null, then withinProcessIds limits the processes in which these nodes will be started.

        Parameters:

        `nodeUuids` - The uuids of the tasks' template nodes, each of which can be obtained from the `uuid` property of the corresponding `TaskSummary` object.

        `withinProcessIds` - list of process ids; a null list means all processes containing these nodes.

        Returns:

        NodeActionResult indicating the actions taken for the nodes.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process exists for the given ID. If an invalid process id is passed in withinProcessIds, it's thrown immediately before any actions.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### resumeAllNodes

        [NodeActionResult](NodeActionResult.html "class in com.appiancorp.suiteapi.process") resumeAllNodes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] nodeUuids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] withinProcessIds) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Resume each given node in every applicable process. If not null, then withinProcessIds limits the processes in which these nodes will be started.

        Parameters:

        `nodeUuids` - The uuids of the tasks' template nodes, each of which can be obtained from the `uuid` property of the corresponding `TaskSummary` object.

        `withinProcessIds` - list of process ids; a null list means all processes containing these nodes.

        Returns:

        NodeActionResult indicating the actions taken for the nodes.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process exists for the given ID. If an invalid process id is passed in withinProcessIds, it's thrown immediately before any actions.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### cancelAllNodes

        [NodeActionResult](NodeActionResult.html "class in com.appiancorp.suiteapi.process") cancelAllNodes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] nodeUuids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] withinProcessIds) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Cancel each given node in every applicable process. If not null, then withinProcessIds limits the processes in which these nodes will be started.

        Parameters:

        `nodeUuids` - The uuids of the tasks' template nodes, each of which can be obtained from the `uuid` property of the corresponding `TaskSummary` object.

        `withinProcessIds` - list of process ids; a null list means all processes containing these nodes.

        Returns:

        NodeActionResult indicating the actions taken for the nodes.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process exists for the given ID. If an invalid process id is passed in withinProcessIds, it's thrown immediately before any actions.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### reassignTaskToSameAssigneePool

        void reassignTaskToSameAssigneePool([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Reassigns the task to the assignee pool.

        Parameters:

        `activityId_` - the ID of the task

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist or has been deleted

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task is not assigned or accepted

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permissions to reassign the task

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### reassignTasksToAssigneePool

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] reassignTasksToAssigneePool([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] activityIds\_, [Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")\[\] assignees\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`reassignTask(java.lang.Long, com.appiancorp.suiteapi.process.Assignment.Assignee[])`](#reassignTask\(java.lang.Long,com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\)) instead

        Tries to reassign the tasks to the designated assignees, and returns an array of result codes on whether the operation was successful or an error had occurred. The result codes can be: `RESULT_CODE_SUCCESS` if the action succeeded, `RESULT_CODE_INVALID_TASK` if the node does not exist, `RESULT_CODE_INSUFFICIENT_PRIVILEGES` if the user does not have permission, or `RESULT_CODE_INVALID_STATE` if the task is not assigned or accepted

        Parameters:

        `activityIds_` - the IDs of the tasks

        `assignees_` - the assignees to whom the task will be reassigned All the tasks will be assigned to the same assignee array

        Returns:

        array of result codes. No exceptions will be thrown, and the developer will compare the returned codes to the constants to determine what happened.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by an `Assignment.Assignee` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### reassignTasksToSameAssigneePool

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] reassignTasksToSameAssigneePool([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] activityIds\_)

        Tries to reassign the tasks, and returns an array of result codes on whether the operation was successful or an error had occurred. The result codes can be: `RESULT_CODE_SUCCESS` if the action succeeded, `RESULT_CODE_INVALID_TASK` if the node does not exist, `RESULT_CODE_INSUFFICIENT_PRIVILEGES` if the user does not have permission, or `RESULT_CODE_INVALID_STATE` if the task is not assigned or accepted

        Parameters:

        `activityIds_` - the IDs of the tasks

        Returns:

        array of result codes. No exceptions will be thrown, and the developer will compare the returned codes to the constants to determine what happened.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getProcessDiagram

        [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") getProcessDiagram([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int typeOfNotesToRetrieve\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Allows users to retrieve the instance of the process model that the process is run off. The diagram will have the process states, and other instance-specific information. The following fields in the process model will be not be populated: folderId, latestVersion, uuid.

        Parameters:

        `processId_` - The id of the process.

        `typeOfNotesToRetrieve_` - This is one of [`RETRIEVE_PROCESS_MODEL_NOTES`](#RETRIEVE_PROCESS_MODEL_NOTES) or [`RETRIEVE_PROCESS_NOTES`](#RETRIEVE_PROCESS_NOTES)

        Returns:

        A diagram of the process with the states.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If the process does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permissions to retrieve the process or the process diagram of the process.

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if `typeOfNotesToRetrieve_` is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateProcessModelForProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") updateProcessModelForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pd\_, [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")\[\] childProcessModels\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`upgradeProcesses(java.lang.Long, java.lang.String, java.lang.Long[])`](#upgradeProcesses\(java.lang.Long,java.lang.String,java.lang.Long%5B%5D\)) instead

        Only updates the process model instance associated with this process the process model template of which this process is an instance will not be changed. The particular process model instance can also be saved as a version with [`ProcessDesignService.versionProcessModel(ProcessModel)`](ProcessDesignService.html#versionProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\)). The following fields are not updated on the process model: `creatorUsername`, `latestVersion`, `version`, `variables`

        Parameters:

        `processId_` - the id of the process, which is an instance of the process model.

        `pd_` - the process diagram of the process to be updated. This should be retrieved by a call to [`getProcessDiagram(java.lang.Long, int)`](#getProcessDiagram\(java.lang.Long,int\)).

        `childProcessModels_` - the sub and linked process models for this updating process model

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process is currently locked

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to update the process (if `ProcessPermissions#isModifyInFlight` returns `false`)

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the ProcessModel bean passed in has any nodes with non-null IDs that are not in the current version of the process model.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### upgradeProcesses

        [UpgradeResult](upgrade/UpgradeResult.html "class in com.appiancorp.suiteapi.process.upgrade") upgradeProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") toProcessModelId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toVersion, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UpgradeException](upgrade/UpgradeException.html "class in com.appiancorp.suiteapi.process.upgrade")

        Attempts to upgrade the given processes to the specified process model id and version.

        Parameters:

        `toProcessModelId` - the id of the process model to upgrade to

        `toVersion` - the version of the process model to upgrade to, exactly as it appears in the user interface. For instance, "2.0" or "3.7"

        `processIds` -

        Returns:

        An UpgradeResult whose contained ProcessUpgrade objects will be in the same order as the processIds parameter.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified process model id does not exist

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified process model version does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user performing the action does not have sufficient privileges to view or initiate the specified process model

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[UpgradeException](upgrade/UpgradeException.html "class in com.appiancorp.suiteapi.process.upgrade")`

    -   ### upgradeProcesses

        [UpgradeResult](upgrade/UpgradeResult.html "class in com.appiancorp.suiteapi.process.upgrade") upgradeProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") toProcessModelId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toVersion, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fromProcessModelId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] fromVersions) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UpgradeException](upgrade/UpgradeException.html "class in com.appiancorp.suiteapi.process.upgrade")

        Attempts to upgrade the processes of the 'from' process model id and version to the 'to' process model id and version.

        Parameters:

        `toProcessModelId` - the id of the process model to upgrade to

        `toVersion` - the version of the process model to upgrade to, exactly as it appears in the user interface. For instance, "2.0" or "3.7"

        `fromProcessModelId` - the id of the process model to upgrade from

        `fromVersions` - the version of the process model to upgrade from

        Returns:

        An UpgradeResult whose contained ProcessUpgrade objects will be in no particular order.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model id specified by 'toProcessModelId' does not exist

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model version specified by 'toVersion' does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user performing the action does not have sufficient privileges to view or initiate the specified process model

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[UpgradeException](upgrade/UpgradeException.html "class in com.appiancorp.suiteapi.process.upgrade")`

    -   ### triggerSchedule

        void triggerSchedule([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") scheduleType\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") scheduleId\_) throws [InvalidScheduleTypeException](../common/exceptions/InvalidScheduleTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Triggers the schedule instance for the task or node

        Parameters:

        `scheduleType_` - the schedule type. This should be one of [`ScheduleSummary.SCHEDULE_TYPE_PENDING_SINGLE`](ScheduleSummary.html#SCHEDULE_TYPE_PENDING_SINGLE) , used for a delayed individual task, or [`ScheduleSummary.SCHEDULE_TYPE_PENDING_MULTIPLE`](ScheduleSummary.html#SCHEDULE_TYPE_PENDING_MULTIPLE), used for recurring tasks.

        `scheduleId_` - the schedule ID. This is the ID of a `ScheduleSummary` retrieved from [`getScheduleSummariesForNode(Long, Long, int, int, Integer, Integer)`](#getScheduleSummariesForNode\(java.lang.Long,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Throws:

        `[InvalidScheduleTypeException](../common/exceptions/InvalidScheduleTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the schedule type is invalid

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the schedule type is `SCHEDULE_TYPE_PENDING_SINGLE`, and the schedule ID does not correspond to a valid task

        `[InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the schedule type is `SCHEDULE_TYPE_PENDING_MULTIPLE`, and the schedule ID does not correspond to a valid node

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the the user does not have sufficient permissions to perform this operation - that is, if [`ProcessPermissions.isModifyInFlight()`](security/ProcessPermissions.html#isModifyInFlight\(\)) would return false for the process in question.

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task delay has already passed, or if the task's status is [`TaskSummary.TASK_STATUS_CANCELLED`](TaskSummary.html#TASK_STATUS_CANCELLED)

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`ScheduleSummary`](ScheduleSummary.html "class in com.appiancorp.suiteapi.process")

    -   ### triggerTaskEscalation

        void triggerTaskEscalation([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") escalationId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidEscalationException](../common/exceptions/InvalidEscalationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Triggers the desired escalation instance for the task.Users must obtain escalation id from TaskDetails object.

        Parameters:

        `activityId_` - the id of the task

        `escalationId_` - the id of the escalation

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task has been completed, or cancelled, or if the escalation has already lapsed or the task has not yet been started

        `[InvalidEscalationException](../common/exceptions/InvalidEscalationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the escalation does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the the user does not have sufficient - permissions to perform this operation

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`EscalationInstance`](EscalationInstance.html "class in com.appiancorp.suiteapi.process")

    -   ### skipTaskEscalation

        void skipTaskEscalation([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") escalationId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidEscalationException](../common/exceptions/InvalidEscalationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Skips the desired escalation instance for the task

        Parameters:

        `activityId_` - the id of the task

        `escalationId_` - the id of the escalation

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the task has been completed, or cancelled, or if the escalation has already lapsed

        `[InvalidEscalationException](../common/exceptions/InvalidEscalationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the escalation does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if [`NodePermissions.isModifyInFlight()`](security/NodePermissions.html#isModifyInFlight\(\)) is `false` for the current user

        See Also:

        -   [`EscalationInstance`](EscalationInstance.html "class in com.appiancorp.suiteapi.process")

    -   ### getScheduleSummariesForNode

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getScheduleSummariesForNode([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets Summaries of schedules that are attached to the node. This will include the schedules that once triggered will start one node, and schedules on nodes that have recurrence or spawning that once triggered will start multiple nodes.

        Parameters:

        `processId_` - the ID of the process

        `nodeId_` - the ID of the [`RuntimeProcessNode`](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process") in the process

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`ScheduleSummary`](ScheduleSummary.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        `ResultPage` of `ScheduleSummary` objects; `ResultPage` contains an empty list of results if the node is not scheduled to spawn or recur, or if no spawns have occurred.

        Throws:

        `[InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### lockProcessModelForProcess

        void lockProcessModelForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, boolean override\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ArchivedProcessException](exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Locks the underlying process model of the specified process.

        Parameters:

        `processId_` - the ID of the process

        `override_` - `true` to override lock status, if the process model is already locked by another user

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user cannot override the lock, if the process model is already currently locked

        `[ArchivedProcessException](exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process is archived

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`unlockProcessModelForProcess(java.lang.Long, boolean)`](#unlockProcessModelForProcess\(java.lang.Long,boolean\))

    -   ### lockProcesses

        int\[\] lockProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds, boolean override)

        Attempts to lock the specified processes.

        Parameters:

        `processIds` - the ids of the processes to be locked

        `override` - `true` to override lock status, if the process is already locked by another user

    -   ### unlockProcesses

        int\[\] unlockProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds, boolean override)

        Attempts to unlock the specified processes.

        Parameters:

        `processIds` - the ids of the processes to be unlocked

        `override` - `true` to override lock status, if the process is locked by another user

    -   ### unlockProcessModelForProcess

        void unlockProcessModelForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, boolean override\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Unlocks the underlying process model for the process

        Parameters:

        `processId_` - the id of the process

        `override_` - `true` to override lock status, if the process model is locked by another user

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user cannot override the lock, if the process model is already currently locked

        See Also:

        -   [`lockProcessModelForProcess(java.lang.Long, boolean)`](#lockProcessModelForProcess\(java.lang.Long,boolean\))

    -   ### unlockProcessModels

        void unlockProcessModels()

        Unlocks all process models locked by the current user.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getMaximumNumberOfNotes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") int getMaximumNumberOfNotes()

        Deprecated.

        since 23.2

        Returns the Maximum number of notes that can be added to Process or Task

        Returns:

        Maximum number of notes.

    -   ### getMaximumNumberOfAttachments

        int getMaximumNumberOfAttachments()

        Returns the Maximum number of attachmnets that can be added to Process or Task

        Returns:

        Maximum number of attachments.

    -   ### skipRecurrence

        [RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process") skipRecurrence([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") recurrenceNumber\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Skips the recurrence instance of the given node

        Parameters:

        `processId_` - process which the node resides in

        `nodeId_` - id of the node to skip the next recurrence of

        `recurrenceNumber_` - which recurrence to skip. For each node, the recurrences are numbered starting at 0. The next recurrence number can be obtained by calling [`getNextRecurrence(Long,Long)`](#getNextRecurrence\(java.lang.Long,java.lang.Long\))

        Returns:

        `RecurrenceInstance` with `id` and `scheduledTime` populated

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node template does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node does not have an recurrence instance, the recurrence has passed or the node has not been reached, or if the recurrence being skipped is not the next recurrence.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges

        See Also:

        -   [`Recurrence`](Recurrence.html "class in com.appiancorp.suiteapi.process")

    -   ### triggerRecurrence

        [RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process") triggerRecurrence([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") recurrenceNumber\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Triggers the recurrence instance of the given node

        Parameters:

        `processId_` - process which the node resides in

        `nodeId_` - ID of the [`RuntimeProcessNode`](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process") to skip the next recurrence of

        `recurrenceNumber_` - the recurrence of the node to skip. For each node, the recurrences are numbered starting at 0. The next recurrence number is the ID of the [`RecurrenceInstance`](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process") obtained by calling [`getNextRecurrence(Long,Long)`](#getNextRecurrence\(java.lang.Long,java.lang.Long\)), with parameters `processId_` and `nodeId_`

        Returns:

        recurrence instance with `id` and `scheduledTime` populated

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node does not have recurrences, the recurrence being skipped is not the next recurrence, the recurrence has already passed or has not been reached.

        `[InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node template does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges. That is if [`NodePermissions.isModifyInFlight()`](security/NodePermissions.html#isModifyInFlight\(\)) is `false`

        See Also:

        -   [`Recurrence`](Recurrence.html "class in com.appiancorp.suiteapi.process")

    -   ### setTaskStateSubmitted

        void setTaskStateSubmitted([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Sets the Task in the 'Submitted' state. This means that the activity is sent to run asynchronously. The user must accept the task in order to use this method succesfully.

        Parameters:

        `taskId_` - Id of the Task that is sumitted.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user cannot complete the task or is not the task owner of attended task.

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist.

    -   ### keepSubmittedTasksAlive

        void keepSubmittedTasksAlive([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] activities\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        This method informs the Process Engine that the specified tasks are still in the queue, waiting to be executed asynchronously.

        Parameters:

        `activities_` - ID's of the tasks that are in the queue

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user cannot complete the task or is not the task owner of any attended tasks in the list.

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if any task does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setTaskStateRunning

        void setTaskStateRunning([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Sets the Task in the Running state. This informs the process engine that the Task is removed from the queue and is currently being executed. The user must accept the task in order to use this method succesfully.

        Parameters:

        `taskId_` - Id of the task that Running

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user cannot complete the task or is not the task owner of attended task.

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist.

    -   ### getCurrentTasksForProcess

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCurrentTasksForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int type\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the current tasks for a process

        Parameters:

        `processId_` - the ID of the process

        `type_` - type of tasks to return. This is one of:

        -   Unattended Tasks - [`UNATTENDED_TASKS`](#UNATTENDED_TASKS)
        -   Attended Tasks - [`ATTENDED_TASKS`](#ATTENDED_TASKS)
        -   Unattended and Attended Tasks - [`UNATTENDED_AND_ATTENDED_TASKS`](#UNATTENDED_AND_ATTENDED_TASKS)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        `ResultPage` of `TaskSummary` objects.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getCompletedTasksForProcess

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCompletedTasksForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int type\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the completed tasks for a process

        Parameters:

        `processId_` - the ID of the process

        `type_` - type of tasks to returnThis is one of:

        -   Unattended Tasks - [`UNATTENDED_TASKS`](#UNATTENDED_TASKS)
        -   Attended Tasks - [`ATTENDED_TASKS`](#ATTENDED_TASKS)
        -   Unattended and Attended Tasks - [`UNATTENDED_AND_ATTENDED_TASKS`](#UNATTENDED_AND_ATTENDED_TASKS)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        `ResultPage` of `TaskSummary` objects. If a task is completed then its assignees field will be an empty array.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getCancelledTasksForProcess

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCancelledTasksForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int type\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the cancelled tasks for a process

        Parameters:

        `processId_` - the ID of the process

        `type_` - type of tasks to returnThis is one of:

        -   Unattended Tasks - [`UNATTENDED_TASKS`](#UNATTENDED_TASKS)
        -   Attended Tasks - [`ATTENDED_TASKS`](#ATTENDED_TASKS)
        -   Unattended and Attended Tasks - [`UNATTENDED_AND_ATTENDED_TASKS`](#UNATTENDED_AND_ATTENDED_TASKS)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        `ResultPage` of `TaskSummary` objects.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPausedTasksForProcess

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPausedTasksForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int type\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the paused tasks for a process

        Parameters:

        `processId_` - the ID of the process

        `type_` - type of tasks to returnThis is one of:

        -   Unattended Tasks - [`UNATTENDED_TASKS`](#UNATTENDED_TASKS)
        -   Attended Tasks - [`ATTENDED_TASKS`](#ATTENDED_TASKS)
        -   Unattended and Attended Tasks - [`UNATTENDED_AND_ATTENDED_TASKS`](#UNATTENDED_AND_ATTENDED_TASKS)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        `ResultPage` of `TaskSummary` objects.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTasksWithExceptionsForProcess

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTasksWithExceptionsForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the tasks that are paused by exception for a specified process.

        Parameters:

        `processId_` - the ID of the process

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process") defined in this file.

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        Returns a `ResultPage` containing instances of [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process"). If a task is completed then its assignees field will be an empty array.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process with the specified id exists.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permissions to view the task summaries for the process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unarchiveProcess

        void unarchiveProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IncompatibleArchivedVersionException](exceptions/IncompatibleArchivedVersionException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), com.appiancorp.process.engine.ArchiveReadException

        Bring all process data back to memory. An archived process (whether it has been archived automatically or manually) needs to be unarchived before any action can be performed on it.

        Parameters:

        `processId_` - the id of the process to unarchive

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process has not been archived

        `[IncompatibleArchivedVersionException](exceptions/IncompatibleArchivedVersionException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if an archived process file is from an incompatible release version

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have permission to unarchive the process. Use [`ProcessDesignService.getPermissionsForProcessApplication()`](ProcessDesignService.html#getPermissionsForProcessApplication\(\)) to determine if the `User` has permission to unarchive processes.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `com.appiancorp.process.engine.ArchiveReadException`

    -   ### unarchiveProcesses

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] unarchiveProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Bring all process data back to memory. An archived process (whether it has been archived automatically or manually) needs to be unarchived before any action can be performed on it.

        Parameters:

        `processIds_` - the ids of the processes to archive

        Returns:

        result codes, which can be: `ResultList.CODE_VALID` if the action succeeded, or `ResultList.CODE_INVALID` if the specified process does not exist

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permissions to unarchive processes

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### archiveProcess

        void archiveProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ArchivedProcessException](exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Archive the process with the given id. This will be performed synchronously if possible, or queue the archive request along with automatically achived processes otherwise (e.g., if out of disk space).

        Parameters:

        `processId_` - the id of a process to archive

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist

        `[ArchivedProcessException](exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process is already archived

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have the privileges.

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if process is not completed or canceled (only completed or canceled process can be archived)

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### archiveProcesses

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] archiveProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_)

        Manually archive the processes with the given ids.

        Parameters:

        `processIds_` - the ids of a processes to archive

        Returns:

        result codes, which can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process does not exist (only completed or canceled process can be archived)

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getArchivePaths

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getArchivePaths()

        Retrieve the paths where archived processes are stored. Note: This method only retrieves the paths to which processes are currently archived. It does not retrieve paths to old archived processes. This API is not supported for Appian Cloud environments

        Returns:

        The paths where processes are currently archived.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setArchivePaths

        void setArchivePaths([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] archivePaths) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Set the paths where archived processes will be stored. This API is not supported for Appian Cloud environments

        Parameters:

        `archivePaths` - The paths where archived processes will be stored.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to change the paths. Normally this only includes system admins.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`getArchivePaths()`](#getArchivePaths\(\))

    -   ### getNextRecurrence

        [RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process") getNextRecurrence([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nodeId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the next recurrence for a node within a process

        Parameters:

        `processId_` - the id of the process to get the recurrence for

        `nodeId_` - the node to get the recurrence for

        Returns:

        a RecurrenceInstance of the given node for the given proecss id

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If the process does not exist

        `[InvalidNodeException](../common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the node is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permissions to the process - if [`ProcessPermissions.isModifyInFlight()`](security/ProcessPermissions.html#isModifyInFlight\(\)) returns `false`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAttachmentsInProcess

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getAttachmentsInProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] attachmentIds\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the specified attachments associated with a given process, or tasks in this process

        Parameters:

        `processId_` - the id of the process

        `attachmentIds_` - the unique Ids of the attachments to be retrieved

        Returns:

        a `ResultList` containing an array of `Attachment` objects

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getNoteMetadatasInProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getNoteMetadatasInProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] noteIds\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Deprecated.

        since 23.2

        Gets the specified notes associated with a given process, or tasks in this process

        Parameters:

        `processId_` - the id of the process

        `noteIds_` - the unique Ids of the notes to be retrieved

        Returns:

        a `ResultList` containing an array of `NoteMetadata` objects

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process specified does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateUsernames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] oldUsernames\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] newUsernames\_, long maxExpirationTimeInSeconds\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Updates a list of old usernames to new usernames.

        If successful, this method must be followed by [`commitUpdateUsernames()`](#commitUpdateUsernames\(\)). After `commitUpdateUsernames` has been called, the old usernames will still be active, but will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `updateUsernames` is successful but `commitUpdateUsernames` is not called, the new usernames will not become active.

        If unsuccessful, this method should be followed by [`rollbackUpdateUsernames()`](#rollbackUpdateUsernames\(\)). This will simply free memory dedicated to mapping old usernames to new usernames.

        Parameters:

        `oldUsernames_` - the usernames to be updated

        `newUsernames_` - the usernames to which the old usernames will be updated

        `maxExpirationTimeInSeconds_` - the interval, in seconds, after `commitUpdateUsernames` has been called, after which the old usernames will expire. If this parameter is zero or a negative value the old usernames will expire instantly. After expiration, the old usernames will no longer be valid.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the length of `oldUsernames_` is not the same as the length of `newUsernames_`.

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any `oldUsernames_` or `newUsernames_` contain any duplicates, or if an old username is being updated to a username that already exists

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have permission to update usernames, as determined by [`ProcessDesignService.getSecurityForProcessApplication()`](ProcessDesignService.html#getSecurityForProcessApplication\(\)).

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### commitUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void commitUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Commits an update of usernames.

        This method should be preceded by a call to [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)). After the commit, the old usernames will be temporarily active, and will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `commitUpdateUsernames` is not called, the new usernames will not become active.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rollbackUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void rollbackUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Rolls back an update of usernames.

        This method should be called if [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)) is unsuccessful. The rollback will simply free memory dedicated to mapping old usernames to new usernames.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### uncompleteActivity

        [ActivityExecutionMetadata](framework/ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework") uncompleteActivity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId\_) throws [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Changes the status of an activity to ACCEPTED or ASSIGNED. If the activity is in ACCEPTED or ASSIGNED state, then the status is unchanged. If the activity is in COMPLETED state, then status becomes ACCEPTED.

        Parameters:

        `activityId_` - the id of the activity to uncomplete.

        Throws:

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the activity in question is in a state other than ACCEPTED, ASSIGNED OR COMPLETED. Also if the process that this task is part off, is paused by exception and the API is invoked.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if activityId\_ is null

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if activityId\_ is invalid (i.e. refers to an activity that does not exist)

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the activity is unattended (such activities are not allowed to be uncompleted, since they would automatically recomplete with the same behavior).

    -   ### setApplicationAdministratorGroup

        void setApplicationAdministratorGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Determines which group users need to be in to have the application administrator role.

        Parameters:

        `groupId` - the id of the administrator group

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### reloadProperties

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void reloadProperties()

        Deprecated.

        reloading properties is now automatic, so this call is now unnecessary and does nothing.

        Reloads all database-level properties files (\*.xml, \*.properties) without interrupting API services

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validate

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") validate()

        Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

        Returns:

        the validation results

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setSiteLocaleSettings

        void setSiteLocaleSettings([SiteLocaleSettings](../portal/SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") settings\_)

        Registers the site locale settings on the process execution server.

        Parameters:

        `settings_` - The site locale settings.

    -   ### handleMessages

        int\[\] handleMessages([InternalMessage](../messaging/InternalMessage.html "class in com.appiancorp.suiteapi.messaging")\[\] messages\_)

        Sends messages to the execution server, to be handled by the events framework. Returns result codes. The result codes can be:

        -   Message.SUCCESS\_CODE if there are no problems
        -   Message.JMS\_TYPE\_NOT\_PROVIDED\_CODE
        -   Message.INVALID\_USERNAME\_CODE if the username is invalid. A null username is valid; the system will assume an anonymous user.
        -   Message.DESTINATION\_NOT\_PROVIDED\_CODE
        -   Message.DUPLICATE\_MESSAGE\_CODE

        Parameters:

        `messages_` - The messages to send to the execution server

        Returns:

        the result codes

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any element in messages\_ is null or if messages\_ itself is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### acknowledgeMessages

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void acknowledgeMessages([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] messageIds\_)

        Deprecated.

        replaced by work queue, no longer requires separate acknowledgement: call does nothing now

        Certain events spawn messages (which are beans that contain a message body for the user to read, among other properties). The recipient server can send this call back to the sending server on receipt of a set of messages. It is up to the sending server what to do with the callback.

        Parameters:

        `messageIds_` - The IDs of a set of messages

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPmIdForProcess

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPmIdForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Get the specified Process's Process Model's ID

        Parameters:

        `processId_` - the ID of the process

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process ID refers to a process that does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addProcessToFavorites

        void addProcessToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds a `Process` to the user's favorites list.

        Parameters:

        `processId_` - Id of the `Process` to be added.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `Process` specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action on the specified `Process`

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `processId_` is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeProcessFromFavorites

        void removeProcessFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Removes a process from the user's Favorite's list

        Parameters:

        `processId_` - The ID of the process to remove from favorites.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process does not exist.

    -   ### addTaskToFavorites

        void addTaskToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds a `Task` to the user's favorites list.

        Parameters:

        `taskId_` - Id of the task to be added.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action on the specified activity

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `taskId_` is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeTaskFromFavorites

        void removeTaskFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId\_) throws [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Removes a task from the user's Favorite's list

        Parameters:

        `processId_` - The ID of the task to remove from favorites.

        Throws:

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the task does not exist.

    -   ### setDashboardPageForProcesses

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setDashboardPageForProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use {@link ProcessDesignService.setProcessDashboardPageForProcessModel(Long, Long)} instead.

        Sets a particular page as the dashboard for every instance of a given process model.

        Parameters:

        `processModelId` - The ID of the process model whose processes will be nabbed

        `pageId` - The ID of the page that will serve as the dashboard for those processes.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process model does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access to perform this operation.

    -   ### removeDashboardPageForProcesses

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void removeDashboardPageForProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use {@link ProcessDesignService.removeProcessDashboardPageForProcessModel(Long)} instead.

        Removes any custom dashboards created for instances of a particular process model. Instances will use the system default dashboard page instead.

        Parameters:

        `processModelId` - the ID of the `Process Model`

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the Process Model does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have access to perform this operation

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAutoArchiveProperties

        [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getAutoArchiveProperties()

        Retrieves auto archive properties from the backend

        Returns:

        a map containing "autoArchive" and "autoArchiveDelay"

    -   ### getMemoryUsageForExecEngine

        [SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process") getMemoryUsageForExecEngine() throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the `SizingReport` which contains top-level summary of memory usage by various objects in all Execution Engines.

        Returns:

        `SizingReport`

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have access to perform this operation

        See Also:

        -   [`SizingReport`](SizingReport.html "class in com.appiancorp.suiteapi.process")

    -   ### getMemoryUsageForProcessModels

        [SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process") getMemoryUsageForProcessModels([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processModelIds\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the `SizingReport` which contains a breakdown of memory usage by all process instances based off of specific Process Models given by the Process Model IDs.

        Parameters:

        `processModelIDs` - the ids of the process models

        Returns:

        `SizingReport`

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have access to perform this operation

        See Also:

        -   [`SizingReport`](SizingReport.html "class in com.appiancorp.suiteapi.process")

    -   ### getMemoryUsageForProcessModelsByUUID

        [SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process") getMemoryUsageForProcessModelsByUUID([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] processModelUUIDs\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the `SizingReport` which contains a breakdown of memory usage by all process instances based off of specific Process Models given by Process Model UUIDs.

        Parameters:

        `processModelUUIDs` - the process podel UUIDs

        Returns:

        `SizingReport`

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have access to perform this operation

        See Also:

        -   [`SizingReport`](SizingReport.html "class in com.appiancorp.suiteapi.process")

    -   ### getMemoryUsageForProcesses

        [SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process") getMemoryUsageForProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Returns the `SizingReport` which contains a breakdown of memory usage by individual process instances

        Parameters:

        `processIDs` - ID's of process instances.

        Returns:

        `SizingReport`

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have access to perform this operation

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If any of the processes do not exist

        See Also:

        -   [`SizingReport`](SizingReport.html "class in com.appiancorp.suiteapi.process")

    -   ### getMemoryUsageForProcessesByModelUUID

        [SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process") getMemoryUsageForProcessesByModelUUID([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] processModelUUIDs\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the `SizingReport` which contains a breakdown of memory usage by individual process instances based of of specific Process Models given by Process Model UUIDs.

        Parameters:

        `processModelUUIDs` - UUID's of process models

        Returns:

        `SizingReport`

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have access to perform this operation

        See Also:

        -   [`SizingReport`](SizingReport.html "class in com.appiancorp.suiteapi.process")

    -   ### getMemoryUsageForNodesInProcesses

        [SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process") getMemoryUsageForNodesInProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Returns the `SizingReport` which contains a breakdown of memory usage by individual nodes/activities in specific Process instances.

        Parameters:

        `processIDs` - ID's of process instances

        Returns:

        `SizingReport`

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have access to perform this operation

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If any of the processes do not exist

        See Also:

        -   [`SizingReport`](SizingReport.html "class in com.appiancorp.suiteapi.process")

    -   ### setTimeZone

        void setTimeZone([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz)

        Set the time zone information using the format used by the engines to encapsulate time zone information. This method sets the time zone for the process execution engines only. NOTE: Using this method could lead to data inconsistency, use [`GlobalizationService.setTimeZone(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple)`](../portal/GlobalizationService.html#setTimeZone\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple\)) to set the time zone across all engines (rarely required).

        Parameters:

        `tz` - The specially formatted time zone object used by the engines

    -   ### setTimeZoneSameAs

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setTimeZoneSameAs([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sameAsId)

        Deprecated.

        this method will be removed in a future release

        Set a backend timezone to have the same rules as another backend timezone the sameAsId.

        Parameters:

        `tz` -

        `sameAsId` -

    -   ### getProcessHistoryRecords

        [HistoryRecord](HistoryRecord.html "class in com.appiancorp.suiteapi.process")\[\] getProcessHistoryRecords([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Get the process history record of the given process.

        Parameters:

        `processId_` -

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If no such process exists.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have access to retrieve the process history for the specified process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getProcessHistoryRecordsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getProcessHistoryRecordsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Get the process history record of the given process.

        Parameters:

        `processId_` - The id of the process.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`HistoryRecord`](HistoryRecord.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a ResultPage containing the variables for the process.

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If no such process exists.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have access to retrieve the process history for the specified process.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTasksWithStatusForProcessModel

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTasksWithStatusForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskStatus\_, boolean recursive\_, int startIndex\_, int batchSize\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get the pages of tasks, within a particular process model, currently in a given state.

        Parameters:

        `processModelId_` - The process model id to scan for tasks within.

        `taskStatus_` - Retrieve tasks currently with this status number, see TaskSummary.TASK\_STATUS\_PAUSED\_BY\_EXCEPTION, etc.

        `recursive_` - Set to true to retrieve tasks from subprocesses as well.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The maximum number of results to return in the result page. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        Returns:

        A `ResultPage` containing `TaskSummary` objects representing tasks that have the given status, from processes of the specified Process Model

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getTasksWithStatusForProcessModels

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTasksWithStatusForProcessModels([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processModelIds\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskStatus\_, boolean recursive\_, int startIndex\_, int batchSize\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get the pages of tasks, within any of particular process models, currently in a given state.

        Parameters:

        `processModelIds_` - The process model ids to scan for. As this is scanning for matches, a lack of matches will simply be indicated by a lack of results;.

        `taskStatus_` - Retrieve tasks currently with this status number, see TaskSummary.TASK\_STATUS\_PAUSED\_BY\_EXCEPTION, etc.

        `recursive_` - Set to true to retrieve tasks from subprocesses as well.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The maximum number of results to return in the result page. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        Returns:

        A `ResultPage` containing `TaskSummary` objects representing tasks that have the given status, from processes of the specified Process Models

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getTasksWithStatusForProcess

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTasksWithStatusForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskStatus\_, boolean recursive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get the pages of tasks, within a particular process or its subprocesses, currently in a given state.

        Parameters:

        `processId_` - The process id containing the tasks to be examined.

        `taskStatus_` - Retrieve tasks currently with this status number, see TaskSummary.TASK\_STATUS\_PAUSED\_BY\_EXCEPTION, etc.

        `recursive_` - Set to true to retrieve tasks from subprocesses as well.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The maximum number of results to return in the result page. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        A `ResultPage` containing `TaskSummary` objects representing tasks that have the given status from the specified process

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getTasksWithStatusForProcesses

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTasksWithStatusForProcesses([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") taskStatus\_, boolean recursive\_, int startIndex\_, int batchSize\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get the pages of tasks, within particular processes or their subprocesses, currently in a given state.

        Parameters:

        `processIds_` - The ids of the processes to be examined.

        `taskStatus_` - Retrieve tasks currently with this status number, see TaskSummary.TASK\_STATUS\_PAUSED\_BY\_EXCEPTION, etc.

        `recursive_` - Set to true to retrieve tasks from subprocesses as well.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The maximum number of results to return in the result page. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        Returns:

        A `ResultPage` containing `TaskSummary` objects representing tasks that have the given status from the specified processes

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### completeStore

        void completeStore([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionGroupId) throws [InvalidExpressionGroupException](exceptions/InvalidExpressionGroupException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Complete an external data store. The task must be in the expected state, waiting on external.

        Parameters:

        `expressionGroupId` -

        Throws:

        `[InvalidExpressionGroupException](exceptions/InvalidExpressionGroupException.html "class in com.appiancorp.suiteapi.process.exceptions")`

    -   ### cancelStore

        void cancelStore([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionGroupId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") cancelMessage) throws [InvalidExpressionGroupException](exceptions/InvalidExpressionGroupException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Cancel an external data store. The task must be in the expected state, waiting on external.

        Parameters:

        `expressionGroupId` -

        `cancelMessage` - the text message to give as an error

        Throws:

        `[InvalidExpressionGroupException](exceptions/InvalidExpressionGroupException.html "class in com.appiancorp.suiteapi.process.exceptions")`

    -   ### processToNextAttended

        void processToNextAttended([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityId, boolean isQuickTask, [ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] parameters) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidActivityClassParameterException](exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidExpressionException](../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [TaskNavigationException](exceptions/TaskNavigationException.html "class in com.appiancorp.suiteapi.process.exceptions")

        This method can be used to programatically execute an attended task and continue flow to the next attended activity. This method will repeatedly advance the process flow and execute unattended activities until an attended activity is reached.

        This method replaces the deprecated method `ProcessEngineService.processToNextAttended(com.appiancorp.process.engine.ProcessActionResponse)`.

        Parameters:

        `activityId` - the task activity id of the current activity to execute

        `isQuickTask` - whether or not the current activity is a quick task

        `parameters` - the parameter values to use when executing the current activity

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the related process model is invalid

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the related task priority does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this operation

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process or task is cancelled

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if all execution engines are full

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced do not exist

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the given task is not attended

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if an activity id is invalid

        `[InvalidActivityClassParameterException](exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if an `ActivityClassParameter` provided does not exist

        `[InvalidExpressionException](../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a referenced expression does not exist

        `[TaskNavigationException](exceptions/TaskNavigationException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the given activityId would illegally send the process flow back to a previous task