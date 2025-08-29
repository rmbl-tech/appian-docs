---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessDesignService.html
original_path: api/com/appiancorp/suiteapi/process/ProcessDesignService.html
version: "25.3"
title: "Interface ProcessDesignService"
page_id: "api/com/appiancorp/suiteapi/process/ProcessDesignService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Interface ProcessDesignService

All Superinterfaces:

`[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface ProcessDesignService extends [ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

The `ProcessDesignService` is used for creating and modifying [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") which are organized by storing them in [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") objects. It also contains methods for handling the security of these objects. It mainly deals with the design of Process Models whereas the [`ProcessExecutionService`](ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process") deals with all aspects of starting and maintaining instances of a ProcessModel ([`Process`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Process.html "class or interface in java.lang")).

A `ProcessModelFolder` can be created and modified with this service. Process models are organized into folders in the process model pickers.

`ProcessModel` objects created by this service can be run using the `ProcessExecutionService`.

When a `ProcessModel` is being designed it is considered a draft. When a designer is satisfied with their design he or she may save the `ProcessModel` using [`updateProcessModel(ProcessModel)`](#updateProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\)) and create a new version using [`versionProcessModel(ProcessModel)`](#versionProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\)). When a `ProcessModel` is first versioned it is given the version "1.0" and all subsequent versions are incremented by 1.0. Versions of a `ProcessModel` cannot be run until they are published, and a `ProcessModel` version cannot be published unless it is valid. A `ProcessModel` can be validated using the [`validateProcessModel(ProcessModel)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel\)) method.

