---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html
version: "25.3"
title: "Interface ProcessAnalyticsService"
page_id: "api/com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Interface ProcessAnalyticsService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface ProcessAnalyticsService extends com.appiancorp.services.ContextSensitiveService

ProcessAnalyticsService provides access to reports on entities and events throughout the process application. These reports can be configured through XML and through the interface. Each report type has an associated data set and a display specification.

Generic reports are referred to as "process reports" or simply "reports". Reports intended for display in the processes area of the UI navigation are referred to as "process views"; those intended for display in the tasks area of the UI are referred to as "task views". Reports, process views, and task views are all defined by the same `ProcessReport` class; they simply denote different intended uses of this class.

Methods of service classes can all throw the runtime exception [`ServiceException`](../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[activateUserSession$UPDATES](#activateUserSession$UPDATES)`

    `static final boolean`

    `[addMyProcessReport$UPDATES](#addMyProcessReport$UPDATES)`

    `static final boolean`

    `[commitUpdateUsernames$UPDATES](#commitUpdateUsernames$UPDATES)`

    `static final boolean`

    `[createProcessReport$UPDATES](#createProcessReport$UPDATES)`

    `static final boolean`

    `[evaluateExpressionForProcess$UPDATES](#evaluateExpressionForProcess$UPDATES)`

    `static final boolean`

    `[evaluateExpressionForProcessModel$UPDATES](#evaluateExpressionForProcessModel$UPDATES)`

    `static final boolean`

    `[evaluateExpressionResultForProcess$UPDATES](#evaluateExpressionResultForProcess$UPDATES)`

    `static final boolean`

    `[evaluateExpressionResultForProcessModel$UPDATES](#evaluateExpressionResultForProcessModel$UPDATES)`

    `static final boolean`

    `[evaluateExpressionsForProcess$UPDATES](#evaluateExpressionsForProcess$UPDATES)`

    `static final boolean`

    `[evaluateExpressionsResultForProcess$UPDATES](#evaluateExpressionsResultForProcess$UPDATES)`

    `static final boolean`

    `[getAcceptedTasks$UPDATES](#getAcceptedTasks$UPDATES)`

    `static final boolean`

    `[getAllTasks$UPDATES](#getAllTasks$UPDATES)`

    `static final boolean`

    `[getAllTasksWithExceptions$UPDATES](#getAllTasksWithExceptions$UPDATES)`

    `static final boolean`

    `[getAssignedTasks$UPDATES](#getAssignedTasks$UPDATES)`

    `static final boolean`

    `[getCancelledProcessesForProcessModel$UPDATES](#getCancelledProcessesForProcessModel$UPDATES)`

    `static final boolean`

    `[getCompletedProcessesForProcessModel$UPDATES](#getCompletedProcessesForProcessModel$UPDATES)`

    `static final boolean`

    `[getCompletedTasks$UPDATES](#getCompletedTasks$UPDATES)`

    `static final boolean`

    `[getMyProcessViews$UPDATES](#getMyProcessViews$UPDATES)`

    `static final boolean`

    `[getMyTaskCount$UPDATES](#getMyTaskCount$UPDATES)`

    `static final boolean`

    `[getMyTasks$UPDATES](#getMyTasks$UPDATES)`

    `static final boolean`

    `[getMyTaskViews$UPDATES](#getMyTaskViews$UPDATES)`

    `static final boolean`

    `[getPausedProcessesForProcessModel$UPDATES](#getPausedProcessesForProcessModel$UPDATES)`

    `static final boolean`

    `[getPausedTasks$UPDATES](#getPausedTasks$UPDATES)`

    `static final boolean`

    `[getProcessesForProcessModel$UPDATES](#getProcessesForProcessModel$UPDATES)`

    `static final boolean`

    `[getProcessesWithExceptionsForProcessModel$UPDATES](#getProcessesWithExceptionsForProcessModel$UPDATES)`

    `static final boolean`

    `[getProcessReport$UPDATES](#getProcessReport$UPDATES)`

    `static final boolean`

    `[getProcessReports$UPDATES](#getProcessReports$UPDATES)`

    `static final boolean`

    `[getReportPage$UPDATES](#getReportPage$UPDATES)`

    `static final boolean`

    `[getReportPageWithTypedValues$UPDATES](#getReportPageWithTypedValues$UPDATES)`

    `static final boolean`

    `[getRunningProcessesForProcessModel$UPDATES](#getRunningProcessesForProcessModel$UPDATES)`

    `static final boolean`

    `[getTaskCountForUser$UPDATES](#getTaskCountForUser$UPDATES)`

    `static final boolean`

    `[getTaskViewForGroup$UPDATES](#getTaskViewForGroup$UPDATES)`

    `static final boolean`

    `[getTaskViewForUser$UPDATES](#getTaskViewForUser$UPDATES)`

    `static final boolean`

    `[notifyUserCreation$UPDATES](#notifyUserCreation$UPDATES)`

    `static final boolean`

    `[notifyUsersCreation$UPDATES](#notifyUsersCreation$UPDATES)`

    `static final boolean`

    `[removeTaskViewForGroup$UPDATES](#removeTaskViewForGroup$UPDATES)`

    `static final boolean`

    `[removeTaskViewForUser$UPDATES](#removeTaskViewForUser$UPDATES)`

    `static final boolean`

    `[rollbackUpdateUsernames$UPDATES](#rollbackUpdateUsernames$UPDATES)`

    `static final boolean`

    `[setSiteLocaleSettings$UPDATES](#setSiteLocaleSettings$UPDATES)`

    `static final boolean`

    `[setTaskViewForGroup$UPDATES](#setTaskViewForGroup$UPDATES)`

    `static final boolean`

    `[setTaskViewForUser$UPDATES](#setTaskViewForUser$UPDATES)`

    `static final boolean`

    `[setTimeZone$UPDATES](#setTimeZone$UPDATES)`

    `static final boolean`

    `[updateProcessReport$UPDATES](#updateProcessReport$UPDATES)`

    `static final boolean`

    `[updateUsernames$UPDATES](#updateUsernames$UPDATES)`

    `static final boolean`

    `[validateGroupMembership$UPDATES](#validateGroupMembership$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[activateUserSession](#activateUserSession\(java.lang.Long%5B%5D,java.lang.Long%5B%5D,java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] membership_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] administration_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Notifies the process analytics application that a new session has been created for the current user, and provides information about the current user's membership and administration rights to groups.

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[addMyProcessReport](#addMyProcessReport\(com.appiancorp.suiteapi.process.analytics2.ProcessReport\))([ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") spec_)`

    Add a process report to the My Reports folder.

    `void`

    `[commitUpdateUsernames](#commitUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[createProcessReport](#createProcessReport\(com.appiancorp.suiteapi.process.analytics2.ProcessReport,java.lang.Long\))([ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") spec_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Add a process report to the specified folder.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[evaluateExpressionForProcess](#evaluateExpressionForProcess\(java.lang.Long,java.lang.String,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression_, boolean recursive_)`

    Evaluates an expression using the specified process as the context.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[evaluateExpressionForProcessModel](#evaluateExpressionForProcessModel\(java.lang.Long,java.lang.String,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression_, boolean recursive_)`

    Evaluates an expression using the specified process model as the context.

    `[PartialResult](../../expression/PartialResult.html "class in com.appiancorp.suiteapi.expression")`

    `[evaluateExpressionResultForProcess](#evaluateExpressionResultForProcess\(java.lang.Long,java.lang.String,boolean,com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression_, boolean recursive_, [NamedTypedValue](../../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] continueParams)`

    Evaluates an expression using the specified process as the context.

    `[PartialResult](../../expression/PartialResult.html "class in com.appiancorp.suiteapi.expression")`

    `[evaluateExpressionResultForProcessModel](#evaluateExpressionResultForProcessModel\(java.lang.Long,java.lang.String,boolean,com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression_, boolean recursive_, [NamedTypedValue](../../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] continueParams)`

    Evaluates an expression using the specified process model as the context.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[evaluateExpressionsForProcess](#evaluateExpressionsForProcess\(java.lang.Long,java.lang.String%5B%5D,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] expressions_, boolean recursive_)`

    Evaluates multiple expressions using the specified process as the context.

    `[PartialResult](../../expression/PartialResult.html "class in com.appiancorp.suiteapi.expression")[]`

    `[evaluateExpressionsResultForProcess](#evaluateExpressionsResultForProcess\(java.lang.Long,java.lang.String%5B%5D,boolean,com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] expressions_, boolean recursive_, [NamedTypedValue](../../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[][] continueParams)`

    Evaluates multiple expressions using the specified process as the context.

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAcceptedTasks](#getAcceptedTasks\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the tasks accepted by the current user.

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllTasks](#getAllTasks\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets all the tasks for the current user.

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllTasksWithExceptions](#getAllTasksWithExceptions\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the tasks with a state of [`TaskSummary.TASK_STATUS_PAUSED_BY_EXCEPTION`](../TaskSummary.html#TASK_STATUS_PAUSED_BY_EXCEPTION) that were completed by the current user.

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAssignedTasks](#getAssignedTasks\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the tasks assigned to the current user.

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCancelledProcessesForProcessModel](#getCancelledProcessesForProcessModel\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves all cancelled processes for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCompletedProcessesForProcessModel](#getCompletedProcessesForProcessModel\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves all completed processes for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCompletedTasks](#getCompletedTasks\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the tasks completed by current user.

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getMyProcessViews](#getMyProcessViews\(\))()`

    Retrieves the process views for the current user.

    `int`

    `[getMyTaskCount](#getMyTaskCount\(\))()`

    Gets the total number of tasks that are either assigned to or accepted by the current user.

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMyTasks](#getMyTasks\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the tasks assigned to or accepted by the current user (that is with a status of [`TaskSummary.TASK_STATUS_ASSIGNED`](../TaskSummary.html#TASK_STATUS_ASSIGNED) or [`TaskSummary.TASK_STATUS_ACCEPTED`](../TaskSummary.html#TASK_STATUS_ACCEPTED) for the current user).

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getMyTaskViews](#getMyTaskViews\(\))()`

    Retrieves the task views for the current user.

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPausedProcessesForProcessModel](#getPausedProcessesForProcessModel\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves all paused processes for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPausedTasks](#getPausedTasks\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves all paused tasks for the current [`User`](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization").

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessesForProcessModel](#getProcessesForProcessModel\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves all processes for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process") regardless of their status.

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessesWithExceptionsForProcessModel](#getProcessesWithExceptionsForProcessModel\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves all processes which are paused by an exception for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getProcessReport](#getProcessReport\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Retrieves a report specification given its id.

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getProcessReports](#getProcessReports\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids)`

    Retrieves a array of report specifications given their ids.

    `[ReportResultPage](ReportResultPage.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getReportPage](#getReportPage\(com.appiancorp.suiteapi.process.analytics2.ReportData\))([ReportData](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2") spec_)`

    Deprecated.

    use [`getReportPageWithTypedValues(ReportData)`](#getReportPageWithTypedValues\(com.appiancorp.suiteapi.process.analytics2.ReportData\)) which returns the result data in the preferred [`TypedValue`](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type") form.

    `[ReportResultPage](ReportResultPage.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getReportPage](#getReportPage\(com.appiancorp.suiteapi.process.analytics2.ReportData,long\))([ReportData](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2") spec_, long timeZoneOffset_)`

    Deprecated.

    use [`getReportPageWithTypedValues(ReportData)`](#getReportPageWithTypedValues\(com.appiancorp.suiteapi.process.analytics2.ReportData\)), as the timeZoneOffset\_ parameter in this method is ignored.

    `[ReportResultPage](ReportResultPage.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getReportPageWithTypedValues](#getReportPageWithTypedValues\(com.appiancorp.suiteapi.process.analytics2.ReportData\))([ReportData](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2") spec)`

    Retrieve the data as [`TypedValue`](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type") cells, for a given process report specification.

    `[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getRunningProcessesForProcessModel](#getRunningProcessesForProcessModel\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves all active processes for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `int`

    `[getTaskCountForUser](#getTaskCountForUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Gets the total number of tasks that are either assigned to or accepted by a particular user.

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getTaskViewForGroup](#getTaskViewForGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Get the task view that the current user wishes to use to view the tasks of the specified group.

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getTaskViewForUser](#getTaskViewForUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Get the task view that the current user wishes to use to view the tasks of the specified user.

    `void`

    `[notifyUserCreation](#notifyUserCreation\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Deprecated.

    done automatically by UserService.createUser

    `void`

    `[notifyUsersCreation](#notifyUsersCreation\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Notifies the server that new users were created on the Personalization server.

    `void`

    `[removeTaskViewForGroup](#removeTaskViewForGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Clear the previously-set task view that the current user was using to view the tasks of the specified group.

    `void`

    `[removeTaskViewForUser](#removeTaskViewForUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Clear the previously-set task view that the current user was using to view the tasks of the specified user.

    `void`

    `[rollbackUpdateUsernames](#rollbackUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `void`

    `[setSiteLocaleSettings](#setSiteLocaleSettings\(com.appiancorp.suiteapi.portal.SiteLocaleSettings\))([SiteLocaleSettings](../../portal/SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") settings_)`

    Registers the site locale settings on the process analytics engines only.

    `void`

    `[setTaskViewForGroup](#setTaskViewForGroup\(java.lang.Long,com.appiancorp.suiteapi.process.analytics2.ProcessReport\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") spec_)`

    Set the task view that the current user wishes to use to view the tasks of the specified group.

    `void`

    `[setTaskViewForUser](#setTaskViewForUser\(java.lang.String,com.appiancorp.suiteapi.process.analytics2.ProcessReport\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") spec_)`

    Set the task view that the current user wishes to use to view the tasks of the specified user.

    `void`

    `[setTimeZone](#setTimeZone\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple\))([BackendTimeZoneSimple](../../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz)`

    Set the time zone information using the format used by the engines to encapsulate time zone information.

    `void`

    `[updateProcessReport](#updateProcessReport\(com.appiancorp.suiteapi.process.analytics2.ProcessReport\))([ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") spec_)`

    Update a process report.

    `void`

    `[updateUsernames](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] oldUsernames_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] newUsernames_, long maxExpirationTimeInSeconds_)`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `boolean`

    `[validateGroupMembership](#validateGroupMembership\(java.lang.Long%5B%5D,java.lang.Long%5B%5D,java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] memGroupIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] admGroupIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Validates if the association of a user as 'Member' and as an 'Administrator has changed or not.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### activateUserSession$UPDATES

        static final boolean activateUserSession$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.activateUserSession$UPDATES)

    -   ### getMyTaskCount$UPDATES

        static final boolean getMyTaskCount$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getMyTaskCount$UPDATES)

    -   ### getTaskCountForUser$UPDATES

        static final boolean getTaskCountForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getTaskCountForUser$UPDATES)

    -   ### getAllTasks$UPDATES

        static final boolean getAllTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getAllTasks$UPDATES)

    -   ### getAssignedTasks$UPDATES

        static final boolean getAssignedTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getAssignedTasks$UPDATES)

    -   ### getMyTasks$UPDATES

        static final boolean getMyTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getMyTasks$UPDATES)

    -   ### getCompletedTasks$UPDATES

        static final boolean getCompletedTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getCompletedTasks$UPDATES)

    -   ### getAcceptedTasks$UPDATES

        static final boolean getAcceptedTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getAcceptedTasks$UPDATES)

    -   ### getAllTasksWithExceptions$UPDATES

        static final boolean getAllTasksWithExceptions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getAllTasksWithExceptions$UPDATES)

    -   ### getPausedTasks$UPDATES

        static final boolean getPausedTasks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getPausedTasks$UPDATES)

    -   ### getProcessesForProcessModel$UPDATES

        static final boolean getProcessesForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getProcessesForProcessModel$UPDATES)

    -   ### getCompletedProcessesForProcessModel$UPDATES

        static final boolean getCompletedProcessesForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getCompletedProcessesForProcessModel$UPDATES)

    -   ### getCancelledProcessesForProcessModel$UPDATES

        static final boolean getCancelledProcessesForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getCancelledProcessesForProcessModel$UPDATES)

    -   ### getRunningProcessesForProcessModel$UPDATES

        static final boolean getRunningProcessesForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getRunningProcessesForProcessModel$UPDATES)

    -   ### getPausedProcessesForProcessModel$UPDATES

        static final boolean getPausedProcessesForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getPausedProcessesForProcessModel$UPDATES)

    -   ### getProcessesWithExceptionsForProcessModel$UPDATES

        static final boolean getProcessesWithExceptionsForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getProcessesWithExceptionsForProcessModel$UPDATES)

    -   ### notifyUserCreation$UPDATES

        static final boolean notifyUserCreation$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.notifyUserCreation$UPDATES)

    -   ### notifyUsersCreation$UPDATES

        static final boolean notifyUsersCreation$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.notifyUsersCreation$UPDATES)

    -   ### validateGroupMembership$UPDATES

        static final boolean validateGroupMembership$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.validateGroupMembership$UPDATES)

    -   ### updateUsernames$UPDATES

        static final boolean updateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.updateUsernames$UPDATES)

    -   ### commitUpdateUsernames$UPDATES

        static final boolean commitUpdateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.commitUpdateUsernames$UPDATES)

    -   ### rollbackUpdateUsernames$UPDATES

        static final boolean rollbackUpdateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.rollbackUpdateUsernames$UPDATES)

    -   ### getProcessReport$UPDATES

        static final boolean getProcessReport$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getProcessReport$UPDATES)

    -   ### getProcessReports$UPDATES

        static final boolean getProcessReports$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getProcessReports$UPDATES)

    -   ### getMyTaskViews$UPDATES

        static final boolean getMyTaskViews$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getMyTaskViews$UPDATES)

    -   ### getMyProcessViews$UPDATES

        static final boolean getMyProcessViews$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getMyProcessViews$UPDATES)

    -   ### updateProcessReport$UPDATES

        static final boolean updateProcessReport$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.updateProcessReport$UPDATES)

    -   ### getReportPage$UPDATES

        static final boolean getReportPage$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getReportPage$UPDATES)

    -   ### getReportPageWithTypedValues$UPDATES

        static final boolean getReportPageWithTypedValues$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getReportPageWithTypedValues$UPDATES)

    -   ### addMyProcessReport$UPDATES

        static final boolean addMyProcessReport$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.addMyProcessReport$UPDATES)

    -   ### createProcessReport$UPDATES

        static final boolean createProcessReport$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.createProcessReport$UPDATES)

    -   ### getTaskViewForUser$UPDATES

        static final boolean getTaskViewForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getTaskViewForUser$UPDATES)

    -   ### setTaskViewForUser$UPDATES

        static final boolean setTaskViewForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.setTaskViewForUser$UPDATES)

    -   ### removeTaskViewForUser$UPDATES

        static final boolean removeTaskViewForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.removeTaskViewForUser$UPDATES)

    -   ### getTaskViewForGroup$UPDATES

        static final boolean getTaskViewForGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getTaskViewForGroup$UPDATES)

    -   ### setTaskViewForGroup$UPDATES

        static final boolean setTaskViewForGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.setTaskViewForGroup$UPDATES)

    -   ### removeTaskViewForGroup$UPDATES

        static final boolean removeTaskViewForGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.removeTaskViewForGroup$UPDATES)

    -   ### evaluateExpressionForProcessModel$UPDATES

        static final boolean evaluateExpressionForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.evaluateExpressionForProcessModel$UPDATES)

    -   ### evaluateExpressionResultForProcessModel$UPDATES

        static final boolean evaluateExpressionResultForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.evaluateExpressionResultForProcessModel$UPDATES)

    -   ### evaluateExpressionForProcess$UPDATES

        static final boolean evaluateExpressionForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.evaluateExpressionForProcess$UPDATES)

    -   ### evaluateExpressionResultForProcess$UPDATES

        static final boolean evaluateExpressionResultForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.evaluateExpressionResultForProcess$UPDATES)

    -   ### evaluateExpressionsForProcess$UPDATES

        static final boolean evaluateExpressionsForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.evaluateExpressionsForProcess$UPDATES)

    -   ### evaluateExpressionsResultForProcess$UPDATES

        static final boolean evaluateExpressionsResultForProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.evaluateExpressionsResultForProcess$UPDATES)

    -   ### setSiteLocaleSettings$UPDATES

        static final boolean setSiteLocaleSettings$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.setSiteLocaleSettings$UPDATES)

    -   ### setTimeZone$UPDATES

        static final boolean setTimeZone$UPDATES

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.setTimeZone$UPDATES)

-   ## Method Details

    -   ### activateUserSession

        void activateUserSession([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] membership\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] administration\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)

        Notifies the process analytics application that a new session has been created for the current user, and provides information about the current user's membership and administration rights to groups. This call is necessary every time the group membership role is changed, a new group is created, or when the user is newly created This method will skip any `null` values for `membership_` or `administration_`. If the `userTypeId_` is not a valid value (see below), the method will fail but will NOT throw any exceptions

        Parameters:

        `membership_` - the list of groups of which the user is a member

        `administration_` - the list of groups on which the user has administrative rights

        `userTypeId_` - this is one of [`UserProfile.USER_TYPE_BASIC`](../../personalization/UserProfile.html#USER_TYPE_BASIC) or [`UserProfile.USER_TYPE_SYS_ADMIN`](../../personalization/UserProfile.html#USER_TYPE_SYS_ADMIN)

        `username` - the username of the user whose session is to be activated

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getMyTaskCount

        int getMyTaskCount()

        Gets the total number of tasks that are either assigned to or accepted by the current user.

        Returns:

        the number of tasks

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getTaskCountForUser

        int getTaskCountForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)

        Gets the total number of tasks that are either assigned to or accepted by a particular user.

        Parameters:

        `username` - the user name

        Returns:

        the number of tasks

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getAllTasks

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllTasks(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets all the tasks for the current user. This does not include tasks from cancelled, paused, or deleted processes or cancelled, or paused tasks. This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants defined in [`TaskSummary`](../TaskSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of [`TaskSummary`](../TaskSummary.html "class in com.appiancorp.suiteapi.process") objects. If a task is completed, then the value of the assignees field in the corresponding `TaskSummary` object will be an empty array.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the batchsize exceeds the limit of items that can be retrieve per Analytics Engine (resources.appian.analytics.application.maxreportsize / Number of Analytics Engines). It can also be thrown if batchsize equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getAssignedTasks

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAssignedTasks(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the tasks assigned to the current user. This does not include tasks from cancelled, paused, or deleted processes. This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants defined in [`TaskSummary`](../TaskSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of [`TaskSummary`](../TaskSummary.html "class in com.appiancorp.suiteapi.process") objects

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getMyTasks

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMyTasks(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the tasks assigned to or accepted by the current user (that is with a status of [`TaskSummary.TASK_STATUS_ASSIGNED`](../TaskSummary.html#TASK_STATUS_ASSIGNED) or [`TaskSummary.TASK_STATUS_ACCEPTED`](../TaskSummary.html#TASK_STATUS_ACCEPTED) for the current user). This does not include tasks from cancelled, paused, or deleted processes. This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants defined in [`TaskSummary`](../TaskSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of [`TaskSummary`](../TaskSummary.html "class in com.appiancorp.suiteapi.process") objects

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getCompletedTasks

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCompletedTasks(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the tasks completed by current user. This does not include tasks from cancelled, paused, or deleted processes. This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants defined in [`TaskSummary`](../TaskSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of [`TaskSummary`](../TaskSummary.html "class in com.appiancorp.suiteapi.process") objects. The assignee field for all summaries will be an empty array.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getAcceptedTasks

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAcceptedTasks(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the tasks accepted by the current user. This does not include tasks from cancelled, paused, or deleted processes. This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants defined in [`TaskSummary`](../TaskSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of [`TaskSummary`](../TaskSummary.html "class in com.appiancorp.suiteapi.process") objects

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getAllTasksWithExceptions

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllTasksWithExceptions(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Gets the tasks with a state of [`TaskSummary.TASK_STATUS_PAUSED_BY_EXCEPTION`](../TaskSummary.html#TASK_STATUS_PAUSED_BY_EXCEPTION) that were completed by the current user. This does not include tasks from cancelled, paused, or deleted processes. This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants defined in [`TaskSummary.TASK_STATUS_PAUSED_BY_EXCEPTION`](../TaskSummary.html#TASK_STATUS_PAUSED_BY_EXCEPTION).

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        Returns a `ResultPage` containing a list of `TaskSummary` objects . If a task is completed, then the value of the assignees field in the corresponding `TaskSummary` object will be an empty array.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getPausedTasks

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPausedTasks(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves all paused tasks for the current [`User`](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization"). This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants. Located in [`TaskSummary.TASK_STATUS_PAUSED`](../TaskSummary.html#TASK_STATUS_PAUSED).

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `TaskSummary` objects representing all paused tasks in the system.

        Throws:

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getProcessesForProcessModel

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getProcessesForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves all processes for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process") regardless of their status. This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `processModelId_` - The ID of the `ProcessModel` for which to retrieve all processes.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants. Located in [`ProcessSummary`](../ProcessSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `ProcessSummary` objects representing all processes for the `ProcessModel` specified by `processModelId_`
        The following fields in `ProcessSummary` are populated:
        `id`, `name`, `initiator`, `status`, `priority`, `startTime`, `endTime`, `id`, `processModelVersion`, `parentId`, and `processModelName`.

        Throws:

        `[InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have privileges to view the `ProcessModel`

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getCompletedProcessesForProcessModel

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCompletedProcessesForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves all completed processes for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process"). This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `processModelId_` - The ID of the `ProcessModel` for which to retrieve the completed processes.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants. Located in [`ProcessSummary`](../ProcessSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `ProcessSummary` objects representing all completed processes for the `ProcessModel` specified by `processModelId_`
        The following fields in `ProcessSummary` are populated:
        `id`, `name`, `initiator`, `status`, `priority`, `startTime`, `endTime`, `id`, `processModelVersion`, `parentId`, and `processModelName`.

        Throws:

        `[InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have privileges to view the `ProcessModel`

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getCancelledProcessesForProcessModel

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCancelledProcessesForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves all cancelled processes for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process"). This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `processModelId_` - The ID of the `ProcessModel` for which to retrieve the cancelled processes.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants. Located in [`ProcessSummary`](../ProcessSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `ProcessSummary` objects representing all cancelled processes for the `ProcessModel` specified by `processModelId_`
        The following fields in `ProcessSummary` are populated:
        `id`, `name`, `initiator`, `status`, `priority`, `startTime`, `endTime`, `id`, `processModelVersion`, `parentId`, and `processModelName`.

        Throws:

        `[InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have privileges to view the `ProcessModel`

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getRunningProcessesForProcessModel

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getRunningProcessesForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves all active processes for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process"). This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `processModelId_` - The ID of the `ProcessModel` for which to retrieve the running processes.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants. Located in [`ProcessSummary`](../ProcessSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `ProcessSummary` objects representing all running processes for the `ProcessModel` specified by `processModelId_`
        The following fields in `ProcessSummary` are populated:
        `id`, `name`, `initiator`, `status`, `priority`, `startTime`, `endTime`, `id`, `processModelVersion`, `parentId`, and `processModelName`.

        Throws:

        `[InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have privileges to view the `ProcessModel`

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getPausedProcessesForProcessModel

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPausedProcessesForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves all paused processes for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process"). This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `processModelId_` - The ID of the `ProcessModel` for which to retrieve the paused processes.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants. Located in [`ProcessSummary`](../ProcessSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `ProcessSummary` objects representing all paused processes for the `ProcessModel` specified by `processModelId_`
        The following fields in `ProcessSummary` are populated:
        `id`, `name`, `initiator`, `status`, `priority`, `startTime`, `endTime`, `id`, `processModelVersion`, `parentId`, and `processModelName`.

        Throws:

        `[InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have privileges to view the `ProcessModel`

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### getProcessesWithExceptionsForProcessModel

        [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getProcessesWithExceptionsForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves all processes which are paused by an exception for a [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process"). This is a paging function and only returns the data specified by the startIndex and batchSize

        Parameters:

        `processModelId_` - The ID of the `ProcessModel` for which to retrieve the processes paused by exception.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants. Located in [`ProcessSummary`](../ProcessSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `ProcessSummary` objects representing all processes which are paused by exception for the `ProcessModel` specified by `processModelId_`
        The following fields in `ProcessSummary` are populated:
        `id`, `name`, `initiator`, `status`, `priority`, `startTime`, `endTime`, `id`, `processModelVersion`, `parentId`, and `processModelName`.

        Throws:

        `[InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have privileges to view the `ProcessModel`

        `[ResultPageSizeException](../exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `batchsize` exceeds the limit of items that can be retrieve per Analytics Engine (`resources.appian.analytics.application.maxreportsize` / Number of Analytics Engines). It can also be thrown if `batchsize` equals -1, and one Analytics Engine attempts to return more items than the limit just mention.

    -   ### notifyUserCreation

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void notifyUserCreation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        done automatically by UserService.createUser

        Notifies the server that a new user was created on the Personalization server.

        Parameters:

        `username_` - the name of the user that was added

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any of the usernames are `null`

    -   ### notifyUsersCreation

        void notifyUsersCreation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Notifies the server that new users were created on the Personalization server.

        Parameters:

        `usernames_` - the names of the users that were added

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any of the usernames are `null`

    -   ### validateGroupMembership

        boolean validateGroupMembership([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] memGroupIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] admGroupIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Validates if the association of a user as 'Member' and as an 'Administrator has changed or not.

        Parameters:

        `memGroupIds_` - Groups for which the User is a member

        `admGroupIds_` - Groups for which the User is an administrator

        `userTypeId_` - this should be one of [`UserProfile.USER_TYPE_BASIC`](../../personalization/UserProfile.html#USER_TYPE_BASIC) or [`UserProfile.USER_TYPE_SYS_ADMIN`](../../personalization/UserProfile.html#USER_TYPE_SYS_ADMIN), but if neither of these constants is given, or the value is null, the the method will assume [`UserProfile.USER_TYPE_BASIC`](../../personalization/UserProfile.html#USER_TYPE_BASIC)

        `username` - the username of the user whose group membership is to be validated

        Returns:

        true if there is not change in the membership of the user

        Throws:

        `[InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### updateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateUsernames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] oldUsernames\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] newUsernames\_, long maxExpirationTimeInSeconds\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [DuplicateNameException](../../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Updates a list of old usernames to new usernames.

        If successful, this method must be followed by [`commitUpdateUsernames()`](#commitUpdateUsernames\(\)). After `commitUpdateUsernames` has been called, the old usernames will still be active, but will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `updateUsernames` is successful but `commitUpdateUsernames` is not called, the new usernames will not become active.

        If unsuccessful, this method should be followed by [`rollbackUpdateUsernames()`](#rollbackUpdateUsernames\(\)). This will simply free memory dedicated to mapping old usernames to new usernames.

        Parameters:

        `oldUsernames_` - the usernames to be updated

        `newUsernames_` - the usernames to which the old usernames will be updated

        `maxExpirationTimeInSeconds_` - the interval, in seconds, after `commitUpdateUsernames` has been called, after which the old usernames will expire. If this parameter is zero or a negative value the old usernames will expire instantly. After expiration, the old usernames will no longer be valid.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the length of `oldUsernames_` is not the same as the length of `newUsernames_`.

        `[DuplicateNameException](../../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any `oldUsernames_` or `newUsernames_` contain any duplicates, or if an old username is being updated to a username that already exists

        `[InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if oldUsernames contains an invalid user.

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### commitUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void commitUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Commits an update of usernames.

        This method should be preceded by a call to [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)). After the commit, the old usernames will be temporarily active, and will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `commitUpdateUsernames` is not called, the new usernames will not become active.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### rollbackUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void rollbackUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Rolls back an update of usernames.

        This method should be called if [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)) is unsuccessful. The rollback will simply free memory dedicated to mapping old usernames to new usernames.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessReport

        [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") getProcessReport([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves a report specification given its id. Returns null if the id is invalid

        Parameters:

        `id` - the report id

        Returns:

        a process report or null if the id is invalid.

        Throws:

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access to the report.

    -   ### getProcessReports

        [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getProcessReports([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids)

        Retrieves a array of report specifications given their ids. Invalid report ids will have null entries in the returned array.

        Parameters:

        `ids` - the report ids

        Returns:

        an array of ProcessReport objects.

        Throws:

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access any single report in the list.

    -   ### getMyTaskViews

        [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getMyTaskViews()

        Retrieves the task views for the current user.

        Returns:

        the task views.

    -   ### getMyProcessViews

        [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getMyProcessViews()

        Retrieves the process views for the current user.

        Returns:

        the process views.

    -   ### updateProcessReport

        void updateProcessReport([ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") spec\_)

        Update a process report.

        Parameters:

        `spec_` - the updated process report.

    -   ### getReportPage

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ReportResultPage](ReportResultPage.html "class in com.appiancorp.suiteapi.process.analytics2") getReportPage([ReportData](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2") spec\_, long timeZoneOffset\_) throws [UnsupportedReportSpecificationException](../exceptions/UnsupportedReportSpecificationException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ReportComplexityException](../exceptions/ReportComplexityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [ReportSizeException](../exceptions/ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions"), [ExpressionException](../../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getReportPageWithTypedValues(ReportData)`](#getReportPageWithTypedValues\(com.appiancorp.suiteapi.process.analytics2.ReportData\)), as the timeZoneOffset\_ parameter in this method is ignored.

        Retrieve the data for a particular process report specification.

        The `results` attribute contains an array of `Map`s, each map representing one row in the report. Inside each results `Map`, column values are keyed by cXX and drill path values are keyed by dpXX, where XX is the id of the column. Furthermore, each row in every report contains the following keys: permissions, mutablePriority, version, and favorite. Additionally, process model reports will contain the keys valid and enabled; process and task reports will contain process\_status and task\_status.

        The value of the permissions key is an object representing the current user's permissions on the object underlying that row of the report. This object will be of one of three classes. For process models, it will be com.appiancorp.suiteapi.process.security.ProcessModelPermissions. For processes, it will be com.appiancorp.suiteapi.process.security.ProcessPermissions. For tasks, it will be com.appiancorp.suiteapi.process.security.NodePermissions.

        mutablePriority is a Boolean indicating if the priority of the object can be changed. version is the process model version as a String for process model reports; otherwise, it is an empty String. favorite is a Boolean indicating whether the process model, process, or task is a favorite for the current user.

        valid and and enabled will always be present and null for process model reports.

        process\_status is an Integer indicating the status of the process (active, canceled, completed, etc.). task\_status is an Integer indicating the status of the task (assigned, accepted, completed, etc.).

        The `columnTypes` attribute is a `Map` that contains type information for each of the columns and drill paths. Column types are keyed by cXX and drill path types are keyed by dpXX, where XX is the id of the column.

        Parameters:

        `spec_` - the process report specification.

        `timeZoneOffset_` - the time zone offset to use in computing (ignored)

        Returns:

        the data for the report.

        Throws:

        `[UnsupportedReportSpecificationException](../exceptions/UnsupportedReportSpecificationException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if spec\_ is invalid

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access to the report.

        `[ReportComplexityException](../exceptions/ReportComplexityException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[ReportSizeException](../exceptions/ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[ExpressionException](../../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is an exception in evaluating any report column expression.

    -   ### getReportPage

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ReportResultPage](ReportResultPage.html "class in com.appiancorp.suiteapi.process.analytics2") getReportPage([ReportData](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2") spec\_) throws [UnsupportedReportSpecificationException](../exceptions/UnsupportedReportSpecificationException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ReportComplexityException](../exceptions/ReportComplexityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [ReportSizeException](../exceptions/ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions"), [ExpressionException](../../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getReportPageWithTypedValues(ReportData)`](#getReportPageWithTypedValues\(com.appiancorp.suiteapi.process.analytics2.ReportData\)) which returns the result data in the preferred [`TypedValue`](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type") form.

        Retrieve the data for a particular process report specification.

        The `results` attribute contains an array of `Map`s, each map representing one row in the report. Inside each results `Map`, column values are keyed by cXX and drill path values are keyed by dpXX, where XX is the id of the column. Furthermore, each row in every report contains the following keys: permissions, mutablePriority, version, and favorite. Additionally, process model reports will contain the keys valid and enabled; process and task reports will contain process\_status and task\_status.

        The value of the permissions key is an object representing the current user's permissions on the object underlying that row of the report. This object will be of one of three classes. For process models, it will be [`ProcessModelPermissions`](../security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security"). For processes, it will be [`ProcessPermissions`](../security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security"). For tasks, it will be [`NodePermissions`](../security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security").

        mutablePriority is a Boolean indicating if the priority of the object can be changed. version is the process model version as a String for process model reports; otherwise, it is an empty String. favorite is a Boolean indicating whether the process model, process, or task is a favorite for the current user.

        valid and enabled will always be present and null for process model reports.

        process\_status is an Integer indicating the status of the process (active, canceled, completed, etc.). task\_status is an Integer indicating the status of the task (assigned, accepted, completed, etc.).

        The `columnTypes` attribute is a `Map` that contains type information for each of the columns and drill paths. Column types are keyed by cXX and drill path types are keyed by dpXX, where XX is the id of the column.

        If the report has grouping but no aggregation function is set, count will be used.

        When there are no results to return, the [`Result.getResults()`](../../common/Result.html#getResults\(\)) method returns an empty array of Row objects.

        Parameters:

        `spec_` - the process report specification.

        Returns:

        the data for the report.

        Throws:

        `[UnsupportedReportSpecificationException](../exceptions/UnsupportedReportSpecificationException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if spec\_ is invalid

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access to the report.

        `[ReportComplexityException](../exceptions/ReportComplexityException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[ReportSizeException](../exceptions/ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the number of rows to return will exceed `com.appiancorp.process.analytics2.AnalyticsConfiguration#getMaxReportSize`

        `[ExpressionException](../../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is an exception in evaluating any report column expression.

    -   ### getReportPageWithTypedValues

        [ReportResultPage](ReportResultPage.html "class in com.appiancorp.suiteapi.process.analytics2") getReportPageWithTypedValues([ReportData](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2") spec) throws [UnsupportedReportSpecificationException](../exceptions/UnsupportedReportSpecificationException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ReportComplexityException](../exceptions/ReportComplexityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [ReportSizeException](../exceptions/ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions"), [ExpressionException](../../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieve the data as [`TypedValue`](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type") cells, for a given process report specification.

        The `results` attribute contains an array of `Map`s, each map representing one row in the report. Inside each results `Map`, column values are keyed by cXX and drill path values are keyed by dpXX, where XX is the id of the column. Furthermore, each row in every report contains the following keys: permissions, mutablePriority, version, and favorite. Additionally, process model reports will contain the keys valid and enabled; process and task reports will contain process\_status and task\_status.

        The value of the permissions key is an object representing the current user's permissions on the object underlying that row of the report. This object will be of one of three classes. For process models, it will be [`ProcessModelPermissions`](../security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security"). For processes, it will be [`ProcessPermissions`](../security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security"). For tasks, it will be [`NodePermissions`](../security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security").

        mutablePriority is a Boolean indicating if the priority of the object can be changed. version is the process model version as a String for process model reports; otherwise, it is an empty String. favorite is a Boolean indicating whether the process model, process, or task is a favorite for the current user.

        valid and and enabled will always be present and null for process model reports.

        process\_status is an Integer indicating the status of the process (active, canceled, completed, etc.). task\_status is an Integer indicating the status of the task (assigned, accepted, completed, etc.).

        The `columnTypes` attribute is a `Map` that contains type information for each of the columns and drill paths. Column types are keyed by cXX and drill path types are keyed by dpXX, where XX is the id of the column.

        Parameters:

        `spec` - the process report specification.

        Returns:

        the data for the report with cell values as [`TypedValue`](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")

        Throws:

        `[UnsupportedReportSpecificationException](../exceptions/UnsupportedReportSpecificationException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if **spec** is invalid

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access to the report.

        `[ReportComplexityException](../exceptions/ReportComplexityException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[ReportSizeException](../exceptions/ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[ExpressionException](../../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is an exception in evaluating any report column expression.

    -   ### addMyProcessReport

        [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") addMyProcessReport([ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") spec\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")

        Add a process report to the My Reports folder.

        Parameters:

        `spec_` - The process report specification to add.

        Returns:

        The added process report specification.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if some attribute of spec\_ is invalid

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is neither an editor nor an administrator of the folder

        `[InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[StorageLimitException](../../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is not enough space in the KC to create this report.

        `[IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")` - if there is an error writing this report

    -   ### createProcessReport

        [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") createProcessReport([ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") spec\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io"), [InvalidFolderException](../../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Add a process report to the specified folder.

        Parameters:

        `spec_` - The process report specification to add.

        `folderId_` - The id of the folder in which to store the report.

        Returns:

        The added process report specification.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if some attribute of spec\_ is invalid

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is neither an editor nor an administrator of the folder

        `[InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[StorageLimitException](../../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is not enough space in the KC to create this report.

        `[IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")` - if there is an error writing this report

        `[InvalidFolderException](../../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if folderId does not represent a valid folder

    -   ### getTaskViewForUser

        [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") getTaskViewForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Get the task view that the current user wishes to use to view the tasks of the specified user.

        Parameters:

        `username_` - the user whose tasks are to be viewed.

        Returns:

        the task view.

        Throws:

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

        See Also:

        -   [`setTaskViewForUser(java.lang.String, com.appiancorp.suiteapi.process.analytics2.ProcessReport)`](#setTaskViewForUser\(java.lang.String,com.appiancorp.suiteapi.process.analytics2.ProcessReport\))

    -   ### setTaskViewForUser

        void setTaskViewForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") spec\_) throws [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Set the task view that the current user wishes to use to view the tasks of the specified user.

        Parameters:

        `username_` - the user whose tasks are to be viewed using this task view.

        `spec_` - the task view.

        Throws:

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

        See Also:

        -   [`getTaskViewForUser(java.lang.String)`](#getTaskViewForUser\(java.lang.String\))

    -   ### removeTaskViewForUser

        void removeTaskViewForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Clear the previously-set task view that the current user was using to view the tasks of the specified user.

        Parameters:

        `username_` - the user whose tasks were being viewed using this task view.

        Throws:

        `[InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is neither an editor nor an administrator of the folder

        `[InvalidDocumentException](../../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no valid task view can be found for this user

    -   ### getTaskViewForGroup

        [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") getTaskViewForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Get the task view that the current user wishes to use to view the tasks of the specified group.

        Parameters:

        `groupId_` - the id of the group whose tasks are to be viewed.

        Returns:

        the task view.

        Throws:

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

        See Also:

        -   [`setTaskViewForGroup(java.lang.Long, com.appiancorp.suiteapi.process.analytics2.ProcessReport)`](#setTaskViewForGroup\(java.lang.Long,com.appiancorp.suiteapi.process.analytics2.ProcessReport\))

    -   ### setTaskViewForGroup

        void setTaskViewForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") spec\_) throws [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Set the task view that the current user wishes to use to view the tasks of the specified group.

        Parameters:

        `groupId_` - the id of the group whose tasks are to be viewed using this task view.

        `spec_` - the task view.

        Throws:

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

        See Also:

        -   [`getTaskViewForGroup(java.lang.Long)`](#getTaskViewForGroup\(java.lang.Long\))

    -   ### removeTaskViewForGroup

        void removeTaskViewForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Clear the previously-set task view that the current user was using to view the tasks of the specified group.

        Parameters:

        `groupId_` - the id of the group whose tasks were being viewed using this task view.

        Throws:

        `[InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is neither an editor nor an administrator of the folder

        `[InvalidDocumentException](../../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no valid task view can be found for this group

    -   ### evaluateExpressionForProcessModel

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") evaluateExpressionForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression\_, boolean recursive\_)

        Evaluates an expression using the specified process model as the context.

        Parameters:

        `modelId_` - the id of the process model. this is the context.

        `expression_` - a valid expression for the expression engine. PV references should be valid for the model specified by the first parameter.

        `recursive_` - true to evaluate process variables contained in sub processes (if the transparency flag for each sub process is checked.

        Returns:

        the evaluated expression. Returns an empty string if the process model is invalid

    -   ### evaluateExpressionResultForProcessModel

        [PartialResult](../../expression/PartialResult.html "class in com.appiancorp.suiteapi.expression") evaluateExpressionResultForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression\_, boolean recursive\_, [NamedTypedValue](../../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] continueParams)

        Evaluates an expression using the specified process model as the context.

        Parameters:

        `modelId_` - the id of the process model. this is the context.

        `expression_` - a valid expression for the expression engine. PV references should be valid for the model specified by the first parameter.

        `recursive_` - true to evaluate process variables contained in sub processes (if the transparency flag for each sub process is checked.

        `continueParams` - whenever a PartialResult with a function request is returned, append the result of the Java function evaluation to this list, and call this method again.

        Returns:

        the evaluated expression. Returns an empty string if the process model is invalid

    -   ### evaluateExpressionForProcess

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") evaluateExpressionForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression\_, boolean recursive\_)

        Evaluates an expression using the specified process as the context.

        Parameters:

        `processId_` - the id of the process. this is the context.

        `expression_` - a valid expression for the expression engine. PV references should be valid for the process specified by the first parameter.

        `recursive_` - true to evaluate process variables contained in sub processes (if the transparency flag for each sub process is checked.

        Returns:

        the evaluated expression. Returns an empty string if the process is invalid

    -   ### evaluateExpressionResultForProcess

        [PartialResult](../../expression/PartialResult.html "class in com.appiancorp.suiteapi.expression") evaluateExpressionResultForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression\_, boolean recursive\_, [NamedTypedValue](../../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] continueParams)

        Evaluates an expression using the specified process as the context.

        Parameters:

        `processId_` - the id of the process. this is the context.

        `expression_` - a valid expression for the expression engine. PV references should be valid for the process specified by the first parameter.

        `recursive_` - true to evaluate process variables contained in sub processes (if the transparency flag for each sub process is checked.

        `continueParams` - whenever a PartialResult with a function request is returned, append the result of the Java function evaluation to this list, and call this method again.

        Returns:

        the evaluated expression. Returns an empty string if the process is invalid

    -   ### evaluateExpressionsForProcess

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] evaluateExpressionsForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] expressions\_, boolean recursive\_)

        Evaluates multiple expressions using the specified process as the context.

        Parameters:

        `processId_` - the id of the process. this is the context.

        `expressions_` - valid expressions for the expression engine. PV references should be valid for the process specified by the first parameter.

        `recursive_` - true to evaluate process variables contained in sub processes (if the transparency flag for each sub process is checked.

        Returns:

        the evaluated expressions. Returns empty strings if the process is invalid

    -   ### evaluateExpressionsResultForProcess

        [PartialResult](../../expression/PartialResult.html "class in com.appiancorp.suiteapi.expression")\[\] evaluateExpressionsResultForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] expressions\_, boolean recursive\_, [NamedTypedValue](../../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\]\[\] continueParams)

        Evaluates multiple expressions using the specified process as the context.

        Parameters:

        `processId_` - the id of the process. this is the context.

        `expressions_` - valid expressions for the expression engine. PV references should be valid for the process specified by the first parameter.

        `recursive_` - true to evaluate process variables contained in sub processes (if the transparency flag for each sub process is checked.

        `continueParams` - whenever a PartialResult with a function request is returned, append the result of the Java function evaluation to this list, and call this method again.

        Returns:

        the evaluated expressions. Returns empty strings if the process is invalid

    -   ### setSiteLocaleSettings

        void setSiteLocaleSettings([SiteLocaleSettings](../../portal/SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") settings\_)

        Registers the site locale settings on the process analytics engines only. NOTE: Use [`GlobalizationService.setSiteLocaleSettings(com.appiancorp.suiteapi.portal.SiteLocaleSettings)`](../../portal/GlobalizationService.html#setSiteLocaleSettings\(com.appiancorp.suiteapi.portal.SiteLocaleSettings\)) to register across all engines.

        Parameters:

        `settings_` - The site locale settings.

    -   ### setTimeZone

        void setTimeZone([BackendTimeZoneSimple](../../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz)

        Set the time zone information using the format used by the engines to encapsulate time zone information. This method sets the time zone for the process analytics engines only. NOTE: Using this method could lead to data inconsistency, use [`GlobalizationService.setTimeZone(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple)`](../../portal/GlobalizationService.html#setTimeZone\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple\)) to set the time zone across all engines (rarely required).

        Parameters:

        `tz` - The specially formatted time zone object used by the engines