A `ProcessModel` can be locked by a user so that no other users can edit the `ProcessModel`. However, a `User` can attempt to override the lock placed on a `ProcessModel` by another `User` by calling [`lockProcessModel(Long,boolean)`](#lockProcessModel\(java.lang.Long,boolean\)) or [`unlockProcessModel(Long,boolean)`](#unlockProcessModel\(java.lang.Long,boolean\)) and setting the override `boolean` to `true`.

In addition to regular [`ProcessNode`](ProcessNode.html "class in com.appiancorp.suiteapi.process") objects a `ProcessModel` can contain other `ProcessModel` objects through sub and linked processes.
A sub-process is a node which contains a `ProcessModel`. This node is considered a single node by the parent `ProcessModel`. When a sub-process node is reached during process execution the sub-process is started and the sub-process node is considered active. The node does not complete until the sub-process has completed.
A linked-process is a node which starts an instance of a `ProcessModel`. Once the linked-process has been started the linked-process node is considered complete by the parent `Process`.

As mentioned above, this service contains methods relating to the security and permissions of various objects. The permissions which can be obtained through this service include: [`getPermissionsForFolder(Long)`](#getPermissionsForFolder\(java.lang.Long\)), `#getPermissionsForPalette(Long)`, [`getPermissionsForProcessApplication()`](#getPermissionsForProcessApplication\(\)), and [`getPermissionsForProcessModel(Long)`](#getPermissionsForProcessModel\(java.lang.Long\)). These methods should be used when determining which actions a `User` can perform on the corresponding object. Permissions are obtained through [`ProcessModelPermissions`](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security"). These may be referenced to determine whether a user has sufficient privileges to perform a particular action.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`ExceptionHandlerService`](ExceptionHandlerService.html "interface in com.appiancorp.suiteapi.process")
-   [`NotesContentService`](NotesContentService.html "interface in com.appiancorp.suiteapi.process")
-   [`ProcessAdministrationService`](ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process")
-   [`ProcessAnalyticsService`](analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")
-   [`ProcessExecutionService`](ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[activateUserSession$UPDATES](#activateUserSession$UPDATES)`

    `static final boolean`

    `[addProcessModelToFavorites$UPDATES](#addProcessModelToFavorites$UPDATES)`

    `static final int`

    `[ALL](#ALL)`

    All possible sub-process states

    `static final boolean`

    `[commitUpdateUsernames$UPDATES](#commitUpdateUsernames$UPDATES)`

    `static final boolean`

    `[createBusinessEntity$UPDATES](#createBusinessEntity$UPDATES)`

    `static final boolean`

    `[createFolder$UPDATES](#createFolder$UPDATES)`

    `static final boolean`

    `[createProcessModel$UPDATES](#createProcessModel$UPDATES)`

    `static final boolean`

    `[createProcessModelWebService$UPDATES](#createProcessModelWebService$UPDATES)`

    `static final boolean`

    `[deleteFolder$UPDATES](#deleteFolder$UPDATES)`

    `static final boolean`

    `[deleteFolders$UPDATES](#deleteFolders$UPDATES)`

    `static final boolean`

    `[deleteProcessModel$UPDATES](#deleteProcessModel$UPDATES)`

    `static final boolean`

    `[deleteProcessModels$UPDATES](#deleteProcessModels$UPDATES)`

    `static final boolean`

    `[deleteProcessModelVersion$UPDATES](#deleteProcessModelVersion$UPDATES)`

    `static final boolean`

    `[deleteProcessModelWebService$UPDATES](#deleteProcessModelWebService$UPDATES)`

    `static final boolean`

    `[disableProcessModel$UPDATES](#disableProcessModel$UPDATES)`

    `static final int`

    `[DOES_NOT_RECURSE](#DOES_NOT_RECURSE)`

    Indicates that there is no recursion in the process model, the subprocess model, or between the process model and sub-process model

    `static final int`

    `[EMBEDDED](#EMBEDDED)`

    Sub-process is embedded in the parent process

    `static final boolean`

    `[enableProcessModel$UPDATES](#enableProcessModel$UPDATES)`

    `static final boolean`

    `[evaluateExpression$UPDATES](#evaluateExpression$UPDATES)`

    `static final boolean`

    `[evaluateExpressionInVariableContext$UPDATES](#evaluateExpressionInVariableContext$UPDATES)`

    `static final boolean`

    `[evaluateRule$UPDATES](#evaluateRule$UPDATES)`

    `static final boolean`

    `[exportProcessModel$UPDATES](#exportProcessModel$UPDATES)`

    `static final boolean`

    `[exportProcessModelVersion$UPDATES](#exportProcessModelVersion$UPDATES)`

    `static final boolean`

    `[externalizeExpression$UPDATES](#externalizeExpression$UPDATES)`

    `static final boolean`

    `[findEventsPaging$UPDATES](#findEventsPaging$UPDATES)`

    `static final boolean`

    `[getACInstanceIdsForLocalIds$UPDATES](#getACInstanceIdsForLocalIds$UPDATES)`

    `static final boolean`

    `[getACPInstanceIdsForLocalIds$UPDATES](#getACPInstanceIdsForLocalIds$UPDATES)`

    `static final boolean`

    `[getACSchemaByLocalId$UPDATES](#getACSchemaByLocalId$UPDATES)`

    `static final boolean`

    `[getActivityClassSchema$UPDATES](#getActivityClassSchema$UPDATES)`

    `static final boolean`

    `[getActivityClassSchemas$UPDATES](#getActivityClassSchemas$UPDATES)`

    `static final boolean`

    `[getAssigneePoolACSchemas$UPDATES](#getAssigneePoolACSchemas$UPDATES)`

    `static final boolean`

    `[getAssignmentPoolACSchemas$UPDATES](#getAssignmentPoolACSchemas$UPDATES)`

    `static final boolean`

    `[getAsynchronousSubProcessModelDescriptorsForProcessModel$UPDATES](#getAsynchronousSubProcessModelDescriptorsForProcessModel$UPDATES)`

    `static final boolean`

    `[getBusinessEntity$UPDATES](#getBusinessEntity$UPDATES)`

    `static final boolean`

    `[getChildFolders$UPDATES](#getChildFolders$UPDATES)`

    `static final boolean`

    `[getCountProcessModelParametersForVersion$UPDATES](#getCountProcessModelParametersForVersion$UPDATES)`

    `static final boolean`

    `[getCurrentNotePaths$UPDATES](#getCurrentNotePaths$UPDATES)`

    `static final boolean`

    `[getDashboardPageForProcessModel$UPDATES](#getDashboardPageForProcessModel$UPDATES)`

    `static final boolean`

    `[getDefaultPriority$UPDATES](#getDefaultPriority$UPDATES)`

    `static final boolean`

    `[getEmailAttachmentFolderIdForPm$UPDATES](#getEmailAttachmentFolderIdForPm$UPDATES)`

    `static final boolean`

    `[getEscalationACSchemas$UPDATES](#getEscalationACSchemas$UPDATES)`

    `static final boolean`

    `[getEventOrProcessModelNames$UPDATES](#getEventOrProcessModelNames$UPDATES)`

    `static final boolean`

    `[getEventsByPersistentId$UPDATES](#getEventsByPersistentId$UPDATES)`

    `static final boolean`

    `[getEventsForProcessModelPaging$UPDATES](#getEventsForProcessModelPaging$UPDATES)`

    `static final boolean`

    `[getExpressionDependencies$UPDATES](#getExpressionDependencies$UPDATES)`

    `static final boolean`

    `[getFolder$UPDATES](#getFolder$UPDATES)`

    `static final boolean`

    `[getFolders$UPDATES](#getFolders$UPDATES)`

    `static final boolean`

    `[getFormConfig$UPDATES](#getFormConfig$UPDATES)`

    `static final boolean`

    `[getFormConfigForVersion$UPDATES](#getFormConfigForVersion$UPDATES)`

    `static final boolean`

    `[getLingeringTasksForProcessModel$UPDATES](#getLingeringTasksForProcessModel$UPDATES)`

    `static final boolean`

    `[getLinkProcessModelDescriptorsForProcessModel$UPDATES](#getLinkProcessModelDescriptorsForProcessModel$UPDATES)`

    `static final boolean`

    `[getMaximumNumberOfAttachments$UPDATES](#getMaximumNumberOfAttachments$UPDATES)`

    `static final boolean`

    `[getMaximumNumberOfNotes$UPDATES](#getMaximumNumberOfNotes$UPDATES)`

    `static final boolean`

    `[getMyProcessModels$UPDATES](#getMyProcessModels$UPDATES)`

    `static final boolean`

    `[getParentsForProcessModel$UPDATES](#getParentsForProcessModel$UPDATES)`

    `static final boolean`

    `[getParentsOfUnpublishedChildrenForProcessModel$UPDATES](#getParentsOfUnpublishedChildrenForProcessModel$UPDATES)`

    `static final boolean`

    `[getPermissionsForFolder$UPDATES](#getPermissionsForFolder$UPDATES)`

    `static final boolean`

    `[getPermissionsForFolders$UPDATES](#getPermissionsForFolders$UPDATES)`

    `static final boolean`

    `[getPermissionsForProcessApplication$UPDATES](#getPermissionsForProcessApplication$UPDATES)`

    `static final boolean`

    `[getPermissionsForProcessModel$UPDATES](#getPermissionsForProcessModel$UPDATES)`

    `static final boolean`

    `[getPermissionsForProcessModels$UPDATES](#getPermissionsForProcessModels$UPDATES)`

    `static final boolean`

    `[getPmIdForEvent$UPDATES](#getPmIdForEvent$UPDATES)`

    `static final boolean`

    `[getPriority$UPDATES](#getPriority$UPDATES)`

    `static final boolean`

    `[getPriorityOfProcessModel$UPDATES](#getPriorityOfProcessModel$UPDATES)`

    `static final boolean`

    `[getProcessDashboardPageForProcessModel$UPDATES](#getProcessDashboardPageForProcessModel$UPDATES)`

    `static final boolean`

    `[getProcessModel$UPDATES](#getProcessModel$UPDATES)`

    `static final boolean`

    `[getProcessModelByUuid$UPDATES](#getProcessModelByUuid$UPDATES)`

    `static final boolean`

    `[getProcessModelDescriptor$UPDATES](#getProcessModelDescriptor$UPDATES)`

    `static final boolean`

    `[getProcessModelDescriptors$UPDATES](#getProcessModelDescriptors$UPDATES)`

    `static final boolean`

    `[getProcessModelDescriptorsContainingAsynchronousSubProcessModel$UPDATES](#getProcessModelDescriptorsContainingAsynchronousSubProcessModel$UPDATES)`

    `static final boolean`

    `[getProcessModelDescriptorsContainingLinkProcessModel$UPDATES](#getProcessModelDescriptorsContainingLinkProcessModel$UPDATES)`

    `static final boolean`

    `[getProcessModelDescriptorsContainingSubProcessModel$UPDATES](#getProcessModelDescriptorsContainingSubProcessModel$UPDATES)`

    `static final boolean`

    `[getProcessModelDescriptorsContainingSynchronousSubProcessModel$UPDATES](#getProcessModelDescriptorsContainingSynchronousSubProcessModel$UPDATES)`

    `static final boolean`

    `[getProcessModelDetails$UPDATES](#getProcessModelDetails$UPDATES)`

    `static final boolean`

    `[getProcessModelIdByUuid$UPDATES](#getProcessModelIdByUuid$UPDATES)`

    `static final boolean`

    `[getProcessModelIdsByUuids$UPDATES](#getProcessModelIdsByUuids$UPDATES)`

    `static final boolean`

    `[getProcessModelLatestPublishedVersion$UPDATES](#getProcessModelLatestPublishedVersion$UPDATES)`

    `static final boolean`

    `[getProcessModelLatestPublishedVersionDescriptor$UPDATES](#getProcessModelLatestPublishedVersionDescriptor$UPDATES)`

    `static final boolean`

    `[getProcessModelParameters$UPDATES](#getProcessModelParameters$UPDATES)`

    `static final boolean`

    `[getProcessModelParametersForVersion$UPDATES](#getProcessModelParametersForVersion$UPDATES)`

    `static final boolean`

    `[getProcessModelProperties$UPDATES](#getProcessModelProperties$UPDATES)`

    `static final boolean`

    `[getProcessModels$UPDATES](#getProcessModels$UPDATES)`

    `static final boolean`

    `[getProcessModelsAndDescendants$UPDATES](#getProcessModelsAndDescendants$UPDATES)`

    `static final boolean`

    `[getProcessModelsForFolder$UPDATES](#getProcessModelsForFolder$UPDATES)`

    `static final boolean`

    `[getProcessModelsForFolderStartableOnly$UPDATES](#getProcessModelsForFolderStartableOnly$UPDATES)`

    `static final boolean`

    `[getProcessModelsForGroup$UPDATES](#getProcessModelsForGroup$UPDATES)`

    `static final boolean`

    `[getProcessModelsICanStart$UPDATES](#getProcessModelsICanStart$UPDATES)`

    `static final boolean`

    `[getProcessModelsLatestPublishedDescriptors$UPDATES](#getProcessModelsLatestPublishedDescriptors$UPDATES)`

    `static final boolean`

    `[getProcessModelVersion$UPDATES](#getProcessModelVersion$UPDATES)`

    `static final boolean`

    `[getProcessModelVersionDescriptor$UPDATES](#getProcessModelVersionDescriptor$UPDATES)`

    `static final boolean`

    `[getProcessModelWebServices$UPDATES](#getProcessModelWebServices$UPDATES)`

    `static final boolean`

    `[getProcessStartingInfo$UPDATES](#getProcessStartingInfo$UPDATES)`

    `static final boolean`

    `[getProcessVariablesForModel$UPDATES](#getProcessVariablesForModel$UPDATES)`

    `static final boolean`

    `[getRecursiveRelationship$UPDATES](#getRecursiveRelationship$UPDATES)`

    `static final boolean`

    `[getRuleIdReferences$UPDATES](#getRuleIdReferences$UPDATES)`

    `static final boolean`

    `[getRuleUuidReferences$UPDATES](#getRuleUuidReferences$UPDATES)`

    `static final boolean`

    `[getSecurityForFolder$UPDATES](#getSecurityForFolder$UPDATES)`

    `static final boolean`

    `[getSecurityForProcessApplication$UPDATES](#getSecurityForProcessApplication$UPDATES)`

    `static final boolean`

    `[getSecurityForProcessModel$UPDATES](#getSecurityForProcessModel$UPDATES)`

    `static final boolean`

    `[getSubProcessModelDescriptorsForProcessModel$UPDATES](#getSubProcessModelDescriptorsForProcessModel$UPDATES)`

    `static final boolean`

    `[getSynchronousSubProcessModelDescriptorsForProcessModel$UPDATES](#getSynchronousSubProcessModelDescriptorsForProcessModel$UPDATES)`

    `static final boolean`

    `[getTopLevelFolders$UPDATES](#getTopLevelFolders$UPDATES)`

    `static final boolean`

    `[getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel$UPDATES](#getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel$UPDATES)`

    `static final boolean`

    `[getTopLevelProcessModelDescriptorsForLinkProcessModel$UPDATES](#getTopLevelProcessModelDescriptorsForLinkProcessModel$UPDATES)`

    `static final boolean`

    `[getTopLevelProcessModelDescriptorsForSubProcessModel$UPDATES](#getTopLevelProcessModelDescriptorsForSubProcessModel$UPDATES)`

    `static final boolean`

    `[getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel$UPDATES](#getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel$UPDATES)`

    `static final boolean`

    `[getUnpublishedChildrenForProcessModel$UPDATES](#getUnpublishedChildrenForProcessModel$UPDATES)`

    `static final boolean`

    `[getVersionsForProcessModel$UPDATES](#getVersionsForProcessModel$UPDATES)`

    `static final boolean`

    `[getVisibleProcessVariables$UPDATES](#getVisibleProcessVariables$UPDATES)`

    `static final boolean`

    `[getVisibleProcessVariablesForVersion$UPDATES](#getVisibleProcessVariablesForVersion$UPDATES)`

    `static final boolean`

    `[handleMessages$UPDATES](#handleMessages$UPDATES)`

    `static final int`

    `[INDEPENDENT](#INDEPENDENT)`

    Sub-process is independent of the parent process

    `static final boolean`

    `[initiateProcess$UPDATES](#initiateProcess$UPDATES)`

    `static final boolean`

    `[internalizeExpression$UPDATES](#internalizeExpression$UPDATES)`

    `static final boolean`

    `[isProcessModelLocked$UPDATES](#isProcessModelLocked$UPDATES)`

    `static final boolean`

    `[isStartFormCapable$UPDATES](#isStartFormCapable$UPDATES)`

    `static final boolean`

    `[listProcessModels$UPDATES](#listProcessModels$UPDATES)`

    `static final boolean`

    `[lockProcessModel$UPDATES](#lockProcessModel$UPDATES)`

    `static final boolean`

    `[moveFolder$UPDATES](#moveFolder$UPDATES)`

    `static final boolean`

    `[moveProcessModel$UPDATES](#moveProcessModel$UPDATES)`

    `static final boolean`

    `[notifyUserCreation$UPDATES](#notifyUserCreation$UPDATES)`

    `static final boolean`

    `[notifyUsersCreation$UPDATES](#notifyUsersCreation$UPDATES)`

    `static final int`

    `[PARENT_PROCESS_RECURSES](#PARENT_PROCESS_RECURSES)`

    Indicates that the parent process model recurses (including the situation where the parent recurses through addition of the sub-process model)

    `static final boolean`

    `[publishProcessModel$UPDATES](#publishProcessModel$UPDATES)`

    `static final boolean`

    `[reloadProperties$UPDATES](#reloadProperties$UPDATES)`

    `static final boolean`

    `[removeDashboardPageForProcessModel$UPDATES](#removeDashboardPageForProcessModel$UPDATES)`

    `static final boolean`

    `[removeProcessDashboardPageForProcessModel$UPDATES](#removeProcessDashboardPageForProcessModel$UPDATES)`

    `static final boolean`

    `[removeProcessModelFromFavorites$UPDATES](#removeProcessModelFromFavorites$UPDATES)`

    `static final boolean`

    `[rollbackUpdateUsernames$UPDATES](#rollbackUpdateUsernames$UPDATES)`

    `static final boolean`

    `[saveAndPublishProcessModel$UPDATES](#saveAndPublishProcessModel$UPDATES)`

    `static final boolean`

    `[setActorsInRolesForFolder$UPDATES](#setActorsInRolesForFolder$UPDATES)`

    `static final boolean`

    `[setActorsInRolesForProcessApplication$UPDATES](#setActorsInRolesForProcessApplication$UPDATES)`

    `static final boolean`

    `[setActorsInRolesForProcessModel$UPDATES](#setActorsInRolesForProcessModel$UPDATES)`

    `static final boolean`

    `[setApplicationAdministratorGroup$UPDATES](#setApplicationAdministratorGroup$UPDATES)`

    `static final boolean`

    `[setCurrentNotePaths$UPDATES](#setCurrentNotePaths$UPDATES)`

    `static final boolean`

    `[setDashboardPageForProcessModel$UPDATES](#setDashboardPageForProcessModel$UPDATES)`

    `static final boolean`

    `[setDefaultPriority$UPDATES](#setDefaultPriority$UPDATES)`

    `static final boolean`

    `[setInheritanceForFolder$UPDATES](#setInheritanceForFolder$UPDATES)`

    `static final boolean`

    `[setPriorityOfProcessModel$UPDATES](#setPriorityOfProcessModel$UPDATES)`

    `static final boolean`

    `[setProcessDashboardPageForProcessModel$UPDATES](#setProcessDashboardPageForProcessModel$UPDATES)`

    `static final boolean`

    `[setSecurityForFolder$UPDATES](#setSecurityForFolder$UPDATES)`

    `static final boolean`

    `[setSecurityForProcessApplication$UPDATES](#setSecurityForProcessApplication$UPDATES)`

    `static final boolean`

    `[setSecurityForProcessModel$UPDATES](#setSecurityForProcessModel$UPDATES)`

    `static final boolean`

    `[setSiteLocaleSettings$UPDATES](#setSiteLocaleSettings$UPDATES)`

    `static final boolean`

    `[setTimeZone$UPDATES](#setTimeZone$UPDATES)`

    `static final boolean`

    `[setTimeZoneSameAs$UPDATES](#setTimeZoneSameAs$UPDATES)`

    `static final boolean`

    `[startProcess$UPDATES](#startProcess$UPDATES)`

    `static final boolean`

    `[startProcessVersion$UPDATES](#startProcessVersion$UPDATES)`

    `static final boolean`

    `[startProcessWithPriority$UPDATES](#startProcessWithPriority$UPDATES)`

    `static final int`

    `[SUBPROCESS_RECURSES](#SUBPROCESS_RECURSES)`

    Indicates that any sub-process of the parent process recurses

    `static final boolean`

    `[unlockProcessModel$UPDATES](#unlockProcessModel$UPDATES)`

    `static final boolean`

    `[unlockProcessModels$UPDATES](#unlockProcessModels$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNPUBLISHED_CHILDREN_INVALID](#UNPUBLISHED_CHILDREN_INVALID)`

    Get unpublished children failed because the process model specified did not exist

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNPUBLISHED_CHILDREN_PUBLISH_PERMISSIONS](#UNPUBLISHED_CHILDREN_PUBLISH_PERMISSIONS)`

    Get unpublished children failed because the process model specified did not exist

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNPUBLISHED_CHILDREN_SUCCESS](#UNPUBLISHED_CHILDREN_SUCCESS)`

    Get unpublished children failed because the user did not have publish permissions

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNPUBLISHED_CHILDREN_VIEW_PERMISSIONS](#UNPUBLISHED_CHILDREN_VIEW_PERMISSIONS)`

    Get unpublished children failed because the user did not have view permissions

    `static final boolean`

    `[updateBusinessEntity$UPDATES](#updateBusinessEntity$UPDATES)`

    `static final boolean`

    `[updateFolder$UPDATES](#updateFolder$UPDATES)`

    `static final boolean`

    `[updateFolders$UPDATES](#updateFolders$UPDATES)`

    `static final boolean`

    `[updateProcessModel$UPDATES](#updateProcessModel$UPDATES)`

    `static final boolean`

    `[updateProcessModelsWithDescriptors$UPDATES](#updateProcessModelsWithDescriptors$UPDATES)`

    `static final boolean`

    `[updateUsernames$UPDATES](#updateUsernames$UPDATES)`

    `static final boolean`

    `[validate$UPDATES](#validate$UPDATES)`

    `static final boolean`

    `[validateGroupMembership$UPDATES](#validateGroupMembership$UPDATES)`

    `static final boolean`

    `[validateProcessModel$UPDATES](#validateProcessModel$UPDATES)`

    `static final boolean`

    `[validateProcessModelVersion$UPDATES](#validateProcessModelVersion$UPDATES)`

    `static final boolean`

    `[validateTypedValues$UPDATES](#validateTypedValues$UPDATES)`

    `static final boolean`

    `[validateUsernames$UPDATES](#validateUsernames$UPDATES)`

    `static final boolean`

    `[versionProcessModel$UPDATES](#versionProcessModel$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[CONFIGURE_METHOD_NAME](../../services/ContextSensitiveSingletonService.html#CONFIGURE_METHOD_NAME)`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[activateUserSession](#activateUserSession\(java.lang.Long%5B%5D,java.lang.Long%5B%5D,java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] membership_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] administration_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Notifies the Process application that a new session has been created for the current user, and provides information about the current user's membership and administration rights to groups.

    `void`

    `[addProcessModelToFavorites](#addProcessModelToFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId_)`

    Associates this `ProcessModel` by given `modelId_` as one of the current user's favorites.

    `void`

    `[commitUpdateUsernames](#commitUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `void`

    `[createBusinessEntity](#createBusinessEntity\(com.appiancorp.suiteapi.process.webservices.BusinessEntity\))([BusinessEntity](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices") business_)`

    Creates a [`BusinessEntity`](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices") for use with Web Services.

    `[ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")`

    `[createFolder](#createFolder\(com.appiancorp.suiteapi.process.ProcessModelFolder\))([ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") folder_)`

    Creates a folder for storing process models.

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[createProcessModel](#createProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_)`

    Creates a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") in the database using the input parameter.

    `void`

    `[createProcessModelWebService](#createProcessModelWebService\(com.appiancorp.suiteapi.process.webservices.ProcessModelWebService\))([ProcessModelWebService](webservices/ProcessModelWebService.html "class in com.appiancorp.suiteapi.process.webservices") pmws_)`

    Create a [`ProcessModelWebService`](webservices/ProcessModelWebService.html "class in com.appiancorp.suiteapi.process.webservices").

    `void`

    `[deleteFolder](#deleteFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Deletes a [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[deleteFolders](#deleteFolders\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] folders_)`

    Deletes a list of folders

    `void`

    `[deleteProcessModel](#deleteProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Deletes a process model.

    `void`

    `[deleteProcessModels](#deleteProcessModels\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processModelIds_)`

    Deletes multiple [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") objects.

    `[ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")`

    `[deleteProcessModelVersion](#deleteProcessModelVersion\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Deletes a version of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `void`

    `[deleteProcessModelWebService](#deleteProcessModelWebService\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName_)`

    Deletes a [`ProcessModelWebService`](webservices/ProcessModelWebService.html "class in com.appiancorp.suiteapi.process.webservices") based on the service name which it contains.

    `void`

    `[disableProcessModel](#disableProcessModel\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Disables a version of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `void`

    `[enableProcessModel](#enableProcessModel\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Enables a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") version.

    `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[evaluateExpression](#evaluateExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression)`

    Evaluate the given expression (including java expression functions).

    `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[evaluateExpression](#evaluateExpression\(java.lang.String,com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression, [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] variableValues)`

    Evaluate the given expression (including java expression functions).

    `[PartialResult](../expression/PartialResult.html "class in com.appiancorp.suiteapi.expression")`

    `[evaluateExpressionInVariableContext](#evaluateExpressionInVariableContext\(java.lang.String,com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D,com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression, [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] typedVariables, [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] continueParams)`

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[exportProcessModel](#exportProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieve a working draft of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[exportProcessModelVersion](#exportProcessModelVersion\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Retrieves a version of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[externalizeExpression](#externalizeExpression\(java.lang.String,java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... parameterNames)`

    Replaces rule names with UUIDs within the given expression.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findEventsPaging](#findEventsPaging\(java.lang.String,java.lang.Long,java.lang.Long%5B%5D,java.lang.Boolean,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchString_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] eventTypes_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeStartEvents_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Searches for Events associated with the given Process Model that match the specified searchString.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getACInstanceIdsForLocalIds](#getACInstanceIdsForLocalIds\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] localIds_)`

    Returns a `ResultList` containing the actual Id's in database corresponding to given localId's of `ActivityClass`

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getACPInstanceIdsForLocalIds](#getACPInstanceIdsForLocalIds\(java.lang.Long,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityClassLocalId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] localIds_)`

    Returns a `ResultList` containing the actual Id's in database for `ActivityClassParameter` corresponding to given a `ActivityClass` localId and `ActivityClassParameter` localId's.

    `[ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")`

    `[getACSchemaByLocalId](#getACSchemaByLocalId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") acsLocalId_)`

    Retrieves an [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") by local id.

    `[ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")`

    `[getActivityClassSchema](#getActivityClassSchema\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") acsId_)`

    Retrieves an [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process").

    `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")[]`

    `[getActivityClassSchemas](#getActivityClassSchemas\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] acsIds_)`

    Retrieves a list of abbreviated [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") representations for the given IDs

    `[ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAssigneePoolACSchemas](#getAssigneePoolACSchemas\(\))()`

    Retrieves the activity class schemas for the activity classes that operate on the assignee pool.

    `[ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAssignmentPoolACSchemas](#getAssignmentPoolACSchemas\(\))()`

    Retrieves the activity class schemas for the activity classes that operate on the assignment pool.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getAsynchronousSubProcessModelDescriptorsForProcessModel](#getAsynchronousSubProcessModelDescriptorsForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieve a list of process model descriptors that represent the working drafts of all linked process models for the given process model.

    `[BusinessEntity](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices")`

    `[getBusinessEntity](#getBusinessEntity\(\))()`

    Retrieves the [`BusinessEntity`](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices") which has been created on the system.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getChildFolders](#getChildFolders\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets all the direct child folders of a process model folder

    `int`

    `[getCountProcessModelParametersForVersion](#getCountProcessModelParametersForVersion\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Retrieves count of all of the process variables that are required to start an instance of the given process model version (ie.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getCurrentNotePaths](#getCurrentNotePaths\(\))()`

    Deprecated.

    since 23.2

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDashboardPageForProcessModel](#getDashboardPageForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Returns the dashboard Id that is used for the `ProcessModel` by given `processModelId_`

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[getDefaultPriority](#getDefaultPriority\(\))()`

    Retrieves the default [`Priority`](Priority.html "class in com.appiancorp.suiteapi.process") for the system.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getEmailAttachmentFolderIdForPm](#getEmailAttachmentFolderIdForPm\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pm_)`

    Returns the Id of the folder where attachments will be stored when an email message is sent to either the `ProcessModel` or any event within the `ProcessModel`

    `[ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")[]`

    `[getEscalationACSchemas](#getEscalationACSchemas\(\))()`

    Retrieves the activity class schemas for activities that can be used as escalations.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getEventOrProcessModelNames](#getEventOrProcessModelNames\(java.lang.Long%5B%5D,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pmIds_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] eventPersistentIds_)`

    Returns the display names of processModels and Events for the provided `ProcessModel` Ids and Event Ids

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getEventsByPersistentId](#getEventsByPersistentId\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] eventPersistentIds_)`

    Returns a ResultList containing Events that correspond to the passed in array of Event persistent IDs.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getEventsForProcessModelPaging](#getEventsForProcessModelPaging\(java.lang.Long,java.lang.Long%5B%5D,java.lang.Boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] eventTypes_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeStartEvents_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns the Events for a given `ProcessModel` specified by `eventTypes_`.

    `[ExpressionDependency](../expression/ExpressionDependency.html "class in com.appiancorp.suiteapi.expression")[]`

    `[getExpressionDependencies](#getExpressionDependencies\(java.lang.String%5B%5D,java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] expression, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] parameterNames)`

    Returns an array of the `ExpressionDependency` objects for the given expressions.

    `[ExpressionDependency](../expression/ExpressionDependency.html "class in com.appiancorp.suiteapi.expression")`

    `[getExpressionDependencies](#getExpressionDependencies\(java.lang.String,java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expressionText, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... parameterNames)`

    Returns the expression dependencies for the given `expressionText`.

    `[ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")`

    `[getFolder](#getFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Retrieves a [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process").

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getFolders](#getFolders\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] folderIds_)`

    Retrieves multiple process model folders

    `[FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getFormConfig](#getFormConfig\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieves the [`FormConfig`](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") of the draft of the given process model.

    `[FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getFormConfigForVersion](#getFormConfigForVersion\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version)`

    Retrieves the [`FormConfig`](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") of the given process model version.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getLingeringTasksForProcessModel](#getLingeringTasksForProcessModel\(java.lang.Long,boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, boolean recursive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns all instances of lingering nodes in the specified process.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getLinkProcessModelDescriptorsForProcessModel](#getLinkProcessModelDescriptorsForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Deprecated.

    Use [`getAsynchronousSubProcessModelDescriptorsForProcessModel(java.lang.Long)`](#getAsynchronousSubProcessModelDescriptorsForProcessModel\(java.lang.Long\)) instead.

    `int`

    `[getMaximumNumberOfAttachments](#getMaximumNumberOfAttachments\(\))()`

    Returns the maximum number of attachments that can be added to a process model or process node.

    `int`

    `[getMaximumNumberOfNotes](#getMaximumNumberOfNotes\(\))()`

    Deprecated.

    since 23.2

    `[ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")[]`

    `[getMyProcessModels](#getMyProcessModels\(\))()`

    Retrieves [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") objects for which the current user is an owner.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getParentsForProcessModel](#getParentsForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieves the working drafts of the parents of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getParentsOfUnpublishedChildrenForProcessModel](#getParentsOfUnpublishedChildrenForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Returns the working drafts of the parents of the unpublished children (sub process models) of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[ProcessModelFolderPermissions](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissionsForFolder](#getPermissionsForFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Retrieves [`ProcessModelFolderPermissions`](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security") for a [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")

    `[ProcessModelFolderPermissions](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security")[]`

    `[getPermissionsForFolders](#getPermissionsForFolders\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] folderIds_)`

    Retrieves [`ProcessModelFolderPermissions`](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security") objects for multiple [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") objects.

    `[ProcessApplicationPermissions](security/ProcessApplicationPermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissionsForProcessApplication](#getPermissionsForProcessApplication\(\))()`

    Retrieves permissions on the Process application for the current user

    `[ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissionsForProcessModel](#getPermissionsForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Retrieves permissions on a process model for the current user.

    `[ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security")[]`

    `[getPermissionsForProcessModels](#getPermissionsForProcessModels\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Retrieves permissions on multiple process models objects for the current user.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPmIdForEvent](#getPmIdForEvent\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") eventPersistentId_)`

    Returns the ID of the `ProcessModel` that the Event by given `eventPersistentId` belongs to.

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[getPriority](#getPriority\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId_)`

    Retrieves a [`Priority`](Priority.html "class in com.appiancorp.suiteapi.process")

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[getPriorityOfProcessModel](#getPriorityOfProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieves the priority for a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessDashboardPageForProcessModel](#getProcessDashboardPageForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Returns the dashboard Id that is used for all processes spawned from the `ProcessModel` by given `processModelId_`

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModel](#getProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieve a working draft of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModelByUuid](#getProcessModelByUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid_)`

    Retrieves the working draft of the [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") specified by a UUID (Universal Unique Identifier).

    `[ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModelDescriptor](#getProcessModelDescriptor\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieves a process model descriptor representing the working draft of a process model.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessModelDescriptors](#getProcessModelDescriptors\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pmIds_)`

    Retrieves multiple process model descriptors, representing the working drafts of the given process models

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessModelDescriptorsContainingAsynchronousSubProcessModel](#getProcessModelDescriptorsContainingAsynchronousSubProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkProcessModelId_)`

    Retrieves process model descriptors representing the working drafts of the process models that contain the given linked process model

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessModelDescriptorsContainingLinkProcessModel](#getProcessModelDescriptorsContainingLinkProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkProcessModelId_)`

    Deprecated.

    Use [`getProcessModelDescriptorsContainingAsynchronousSubProcessModel(java.lang.Long)`](#getProcessModelDescriptorsContainingAsynchronousSubProcessModel\(java.lang.Long\)) instead.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessModelDescriptorsContainingSubProcessModel](#getProcessModelDescriptorsContainingSubProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subProcessModelId_)`

    Deprecated.

    use [`getProcessModelDescriptorsContainingSynchronousSubProcessModel(java.lang.Long)`](#getProcessModelDescriptorsContainingSynchronousSubProcessModel\(java.lang.Long\)) instead

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessModelDescriptorsContainingSynchronousSubProcessModel](#getProcessModelDescriptorsContainingSynchronousSubProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subProcessModelId_)`

    Retrieves process model descriptors representing the working drafts of the process models that contain the given process model as a sub-process model

    `[ProcessModelDetails](ProcessModelDetails.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModelDetails](#getProcessModelDetails\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieves [`ProcessModelDetails`](ProcessModelDetails.html "class in com.appiancorp.suiteapi.process") representing the working drafts of the given [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") If only requiring FormConfig, see `getFormConfig` in this class.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessModelIdByUuid](#getProcessModelIdByUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid_)`

    Retrieves the ID of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") by a UUID (Universal Unique Identifier).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getProcessModelIdsByUuids](#getProcessModelIdsByUuids\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] pmUUIDs_)`

    Returns the IDs of ProcessModels that match the given UUID.

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModelLatestPublishedVersion](#getProcessModelLatestPublishedVersion\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieve the latest published version of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") or the working draft if a published version does not exist.

    `[ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModelLatestPublishedVersionDescriptor](#getProcessModelLatestPublishedVersionDescriptor\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieve the latest published version of a [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") or the working draft if a published version does not exist.

    `[ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessModelParameters](#getProcessModelParameters\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieves all of the process variables that are required to start an instance of the given process model (ie.

    `[ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessModelParametersForVersion](#getProcessModelParametersForVersion\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Retrieves all of the process variables that are required to start an instance of the given process model version (ie.

    `[ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModelProperties](#getProcessModelProperties\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId_)`

    Retrieves the [`ProcessModelProperties`](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") representing the working draft of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessModels](#getProcessModels\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    Use [`getProcessModelDescriptors(Long[])`](#getProcessModelDescriptors\(java.lang.Long%5B%5D\)) or call [`getProcessModel(Long)`](#getProcessModel\(java.lang.Long\)) iteratively instead.

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessModelsAndDescendants](#getProcessModelsAndDescendants\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Retrieves multiple [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") objects as well as the sub `ProcessModel` objects which they contain.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessModelsForFolder](#getProcessModelsForFolder\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieve process model descriptors representing the working drafts of the process models directly in a process model folder

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessModelsForFolderStartableOnly](#getProcessModelsForFolderStartableOnly\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieve descriptors representing the working drafts of the startable process models directly in a process model folder.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessModelsForGroup](#getProcessModelsForGroup\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Process models are no longer associated with groups, but rather are organized into folders.

    `[ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessModelsICanStart](#getProcessModelsICanStart\(\))()`

    Retrieves process model descriptors which represent the working drafts of the process models that the current user has permission to start

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessModelsLatestPublishedDescriptors](#getProcessModelsLatestPublishedDescriptors\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pmIds_)`

    Retrieves multiple process model descriptors, representing the latest published version or a draft if there is no publish version.

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModelVersion](#getProcessModelVersion\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Retrieves a version of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    `[ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModelVersionDescriptor](#getProcessModelVersionDescriptor\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Retrieves the process model descriptor for a version of a `ProcessModel`.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessModelWebServices](#getProcessModelWebServices\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves all [`ProcessModelWebService`](webservices/ProcessModelWebService.html "class in com.appiancorp.suiteapi.process.webservices") objects on the server.

    `[ProcessStartingInfo](webservices/ProcessStartingInfo.html "class in com.appiancorp.suiteapi.process.webservices")`

    `[getProcessStartingInfo](#getProcessStartingInfo\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName_)`

    Retrieves the [`ProcessStartingInfo`](webservices/ProcessStartingInfo.html "class in com.appiancorp.suiteapi.process.webservices") for a service.

    `[ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessVariablesForModel](#getProcessVariablesForModel\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, boolean recursive_)`

    Returns the list of all process variables in a given process model.

    `[ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessVariablesForModel](#getProcessVariablesForModel\(java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid, boolean recursive)`

    Returns the list of all process variables in a given process model.

    `int`

    `[getRecursiveRelationship](#getRecursiveRelationship\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subProcessModelId_)`

    Return the status of the two process models' recursive relationship

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getRuleIdReferences](#getRuleIdReferences\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId)`

    Gets all the rule ids that the expressions within the process model with `pmId` id contain, including nested rules referenced by all the expressions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getRuleUuidReferences](#getRuleUuidReferences\(com.appiancorp.suiteapi.process.ProcessModel\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm)`

    Gets all the rule UUID references that the expressions within the process model bean (`pm`) contain.

    `[Security](../common/Security.html "class in com.appiancorp.suiteapi.common")`

    `[getSecurityForFolder](#getSecurityForFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Gets the security for a process model folder

    `[Security](../common/Security.html "class in com.appiancorp.suiteapi.common")`

    `[getSecurityForProcessApplication](#getSecurityForProcessApplication\(\))()`

    Gets the security settings of the Process Application

    `[Security](../common/Security.html "class in com.appiancorp.suiteapi.common")`

    `[getSecurityForProcessModel](#getSecurityForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Gets the security settings of a process model

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getSubProcessModelDescriptorsForProcessModel](#getSubProcessModelDescriptorsForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Deprecated.

    use [`getSynchronousSubProcessModelDescriptorsForProcessModel(java.lang.Long)`](#getSynchronousSubProcessModelDescriptorsForProcessModel\(java.lang.Long\)) instead

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getSynchronousSubProcessModelDescriptorsForProcessModel](#getSynchronousSubProcessModelDescriptorsForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Gets a ResultList containing process model descriptors representing the working drafts of the sub-process models of the given process model

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTopLevelFolders](#getTopLevelFolders\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns the top level folders in the process application that the current user can see.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel](#getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkProcessModelId_)`

    Gets a `ResultList` containing process model descriptors that represent the working drafts of all parent process models for the given linked process model

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getTopLevelProcessModelDescriptorsForLinkProcessModel](#getTopLevelProcessModelDescriptorsForLinkProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkProcessModelId_)`

    Deprecated.

    use [`getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel(java.lang.Long)`](#getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel\(java.lang.Long\)) instead

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getTopLevelProcessModelDescriptorsForSubProcessModel](#getTopLevelProcessModelDescriptorsForSubProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subProcessModelId_)`

    Deprecated.

    use [`getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel(java.lang.Long)`](#getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel\(java.lang.Long\)) instead

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel](#getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subProcessModelId_)`

    Gets a ResultList containing process model descriptors that represent the working drafts of the top level process models of the given sub-process model

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getUnpublishedChildrenForProcessModel](#getUnpublishedChildrenForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Returns the working draft of the unpublished children (sub process models) of the given process model

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getVersionsForProcessModel](#getVersionsForProcessModel\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the versions for a process model

    `[ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getVisibleProcessVariables](#getVisibleProcessVariables\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Retrieves all visible process variables associated with the given process model, or the process variables that are reportable through analytics and can be mapped in a subprocess relationship

    `[ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getVisibleProcessVariablesForVersion](#getVisibleProcessVariablesForVersion\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Retrieves all visible process variables associated with the given process model version, or the process variables that are reportable through analytics and can be mapped in a subprocess relationship

    `int[]`

    `[handleMessages](#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\))([InternalMessage](../messaging/InternalMessage.html "class in com.appiancorp.suiteapi.messaging")[] messages_)`

    Sends the messages to the design server to be handled by the Events framework, and returns appropriate result codes.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[initiateProcess](#initiateProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessStartConfig\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [ProcessStartConfig](ProcessStartConfig.html "class in com.appiancorp.suiteapi.process") config)`

    Starts an instance of the given process model.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[internalizeExpression](#internalizeExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression)`

    Replaces UUIDs with rule names within the given expression.

    `boolean`

    `[isProcessModelLocked](#isProcessModelLocked\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Determines whether a process model is locked

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[isStartFormCapable](#isStartFormCapable\(java.lang.Long%5B%5D,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processModelIds, int capabilities)`

    Retrieves a ResultList containing Boolean values representing whether the start form for the latest published version of each of the process models is capable of ALL the specified form capabilities.

    `[ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")[]`

    `[listProcessModels](#listProcessModels\(\))()`

    Deprecated.

    Use [`getProcessModelDescriptors(Long[])`](#getProcessModelDescriptors\(java.lang.Long%5B%5D\)) instead.

    `void`

    `[lockProcessModel](#lockProcessModel\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, boolean override_)`

    Locks the specified process model

    `void`

    `[moveFolder](#moveFolder\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId_)`

    Moves a process model folder

    `void`

    `[moveProcessModel](#moveProcessModel\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId_)`

    Moves a process model to a new process model folder

    `void`

    `[notifyUserCreation](#notifyUserCreation\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Deprecated.

    done automatically by UserService.createUser

    `void`

    `[notifyUsersCreation](#notifyUsersCreation\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Notifies the server that new users were created on the Personalization server

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[publishProcessModel](#publishProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") processModel_)`

    Deprecated.

    use saveAndPublishProcessModel

    `void`

    `[reloadProperties](#reloadProperties\(\))()`

    Deprecated.

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    `void`

    `[removeDashboardPageForProcessModel](#removeDashboardPageForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId)`

    Disassociates the current Dashboard page for the given `ProcessModel` by `processModelId`.

    `void`

    `[removeProcessDashboardPageForProcessModel](#removeProcessDashboardPageForProcessModel\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Removes any custom dashboards created for instances of a particular process model.

    `void`

    `[removeProcessModelFromFavorites](#removeProcessModelFromFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId_)`

    Removes this `ProcessModel` by given `modelId_` as one of the current user's favorites.

    `void`

    `[rollbackUpdateUsernames](#rollbackUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[ProcessModelWithErrors](ProcessModelWithErrors.html "class in com.appiancorp.suiteapi.process")`

    `[saveAndPublishProcessModel](#saveAndPublishProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,boolean\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") processModel_, boolean overrideLock_)`

    Attempts to lock, save, validate, and publish the given model.

    `void`

    `[setActorsInRolesForFolder](#setActorsInRolesForFolder\(java.lang.Long,java.lang.String%5B%5D,java.lang.String%5B%5D%5B%5D,java.lang.Long%5B%5D,java.lang.String%5B%5D%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] userRoles_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] groupRoles_)`

    Sets actors (users and groups) in roles for a process model folder.

    `void`

    `[setActorsInRolesForProcessApplication](#setActorsInRolesForProcessApplication\(java.lang.String%5B%5D,java.lang.String%5B%5D%5B%5D,java.lang.Long%5B%5D,java.lang.String%5B%5D%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] userRoles_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] groupRoles_)`

    Adds and/or modifies the roles of users and groups on the Process Application.

    `void`

    `[setActorsInRolesForProcessModel](#setActorsInRolesForProcessModel\(java.lang.Long,java.lang.String%5B%5D,java.lang.String%5B%5D%5B%5D,java.lang.Long%5B%5D,java.lang.String%5B%5D%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] userRoles_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] groupRoles_)`

    Adds and/or modifies the roles of users and groups on a specified ProcessModel.

    `void`

    `[setApplicationAdministratorGroup](#setApplicationAdministratorGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Determines which group users need to be in to have the application administrator role.

    `void`

    `[setCurrentNotePaths](#setCurrentNotePaths\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] notePaths_)`

    Deprecated.

    since 23.2

    `void`

    `[setDashboardPageForProcessModel](#setDashboardPageForProcessModel\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId)`

    Sets a page as the Dashboard page for the given `ProcessModel` by `processModelId`.

    `void`

    `[setDefaultPriority](#setDefaultPriority\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId_)`

    Sets the default Priority that the Process Application will use.

    `void`

    `[setInheritanceForFolder](#setInheritanceForFolder\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, boolean inherits_)`

    Sets the inheritance for a process model folder

    `void`

    `[setPriorityOfProcessModel](#setPriorityOfProcessModel\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId_)`

    Sets the priority of a process model

    `void`

    `[setProcessDashboardPageForProcessModel](#setProcessDashboardPageForProcessModel\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Sets a particular page as the dashboard for every instance of a given `ProcessModel` by `processModelId`.

    `void`

    `[setSecurityForFolder](#setSecurityForFolder\(java.lang.Long,com.appiancorp.suiteapi.common.Security\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") security_)`

    Sets the security for a process model folder.

    `void`

    `[setSecurityForProcessApplication](#setSecurityForProcessApplication\(com.appiancorp.suiteapi.common.Security\))([Security](../common/Security.html "class in com.appiancorp.suiteapi.common") s_)`

    Sets the security settings of the Process Application.

    `void`

    `[setSecurityForProcessModel](#setSecurityForProcessModel\(java.lang.Long,com.appiancorp.suiteapi.common.Security\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") s_)`

    Sets the security settings of a process model.

    `void`

    `[setSiteLocaleSettings](#setSiteLocaleSettings\(com.appiancorp.suiteapi.portal.SiteLocaleSettings\))([SiteLocaleSettings](../portal/SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") settings_)`

    Registers the site locale settings on the process design server.

    `void`

    `[setTimeZone](#setTimeZone\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple\))([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz)`

    Set a backend timezone.

    `void`

    `[setTimeZoneSameAs](#setTimeZoneSameAs\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple,java.lang.String\))([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sameAsId)`

    Set a backend timezone to have the same rules as another backend timezone the sameAsId.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[startProcess](#startProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariable%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[] variables_)`

    Deprecated.

    Use [`initiateProcess(Long, ProcessStartConfig)`](#initiateProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessStartConfig\)), which has better enforcement of required parameters (requires that their values not be null or empty)

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[startProcessVersion](#startProcessVersion\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariable%5B%5D,java.lang.String,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[] variables_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId_)`

    Deprecated.

    Use [`initiateProcess(Long, ProcessStartConfig)`](#initiateProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessStartConfig\)), which has better enforcement of required parameters (requires that their values not be null or empty)

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[startProcessWithPriority](#startProcessWithPriority\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariable%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[] variables_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId_)`

    Deprecated.

    Use [`initiateProcess(Long, ProcessStartConfig)`](#initiateProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessStartConfig\)), which has better enforcement of required parameters (requires that their values not be null or empty)

    `void`

    `[unlockProcessModel](#unlockProcessModel\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, boolean override_)`

    Unlocks the given process model

    `void`

    `[unlockProcessModels](#unlockProcessModels\(\))()`

    Unlocks all process models locked by the current user.

    `void`

    `[updateBusinessEntity](#updateBusinessEntity\(com.appiancorp.suiteapi.process.webservices.BusinessEntity\))([BusinessEntity](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices") business_)`

    Updates a [`BusinessEntity`](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices").

    `[ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")`

    `[updateFolder](#updateFolder\(com.appiancorp.suiteapi.process.ProcessModelFolder\))([ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") folder_)`

    Updates a process model folder.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[updateFolders](#updateFolders\(com.appiancorp.suiteapi.process.ProcessModelFolder%5B%5D\))([ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")[] processModelFolders_)`

    Updates a list of process model folders.

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[updateProcessModel](#updateProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_)`

    Updates a process model in the database based on the input parameter.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[updateProcessModelsWithDescriptors](#updateProcessModelsWithDescriptors\(com.appiancorp.suiteapi.process.ProcessModel.Descriptor%5B%5D\))([ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")[] descriptors_)`

    Updates process models in the database.

    `void`

    `[updateUsernames](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] oldUsernames_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] newUsernames_, long maxExpirationTimeInSeconds_)`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[validate](#validate\(\))()`

    Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

    `boolean`

    `[validateGroupMembership](#validateGroupMembership\(java.lang.Long%5B%5D,java.lang.Long%5B%5D,java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] memGroupIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] admGroupIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Validates if the association of a user as 'Member' and as an 'Administrator has changed or not.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[validateProcessModel](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel\))([AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") apm_)`

    Returns the results of validating a process model

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[validateProcessModelVersion](#validateProcessModelVersion\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Returns the results of validating a process model, same as getProcessModelVersion followed by validateProcessModel.

    `boolean`

    `[validateTypedValues](#validateTypedValues\(com.appiancorp.suiteapi.type.TypedValue%5B%5D\))([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")[] typedValues)`

    Validates given TypedValues.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[validateUsernames](#validateUsernames\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Returns an array of Boolean values, Boolean.TRUE if the user given by the username exists and Boolean.FALSE otherwise.

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[versionProcessModel](#versionProcessModel\(com.appiancorp.suiteapi.process.ProcessDiagram\))([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pm_)`

    The returned process model is not transformed.

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[versionProcessModel](#versionProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_)`

    Versions a process model in the database based on the input parameter.

    ### Methods inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[configureContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html#configureContextSensitiveSingletonService\(com.appiancorp.services.spring.ServiceContextProvider,com.appiancorp.services.AuthorizationInterceptorProvider\))`

-   ## Field Details

    -   ### DOES\_NOT\_RECURSE

        static final int DOES\_NOT\_RECURSE

        Indicates that there is no recursion in the process model, the subprocess model, or between the process model and sub-process model

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.DOES_NOT_RECURSE)

    -   ### PARENT\_PROCESS\_RECURSES

        static final int PARENT\_PROCESS\_RECURSES

        Indicates that the parent process model recurses (including the situation where the parent recurses through addition of the sub-process model)

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.PARENT_PROCESS_RECURSES)

    -   ### SUBPROCESS\_RECURSES

        static final int SUBPROCESS\_RECURSES

        Indicates that any sub-process of the parent process recurses

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.SUBPROCESS_RECURSES)

    -   ### EMBEDDED

        static final int EMBEDDED

        Sub-process is embedded in the parent process

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.EMBEDDED)

    -   ### INDEPENDENT

        static final int INDEPENDENT

        Sub-process is independent of the parent process

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.INDEPENDENT)

    -   ### ALL

        static final int ALL

        All possible sub-process states

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.ALL)

    -   ### UNPUBLISHED\_CHILDREN\_VIEW\_PERMISSIONS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNPUBLISHED\_CHILDREN\_VIEW\_PERMISSIONS

        Get unpublished children failed because the user did not have view permissions

    -   ### UNPUBLISHED\_CHILDREN\_INVALID

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNPUBLISHED\_CHILDREN\_INVALID

        Get unpublished children failed because the process model specified did not exist

    -   ### UNPUBLISHED\_CHILDREN\_PUBLISH\_PERMISSIONS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNPUBLISHED\_CHILDREN\_PUBLISH\_PERMISSIONS

        Get unpublished children failed because the process model specified did not exist

    -   ### UNPUBLISHED\_CHILDREN\_SUCCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNPUBLISHED\_CHILDREN\_SUCCESS

        Get unpublished children failed because the user did not have publish permissions

    -   ### createProcessModel$UPDATES

        static final boolean createProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.createProcessModel$UPDATES)

    -   ### updateProcessModel$UPDATES

        static final boolean updateProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.updateProcessModel$UPDATES)

    -   ### getProcessModel$UPDATES

        static final boolean getProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModel$UPDATES)

    -   ### exportProcessModel$UPDATES

        static final boolean exportProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.exportProcessModel$UPDATES)

    -   ### listProcessModels$UPDATES

        static final boolean listProcessModels$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.listProcessModels$UPDATES)

    -   ### getActivityClassSchemas$UPDATES

        static final boolean getActivityClassSchemas$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getActivityClassSchemas$UPDATES)

    -   ### getActivityClassSchema$UPDATES

        static final boolean getActivityClassSchema$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getActivityClassSchema$UPDATES)

    -   ### getACSchemaByLocalId$UPDATES

        static final boolean getACSchemaByLocalId$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getACSchemaByLocalId$UPDATES)

    -   ### startProcess$UPDATES

        static final boolean startProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.startProcess$UPDATES)

    -   ### startProcessWithPriority$UPDATES

        static final boolean startProcessWithPriority$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.startProcessWithPriority$UPDATES)

    -   ### initiateProcess$UPDATES

        static final boolean initiateProcess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.initiateProcess$UPDATES)

    -   ### getProcessModelsForGroup$UPDATES

        static final boolean getProcessModelsForGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelsForGroup$UPDATES)

    -   ### getProcessModelDetails$UPDATES

        static final boolean getProcessModelDetails$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelDetails$UPDATES)

    -   ### getFormConfig$UPDATES

        static final boolean getFormConfig$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getFormConfig$UPDATES)

    -   ### getFormConfigForVersion$UPDATES

        static final boolean getFormConfigForVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getFormConfigForVersion$UPDATES)

    -   ### isStartFormCapable$UPDATES

        static final boolean isStartFormCapable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.isStartFormCapable$UPDATES)

    -   ### getMyProcessModels$UPDATES

        static final boolean getMyProcessModels$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getMyProcessModels$UPDATES)

    -   ### getProcessModelsICanStart$UPDATES

        static final boolean getProcessModelsICanStart$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelsICanStart$UPDATES)

    -   ### getProcessModels$UPDATES

        static final boolean getProcessModels$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModels$UPDATES)

    -   ### getProcessModelParameters$UPDATES

        static final boolean getProcessModelParameters$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelParameters$UPDATES)

    -   ### getVisibleProcessVariables$UPDATES

        static final boolean getVisibleProcessVariables$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getVisibleProcessVariables$UPDATES)

    -   ### getAssigneePoolACSchemas$UPDATES

        static final boolean getAssigneePoolACSchemas$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getAssigneePoolACSchemas$UPDATES)

    -   ### getAssignmentPoolACSchemas$UPDATES

        static final boolean getAssignmentPoolACSchemas$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getAssignmentPoolACSchemas$UPDATES)

    -   ### activateUserSession$UPDATES

        static final boolean activateUserSession$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.activateUserSession$UPDATES)

    -   ### getEscalationACSchemas$UPDATES

        static final boolean getEscalationACSchemas$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getEscalationACSchemas$UPDATES)

    -   ### deleteProcessModel$UPDATES

        static final boolean deleteProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.deleteProcessModel$UPDATES)

    -   ### deleteProcessModels$UPDATES

        static final boolean deleteProcessModels$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.deleteProcessModels$UPDATES)

    -   ### getProcessModelDescriptor$UPDATES

        static final boolean getProcessModelDescriptor$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelDescriptor$UPDATES)

    -   ### getRecursiveRelationship$UPDATES

        static final boolean getRecursiveRelationship$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getRecursiveRelationship$UPDATES)

    -   ### getSubProcessModelDescriptorsForProcessModel$UPDATES

        static final boolean getSubProcessModelDescriptorsForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getSubProcessModelDescriptorsForProcessModel$UPDATES)

    -   ### getSynchronousSubProcessModelDescriptorsForProcessModel$UPDATES

        static final boolean getSynchronousSubProcessModelDescriptorsForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getSynchronousSubProcessModelDescriptorsForProcessModel$UPDATES)

    -   ### getProcessModelDescriptorsContainingSubProcessModel$UPDATES

        static final boolean getProcessModelDescriptorsContainingSubProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelDescriptorsContainingSubProcessModel$UPDATES)

    -   ### getProcessModelDescriptorsContainingSynchronousSubProcessModel$UPDATES

        static final boolean getProcessModelDescriptorsContainingSynchronousSubProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelDescriptorsContainingSynchronousSubProcessModel$UPDATES)

    -   ### getTopLevelProcessModelDescriptorsForSubProcessModel$UPDATES

        static final boolean getTopLevelProcessModelDescriptorsForSubProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getTopLevelProcessModelDescriptorsForSubProcessModel$UPDATES)

    -   ### getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel$UPDATES

        static final boolean getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel$UPDATES)

    -   ### getLinkProcessModelDescriptorsForProcessModel$UPDATES

        static final boolean getLinkProcessModelDescriptorsForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getLinkProcessModelDescriptorsForProcessModel$UPDATES)

    -   ### getAsynchronousSubProcessModelDescriptorsForProcessModel$UPDATES

        static final boolean getAsynchronousSubProcessModelDescriptorsForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getAsynchronousSubProcessModelDescriptorsForProcessModel$UPDATES)

    -   ### getProcessModelDescriptorsContainingLinkProcessModel$UPDATES

        static final boolean getProcessModelDescriptorsContainingLinkProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelDescriptorsContainingLinkProcessModel$UPDATES)

    -   ### getProcessModelDescriptorsContainingAsynchronousSubProcessModel$UPDATES

        static final boolean getProcessModelDescriptorsContainingAsynchronousSubProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelDescriptorsContainingAsynchronousSubProcessModel$UPDATES)

    -   ### getTopLevelProcessModelDescriptorsForLinkProcessModel$UPDATES

        static final boolean getTopLevelProcessModelDescriptorsForLinkProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getTopLevelProcessModelDescriptorsForLinkProcessModel$UPDATES)

    -   ### getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel$UPDATES

        static final boolean getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel$UPDATES)

    -   ### getSecurityForProcessApplication$UPDATES

        static final boolean getSecurityForProcessApplication$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getSecurityForProcessApplication$UPDATES)

    -   ### setSecurityForProcessApplication$UPDATES

        static final boolean setSecurityForProcessApplication$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setSecurityForProcessApplication$UPDATES)

    -   ### getSecurityForProcessModel$UPDATES

        static final boolean getSecurityForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getSecurityForProcessModel$UPDATES)

    -   ### setSecurityForProcessModel$UPDATES

        static final boolean setSecurityForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setSecurityForProcessModel$UPDATES)

    -   ### setActorsInRolesForProcessApplication$UPDATES

        static final boolean setActorsInRolesForProcessApplication$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setActorsInRolesForProcessApplication$UPDATES)

    -   ### setActorsInRolesForProcessModel$UPDATES

        static final boolean setActorsInRolesForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setActorsInRolesForProcessModel$UPDATES)

    -   ### getPermissionsForProcessApplication$UPDATES

        static final boolean getPermissionsForProcessApplication$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getPermissionsForProcessApplication$UPDATES)

    -   ### getPermissionsForProcessModel$UPDATES

        static final boolean getPermissionsForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getPermissionsForProcessModel$UPDATES)

    -   ### getPermissionsForProcessModels$UPDATES

        static final boolean getPermissionsForProcessModels$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getPermissionsForProcessModels$UPDATES)

    -   ### getPriority$UPDATES

        static final boolean getPriority$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getPriority$UPDATES)

    -   ### getDefaultPriority$UPDATES

        static final boolean getDefaultPriority$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getDefaultPriority$UPDATES)

    -   ### setDefaultPriority$UPDATES

        static final boolean setDefaultPriority$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setDefaultPriority$UPDATES)

    -   ### getPriorityOfProcessModel$UPDATES

        static final boolean getPriorityOfProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getPriorityOfProcessModel$UPDATES)

    -   ### setPriorityOfProcessModel$UPDATES

        static final boolean setPriorityOfProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setPriorityOfProcessModel$UPDATES)

    -   ### lockProcessModel$UPDATES

        static final boolean lockProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.lockProcessModel$UPDATES)

    -   ### getProcessModelVersion$UPDATES

        static final boolean getProcessModelVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelVersion$UPDATES)

    -   ### exportProcessModelVersion$UPDATES

        static final boolean exportProcessModelVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.exportProcessModelVersion$UPDATES)

    -   ### versionProcessModel$UPDATES

        static final boolean versionProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.versionProcessModel$UPDATES)

    -   ### getProcessModelsForFolder$UPDATES

        static final boolean getProcessModelsForFolder$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelsForFolder$UPDATES)

    -   ### getChildFolders$UPDATES

        static final boolean getChildFolders$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getChildFolders$UPDATES)

    -   ### getTopLevelFolders$UPDATES

        static final boolean getTopLevelFolders$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getTopLevelFolders$UPDATES)

    -   ### getVersionsForProcessModel$UPDATES

        static final boolean getVersionsForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getVersionsForProcessModel$UPDATES)

    -   ### setActorsInRolesForFolder$UPDATES

        static final boolean setActorsInRolesForFolder$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setActorsInRolesForFolder$UPDATES)

    -   ### unlockProcessModel$UPDATES

        static final boolean unlockProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.unlockProcessModel$UPDATES)

    -   ### unlockProcessModels$UPDATES

        static final boolean unlockProcessModels$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.unlockProcessModels$UPDATES)

    -   ### getFolder$UPDATES

        static final boolean getFolder$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getFolder$UPDATES)

    -   ### getFolders$UPDATES

        static final boolean getFolders$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getFolders$UPDATES)

    -   ### startProcessVersion$UPDATES

        static final boolean startProcessVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.startProcessVersion$UPDATES)

    -   ### getProcessModelProperties$UPDATES

        static final boolean getProcessModelProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelProperties$UPDATES)

    -   ### getMaximumNumberOfNotes$UPDATES

        static final boolean getMaximumNumberOfNotes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getMaximumNumberOfNotes$UPDATES)

    -   ### getMaximumNumberOfAttachments$UPDATES

        static final boolean getMaximumNumberOfAttachments$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getMaximumNumberOfAttachments$UPDATES)

    -   ### getUnpublishedChildrenForProcessModel$UPDATES

        static final boolean getUnpublishedChildrenForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getUnpublishedChildrenForProcessModel$UPDATES)

    -   ### getParentsForProcessModel$UPDATES

        static final boolean getParentsForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getParentsForProcessModel$UPDATES)

    -   ### getParentsOfUnpublishedChildrenForProcessModel$UPDATES

        static final boolean getParentsOfUnpublishedChildrenForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getParentsOfUnpublishedChildrenForProcessModel$UPDATES)

    -   ### publishProcessModel$UPDATES

        static final boolean publishProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.publishProcessModel$UPDATES)

    -   ### saveAndPublishProcessModel$UPDATES

        static final boolean saveAndPublishProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.saveAndPublishProcessModel$UPDATES)

    -   ### getVisibleProcessVariablesForVersion$UPDATES

        static final boolean getVisibleProcessVariablesForVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getVisibleProcessVariablesForVersion$UPDATES)

    -   ### getProcessModelParametersForVersion$UPDATES

        static final boolean getProcessModelParametersForVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelParametersForVersion$UPDATES)

    -   ### getCountProcessModelParametersForVersion$UPDATES

        static final boolean getCountProcessModelParametersForVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getCountProcessModelParametersForVersion$UPDATES)

    -   ### updateFolder$UPDATES

        static final boolean updateFolder$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.updateFolder$UPDATES)

    -   ### createFolder$UPDATES

        static final boolean createFolder$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.createFolder$UPDATES)

    -   ### disableProcessModel$UPDATES

        static final boolean disableProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.disableProcessModel$UPDATES)

    -   ### enableProcessModel$UPDATES

        static final boolean enableProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.enableProcessModel$UPDATES)

    -   ### deleteFolders$UPDATES

        static final boolean deleteFolders$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.deleteFolders$UPDATES)

    -   ### deleteFolder$UPDATES

        static final boolean deleteFolder$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.deleteFolder$UPDATES)

    -   ### updateFolders$UPDATES

        static final boolean updateFolders$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.updateFolders$UPDATES)

    -   ### updateProcessModelsWithDescriptors$UPDATES

        static final boolean updateProcessModelsWithDescriptors$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.updateProcessModelsWithDescriptors$UPDATES)

    -   ### getSecurityForFolder$UPDATES

        static final boolean getSecurityForFolder$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getSecurityForFolder$UPDATES)

    -   ### setSecurityForFolder$UPDATES

        static final boolean setSecurityForFolder$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setSecurityForFolder$UPDATES)

    -   ### getProcessModelDescriptors$UPDATES

        static final boolean getProcessModelDescriptors$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelDescriptors$UPDATES)

    -   ### getProcessModelsLatestPublishedDescriptors$UPDATES

        static final boolean getProcessModelsLatestPublishedDescriptors$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelsLatestPublishedDescriptors$UPDATES)

    -   ### getProcessModelVersionDescriptor$UPDATES

        static final boolean getProcessModelVersionDescriptor$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelVersionDescriptor$UPDATES)

    -   ### moveProcessModel$UPDATES

        static final boolean moveProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.moveProcessModel$UPDATES)

    -   ### moveFolder$UPDATES

        static final boolean moveFolder$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.moveFolder$UPDATES)

    -   ### getPermissionsForFolder$UPDATES

        static final boolean getPermissionsForFolder$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getPermissionsForFolder$UPDATES)

    -   ### getPermissionsForFolders$UPDATES

        static final boolean getPermissionsForFolders$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getPermissionsForFolders$UPDATES)

    -   ### setInheritanceForFolder$UPDATES

        static final boolean setInheritanceForFolder$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setInheritanceForFolder$UPDATES)

    -   ### deleteProcessModelVersion$UPDATES

        static final boolean deleteProcessModelVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.deleteProcessModelVersion$UPDATES)

    -   ### getBusinessEntity$UPDATES

        static final boolean getBusinessEntity$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getBusinessEntity$UPDATES)

    -   ### createBusinessEntity$UPDATES

        static final boolean createBusinessEntity$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.createBusinessEntity$UPDATES)

    -   ### updateBusinessEntity$UPDATES

        static final boolean updateBusinessEntity$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.updateBusinessEntity$UPDATES)

    -   ### getProcessModelWebServices$UPDATES

        static final boolean getProcessModelWebServices$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelWebServices$UPDATES)

    -   ### createProcessModelWebService$UPDATES

        static final boolean createProcessModelWebService$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.createProcessModelWebService$UPDATES)

    -   ### deleteProcessModelWebService$UPDATES

        static final boolean deleteProcessModelWebService$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.deleteProcessModelWebService$UPDATES)

    -   ### getProcessStartingInfo$UPDATES

        static final boolean getProcessStartingInfo$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessStartingInfo$UPDATES)

    -   ### getProcessModelByUuid$UPDATES

        static final boolean getProcessModelByUuid$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelByUuid$UPDATES)

    -   ### getProcessModelIdByUuid$UPDATES

        static final boolean getProcessModelIdByUuid$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelIdByUuid$UPDATES)

    -   ### getProcessModelsAndDescendants$UPDATES

        static final boolean getProcessModelsAndDescendants$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelsAndDescendants$UPDATES)

    -   ### getProcessModelsForFolderStartableOnly$UPDATES

        static final boolean getProcessModelsForFolderStartableOnly$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelsForFolderStartableOnly$UPDATES)

    -   ### validateProcessModel$UPDATES

        static final boolean validateProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.validateProcessModel$UPDATES)

    -   ### validateProcessModelVersion$UPDATES

        static final boolean validateProcessModelVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.validateProcessModelVersion$UPDATES)

    -   ### isProcessModelLocked$UPDATES

        static final boolean isProcessModelLocked$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.isProcessModelLocked$UPDATES)

    -   ### getProcessModelLatestPublishedVersion$UPDATES

        static final boolean getProcessModelLatestPublishedVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelLatestPublishedVersion$UPDATES)

    -   ### getProcessModelLatestPublishedVersionDescriptor$UPDATES

        static final boolean getProcessModelLatestPublishedVersionDescriptor$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelLatestPublishedVersionDescriptor$UPDATES)

    -   ### getACInstanceIdsForLocalIds$UPDATES

        static final boolean getACInstanceIdsForLocalIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getACInstanceIdsForLocalIds$UPDATES)

    -   ### getACPInstanceIdsForLocalIds$UPDATES

        static final boolean getACPInstanceIdsForLocalIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getACPInstanceIdsForLocalIds$UPDATES)

    -   ### notifyUserCreation$UPDATES

        static final boolean notifyUserCreation$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.notifyUserCreation$UPDATES)

    -   ### notifyUsersCreation$UPDATES

        static final boolean notifyUsersCreation$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.notifyUsersCreation$UPDATES)

    -   ### validateGroupMembership$UPDATES

        static final boolean validateGroupMembership$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.validateGroupMembership$UPDATES)

    -   ### updateUsernames$UPDATES

        static final boolean updateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.updateUsernames$UPDATES)

    -   ### commitUpdateUsernames$UPDATES

        static final boolean commitUpdateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.commitUpdateUsernames$UPDATES)

    -   ### rollbackUpdateUsernames$UPDATES

        static final boolean rollbackUpdateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.rollbackUpdateUsernames$UPDATES)

    -   ### setApplicationAdministratorGroup$UPDATES

        static final boolean setApplicationAdministratorGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setApplicationAdministratorGroup$UPDATES)

    -   ### reloadProperties$UPDATES

        static final boolean reloadProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.reloadProperties$UPDATES)

    -   ### validate$UPDATES

        static final boolean validate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.validate$UPDATES)

    -   ### setSiteLocaleSettings$UPDATES

        static final boolean setSiteLocaleSettings$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setSiteLocaleSettings$UPDATES)

    -   ### getEventsForProcessModelPaging$UPDATES

        static final boolean getEventsForProcessModelPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getEventsForProcessModelPaging$UPDATES)

    -   ### findEventsPaging$UPDATES

        static final boolean findEventsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.findEventsPaging$UPDATES)

    -   ### getEventOrProcessModelNames$UPDATES

        static final boolean getEventOrProcessModelNames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getEventOrProcessModelNames$UPDATES)

    -   ### getProcessModelIdsByUuids$UPDATES

        static final boolean getProcessModelIdsByUuids$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelIdsByUuids$UPDATES)

    -   ### getEmailAttachmentFolderIdForPm$UPDATES

        static final boolean getEmailAttachmentFolderIdForPm$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getEmailAttachmentFolderIdForPm$UPDATES)

    -   ### getPmIdForEvent$UPDATES

        static final boolean getPmIdForEvent$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getPmIdForEvent$UPDATES)

    -   ### getEventsByPersistentId$UPDATES

        static final boolean getEventsByPersistentId$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getEventsByPersistentId$UPDATES)

    -   ### setDashboardPageForProcessModel$UPDATES

        static final boolean setDashboardPageForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setDashboardPageForProcessModel$UPDATES)

    -   ### getDashboardPageForProcessModel$UPDATES

        static final boolean getDashboardPageForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getDashboardPageForProcessModel$UPDATES)

    -   ### removeDashboardPageForProcessModel$UPDATES

        static final boolean removeDashboardPageForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.removeDashboardPageForProcessModel$UPDATES)

    -   ### addProcessModelToFavorites$UPDATES

        static final boolean addProcessModelToFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.addProcessModelToFavorites$UPDATES)

    -   ### removeProcessModelFromFavorites$UPDATES

        static final boolean removeProcessModelFromFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.removeProcessModelFromFavorites$UPDATES)

    -   ### handleMessages$UPDATES

        static final boolean handleMessages$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.handleMessages$UPDATES)

    -   ### validateUsernames$UPDATES

        static final boolean validateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.validateUsernames$UPDATES)

    -   ### getProcessVariablesForModel$UPDATES

        static final boolean getProcessVariablesForModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessVariablesForModel$UPDATES)

    -   ### getCurrentNotePaths$UPDATES

        static final boolean getCurrentNotePaths$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getCurrentNotePaths$UPDATES)

    -   ### setCurrentNotePaths$UPDATES

        static final boolean setCurrentNotePaths$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setCurrentNotePaths$UPDATES)

    -   ### getExpressionDependencies$UPDATES

        static final boolean getExpressionDependencies$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getExpressionDependencies$UPDATES)

    -   ### evaluateExpressionInVariableContext$UPDATES

        static final boolean evaluateExpressionInVariableContext$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.evaluateExpressionInVariableContext$UPDATES)

    -   ### evaluateExpression$UPDATES

        static final boolean evaluateExpression$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.evaluateExpression$UPDATES)

    -   ### externalizeExpression$UPDATES

        static final boolean externalizeExpression$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.externalizeExpression$UPDATES)

    -   ### internalizeExpression$UPDATES

        static final boolean internalizeExpression$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.internalizeExpression$UPDATES)

    -   ### getRuleIdReferences$UPDATES

        static final boolean getRuleIdReferences$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getRuleIdReferences$UPDATES)

    -   ### getRuleUuidReferences$UPDATES

        static final boolean getRuleUuidReferences$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getRuleUuidReferences$UPDATES)

    -   ### evaluateRule$UPDATES

        static final boolean evaluateRule$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.evaluateRule$UPDATES)

    -   ### setProcessDashboardPageForProcessModel$UPDATES

        static final boolean setProcessDashboardPageForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setProcessDashboardPageForProcessModel$UPDATES)

    -   ### getProcessDashboardPageForProcessModel$UPDATES

        static final boolean getProcessDashboardPageForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getProcessDashboardPageForProcessModel$UPDATES)

    -   ### removeProcessDashboardPageForProcessModel$UPDATES

        static final boolean removeProcessDashboardPageForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.removeProcessDashboardPageForProcessModel$UPDATES)

    -   ### getLingeringTasksForProcessModel$UPDATES

        static final boolean getLingeringTasksForProcessModel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.getLingeringTasksForProcessModel$UPDATES)

    -   ### validateTypedValues$UPDATES

        static final boolean validateTypedValues$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.validateTypedValues$UPDATES)

    -   ### setTimeZone$UPDATES

        static final boolean setTimeZone$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setTimeZone$UPDATES)

    -   ### setTimeZoneSameAs$UPDATES

        static final boolean setTimeZoneSameAs$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessDesignService.setTimeZoneSameAs$UPDATES)

-   ## Method Details

    -   ### createProcessModel

        [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") createProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") in the database using the input parameter. The database generates primary keys and reconstitutes the model to create the return value.

        In order to create a model at least the following fields must be populated:

        -   [`LocalizedIdentity.setName(com.appiancorp.suiteapi.common.LocaleString)`](../common/LocalizedIdentity.html#setName\(com.appiancorp.suiteapi.common.LocaleString\))
        -   [`AbstractProcessModel.setProcessName(com.appiancorp.suiteapi.common.LocaleString)`](AbstractProcessModel.html#setProcessName\(com.appiancorp.suiteapi.common.LocaleString\))
        -   [`AbstractProcessModel.setFolderId(java.lang.Long)`](AbstractProcessModel.html#setFolderId\(java.lang.Long\))
        -   [`AbstractProcessModel.setPriority(com.appiancorp.suiteapi.process.Priority)`](AbstractProcessModel.html#setPriority\(com.appiancorp.suiteapi.process.Priority\))
        -   If an OR, XOR, or Complex Logic node is included in the model, [`ProcessModel.setVariables(com.appiancorp.suiteapi.process.ProcessVariable[])`](ProcessModel.html#setVariables\(com.appiancorp.suiteapi.process.ProcessVariable%5B%5D\)) must be populated, because these nodes require variables to be defined.

        For each process variable, the following fields must be populated: `key`, `value`, `type`, and `multiple`

        For each process node, the following fields must be populated: `id`, `guiId`, `ownerId`, `ownerName`, `groupOwnerId`, `groupOwnerName`, `icon`, `paletteIcon`, `x`, `y`, `activityClass`, `preActivities` (can be an empty array), `postActivities` (can be an empty array), `connections` (can be an empty array), `notify`, `assign` (if the node is attended), `confirmationUrl` (populated by default), `schedule`, `escalations` (can be an empty array), `multipleInstance`, `notes` (can be an empty array), `attachments (can be an empty array)`, `priority`, `targetCompletion` (populated by default), and `targetLag` (populated by default).

        Within each process node, in the assign member, the following fields must be populated: `assignees`, `multipleInstanceAssigneeType`, `assignmentFunction`, and `assignmentPosition`

        Within each process node, in the activity class member, the following fields must be populated: `acSchemaId`, `localId`, `parameters` (can be an empty list), `customParameters` (can be an empty list), `unattended`, `runAs` (if it is unattended), `outputExpressions` (can be an empty list), `formConfig` (if it is attended), and `helperClass`.

        Within each activity class, for each activity class parameter, the following fields must be populated: `acpSchemaId`, `expression`, and `validationMessages`

        Parameters:

        `pm_` - the `ProcessModel` to create

        Returns:

        the created `ProcessModel`, with IDs populated.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModelFolder` does not exist

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Priority` does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user referenced in the `ProcessModel` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the UUID of the process model already exists

    -   ### updateProcessModel

        [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") updateProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_) throws [InvalidUuidException](../common/exceptions/InvalidUuidException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates a process model in the database based on the input parameter. The database generates primary keys and reconstitutes the model to create the return value. The `id` and `uuid` fields are only used for retrieving the model and cannot be changed since they are assigned by the server in the first place.

        In order to update a model at least the following fields must be populated:

        -   [`LocalizedIdentity.setId(java.lang.Long)`](../common/LocalizedIdentity.html#setId\(java.lang.Long\))
        -   [`LocalizedIdentity.setName(com.appiancorp.suiteapi.common.LocaleString)`](../common/LocalizedIdentity.html#setName\(com.appiancorp.suiteapi.common.LocaleString\))
        -   [`AbstractProcessModel.setProcessName(com.appiancorp.suiteapi.common.LocaleString)`](AbstractProcessModel.html#setProcessName\(com.appiancorp.suiteapi.common.LocaleString\))
        -   [`AbstractProcessModel.setPriority(com.appiancorp.suiteapi.process.Priority)`](AbstractProcessModel.html#setPriority\(com.appiancorp.suiteapi.process.Priority\))
        -   If an OR, XOR, or Complex Logic node is included in the model, [`ProcessModel.setVariables(com.appiancorp.suiteapi.process.ProcessVariable[])`](ProcessModel.html#setVariables\(com.appiancorp.suiteapi.process.ProcessVariable%5B%5D\)) must be populated, because these nodes require variables to be defined.

        For each process variable, the following fields must be populated: `key`, `value`, `type`, and `multiple`

        For each process node, the following fields must be populated: `id`, `guiId`, `ownerId`, `ownerName`, `groupOwnerId`, `groupOwnerName`, `icon`, `paletteIcon`, `x`, `y`, `activityClass`, `preActivities` (can be an empty array), `postActivities` (can be an empty array), `connections` (can be an empty array), `notify`, `assign` (if the node is attended), `confirmationUrl` (populated by default), `schedule`, `escalations` (can be an empty array), `multipleInstance`, `notes` (can be an empty array), `attachments (can be an empty array)`, `priority`, `targetCompletion` (populated by default), and `targetLag` (populated by default).

        Within each process node, in the assign member, the following fields must be populated: `assignees`.

        Within each process node, in the activity class member, the following fields must be populated: `acSchemaId`, `localId`, `parameters` (can be an empty list), `customParameters` (can be an empty list), `unattended`, `runAs` (if it is unattended), `outputExpressions` (can be an empty list), `formConfig` (if it is attended), and `helperClass`.

        Within each activity class, for each activity class parameter, the following fields must be populated: `acpSchemaId`, `expression`, and `validationMessages`.

        Parameters:

        `pm_` - the processModel to update

        Returns:

        the updated process model

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges to update the process model

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is locked by someone other than the current user

        `[InvalidUuidException](../common/exceptions/InvalidUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified `uuid` is used by another process model

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user referenced in the `ProcessModel` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if a system-level error occurs.

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getProcessModel

        [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") getProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieve a working draft of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"). If the information needed can be retrieved from [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") consider calling the [`getProcessModelDescriptor(Long)`](#getProcessModelDescriptor\(java.lang.Long\)) method instead which is considerably faster.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` to retrieve

        Returns:

        The `ProcessModel` specified by `processModelId_`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have sufficient privileges to view the `ProcessModel`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### exportProcessModel

        [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") exportProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieve a working draft of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"). Unlike [`getProcessModel(java.lang.Long)`](#getProcessModel\(java.lang.Long\)), this API does not convert rule uuids to names (within expressions). Therefore this API should be used when retrieving a model for export.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` to retrieve

        Returns:

        The `ProcessModel` specified by `processModelId_`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have sufficient privileges to view the `ProcessModel`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### listProcessModels

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")\[\] listProcessModels()

        Deprecated.

        Use [`getProcessModelDescriptors(Long[])`](#getProcessModelDescriptors\(java.lang.Long%5B%5D\)) instead. This method performs poorly and should not be called.

        Lists descriptors representing the working drafts of all process models in the system.

        Returns:

        an array of descriptor objects which represent the process models in the system

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getActivityClassSchemas

        [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")\[\] getActivityClassSchemas([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] acsIds\_) throws [InvalidActivityClassSchemaException](exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves a list of abbreviated [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") representations for the given IDs

        Parameters:

        `acsIds_` - the activity class schema IDs

        Returns:

        An array of `Identity` objects which are abbreviated representations of `ActivityClassSchema` objects.

        Throws:

        `[InvalidActivityClassSchemaException](exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if `ActivityClassSchema` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getActivityClassSchema

        [ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") getActivityClassSchema([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") acsId\_) throws [InvalidActivityClassSchemaException](exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves an [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process").

        Parameters:

        `acsId_` - the ID of the `ActivityClassSchema` to retrieve.

        Returns:

        the `ActivityClassSchema` specified by `acsId_`

        Throws:

        `[InvalidActivityClassSchemaException](exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `ActivityClassSchema` specified by `acsId_` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getACSchemaByLocalId

        [ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") getACSchemaByLocalId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") acsLocalId\_) throws [InvalidActivityClassSchemaException](exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Retrieves an [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") by local id.

        Parameters:

        `acsLocalId_` - the local ID of the `ActivityClassSchema` to retrieve.

        Returns:

        the `ActivityClassSchema` specified by `acsLocalId_`

        Throws:

        `[InvalidActivityClassSchemaException](exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the `ActivityClassSchema` specified by `acsId_` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### startProcess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") startProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] variables\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Deprecated.

        Use [`initiateProcess(Long, ProcessStartConfig)`](#initiateProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessStartConfig\)), which has better enforcement of required parameters (requires that their values not be null or empty)

        Starts an instance of the given process model, using the given variables to initialize state.

        The following fields must be populated for each `ProcessVariable` object: `key`, `value`, `type`, and `multiple`

        Parameters:

        `processModelId_` - id of process model to start

        `variables_` - parameters for the process model. If using a process variable of an Appian type, do not set the value to that object but instead to the corresponding primitive. For instance, do not assign a User process variable a `User` object. Instead, assign that process variable a `String` containing the username. Likewise, assign a process variable of type Group should be assigned a `Long`, etc. The exception to this rule is the People type. Process variables of type People should be assigned a `LocalObject`. Only the values are used for passed parameters, not expressions; expressions must be set on the process model at design time.

        Returns:

        The id of the started process instance.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the referenced process model does not exist or has been deleted.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to perform this action.

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no published version of the specified pm, the published version is disabled, or if the process model contains sub process models that have been disabled or deleted. Note that all sub process models of a published process model must have been published, but they can still be disabled.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user referenced in any `ProcessVariable` does not exist.

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the `ProcessModel` requires process parameters to start, and the `variables_` parameter is an empty array, or does not contain all necessary process parameters.

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `processModelId_` or `variables_` array is null.

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### startProcessWithPriority

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") startProcessWithPriority([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] variables\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Deprecated.

        Use [`initiateProcess(Long, ProcessStartConfig)`](#initiateProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessStartConfig\)), which has better enforcement of required parameters (requires that their values not be null or empty)

        Starts an instance of the given process model, using the given variables to initialize state. The process will be started with the priority specified.

        Parameters:

        `processModelId_` - id of process model to start

        `variables_` - parameters for the process model. If using a process variable of an Appian type, do not set the value to that object but instead to the corresponding primitive. For instance, do not assign a User process variable a `User` object. Instead, assign that process variable a `String` containing the username. Likewise, assign a process variable of type Group should be assigned a `Long`, etc. The exception to this rule is the People type. Process variables of type People should be assigned a `LocalObject`.

        `priorityId_` - the priority with which to start the process

        Returns:

        The id of the started process instance.

        Throws:

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the Priority does not exist

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to perform this action

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no published version of the specified pm, the published version is disabled, or if the process model contains sub process models that have been disabled or deleted. Note that all sub process models of a published process model must have been published, but they can still be disabled.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user referenced in any `ProcessVariable` does not exist

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the `ProcessModel` requires process parameters to start, and the `variables_` parameter is null, an empty array, or does not contain all necessary process parameters.

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

    -   ### initiateProcess

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") initiateProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [ProcessStartConfig](ProcessStartConfig.html "class in com.appiancorp.suiteapi.process") config) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Starts an instance of the given process model.

        Parameters:

        `processModelId_` - id of process model to start

        `config` - additional configuration to control how the process is started

        Returns:

        The id of the started process instance.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the referenced process model does not exist or has been deleted.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to perform this action.

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no published version of the specified pm, the published version is disabled, or if the process model contains sub process models that have been disabled or deleted. Note that all sub process models of a published process model must have been published, but they can still be disabled.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user referenced in any `ProcessVariable` does not exist.

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the `ProcessModel` requires process parameters to start, and any of the required parameters are missing or have not been given a value that is not null or empty.

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `processModelId_` or `variables_` array is null.

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getProcessModelsForGroup

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getProcessModelsForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Process models are no longer associated with groups, but rather are organized into folders. Use [`getProcessModelsForFolder(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getProcessModelsForFolder\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Retrieves process model descriptors objects for all process models owned by a group

        Parameters:

        `groupId_` - ID of the `Group` for which to retrieve `ProcessModel.Descriptor` objects

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` which contains an array of `ProcessModel.Descriptor` objects for each `ProcessModel` owned by the `Group` specified by `groupId_`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelDetails

        [ProcessModelDetails](ProcessModelDetails.html "class in com.appiancorp.suiteapi.process") getProcessModelDetails([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves [`ProcessModelDetails`](ProcessModelDetails.html "class in com.appiancorp.suiteapi.process") representing the working drafts of the given [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") If only requiring FormConfig, see `getFormConfig` in this class.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` for which to retrieve the `ProcessModelDetails`

        Returns:

        A `ProcessModelDetails` which contains details about the `ProcessModel` specified by `processModelId_`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getFormConfig

        [FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") getFormConfig([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the [`FormConfig`](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") of the draft of the given process model.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` for which to retrieve the `FormConfig`

        Returns:

        A `FormConfig`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getFormConfigForVersion

        [FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") getFormConfigForVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the [`FormConfig`](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") of the given process model version.

        Parameters:

        `processModelId` - ID of the `ProcessModel` for which to retrieve the `FormConfig`

        `version` - version of the process model (use `null` to refer to a draft, or [`AbstractProcessModel.LATEST_PUBLISHED_VERSION`](AbstractProcessModel.html#LATEST_PUBLISHED_VERSION) to refer to the latest published version)

        Returns:

        A `FormConfig`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no published version of the specified pm, the published version is disabled, or if the process model contains sub process models that have been disabled or deleted. Note that all sub process models of a published process model must have been published, but they can still be disabled.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### isStartFormCapable

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") isStartFormCapable([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processModelIds, int capabilities)

        Retrieves a ResultList containing Boolean values representing whether the start form for the latest published version of each of the process models is capable of ALL the specified form capabilities. If the process model does not have a start form, this method will return a `ResultList.CODE_VALID` for that entry.

        Parameters:

        `processModelIds` - the process model ids

        `capabilities` - a bitwise OR of any of the following values: `FormConfig.CAPABILITY_RENDER_WEB`, `FormConfig.CAPABILITY_RENDER_MOBILE`

        Returns:

        a ResultList containing a Boolean value for each process model that is valid and has a published version. The result codes can be: `ResultList.CODE_VALID` if the process model exists and has the requested capability, `ResultList.CODE_INVALID` if the specified process model does not exist, does not have a published version or does not have the requested capability, or `ResultList.CODE_NO_PERMISSION` if the user does not have permission to view the given process model.

    -   ### getMyProcessModels

        [ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")\[\] getMyProcessModels()

        Retrieves [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") objects for which the current user is an owner.

        Returns:

        An array of `ProcessModel.Descriptor` objects which represent the `ProcessModel` objects owned by the current `User`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any sytem-level error occurs

    -   ### getProcessModelsICanStart

        [ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")\[\] getProcessModelsICanStart()

        Retrieves process model descriptors which represent the working drafts of the process models that the current user has permission to start

        Returns:

        `ProcessModel.Descriptor` objects for each `ProcessModel` which the current user can start.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModels

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")\[\] getProcessModels([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_)

        Deprecated.

        Use [`getProcessModelDescriptors(Long[])`](#getProcessModelDescriptors\(java.lang.Long%5B%5D\)) or call [`getProcessModel(Long)`](#getProcessModel\(java.lang.Long\)) iteratively instead.

        Retrieves multiple `ProcessModel` objects, representing the working drafts of the process models with the given IDs. This method will throw a `PrivilegeException` if an ID points to a `ProcessModel` to which the current user does not have "viewer" or higher privileges. If the information needed can be retrieved from [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") consider calling the [`getProcessModelDescriptors(Long[])`](#getProcessModelDescriptors\(java.lang.Long%5B%5D\)) method instead which is considerably faster.

        Parameters:

        `ids_` - Unique IDs of the `ProcessModel` objects to retrieve

        Returns:

        The `ProcessModel` objects specified by `ids_`

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if it is called with a null argument

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have "viewer" or higher privileges for any of the referenced `ProcessModel`s.

    -   ### getProcessModelParameters

        [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getProcessModelParameters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Retrieves all of the process variables that are required to start an instance of the given process model (ie. process parameters).

        Parameters:

        `processModelId_` - ID of the `ProcessModel` for which to retrieve the process parameters

        Returns:

        `ProcessVariable` objects which represent those variables which are required to start the given `ProcessModel`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have permissions to get the `ProcessModel`'s parameters

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no published version of the specified pm, the published version is disabled, or if the process model contains sub process models that have been disabled or deleted. Note that all sub process models of a published process model must have been published, but they can still be disabled.

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

    -   ### getVisibleProcessVariables

        [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getVisibleProcessVariables([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves all visible process variables associated with the given process model, or the process variables that are reportable through analytics and can be mapped in a subprocess relationship

        Parameters:

        `processModelId_` - the unique Id of the process model to retrieve variables for

        Returns:

        the visible process variables of the process model specified

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have permissions to get the `ProcessModel`'s parameters

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getAssigneePoolACSchemas

        [ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")\[\] getAssigneePoolACSchemas()

        Retrieves the activity class schemas for the activity classes that operate on the assignee pool. The assignee pool contains all users and groups which can be assigned a task, as chosen at design time.

        Returns:

        An array of `ActivityClassSchema` objects which represent the functions that operate on the assignee pool.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getAssignmentPoolACSchemas

        [ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")\[\] getAssignmentPoolACSchemas()

        Retrieves the activity class schemas for the activity classes that operate on the assignment pool. The assignment pool contains all users and groups which are assigned a task at execution time.

        Returns:

        An array of `ActivityClassSchema` objects which represent the functions that operate on the assignment pool.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### activateUserSession

        void activateUserSession([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] membership\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] administration\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Notifies the Process application that a new session has been created for the current user, and provides information about the current user's membership and administration rights to groups.

        This method should be called every time the group membership role of the current user is changed (eg: from member to admin, etc), or when a new group is created, or when the current user was newly created. This method will skip any `null` values for `membership_` or `administration_`. If the `userTypeId_` is `null`, the method will fail but will NOT throw any exceptions

        Parameters:

        `membership_` - An array of group IDs which represent the groups to which the current user belongs.

        `administration_` - An array of group IDs which represent the groups for which the current user is an administrator.

        `userTypeId_` - this is one of [`UserProfile.USER_TYPE_BASIC`](../personalization/UserProfile.html#USER_TYPE_BASIC) or [`UserProfile.USER_TYPE_SYS_ADMIN`](../personalization/UserProfile.html#USER_TYPE_SYS_ADMIN). If neither or null is given, [`UserProfile.USER_TYPE_BASIC`](../personalization/UserProfile.html#USER_TYPE_BASIC) will be assumed.

        `username` - the username of the user whose session is to be activated

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getEscalationACSchemas

        [ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")\[\] getEscalationACSchemas()

        Retrieves the activity class schemas for activities that can be used as escalations.

        Returns:

        An array of `ActivityClassSchema` objects which represent all activity classes of type Escalation

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### deleteProcessModel

        void deleteProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes a process model. A model can be deleted even if there are processes that have been created from it on any of the execution servers. These processes will continue after the process model has been deleted. To delete processes, use [`ProcessExecutionService.deleteProcess(java.lang.Long, boolean)`](ProcessExecutionService.html#deleteProcess\(java.lang.Long,boolean\)), and [`ProcessExecutionService.deleteProcesses(java.lang.Long[], boolean)`](ProcessExecutionService.html#deleteProcesses\(java.lang.Long%5B%5D,boolean\))

        Parameters:

        `processModelId_` - the ID of the `ProcessModel` to delete.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have permissions to delete the `ProcessModel`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### deleteProcessModels

        void deleteProcessModels([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processModelIds\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes multiple [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") objects. A model can only be deleted if there are no processes that have been created from it on any of the execution servers. To delete processes, use [`ProcessExecutionService.deleteProcess(java.lang.Long, boolean)`](ProcessExecutionService.html#deleteProcess\(java.lang.Long,boolean\)), and [`ProcessExecutionService.deleteProcesses(java.lang.Long[], boolean)`](ProcessExecutionService.html#deleteProcesses\(java.lang.Long%5B%5D,boolean\))

        Parameters:

        `processModelIds_` - ids of process models to delete.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a specified `ProcessModel` does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have permissions to delete a specified `ProcessModel`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelDescriptor

        [ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") getProcessModelDescriptor([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves a process model descriptor representing the working draft of a process model. This method will successfully return a valid descriptor even if the user only has "initiator" privileges over the specified `ProcessModel`.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` for which to get the descriptor

        Returns:

        `ProcessModel.Descriptor` specified by given `processModelId_`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have sufficient privileges to get the `ProcessModel` descriptor

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getRecursiveRelationship

        int getRecursiveRelationship([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subProcessModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Return the status of the two process models' recursive relationship

        Parameters:

        `processModelId_` - id of process model to check for recursive relationship

        `subProcessModelId_` - subProcessModel to check for relationship with parent ProcessModel

        Returns:

        one of [`DOES_NOT_RECURSE`](#DOES_NOT_RECURSE), [`PARENT_PROCESS_RECURSES`](#PARENT_PROCESS_RECURSES) or [`SUBPROCESS_RECURSES`](#SUBPROCESS_RECURSES)

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getSubProcessModelDescriptorsForProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getSubProcessModelDescriptorsForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getSynchronousSubProcessModelDescriptorsForProcessModel(java.lang.Long)`](#getSynchronousSubProcessModelDescriptorsForProcessModel\(java.lang.Long\)) instead

        Gets a ResultList containing process model descriptors representing the working drafts of the subprocess models of the given process model

        Parameters:

        `processModelId_` - the unique ID of the process model to get the sub process model descriptors for

        Returns:

        a ResultList containing [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") objects that are subprocesses for the given process. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getSynchronousSubProcessModelDescriptorsForProcessModel

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getSynchronousSubProcessModelDescriptorsForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a ResultList containing process model descriptors representing the working drafts of the sub-process models of the given process model

        Parameters:

        `processModelId_` - the unique ID of the process model to get the sub-process model descriptors for

        Returns:

        a ResultList containing [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") objects that are subprocesses for the given process. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelDescriptorsContainingSubProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getProcessModelDescriptorsContainingSubProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subProcessModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getProcessModelDescriptorsContainingSynchronousSubProcessModel(java.lang.Long)`](#getProcessModelDescriptorsContainingSynchronousSubProcessModel\(java.lang.Long\)) instead

        Retrieves process model descriptors representing the working drafts of the process models that contain the given process model as a sub-process model

        Parameters:

        `subProcessModelId_` - The ID of the sub process model which will be contained in the returned process models

        Returns:

        A `ResultList` which contains an array of `ProcessModel.Descriptor` objects representing those process models containing the given sub process model. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` given by `subProcessModelId_` is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient permissions to view the given process model

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelDescriptorsContainingSynchronousSubProcessModel

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getProcessModelDescriptorsContainingSynchronousSubProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subProcessModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves process model descriptors representing the working drafts of the process models that contain the given process model as a sub-process model

        Parameters:

        `subProcessModelId_` - The ID of the sub-process model which will be contained in the returned process models

        Returns:

        A `ResultList` which contains an array of `ProcessModel.Descriptor` objects representing process models that contain the given sub process model. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` given by `subProcessModelId_` is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient permissions to view the given process model

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getTopLevelProcessModelDescriptorsForSubProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getTopLevelProcessModelDescriptorsForSubProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subProcessModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel(java.lang.Long)`](#getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel\(java.lang.Long\)) instead

        Gets a ResultList containing process model descriptors representing the working drafts of the top level process models of the given sub process model

        Parameters:

        `subProcessModelId_` - the process model to get top level [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") objects for

        Returns:

        a ResultList containing [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") objects for all top level process models of the given sub process model. This will return an empty ResultList for models that solely form a recursive loop or if called on a top-level process model. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subProcessModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a ResultList containing process model descriptors that represent the working drafts of the top level process models of the given sub-process model

        Parameters:

        `subProcessModelId_` - the process model to get top level [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") objects for

        Returns:

        a ResultList containing [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") objects for all top level process models of the given sub process model. This will return an empty ResultList for models that solely form a recursive loop or if called on a top-level process model. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getLinkProcessModelDescriptorsForProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getLinkProcessModelDescriptorsForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getAsynchronousSubProcessModelDescriptorsForProcessModel(java.lang.Long)`](#getAsynchronousSubProcessModelDescriptorsForProcessModel\(java.lang.Long\)) instead.

        Retrieve a list of process model descriptors representing the working drafts of the linked process models for a given process model.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` for which to retrieve the linked `ProcessModel.Descriptor` objects

        Returns:

        a `ResultList` containing `ProcessModel.Descriptor` objects which represent the linked `ProcessModel` objects for the specified `ProcessModel`. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to access the `ProcessModel`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getAsynchronousSubProcessModelDescriptorsForProcessModel

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getAsynchronousSubProcessModelDescriptorsForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieve a list of process model descriptors that represent the working drafts of all linked process models for the given process model.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` for which to retrieve the linked `ProcessModel.Descriptor` objects

        Returns:

        a `ResultList` containing `ProcessModel.Descriptor` objects which represent the linked `ProcessModel` objects for the specified `ProcessModel`. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to access the `ProcessModel`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelDescriptorsContainingLinkProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getProcessModelDescriptorsContainingLinkProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkProcessModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getProcessModelDescriptorsContainingAsynchronousSubProcessModel(java.lang.Long)`](#getProcessModelDescriptorsContainingAsynchronousSubProcessModel\(java.lang.Long\)) instead.

        Retrieves process model descriptors that represent the working drafts of all process models that contain the given linked process model

        Parameters:

        `linkProcessModelId_` - The ID of the linked `ProcessModel` which will be contained in the returned `ProcessModel` objects

        Returns:

        A `ResultList` which contains an array of `ProcessModel.Descriptor` objects which contain the linked `ProcessModel` specified by `linkProcessModelId_`. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the linked `ProcessModel` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient permissions to view the `ProcessModel`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelDescriptorsContainingAsynchronousSubProcessModel

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getProcessModelDescriptorsContainingAsynchronousSubProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkProcessModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves process model descriptors representing the working drafts of the process models that contain the given linked process model

        Parameters:

        `linkProcessModelId_` - The ID of the linked `ProcessModel` which will be contained in the returned `ProcessModel` objects

        Returns:

        A `ResultList` which contains an array of `ProcessModel.Descriptor` objects which contain the linked `ProcessModel` specified by `linkProcessModelId_`. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the linked `ProcessModel` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient permissions to view the `ProcessModel`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getTopLevelProcessModelDescriptorsForLinkProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getTopLevelProcessModelDescriptorsForLinkProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkProcessModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel(java.lang.Long)`](#getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel\(java.lang.Long\)) instead

        Gets a `ResultList` containing process model descriptors representing the working drafts of thetop level process models of the given linked process model

        Parameters:

        `linkProcessModelId_` - the process model to get top level process model descriptors for

        Returns:

        a ResultList containing [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") objects for all top level process models of the given linked process model. This will return an empty ResultList for models that solely form a recursive loop or if called on a top level process model.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkProcessModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a `ResultList` containing process model descriptors that represent the working drafts of all parent process models for the given linked process model

        Parameters:

        `linkProcessModelId_` - the process model to get top level process model descriptors for

        Returns:

        a ResultList containing [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") objects for all top level process models of the given linked process model. This will return an empty ResultList for models that solely form a recursive loop or if called on a top level process model.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getSecurityForProcessApplication

        [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") getSecurityForProcessApplication() throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the security settings of the Process Application

        Returns:

        the `Security` object (with all fields populated) that contains the security for the process application. The role maps in the `Security` object are `ProcessApplicationRoleMap` objects.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### setSecurityForProcessApplication

        void setSecurityForProcessApplication([Security](../common/Security.html "class in com.appiancorp.suiteapi.common") s\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the security settings of the Process Application. Fields `canInherit` and `inheritable` will be ignored (`doesInherit` is not ignored).

        Parameters:

        `s_` - a `Security` object which encapsulates the security settings of the Process Application. The role maps in the `Security` object must be `ProcessRoleMap` objects

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user referenced in the `Security` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getSecurityForProcessModel

        [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") getSecurityForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the security settings of a process model

        Parameters:

        `id_` - the unique Id of the process model

        Returns:

        the `Security` object (with all fields populated) that contains the security settings of the process model. The role maps in the `Security` object are be `ProcessRoleMap` objects

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### setSecurityForProcessModel

        void setSecurityForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") s\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the security settings of a process model. This method does NOT set `canInherit` and `inheritable` (`doesInherit` is not ignored).

        Parameters:

        `id_` - the unique Id of the process model

        `s_` - a `Security` object which encapsulates the security settings of the process model. The role maps in the `Security` object must be `ProcessRoleMap` objects

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user referenced in the `Security` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### setActorsInRolesForProcessApplication

        void setActorsInRolesForProcessApplication([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] userRoles\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] groupRoles\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds and/or modifies the roles of users and groups on the Process Application. This method will only update the roles for the users and groups specified in the parameters. All other roles will not be changed. To overwrite the roles for all users and groups use [`setSecurityForProcessApplication(Security)`](#setSecurityForProcessApplication\(com.appiancorp.suiteapi.common.Security\)) See [`ProcessRoleMap`](ProcessRoleMap.html "class in com.appiancorp.suiteapi.process") for valid roles.

        Parameters:

        `users_` - the list of users whose roles are to be added/modified. This parameter can be null, as long as `userRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown.

        `userRoles_` - a 2-dimentional array of size \[users\_.length\]\[\]. The String array userRoles\_\[i\] represents the roles which users\_\[i\] will have. (If this array is null or zero-length, the user have no explicit permissions in the Process Application role map). It is legal to have null within this array.

        `groups_` - the list of groups whose roles are to be added/modified. This parameter can be null, as long as `groupRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown.

        `groupRoles_` - a 2-dimentional array of size \[groups\_.length\]\[\]. The String array groupRoles\_\[i\] represents the roles which groups\_\[i\] will have. (If this array is null or zero-length, the group have no explicit permissions in the Process Application role map). It is legal to have null within this array.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any users does not exist

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed to the method

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### setActorsInRolesForProcessModel

        void setActorsInRolesForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] userRoles\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] groupRoles\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds and/or modifies the roles of users and groups on a specified ProcessModel. This method will only overwrite the roles for the users and groups specified in the parameters. All other roles will not be changed. To overwrite the roles for all users and groups use [`setSecurityForProcessModel(Long, Security)`](#setSecurityForProcessModel\(java.lang.Long,com.appiancorp.suiteapi.common.Security\)) See [`ProcessRoleMap`](ProcessRoleMap.html "class in com.appiancorp.suiteapi.process") for valid roles.

        Parameters:

        `id_` - the unique Id of the process model

        `users_` - the list of users whose roles are to be added/modified This parameter can be null, as long as `userRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown.

        `userRoles_` - a 2-dimentional array of size \[users\_.length\]\[\]. The String array userRoles\_\[i\] represents the roles which users\_\[i\] will have. (If this array is null or zero-length, the user have no explicit permissions in the process model role map)

        `groups_` - the list of groups whose roles are to be added/modified This parameter can be null, as long as `groupRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown.

        `groupRoles_` - a 2-dimentional array of size \[groups\_.length\]\[\]. The String array groupRoles\_\[i\] represents the roles which groups\_\[i\] will have. (If this array is null or zero-length, the group have no explicit permissions in the process model role map)

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any users does not exist

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed to the method

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getPermissionsForProcessApplication

        [ProcessApplicationPermissions](security/ProcessApplicationPermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissionsForProcessApplication() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves permissions on the Process application for the current user

        Returns:

        `ProcessApplicationPermissions` object which contains the permissions for the current user on the Process Application

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getPermissionsForProcessModel

        [ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissionsForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves permissions on a process model for the current user.

        Parameters:

        `id_` - ID of the `ProcessModel` for which to get the `ProcessModelPermissions`

        Returns:

        `ProcessModelPermissions` object which contains the permissions on the process model for the current user.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getPermissionsForProcessModels

        [ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security")\[\] getPermissionsForProcessModels([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves permissions on multiple process models objects for the current user.

        Parameters:

        `ids_` - Unique IDs of the process models for which to get the `ProcessModelPermissions`

        Returns:

        `ProcessModelPermissions` which contain the permissions on the process models for the current user

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a specified `ProcessModel` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getPriority

        [Priority](Priority.html "class in com.appiancorp.suiteapi.process") getPriority([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId\_) throws [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves a [`Priority`](Priority.html "class in com.appiancorp.suiteapi.process")

        Parameters:

        `priorityId_` - ID of the `Priority` to retrieve

        Returns:

        The `Priority` coresponding to `priorityId_`

        Throws:

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Priority` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getDefaultPriority

        [Priority](Priority.html "class in com.appiancorp.suiteapi.process") getDefaultPriority()

        Retrieves the default [`Priority`](Priority.html "class in com.appiancorp.suiteapi.process") for the system.

        Returns:

        The default `Priority`; `null` if no default is configured.

    -   ### setDefaultPriority

        void setDefaultPriority([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId\_) throws [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Sets the default Priority that the Process Application will use.

        Parameters:

        `priorityId_` - the ID of the priority to set as the default priority

        Throws:

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specificed priority does not exist

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if a `null` argument is passed

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getPriorityOfProcessModel

        [Priority](Priority.html "class in com.appiancorp.suiteapi.process") getPriorityOfProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the priority for a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

        Parameters:

        `processModelId_` - ID of the `ProcessModel` for which to retrieve the `Priority`

        Returns:

        The `Priority` for the `ProcessModel` specified by `processModelId_`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified `ProcessModel` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have privileges to view the process model

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### setPriorityOfProcessModel

        void setPriorityOfProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId\_) throws [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the priority of a process model

        Parameters:

        `processModelId_` - the unique id of the process model to set the priority of

        `priorityId_` - the unique id of the priority to set

        Throws:

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the priority does not exist

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient permissions to perform this action

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### lockProcessModel

        void lockProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, boolean override\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Locks the specified process model

        Parameters:

        `processModelId_` - the unique ID of the process model to lock

        `override_` - whether or not to override the lock another user has placed on the process model

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access to lock (or override the existing lock, if specified) of the process model

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is already locked (by someone other than the user) and the user did not choose to override it.

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelVersion

        [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") getProcessModelVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves a version of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"). If the version is `null` or empty, it returns the latest saved draft.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` whose version will be retrieved

        `version_` - The version of the `ProcessModel` to retrieve

        Returns:

        The `ProcessModel` given by `processModelId_` and `version_`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not have the given version

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient permissions to view the `ProcessModel` version

    -   ### exportProcessModelVersion

        [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") exportProcessModelVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves a version of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"). If the version is `null` or empty, it returns the latest saved draft. Unlike [`getProcessModelVersion(java.lang.Long, java.lang.String)`](#getProcessModelVersion\(java.lang.Long,java.lang.String\)), this API does not convert rule uuids to names (within expressions). Therefore this API should be used when retrieving a model for export.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` whose version will be retrieved

        `version_` - The version of the `ProcessModel` to retrieve

        Returns:

        The `ProcessModel` given by `processModelId_` and `version_`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not have the given version

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient permissions to view the `ProcessModel` version

    -   ### versionProcessModel

        [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") versionProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Versions a process model in the database based on the input parameter. See [`createProcessModel(com.appiancorp.suiteapi.process.ProcessModel)`](#createProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\)) for the properties that must be populated on the process model. It creates a new process model if the process model `Id` is set to -1.

        Parameters:

        `pm_` - a `ProcessModel` object representing the new process model version

        Returns:

        a `ProcessModel` object representing the versioned process model

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID of the process model does not correspond to a valid process model

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges to version the process model

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is locked by someone other than the current user

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced in the `ProcessModel` do not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if a system-level error occurs.

    -   ### versionProcessModel

        [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") versionProcessModel([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pm\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        The returned process model is not transformed.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getProcessModelsForFolder

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getProcessModelsForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieve process model descriptors representing the working drafts of the process models directly in a process model folder

        Parameters:

        `folderId_` - ID of the `ProcessModelFolder` for which to retrieve all contained `ProcessModel` objects

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        Returns a `ResultPage` which contains an array of `ProcessModel.Descriptor` objects

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModelFolder` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to access the folder

    -   ### getChildFolders

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getChildFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets all the direct child folders of a process model folder

        Parameters:

        `folderId_` - id of the folder for which to get child folders

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        Returns a `ResultPage` which contains an array of `ProcessModelFolder` objects

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModelFolder` specified by `folderId_` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have access to the `ProcessModelFolder`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getTopLevelFolders

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTopLevelFolders(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Returns the top level folders in the process application that the current user can see.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants located in [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - the order in which the results will be sorted This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` of [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") objects representing the top level folders

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getVersionsForProcessModel

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getVersionsForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the versions for a process model

        Parameters:

        `processModelId_` - the id of the process model to get versions for

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing `ProcessModel.Descriptor` objects representing the versions of the specified process model.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permissions to view the process model

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### setActorsInRolesForFolder

        void setActorsInRolesForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] userRoles\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] groupRoles\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets actors (users and groups) in roles for a process model folder. This method will only overwrite the roles for the users and groups specified in the parameters. All other roles will not be changed. To overwrite the roles for all users and groups use [`setSecurityForFolder(Long, Security)`](#setSecurityForFolder\(java.lang.Long,com.appiancorp.suiteapi.common.Security\)) See [`ProcessRoleMap`](ProcessRoleMap.html "class in com.appiancorp.suiteapi.process") for valid roles.

        Parameters:

        `folderId_` - the unique id of the process model folder

        `users_` - the list of users (user names) whose roles are to be added/modified This parameter can be null, as long as `userRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown.

        `userRoles_` - a 2-dimensional array of size \[users\_.length\]. The String array userRoles\_\[i\] represents the roles which users\_\[i\] will have. (If this array is null or zero-length, the user has no explicit permissions in the process model folder's role map)

        `groups_` - the list of groups whose roles are to be added/modified This parameter can be null, as long as `groupRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown.

        `groupRoles_` - a 2-dimentional array of size \[groups\_.length\]. The String array groupRoles\_\[i\] represents the roles which groups\_\[i\] will have. (If this array is null or zero-length, the group has no explicit permissions in the process model folder's role map)

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to perform the operation

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users do not exist

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed to the method

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### unlockProcessModel

        void unlockProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, boolean override\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Unlocks the given process model

        Parameters:

        `processModelId_` - the unique id of the process model to unlock

        `override_` - whether or not to break a lock on the given process model, if it is currently locked by someone other than the current user

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model does not exist

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is already locked and the user has not specified to override it

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges to unlock the process model

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### unlockProcessModels

        void unlockProcessModels()

        Unlocks all process models locked by the current user.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getFolder

        [ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") getFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves a [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process").

        Parameters:

        `folderId_` - ID of the `ProcessModelFolder` to retrieve

        Returns:

        a `ProcessModelFolder` specified by `folderId_`

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModelFolder` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have permission to access to the folder

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getFolders

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] folderIds\_)

        Retrieves multiple process model folders

        Parameters:

        `folderIds_` - Unique IDs of the process model folders to retrieve.

        Returns:

        A `ResultList` which contains an array of `ProcessModelFolder` objects, and result codes. In the case where there is an exception (such as access restriction) the ResultList.getResultCodes() will have an entry for every id passed to it, but the [`Result.getResults()`](../common/Result.html#getResults\(\)) will only have an entry for every valid result returned. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified folder does not exist

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### startProcessVersion

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") startProcessVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] variables\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Deprecated.

        Use [`initiateProcess(Long, ProcessStartConfig)`](#initiateProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessStartConfig\)), which has better enforcement of required parameters (requires that their values not be null or empty)

        Starts an instance of the given process model version, using the given variables to initialize state.

        Parameters:

        `processModelId_` - id of process model to start

        `variables_` - parameters for the process model. If using a process variable of an Appian type, do not set the value to that object but instead to the corresponding primitive. For instance, do not assign a User process variable a `User` object. Instead, assign that process variable a `String` containing the username. Likewise, assign a process variable of type Group should be assigned a `Long`, etc. The exception to this rule is the People type. Process variables of type People should be assigned a `LocalObject`.

        `version_` - version of the given process model to start

        `priorityId_` - priority of the process model to start, `null` if the default priority is to be used

        Returns:

        The id of the started process instance.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is invalid

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the priority is invalid

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the version is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges to perform this

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the version does not exist

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if all execution servers are full

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users users referenced by a `ProcessVariable` does not exist

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the `ProcessModel` requires process parameters to start, and the `variables_` parameter is null, an empty array, or does not contain all necessary process parameters.

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

    -   ### getProcessModelProperties

        [ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") getProcessModelProperties([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the [`ProcessModelProperties`](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") representing the working draft of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

        Parameters:

        `modelId_` - ID of the `ProcessModel` for which to retrieve the `ProcessModelProperties`

        Returns:

        A `ProcessModelProperties` object which contains the properties for the `ProcessModel` given by `modelId_`

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to view the `ProcessModel`

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `a` - ServiceException if any system-level error occurs

    -   ### getMaximumNumberOfNotes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") int getMaximumNumberOfNotes()

        Deprecated.

        since 23.2

        Returns the maximum number of notes that can be added to a process model or process node. This property can be configured in pc.properties

        Returns:

        The maximum number of notes

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getMaximumNumberOfAttachments

        int getMaximumNumberOfAttachments()

        Returns the maximum number of attachments that can be added to a process model or process node. This property can be configured in pc.properties

        Returns:

        The maximum number of attachments

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getUnpublishedChildrenForProcessModel

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getUnpublishedChildrenForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the working draft of the unpublished children (sub process models) of the given process model

        Parameters:

        `processModelId_` - the id of the process model to get unpublished children for

        Returns:

        a ResultList containing [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") objects of the process model's unpublished children The result codes are as follows: `UNPUBLISHED_CHILDREN_VIEW_PERMISSIONS` = No permissions, cannot view process model; `UNPUBLISHED_CHILDREN_INVALID` = Invalid Process Model (a process model that cannot be run); `UNPUBLISHED_CHILDREN_PUBLISH_PERMISSIONS` = No permissions to publish the process model; `UNPUBLISHED_CHILDREN_SUCCESS` = Success

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getParentsForProcessModel

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getParentsForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the working drafts of the parents of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"). If the process model is not a sub process model in any other process model, the returned `ResultList` will have an empty result set.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` for which to get the parents.

        Returns:

        a ResultList containing an array of `ProcessModel.Descriptor` objects which represent the parents of the `ProcessModel` specified by `processModelId_`. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges to view the process model

    -   ### getParentsOfUnpublishedChildrenForProcessModel

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getParentsOfUnpublishedChildrenForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the working drafts of the parents of the unpublished children (sub process models) of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"). Does not return the `ProcessModel` itself or its parents.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` for which to retrieve the parents of the unpublished children.

        Returns:

        A ResultList containing an array of `ProcessModel.Descriptor` objects which represent the parents of the unpublished children of the `ProcessModel` specified by `processModelId_`. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges to view the process model

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs.

    -   ### publishProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") publishProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") processModel\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use saveAndPublishProcessModel

        Publishes a process model. Unpublished children of the process model will be published and owners of the affected process models will be notified

        Parameters:

        `processModel_` - process model to publish

        Returns:

        the published process model. The process model is transformed.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID of the process model does not correspond to a valid ID

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges to publish the process model

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is locked

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is in an invalid state (not validated)

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `ProcessModel` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### saveAndPublishProcessModel

        [ProcessModelWithErrors](ProcessModelWithErrors.html "class in com.appiancorp.suiteapi.process") saveAndPublishProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") processModel\_, boolean overrideLock\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUuidException](../common/exceptions/InvalidUuidException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Attempts to lock, save, validate, and publish the given model. If the model is new, we try to create, lock, validate, and publish. The resulting data structure contains the model that was written to the database (published if everything worked, saved if only the save worked, and null if nothing worked), along with any validation errors or warnings that were detected. During the save portion, the method can throw any of the exceptions that would be thrown by createProcessModel or updateProcessModel. If the model contains any sub-processes that are unpublished, then the `ProcessModel.Descriptor` objects are returned for those models that were published and owners notified, those that cannot be published and those parents of unpublished children that were notified.

        Parameters:

        `processModel_` - the model to save and publish

        `overrideLock_` - whether to lock the model if it is already locked

        Returns:

        a [`ProcessModelWithErrors`](ProcessModelWithErrors.html "class in com.appiancorp.suiteapi.process") data structure holding the saved and/or published model and descriptions of any errors that occurred

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID of the process model does not correspond to a valid ID

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges to save or publish the process model

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is locked and we cannot override

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is in an invalid state (not validated)

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced in the `ProcessModel` do not exist

        `[InvalidUuidException](../common/exceptions/InvalidUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the UUIDs referenced do not exist

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if folder ID where processModel is to be saved does not exist

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if priority for the processModel is invalid

    -   ### getVisibleProcessVariablesForVersion

        [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getVisibleProcessVariablesForVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves all visible process variables associated with the given process model version, or the process variables that are reportable through analytics and can be mapped in a subprocess relationship

        Parameters:

        `processModelId_` - the unique Id of the process model to retrieve variables for

        `version_` - version to get the parameters for

        Returns:

        the visible process variables of the process model specified by the id and version given

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model does not exist

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the version does not exsit

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform the operation

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelParametersForVersion

        [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getProcessModelParametersForVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Retrieves all of the process variables that are required to start an instance of the given process model version (ie. process parameters)

        Parameters:

        `processModelId_` - ID of the `ProcessModel` for which to retrieve `ProcessParameters`

        `version_` - The version of the `ProcessModel` for which to retrieve `ProcessParameters` (use `null` to refer to a draft)

        Returns:

        `ProcessVariable` objects which represent those variables which are required to start the `ProcessModel` version given by `processModelId_` and `version_`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` version does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have permissions to view the `ProcessModel`

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

    -   ### getCountProcessModelParametersForVersion

        int getCountProcessModelParametersForVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Retrieves count of all of the process variables that are required to start an instance of the given process model version (ie. process parameters)

        Parameters:

        `processModelId_` - ID of the `ProcessModel` for which to retrieve `ProcessParameters`

        `version_` - The version of the `ProcessModel` for which to retrieve `ProcessParameters` (use `null` to refer to a draft)

        Returns:

        `ProcessVariable` objects which represent those variables which are required to start the `ProcessModel` version given by `processModelId_` and `version_`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` version does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have permissions to view the `ProcessModel`

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

    -   ### updateFolder

        [ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") updateFolder([ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") folder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates a process model folder. The following fields must be populated in the `ProcessModelFolder` object: `id`, `name`, `description`, and `parentFolderId`

        Parameters:

        `folder_` - a `ProcessModelFolder` object containing the properties of the folder to update. This methods will update `name`, `description` and `parentFolderId`. Other fields will not be updated.

        Returns:

        a `ProcessModelFolder` object representing the updated folder

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permissions to perform this action

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the `type` of the folder is different from the previous type (not thrown if the new `type` is `null`, in which case the new `type` is ignored)

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID of the folder does not correspond to a valid folder, or if the ID of the parent folder is invalid

        `[RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the update would result in a loop in the tree of parent folders

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if a system-level error occurs.

    -   ### createFolder

        [ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") createFolder([ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") folder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates a folder for storing process models. The following fields are required for the `ProcessModelFolder` object: `name`, and `type`

        Parameters:

        `folder_` - The `ProcessModelFolder` to create.

        Returns:

        The created `ProcessModelFolder`

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permissions to create a `ProcessModelFolder`

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the type of folder is invalid. It must be one of two types: [`ProcessModelFolder.TYPE_COMMUNITY`](ProcessModelFolder.html#TYPE_COMMUNITY) or [`ProcessModelFolder.TYPE_PRIVATE`](ProcessModelFolder.html#TYPE_PRIVATE). This exception will also be thrown if the parent folder is invalid (Top level folders must have a `null` parent folder id).

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the UUID of the folder already exists

    -   ### disableProcessModel

        void disableProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Disables a version of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

        Parameters:

        `processModelId_` - ID of the `ProcessModel` on which to disable a version.

        `version_` - The ID of the version to disable.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have sufficient permissions to disable a version

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the given version does not exist for the `ProcessModel`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### enableProcessModel

        void enableProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Enables a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") version.

        Parameters:

        `processModelId_` - The ID of the `ProcessModel` which has the version to enable.

        `version_` - The name of the version to enable

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId_` does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient permissions to enable the version.

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the given version does not exist for the `ProcessModel`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### deleteFolders

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") deleteFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] folders\_)

        Deletes a list of folders

        Parameters:

        `folders_` - The `ProcessModelFolder` objects to delete.

        Returns:

        a `ResultList` containing result codes for each deletion. Possible values are: [`ResultList.CODE_NO_PERMISSION`](../common/ResultList.html#CODE_NO_PERMISSION) if the user does not have permission, [`ResultList.CODE_INVALID`](../common/ResultList.html#CODE_INVALID) if the folder does not exist or is not empty, and [`ResultList.CODE_VALID`](../common/ResultList.html#CODE_VALID) if the delete succeeded .

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### deleteFolder

        void deleteFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes a [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")

        Parameters:

        `folderId_` - id of the `ProcessModelFolder` to delete.

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModelFolder` specified by `folderId_` does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to delete the `ProcessModelFolder`.

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModelFolder` is not empty (it must not contain sub-folders or process models)

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### updateFolders

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") updateFolders([ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")\[\] processModelFolders\_) throws [RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates a list of process model folders. The following fields must be populated in each `ProcessModelFolder` object: `id`, `name`, `description`, and `parentFolderId`

        Parameters:

        `processModelFolders_` - an array of `ProcessModelFolder` objects each containing the properties of the folders to update. This method will update `name`, `description`, `parentFolderId`. Other fields will not be updated.

        Returns:

        a ResultList containing the updated `ProcessModeFolder` objects and result codes for the operations. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified folder does not exist or its parent folder does not exist

        Throws:

        `[RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the updates would result in a loop in the tree of parent folders

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if a system-level error occurs.

    -   ### updateProcessModelsWithDescriptors

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") updateProcessModelsWithDescriptors([ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")\[\] descriptors\_)

        Updates process models in the database. In order to update a `ProcessModel.Descriptor` at least the following fields must be populated: `id` and `processName`

        Parameters:

        `descriptors_` - the `ProcessModel.Descriptor` objects that represent the process models to update

        Returns:

        A result list containing the updated `ProcessModel.Descriptor` objects and a list of result codes for the operations. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if a system-level error occurs.

    -   ### getSecurityForFolder

        [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") getSecurityForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the security for a process model folder

        Parameters:

        `folderId_` - the unique Id of the folder to retrieve security for

        Returns:

        the `Security` object (with all fields populated) that contains that security settings for the folder. The role maps in the `Security` object are be `ProcessRoleMap` objects

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder doesn't exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user doesn't have privileges

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### setSecurityForFolder

        void setSecurityForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") security\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the security for a process model folder. Fields `canInherit` and `inheritable` will be ignored (`doesInherit` is not ignored).

        Parameters:

        `folderId_` - the unique id of the folder to set security for

        `security_` - a `Security` object representing the security to set. The role maps in the `Security` object must be `ProcessRoleMap` objects

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user doesn't have privileges

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder doesn't exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users referenced by the `Security` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelDescriptors

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getProcessModelDescriptors([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pmIds\_)

        Retrieves multiple process model descriptors, representing the working drafts of the given process models

        Parameters:

        `pmIds_` - Unique IDs of the `ProcessModel` objects for which to retrieve descriptors

        Returns:

        A `ResultList` which contains an array of `ProcessModel.Descriptor` objects and an array of result codes which correspond to each ID. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have viewer permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

    -   ### getProcessModelsLatestPublishedDescriptors

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getProcessModelsLatestPublishedDescriptors([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pmIds\_)

        Retrieves multiple process model descriptors, representing the latest published version or a draft if there is no publish version. The list of results is the same length and in the same order as the input IDs. Invalid results will be represented by a null in the result list.

        Parameters:

        `pmIds_` - Unique IDs of the `ProcessModel` objects for which to retrieve descriptors

        Returns:

        A `ResultList` which contains an array of `ProcessModel.Descriptor` objects and an array of result codes which correspond to each ID. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, `ResultList.CODE_NO_PERMISSION` if the user does not have viewer permission, or `ResultList.CODE_INVALID` if the specified process model does not exist

    -   ### getProcessModelVersionDescriptor

        [ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") getProcessModelVersionDescriptor([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the process model descriptor for a version of a `ProcessModel`. If null is given as a parameter for version, the returned value will be the descriptor of the draft.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` whose version will be retrieved

        `version_` - The version of the `ProcessModel` for which to get the `ProcessModel.Descriptor`

        Returns:

        `ProcessModel.Descriptor` for the `ProcessModel` given by `processModelId_` and `version_`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the version of the process model does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permissions to view the `ProcessModel` or version

    -   ### moveProcessModel

        void moveProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Moves a process model to a new process model folder

        Parameters:

        `processModelId_` - the unique id of process model to move

        `parentFolderId_` - the unique id of new parent folder

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model does not exist

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permissions to move the given process model to the given folder

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### moveFolder

        void moveFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Moves a process model folder

        Parameters:

        `folderId_` - the unique id of the process model folder to move

        `parentFolderId_` - the unique id of the new parent folder

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder or the new parent folder does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permissions to perform this action

        `[RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the move would result in a loop in the tree of parent folders

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getPermissionsForFolder

        [ProcessModelFolderPermissions](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissionsForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves [`ProcessModelFolderPermissions`](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security") for a [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")

        Parameters:

        `folderId_` - ID of `ProcessModelFolder` for which to get `ProcessModelFolderPermissions`

        Returns:

        A `ProcessModelFolderPermissions` object which contains permissions for the folder.

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModelFolder` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient permissions to view the `ProcessModelFolderPermissions` for the folder

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getPermissionsForFolders

        [ProcessModelFolderPermissions](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security")\[\] getPermissionsForFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] folderIds\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves [`ProcessModelFolderPermissions`](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security") objects for multiple [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") objects.

        Parameters:

        `folderIds_` - Unique IDs of `ProcessModelFolder` objects for which to get permissions

        Returns:

        An array of `ProcessModelFolderPermissions` objects which contain the permissions for the folders.

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the `ProcessModelFolder` objects do not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have sufficient permissions to view the `ProcessModelFolderPermissions` for any of the folders

    -   ### setInheritanceForFolder

        void setInheritanceForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, boolean inherits\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the inheritance for a process model folder

        Parameters:

        `folderId_` - the unique id of the folder

        `inherits_` - if the folder inherits permissions from its parent

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to perform this action

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### deleteProcessModelVersion

        [ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") deleteProcessModelVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes a version of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

        Parameters:

        `processModelId_` - ID of the `ProcessModel`

        `version_` - ID of the version to delete. If `null`, the process model will be deleted.

        Returns:

        Descriptor from before the version is deleted

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist.

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the version does not exist for the `ProcessModel`.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient permissions to delete the `ProcessModel` version.

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getBusinessEntity

        [BusinessEntity](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices") getBusinessEntity()

        Retrieves the [`BusinessEntity`](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices") which has been created on the system.

        Returns:

        The `BusinessEntity` in the system. Returns `null` if no `BusinessEntity` has been created.

    -   ### createBusinessEntity

        void createBusinessEntity([BusinessEntity](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices") business\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Creates a [`BusinessEntity`](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices") for use with Web Services.

        Parameters:

        `business_` - The `BusinessEntity` to create. Minimum required fields are: `uuid`, `organizationName`, and `contactInformation`. All fields in the `contactInformation` bean are required (non-null and non-empty `Strings`).

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if any of the required fields or any of the fields in the `contactInformation` bean is null or empty.

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if a system-level error occurs.

    -   ### updateBusinessEntity

        void updateBusinessEntity([BusinessEntity](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices") business\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Updates a [`BusinessEntity`](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices").

        Parameters:

        `business_` - a [`BusinessEntity`](webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices") object. Minimum required fields are: `uuid`, `organizationName`, and `contactInformation`.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if,

        -   the required fields in the argument are `null` or empty.
        -   the `contactInformation` field of the argument is a list and any entry of this list is `null` or empty.
        -   the argument itself is `null`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if a system-level error occurs.

    -   ### getProcessModelWebServices

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getProcessModelWebServices(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Retrieves all [`ProcessModelWebService`](webservices/ProcessModelWebService.html "class in com.appiancorp.suiteapi.process.webservices") objects on the server.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`ProcessModelWebService`](webservices/ProcessModelWebService.html "class in com.appiancorp.suiteapi.process.webservices")

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` which contains an array of `ProcessModelWebService` objects.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### createProcessModelWebService

        void createProcessModelWebService([ProcessModelWebService](webservices/ProcessModelWebService.html "class in com.appiancorp.suiteapi.process.webservices") pmws\_) throws [DuplicateWebServiceNameException](../common/exceptions/DuplicateWebServiceNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Create a [`ProcessModelWebService`](webservices/ProcessModelWebService.html "class in com.appiancorp.suiteapi.process.webservices").

        Parameters:

        `pmws_` - The `ProcessModelWebService` to create. Minimum required fields are: `serviceName`, `serviceUuid`, and `processModelId`.

        Throws:

        `[DuplicateWebServiceNameException](../common/exceptions/DuplicateWebServiceNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a `ProcessModelWebService` with the `serviceName` already exists.

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `processModelId` does not exist.

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")` - if the `ProcessModelWebService` does not contain a `serviceName` or `serviceUuid`

        `ServiceExeption` - if any system-level error occurs

    -   ### deleteProcessModelWebService

        void deleteProcessModelWebService([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName\_)

        Deletes a [`ProcessModelWebService`](webservices/ProcessModelWebService.html "class in com.appiancorp.suiteapi.process.webservices") based on the service name which it contains.

        Parameters:

        `serviceName_` - The name of the service to delete. The `ProcessModelWebService` itself will be deleted.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessStartingInfo

        [ProcessStartingInfo](webservices/ProcessStartingInfo.html "class in com.appiancorp.suiteapi.process.webservices") getProcessStartingInfo([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName\_)

        Retrieves the [`ProcessStartingInfo`](webservices/ProcessStartingInfo.html "class in com.appiancorp.suiteapi.process.webservices") for a service.

        Parameters:

        `serviceName_` - The service for which to retrieve the `ProcessStartingInfo`

        Returns:

        A `ProcessStartingInfo` object which contains the information necessary to start a service.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelByUuid

        [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") getProcessModelByUuid(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the working draft of the [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") specified by a UUID (Universal Unique Identifier).

        Parameters:

        `uuid_` - UUID which specifies the `ProcessModel` to retrieve.

        Returns:

        The `ProcessModel` specified by `uuid_`

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is not allowed to access the model.

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelIdByUuid

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessModelIdByUuid(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the ID of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") by a UUID (Universal Unique Identifier).

        Parameters:

        `uuid_` - UUID of `ProcessModel` whose ID will be retrieved

        Returns:

        ID of the `ProcessModel` specified by `uuid_`, or `null` if no process model exists with that UUID

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no process exists for the UUID provided

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is not allowed to access the model.

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelsAndDescendants

        [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")\[\] getProcessModelsAndDescendants([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves multiple [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") objects as well as the sub `ProcessModel` objects which they contain. All process models returned represent the working drafts of the process models in question.

        Parameters:

        `ids_` - Uniques IDs of the `ProcessModel` which will be retrieved. Their sub process models will be retrieved as well.

        Returns:

        The `ProcessModel` objects specified by `ids_`, along with their sub process models

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a specified `ProcessModel` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelsForFolderStartableOnly

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getProcessModelsForFolderStartableOnly([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieve descriptors representing the working drafts of the startable process models directly in a process model folder. A `ProcessModel` is startable if it has a valid version or draft.

        Parameters:

        `folderId_` - id of the folder to get all process models for

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        Returns a `ResultPage` of `ProcessModel.Descriptor` objects which represent the startable `ProcessModel` objects in the `ProcessModelFolder` specified by `folderId_`

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModelFolder` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to access the folder

    -   ### validateProcessModel

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] validateProcessModel([AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") apm\_)

        Returns the results of validating a process model

        Parameters:

        `pm_` - a `ProcessModel` object representing the process model to be validated

        Returns:

        An array of strings relating to the errors in the process model.

        The error strings contain the error name followed by "@"-separated field names in the `ProcessModel` bean to specify the location, followed by "@" and the reasons for the error Possible error names include "Invalid Expression" and "Invalid Subprocess". This name (prefix) is omitted from fatal invalidities.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if a system-level error occurs.

    -   ### validateProcessModelVersion

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] validateProcessModelVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the results of validating a process model, same as getProcessModelVersion followed by validateProcessModel.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` whose version will be validated

        `version_` - The version of the `ProcessModel` to retrieve

        Returns:

        An array of strings relating to the errors in the process model.

        The error strings contain the error name followed by "@"-separated field names in the `ProcessModel` bean to specify the location, followed by "@" and the reasons for the error Possible error names include "Invalid Expression" and "Invalid Subprocess". This name (prefix) is omitted from fatal invalidities.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if a system-level error occurs.

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### isProcessModelLocked

        boolean isProcessModelLocked([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Determines whether a process model is locked

        Parameters:

        `processModelId_` - the ID of the process model

        Returns:

        `true`, if the process model with the given ID is locked; `false` otherwise.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid process model

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user cannot view the process model (if [`ProcessModelPermissions.isView()`](security/ProcessModelPermissions.html#isView\(\)) would return `false` for this process model)

    -   ### getProcessModelLatestPublishedVersion

        [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") getProcessModelLatestPublishedVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieve the latest published version of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") or the working draft if a published version does not exist.

        Parameters:

        `processModelId_` - ID of the `ProcessModel` to retrieve

        Returns:

        The `ProcessModel` specified by `processModelId_`

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have sufficient privileges to view the `ProcessModel`

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a `ProcessModel` specified by `processModelId_` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getProcessModelLatestPublishedVersionDescriptor

        [ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") getProcessModelLatestPublishedVersionDescriptor([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieve the latest published version of a [`ProcessModel.Descriptor`](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") or the working draft if a published version does not exist.

        Parameters:

        `processModelId_` - ID of the `Descriptor` to retrieve

        Returns:

        The `Descriptor` specified by `processModelId_`

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have sufficient privileges to view the `ProcessModel`

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a `ProcessModel` specified by `processModelId_` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getACInstanceIdsForLocalIds

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getACInstanceIdsForLocalIds([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] localIds\_)

        Returns a `ResultList` containing the actual Id's in database corresponding to given localId's of `ActivityClass`

        Parameters:

        `localIds_` - localId's of `ActivityClass` objects

        Returns:

        a `ResultList` containing Long Id's of `ActivityClass` in database

    -   ### getACPInstanceIdsForLocalIds

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getACPInstanceIdsForLocalIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") activityClassLocalId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] localIds\_)

        Returns a `ResultList` containing the actual Id's in database for `ActivityClassParameter` corresponding to given a `ActivityClass` localId and `ActivityClassParameter` localId's. If the localIds array is empty, InvalidActivityClassSchemaException might be thrown.

        Parameters:

        `activityClassLocalId_` - Id of `ActivityClass>` whose `ActivityClassParameter` Id's are requested

        `localIds_` - localId's of `ActivityClassParameter` objects

        Returns:

        a `ResultList` containing `Long` Id's of given `ActivityClassParameter` objects in database

    -   ### notifyUserCreation

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void notifyUserCreation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        done automatically by UserService.createUser

        Notifies the server that a new user was created on the Personalization server

        Parameters:

        `username_` - the name of the user that was added

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `username_` is `null`

    -   ### notifyUsersCreation

        void notifyUsersCreation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Notifies the server that new users were created on the Personalization server

        Parameters:

        `usernames_` - the names of the users that were added

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any of the usernames are `null`

    -   ### validateGroupMembership

        boolean validateGroupMembership([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] memGroupIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] admGroupIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Validates if the association of a user as 'Member' and as an 'Administrator has changed or not.

        Parameters:

        `memGroupIds_` - Groups for which the User is a member

        `admGroupIds_` - Groups for which the User is an administrator

        `userTypeId_` - this is one of [`UserProfile.USER_TYPE_BASIC`](../personalization/UserProfile.html#USER_TYPE_BASIC) or [`UserProfile.USER_TYPE_SYS_ADMIN`](../personalization/UserProfile.html#USER_TYPE_SYS_ADMIN)

        `username` - the username of the user whose group membership is to be validated

        Returns:

        true if there is not change in the membership of the user

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any of the input arrays are `null`

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### updateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateUsernames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] oldUsernames\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] newUsernames\_, long maxExpirationTimeInSeconds\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

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

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### commitUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void commitUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Commits an update of usernames.

        This method should be preceded by a call to [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)). After the commit, the old usernames will be temporarily active, and will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `commitUpdateUsernames` is not called, the new usernames will not become active.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### rollbackUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void rollbackUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Rolls back an update of usernames.

        This method should be called if [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)) is unsuccessful. The rollback will simply free memory dedicated to mapping old usernames to new usernames.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### setApplicationAdministratorGroup

        void setApplicationAdministratorGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Determines which group users need to be in to have the application administrator role.

        Parameters:

        `groupId` - the id of the administrator group

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### reloadProperties

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void reloadProperties()

        Deprecated.

        reloading properties is now automatic, so this call is now unnecessary and does nothing.

        Reloads all database-level properties files (\*.xml, \*.properties) without interrupting API services

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### validate

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") validate()

        Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

        Returns:

        the validation results

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### setSiteLocaleSettings

        void setSiteLocaleSettings([SiteLocaleSettings](../portal/SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") settings\_)

        Registers the site locale settings on the process design server. Use [`GlobalizationService.setSiteLocaleSettings(SiteLocaleSettings)`](../portal/GlobalizationService.html#setSiteLocaleSettings\(com.appiancorp.suiteapi.portal.SiteLocaleSettings\)) if you need to update the site locale settings for all the product Servers.

        Parameters:

        `settings_` - The site locale settings.

    -   ### getEventsForProcessModelPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getEventsForProcessModelPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] eventTypes\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeStartEvents\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Returns the Events for a given `ProcessModel` specified by `eventTypes_`.

        Parameters:

        `pmId_` - ID of the `ProcessModel` for which to retrieve `Event` objects

        `eventTypes_` - types of events to retrieve. This is one of `XXX_EVENT_YYY` constants in [`Event`](events/Event.html "class in com.appiancorp.suiteapi.process.events")

        `includeStartEvents_` - whether start events should be included

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`Event`](events/Event.html "class in com.appiancorp.suiteapi.process.events")

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` which contains an array of Events

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### findEventsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findEventsPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchString\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] eventTypes\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeStartEvents\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Searches for Events associated with the given Process Model that match the specified searchString.

        Parameters:

        `searchString_` - search string to search the Events' names.

        `pmId_` - ID of the `ProcessModel` for which to retrieve `Event` objects. If the ID is null, then events for all process models are searched.

        `eventTypes_` - types of events to retrieve. This is one of `XXX_EVENT_YYY` constants in [`Event`](events/Event.html "class in com.appiancorp.suiteapi.process.events")

        `includeStartEvents_` - Whether or not events on start node should be returned

        `includeConsuming_` - whether or not consuming events should be returned

        `includeProducing_` - whether or not producing events should be returned

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`Event`](events/Event.html "class in com.appiancorp.suiteapi.process.events")

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` which contains an array of [`Event`](events/Event.html "class in com.appiancorp.suiteapi.process.events") objects that match the search criteria

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getEventOrProcessModelNames

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getEventOrProcessModelNames([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pmIds\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] eventPersistentIds\_)

        Returns the display names of processModels and Events for the provided `ProcessModel` Ids and Event Ids

        Parameters:

        `pmIds_` - Ids of Process Models to get the display name of

        `eventPersistentIds_` - Persistent Ids of Events (EventTrigger)to get the display name for

        Returns:

        displayNames of ProcessModels and Events. First part of the array is ProcessModels depending on the `pmIds_` count and later part of array is Events depending on the `eventIds_` count.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `pmIds_` array or `eventIds_` array is null.

    -   ### getProcessModelIdsByUuids

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getProcessModelIdsByUuids(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter\[\]\[\].class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] pmUUIDs\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the IDs of ProcessModels that match the given UUID.

        Parameters:

        `pmUUIDs_` - Array of UUID Strings.

        Returns:

        an array of process model IDs that match the given UUIDs. `null` is returned for invalid UUID.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getEmailAttachmentFolderIdForPm

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getEmailAttachmentFolderIdForPm([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pm\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the Id of the folder where attachments will be stored when an email message is sent to either the `ProcessModel` or any event within the `ProcessModel`

        Parameters:

        `pm_` - ID of process model

        Returns:

        ID of the folder where attachments will be stored.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified `ProcessModel` does not exist

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getPmIdForEvent

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPmIdForEvent([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") eventPersistentId\_) throws [InvalidEventException](../common/exceptions/InvalidEventException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the ID of the `ProcessModel` that the Event by given `eventPersistentId` belongs to.

        Parameters:

        `eventPersistentId_` - Persistent ID of the Event

        Returns:

        ID of the Process Model

        Throws:

        `[InvalidEventException](../common/exceptions/InvalidEventException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If passed in event persistent ID is invalid

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### getEventsByPersistentId

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getEventsByPersistentId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] eventPersistentIds\_)

        Returns a ResultList containing Events that correspond to the passed in array of Event persistent IDs.

        Parameters:

        `eventPersistentIds_` - Array of Event persistent IDs.

        Returns:

        ResultList containing [`Event`](events/Event.html "class in com.appiancorp.suiteapi.process.events") objects corresponding to the array of given persistent IDs. The result codes can be: `ResultList.CODE_VALID` if the action succeeded, or `ResultList.CODE_INVALID` if the event persistent ID is invalid.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### setDashboardPageForProcessModel

        void setDashboardPageForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets a page as the Dashboard page for the given `ProcessModel` by `processModelId`.

        Parameters:

        `processModelId` - Id of the `ProcessModel` to associate the page with

        `pageId` - the id of the page to set as the Process Model's Dashboard page

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to associate the Dashboard page for the `ProcessModel`

    -   ### getDashboardPageForProcessModel

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDashboardPageForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the dashboard Id that is used for the `ProcessModel` by given `processModelId_`

        Parameters:

        `processModelId_` - Id of the process model

        Returns:

        Id of the dahsboard

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified does not exist

    -   ### removeDashboardPageForProcessModel

        void removeDashboardPageForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Disassociates the current Dashboard page for the given `ProcessModel` by `processModelId`.

        Parameters:

        `processModelId` - Id of the `ProcessModel` for which to remove its current Dashboard page

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcesModel` specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to disassociate the Dashboard page from the `ProcessModel`

    -   ### addProcessModelToFavorites

        void addProcessModelToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Associates this `ProcessModel` by given `modelId_` as one of the current user's favorites.

        Parameters:

        `modelId_` - Id of the `ProcessModel` to be added as favorite.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action on the specified `ProcessModel`

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `modelId_` is null

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### removeProcessModelFromFavorites

        void removeProcessModelFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") modelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes this `ProcessModel` by given `modelId_` as one of the current user's favorites.

        Parameters:

        `modelId_` - Id of the `ProcessModel` to be removed as favorite.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action on the specified `ProcessModel`

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `modelId_` is null

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

    -   ### handleMessages

        int\[\] handleMessages([InternalMessage](../messaging/InternalMessage.html "class in com.appiancorp.suiteapi.messaging")\[\] messages\_)

        Sends the messages to the design server to be handled by the Events framework, and returns appropriate result codes. The result codes can be: `Message.SUCCESS_CODE` if the messages are handled successfully `Message.JMS_TYPE_NOT_PROVIDED_CODE` if the message does not provide a valid JMS type `Message.INVALID_USERNAME_CODE` if the provided username is not valid. If a username is not provided, the result code will return as Message.SUCCESS\_CODE because username may be anonymous. `Message.DESTINATION_NOT_PROVIDED_CODE` if the message does not specify a valid destination `Message.DUPLICATE_MESSAGE_CODE` if the message is a duplicate

        Parameters:

        `messages_` - an array of InternalMessage objects to be processed by the Events framework

        Returns:

        the result codes

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any of the messages in the `messages_` array are null or if the array itself is null

    -   ### validateUsernames

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] validateUsernames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_)

        Returns an array of Boolean values, Boolean.TRUE if the user given by the username exists and Boolean.FALSE otherwise.

        Parameters:

        `usernames_` - An array of usernames to validate

        Returns:

        An array of Boolean values

    -   ### getProcessVariablesForModel

        [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getProcessVariablesForModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, boolean recursive\_)

        Returns the list of all process variables in a given process model. If the recursive flag is set to true, process variables for all sub-process models (that have the transparency flag set to true) will also be returned.

        Parameters:

        `pmId_` - Id of the `ProcessModel` to retrieve the process variables of

        `recursive_` - true if you want to retrieve process variables from the child process models (and their child models in turn).

        Returns:

        An array of `ProcessVariable` objects.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `pmId_` is null.

    -   ### getProcessVariablesForModel

        [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getProcessVariablesForModel(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid, boolean recursive) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the list of all process variables in a given process model. If the recursive flag is set to true, process variables for all sub-process models (that have the transparency flag set to true) will also be returned.

        Parameters:

        `uuid_` - UUID which specifies the `ProcessModel` to retrieve the process variables of, as if by getProcessModelIdByUuid

        `recursive_` - true if you want to retrieve process variables from the child process models (and their child models in turn).

        Returns:

        An array of `ProcessVariable` objects.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `pmId_` is null.

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getCurrentNotePaths

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getCurrentNotePaths()

        Deprecated.

        since 23.2

    -   ### setCurrentNotePaths

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setCurrentNotePaths([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] notePaths\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getExpressionDependencies

        [ExpressionDependency](../expression/ExpressionDependency.html "class in com.appiancorp.suiteapi.expression") getExpressionDependencies([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expressionText, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... parameterNames)

        Returns the expression dependencies for the given `expressionText`. See [`ExpressionDependency`](../expression/ExpressionDependency.html "class in com.appiancorp.suiteapi.expression")

        Parameters:

        `expressionText` - Expression for which the dependencies will be determined

        `parameterNames` - Parameters of the expression. Only apply when the expression is part of a rule definition; pass `null` if it's not a rule definition.

        Returns:

        The `ExpressionDependency` for the given expression

    -   ### getExpressionDependencies

        [ExpressionDependency](../expression/ExpressionDependency.html "class in com.appiancorp.suiteapi.expression")\[\] getExpressionDependencies([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] expression, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] parameterNames)

        Returns an array of the `ExpressionDependency` objects for the given expressions.

        Parameters:

        `expression` - Array of expressions for which the dependencies are to be determined.

        `parameterNames` - Parameters of the expressions. Only apply when the expressions are part of a rule definition; pass `null` if it's not a rule definition.

        Returns:

        An array of `ExpressionDependency` objects for the given expressions.

    -   ### evaluateExpressionInVariableContext

        [PartialResult](../expression/PartialResult.html "class in com.appiancorp.suiteapi.expression") evaluateExpressionInVariableContext([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression, [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] typedVariables, [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] continueParams)

    -   ### evaluateExpression

        [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") evaluateExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression) throws com.appiancorp.process.expression.ExpressionEvaluationException

        Evaluate the given expression (including java expression functions). The time zone used for the evaluation is the time zone in the service context used to acquire the service.

        Parameters:

        `expression` - The expression to evaluate.

        Returns:

        The result of the expression.

        Throws:

        `com.appiancorp.process.expression.ExpressionEvaluationException` - If an error occurs during the evaluation of the expression.

    -   ### externalizeExpression

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalizeExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... parameterNames)

        Replaces rule names with UUIDs within the given expression. Replaces type literals by id with type literals by name of exact type (including deactivated types).

        Parameters:

        `expression` - expression with rule names

        `parameterNames` - parameter names in expressions. Used to resolve conflicts between unqualified variables, like unqualified rule inputs in rule definitions, and other rule names

        Returns:

        expression with rule names replaced by UUIDs

    -   ### internalizeExpression

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") internalizeExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression)

        Replaces UUIDs with rule names within the given expression. Replaces type literals by name with type literals by id.

        Parameters:

        `expression` - expression with UUIDs

        Returns:

        expression with UUIds replaced by rule names

    -   ### getRuleIdReferences

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getRuleIdReferences([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets all the rule ids that the expressions within the process model with `pmId` id contain, including nested rules referenced by all the expressions.

        Parameters:

        `pmId` - process model id

        Returns:

        collection of rule ids

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified by `pmId` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have sufficient privileges to view the `ProcessModel`

    -   ### getRuleUuidReferences

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getRuleUuidReferences([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm)

        Gets all the rule UUID references that the expressions within the process model bean (`pm`) contain.

        Parameters:

        `pm` - process model bean

        Returns:

        collection of rule UUID references

    -   ### evaluateExpression

        [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") evaluateExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression, [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] variableValues) throws com.appiancorp.process.expression.ExpressionEvaluationException

        Evaluate the given expression (including java expression functions). The given variable values are substituted into the expression during evaluation. For example, if the expression is a rule's definition, the variable values should hold values for all of the rule's parameters.

        Parameters:

        `expression` - The expression to evaluate.

        `variableValues` - Values for all the variables used in the given expression. The name, instance type, and value of each variable value must be set. For example, if the expression is: ="Hello "&!firstName The variableValues array should hold a single NamedTypedValue object with the name "firstName", instance type AppianTypeLong.STRING and a value such as "John".

        Returns:

        The result of the expression.

        Throws:

        `com.appiancorp.process.expression.ExpressionEvaluationException` - If an error occurrs during the evaluation of the expression.

    -   ### setProcessDashboardPageForProcessModel

        void setProcessDashboardPageForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets a particular page as the dashboard for every instance of a given `ProcessModel` by `processModelId`.

        Parameters:

        `processModelId_` - The ID of the process model whose processes will be nabbed

        `pageId_` - The ID of the page that will serve as the dashboard for those processes.

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to associate the Dashboard page for the `ProcessModel`

    -   ### getProcessDashboardPageForProcessModel

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessDashboardPageForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the dashboard Id that is used for all processes spawned from the `ProcessModel` by given `processModelId_`

        Parameters:

        `processModelId_` - Id of the process model

        Returns:

        Id of the dahsboard

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified does not exist

    -   ### removeProcessDashboardPageForProcessModel

        void removeProcessDashboardPageForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_) throws [InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes any custom dashboards created for instances of a particular process model. Instances will use the system default dashboard page instead.

        Parameters:

        `processModelId_` - The ID of the process model

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModel` specified does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to associate the Dashboard page for the `ProcessModel`

    -   ### getLingeringTasksForProcessModel

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getLingeringTasksForProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_, boolean recursive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns all instances of lingering nodes in the specified process. Lingering nodes are those whose instances are known only to the execution server and are not notified externally as long as they are active. One example of such nodes is quick tasks.

        Parameters:

        `processModelId_` - the id of the process model for which the lingering tasks should be retrieved

        `recursive` - whether to return the lingering tasks of the sub-process models of the given process model also

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`TaskDesignProperties`](TaskDesignProperties.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a ResultPage of TaskDesignProperties objects

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the given process id is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user doesn't have privileges to see the model

    -   ### validateTypedValues

        boolean validateTypedValues([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\[\] typedValues)

        Validates given TypedValues. This method is free to throw an exception or to return false if any TypedValue passed is invalid for this engine. This engine supports: AppianType.PROCESS\_MODEL

        Parameters:

        `typedValues` -

        Returns:

        true if valid, false if invalid

    -   ### setTimeZone

        void setTimeZone([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz)

        Set a backend timezone.

        Parameters:

        `tz` -

    -   ### setTimeZoneSameAs

        void setTimeZoneSameAs([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sameAsId)

        Set a backend timezone to have the same rules as another backend timezone the sameAsId.

        Parameters:

        `tz` -

        `sameAsId` -