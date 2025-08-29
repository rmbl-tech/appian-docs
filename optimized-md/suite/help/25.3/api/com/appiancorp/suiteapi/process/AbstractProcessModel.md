---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/AbstractProcessModel.html
original_path: api/com/appiancorp/suiteapi/process/AbstractProcessModel.html
version: "25.3"
title: "Class AbstractProcessModel"
page_id: "api/com/appiancorp/suiteapi/process/AbstractProcessModel"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class AbstractProcessModel

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.AbstractProcessModel

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

* * *

public abstract class AbstractProcessModel extends [LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common") implements [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process"), [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")

The template from which processes are created. A process model contains nodes that are connected to each other through flows (aka connections). Each node represents an activity to be performed by either the system or a user. Nodes have one primary activity, but can have an arbitrary number of pre- and post-activities, as long as such activities are unattended (i.e. do not require user interaction). The process model also holds such meta data as who created it, when, and what group the model is associated with. Process models are generally created through the UI designer.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.AbstractProcessModel)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[AUTO_ARCHIVE](#AUTO_ARCHIVE)`

    `static final int`

    `[AUTO_DELETE](#AUTO_DELETE)`

    `static final [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang")`

    `[DEFAULT_COMPLETION](#DEFAULT_COMPLETION)`

    Constant indicating the default time instances of each model are expected to take to complete.

    `static final int`

    `[K_EXEC_ENVIRONMENT](#K_EXEC_ENVIRONMENT)`

    Integer representation of K environment for process execution (0).

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LATEST_PUBLISHED_VERSION](#LATEST_PUBLISHED_VERSION)`

    `static final int`

    `[NO_CLEANUP](#NO_CLEANUP)`

    `static final int`

    `[RESULT_CODE_INVALID](#RESULT_CODE_INVALID)`

    Constant indicating that a model is invalid.

    `static final int`

    `[RESULT_CODE_NO_PERM_PUBLISH](#RESULT_CODE_NO_PERM_PUBLISH)`

    Constant indicating that the current user does not have permissions to publish the current model.

    `static final int`

    `[RESULT_CODE_SUCCESS](#RESULT_CODE_SUCCESS)`

    Constant indicating that an operation on a model was successful.

    `static final int`

    `[STATUS_DRAFT](#STATUS_DRAFT)`

    Constant indicating that a model is in draft state.

    `static final int`

    `[STATUS_PUBLISHED](#STATUS_PUBLISHED)`

    Constant indicating that a model is in published state.

    `static final int`

    `[STATUS_VERSION](#STATUS_VERSION)`

    Constant indicating that a model is in versioned state.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYS_AUTOARCHIVE](#SYS_AUTOARCHIVE)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYS_AUTOARCHIVE_DELAY](#SYS_AUTOARCHIVE_DELAY)`

    `static final int`

    `[SYSTEM_DEFAULT](#SYSTEM_DEFAULT)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AbstractProcessModel](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") appianCache_)`

    Adds the primary keys of the Appian-typed objects maintained by the elements in the given array to the cache.

    `protected void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache,com.appiancorp.suiteapi.process.AppianTypeHolder%5B%5D\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") appianCache_, [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")[] holders_)`

    `[ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAcSchemas](#getAcSchemas\(\))()`

    Deprecated.

    This is a legacy field; it will be removed in the next release.

    `[AnnotationArtifact](gui/AnnotationArtifact.html "class in com.appiancorp.suiteapi.process.gui")[]`

    `[getAnnotations](#getAnnotations\(\))()`

    Returns the annotations that this model contains.

    `[Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAttachments](#getAttachments\(\))()`

    Gets the attachments that have been attached to this model.

    `int`

    `[getAutoArchiveDelay](#getAutoArchiveDelay\(\))()`

    The number of days after process completion to archive a process.

    `int`

    `[getAutoDeleteDelay](#getAutoDeleteDelay\(\))()`

    The number of days after process completion to delete a process.

    `int`

    `[getCleanupAction](#getCleanupAction\(\))()`

    Returns the cleanup action defined by one of the constants AUTO\_ARCHIVE, AUTO\_DELETE, NO\_CLEANUP

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreatorUsername](#getCreatorUsername\(\))()`

    Gets the user who created this model.

    `[Deadline](Deadline.html "class in com.appiancorp.suiteapi.process")`

    `[getDeadline](#getDeadline\(\))()`

    `[Security](../common/Security.html "class in com.appiancorp.suiteapi.common")`

    `[getDefaultProcessSecurity](#getDefaultProcessSecurity\(\))()`

    Gets the default security mapping for processes that are instances of this model.

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getDescription](#getDescription\(\))()`

    Gets the localized name mappings of this model.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getEmailAttachmentFolderId](#getEmailAttachmentFolderId\(\))()`

    `int`

    `[getExecutionEnvironment](#getExecutionEnvironment\(\))()`

    Returns int representation of the Process Execution Environment.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getFolderId](#getFolderId\(\))()`

    Gets the id of the folder in which this model is saved.

    `[FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getFormConfig](#getFormConfig\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Gets the form config corresponding to the given locale, or null if no such config exists.

    `[FormConfigMap](forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getFormConfigMap](#getFormConfigMap\(\))()`

    Gets the form config for this model, which is used when instances of the model are started.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getGroupOwnerId](#getGroupOwnerId\(\))()`

    Deprecated.

    groups do not own processModels anymore.

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `boolean`

    `[getIsPublic](#getIsPublic\(\))()`

    `[Lane](gui/Lane.html "class in com.appiancorp.suiteapi.process.gui")[]`

    `[getLanes](#getLanes\(\))()`

    Gets the Lanes of the Process Model.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLastModifiedUsername](#getLastModifiedUsername\(\))()`

    Gets the user who last modified this model.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLatestVersion](#getLatestVersion\(\))()`

    Gets the latest version of this model as a dot-separated version number (such as 1.3.0).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLockedBy](#getLockedBy\(\))()`

    Gets the user that has this model locked.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getLockedByTime](#getLockedByTime\(\))()`

    Gets the time at which this model was most recently locked, or `null` if the model is not currently locked.

    `[Note](Note.html "class in com.appiancorp.suiteapi.process")[]`

    `[getNotes](#getNotes\(\))()`

    Gets the notes that have been attached to this model.

    `[Note](Note.html "class in com.appiancorp.suiteapi.process")[]`

    `[getNotesWithContent](#getNotesWithContent\(com.appiancorp.suiteapi.process.Note%5B%5D\))([Note](Note.html "class in com.appiancorp.suiteapi.process")[] notes_)`

    Gets the notes that have been attached to this model, including the content of the notes.

    `[ProcessModelNotificationSettings](ProcessModelNotificationSettings.html "class in com.appiancorp.suiteapi.process")`

    `[getNtfSettings](#getNtfSettings\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getOwnerUsername](#getOwnerUsername\(\))()`

    Gets the user who owns (created) this model.

    `[ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissions](#getPermissions\(\))()`

    Gets the permissions that the currently logged-in user has on this model.

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[getPriority](#getPriority\(\))()`

    Gets the priority of this model.

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessName](#getProcessName\(\))()`

    Gets the localized name mappings of processes that are started from this model.

    `[Schedule](Schedule.html "class in com.appiancorp.suiteapi.process")[]`

    `[getSchedules](#getSchedules\(\))()`

    Retrieves the schedules on which instances of this model are started.

    `[Security](../common/Security.html "class in com.appiancorp.suiteapi.common")`

    `[getSecurity](#getSecurity\(\))()`

    Gets the security mapping for this model.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getState](#getState\(\))()`

    Deprecated.

    Use [`getVersionStatus()`](#getVersionStatus\(\))

    `[Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang")`

    `[getTargetCompletion](#getTargetCompletion\(\))()`

    Gets the target duration in which the process should complete

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimeStampCreated](#getTimeStampCreated\(\))()`

    Gets the time at which this model was created.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimeStampUpdated](#getTimeStampUpdated\(\))()`

    Gets the time at which this model was last updated.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTimeZoneId](#getTimeZoneId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Gets the univerally unique identifier (uuid) for this model.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getVersion](#getVersion\(\))()`

    Gets the version of this model

    `int`

    `[getVersionStatus](#getVersionStatus\(\))()`

    Gets the version status of this model.

    `boolean`

    `[isEnabled](#isEnabled\(\))()`

    Determines whether or not the process model is enabled.

    `boolean`

    `[isModified](#isModified\(\))()`

    Determines whether this model has been modified.

    `boolean`

    `[isMutablePriority](#isMutablePriority\(\))()`

    Determines whether the priority of this model can be changed.

    `boolean`

    `[isUseProcessInitiatorTimeZone](#isUseProcessInitiatorTimeZone\(\))()`

    `boolean`

    `[isValidated](#isValidated\(\))()`

    Determines whether or not this model is validated.

    `void`

    `[setAcSchemas](#setAcSchemas\(com.appiancorp.suiteapi.process.ActivityClassSchema%5B%5D\))([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")[] acSchemas_)`

    Deprecated.

    This is a legacy field; it will be removed in the next release.

    `void`

    `[setAnnotations](#setAnnotations\(com.appiancorp.suiteapi.process.gui.AnnotationArtifact%5B%5D\))([AnnotationArtifact](gui/AnnotationArtifact.html "class in com.appiancorp.suiteapi.process.gui")[] annotations_)`

    See [`getAnnotations()`](#getAnnotations\(\)).

    `void`

    `[setAttachments](#setAttachments\(com.appiancorp.suiteapi.process.Attachment%5B%5D\))([Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")[] attachments_)`

    Sets the attachments that have been attached to this model.

    `void`

    `[setAutoArchiveDelay](#setAutoArchiveDelay\(int\))(int autoArchiveDelay_)`

    Sets the number of days after process completion to archive a process.

    `void`

    `[setAutoDeleteDelay](#setAutoDeleteDelay\(int\))(int autoDeleteDelay_)`

    Sets the number of days after process completion to delete a process.

    `void`

    `[setCleanupAction](#setCleanupAction\(int\))(int cleanupAction_)`

    Sets the cleanup action.

    `void`

    `[setCreatorUsername](#setCreatorUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creatorUsername_)`

    Sets the user who created this model.

    `void`

    `[setDeadline](#setDeadline\(com.appiancorp.suiteapi.process.Deadline\))([Deadline](Deadline.html "class in com.appiancorp.suiteapi.process") deadline_)`

    `void`

    `[setDefaultProcessSecurity](#setDefaultProcessSecurity\(com.appiancorp.suiteapi.common.Security\))([Security](../common/Security.html "class in com.appiancorp.suiteapi.common") defaultProcessSecurity_)`

    Sets the default security mapping for processes that are instances of this model.

    `void`

    `[setDescription](#setDescription\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") description_)`

    Sets the localized name mappings of this process model.

    `void`

    `[setEmailAttachmentFolderId](#setEmailAttachmentFolderId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") emailAttachmentFolderId_)`

    `void`

    `[setEnabled](#setEnabled\(boolean\))(boolean enabled_)`

    Sets whether or not the process model is enabled.

    `void`

    `[setExecutionEnvironment](#setExecutionEnvironment\(int\))(int executionEnvironment_)`

    Set the execution environment in which the process will be run.

    `void`

    `[setFolderId](#setFolderId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Sets the folder in which this model is saved.

    `void`

    `[setFormConfigMap](#setFormConfigMap\(com.appiancorp.suiteapi.process.forms.FormConfigMap\))([FormConfigMap](forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms") formConfigMap_)`

    Sets the form config for this model, which is used when instances of the model are started.

    `void`

    `[setGroupOwnerId](#setGroupOwnerId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupOwnerId_)`

    Deprecated.

    groups do not own processModels anymore.

    `void`

    `[setIsPublic](#setIsPublic\(boolean\))(boolean isPublic_)`

    `void`

    `[setLanes](#setLanes\(com.appiancorp.suiteapi.process.gui.Lane%5B%5D\))([Lane](gui/Lane.html "class in com.appiancorp.suiteapi.process.gui")[] lanes_)`

    Sets the Lanes of the Process Model See {@link #getLanes());

    `void`

    `[setLastModifiedUsername](#setLastModifiedUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lastModifiedUsername_)`

    Sets the user who last modified this model.

    `void`

    `[setLatestVersion](#setLatestVersion\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") latestVersion_)`

    Set the latest version of the process model

    `void`

    `[setLockedBy](#setLockedBy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy_)`

    Sets the user who has this model locked.

    `void`

    `[setLockedByTime](#setLockedByTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") lockedByTime_)`

    Sets the time at which this model was most recently locked.

    `void`

    `[setModified](#setModified\(boolean\))(boolean modified_)`

    Sets whether or not the process model has been modified.

    `void`

    `[setMutablePriority](#setMutablePriority\(boolean\))(boolean mutablePriority_)`

    Sets whether the priority of this model can be changed.

    `void`

    `[setNotes](#setNotes\(com.appiancorp.suiteapi.process.Note%5B%5D\))([Note](Note.html "class in com.appiancorp.suiteapi.process")[] notes_)`

    Sets the notes that have been attached to this model.

    `void`

    `[setNtfSettings](#setNtfSettings\(com.appiancorp.suiteapi.process.ProcessModelNotificationSettings\))([ProcessModelNotificationSettings](ProcessModelNotificationSettings.html "class in com.appiancorp.suiteapi.process") ntfSettings_)`

    `void`

    `[setOwnerUsername](#setOwnerUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ownerUsername_)`

    Sets the owner of the process model.

    `void`

    `[setPermissions](#setPermissions\(com.appiancorp.suiteapi.process.security.ProcessModelPermissions\))([ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") permissions_)`

    Sets the permissions that the currently logged-in user has on this model.

    `void`

    `[setPriority](#setPriority\(com.appiancorp.suiteapi.process.Priority\))([Priority](Priority.html "class in com.appiancorp.suiteapi.process") priority_)`

    Sets the priority for this model

    `void`

    `[setProcessName](#setProcessName\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") processName_)`

    Sets the localized name mappings of processes that are created from this model.

    `void`

    `[setSchedules](#setSchedules\(com.appiancorp.suiteapi.process.Schedule%5B%5D\))([Schedule](Schedule.html "class in com.appiancorp.suiteapi.process")[] schedules_)`

    sets the schedules for the process model.

    `void`

    `[setSecurity](#setSecurity\(com.appiancorp.suiteapi.common.Security\))([Security](../common/Security.html "class in com.appiancorp.suiteapi.common") security_)`

    Sets the security mapping for this model.

    `void`

    `[setState](#setState\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") state_)`

    Deprecated.

    Use [`setVersionStatus(int)`](#setVersionStatus\(int\))

    `void`

    `[setTargetCompletion](#setTargetCompletion\(java.lang.Float\))([Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") targetCompletion_)`

    Sets the target duration in which the process should complete

    `void`

    `[setTimeStampCreated](#setTimeStampCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStampCreated_)`

    Sets the time at which this model was created.

    `void`

    `[setTimeStampUpdated](#setTimeStampUpdated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStampUpdated_)`

    Sets the time at which this model was last updated.

    `void`

    `[setTimeZoneId](#setTimeZoneId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeZoneId)`

    `void`

    `[setUseProcessInitiatorTimeZone](#setUseProcessInitiatorTimeZone\(boolean\))(boolean useProcessInitiatorTimeZone)`

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid_)`

    Sets the univerally unique identifier (uuid) for this model.

    `void`

    `[setValidated](#setValidated\(boolean\))(boolean validated_)`

    Sets whether or not the process model is validated

    `void`

    `[setVersion](#setVersion\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Sets the version of this model.

    `void`

    `[setVersionStatus](#setVersionStatus\(int\))(int versionStatus_)`

    Sets the version status of the process model

    ### Methods inherited from class com.appiancorp.suiteapi.common.[LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/LocalizedIdentity.html#equals\(java.lang.Object\)), [getId](../common/LocalizedIdentity.html#getId\(\)), [getIds](../common/LocalizedIdentity.html#getIds\(com.appiancorp.suiteapi.common.LocalizedIdentity%5B%5D\)), [getName](../common/LocalizedIdentity.html#getName\(\)), [hashCode](../common/LocalizedIdentity.html#hashCode\(\)), [setId](../common/LocalizedIdentity.html#setId\(java.lang.Long\)), [setName](../common/LocalizedIdentity.html#setName\(com.appiancorp.suiteapi.common.LocaleString\)), [toString](../common/LocalizedIdentity.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LATEST\_PUBLISHED\_VERSION

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LATEST\_PUBLISHED\_VERSION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.LATEST_PUBLISHED_VERSION)

    -   ### STATUS\_DRAFT

        public static final int STATUS\_DRAFT

        Constant indicating that a model is in draft state.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.STATUS_DRAFT)

    -   ### STATUS\_VERSION

        public static final int STATUS\_VERSION

        Constant indicating that a model is in versioned state.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.STATUS_VERSION)

    -   ### STATUS\_PUBLISHED

        public static final int STATUS\_PUBLISHED

        Constant indicating that a model is in published state.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.STATUS_PUBLISHED)

    -   ### RESULT\_CODE\_INVALID

        public static final int RESULT\_CODE\_INVALID

        Constant indicating that a model is invalid.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.RESULT_CODE_INVALID)

    -   ### RESULT\_CODE\_NO\_PERM\_PUBLISH

        public static final int RESULT\_CODE\_NO\_PERM\_PUBLISH

        Constant indicating that the current user does not have permissions to publish the current model.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.RESULT_CODE_NO_PERM_PUBLISH)

    -   ### RESULT\_CODE\_SUCCESS

        public static final int RESULT\_CODE\_SUCCESS

        Constant indicating that an operation on a model was successful.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.RESULT_CODE_SUCCESS)

    -   ### DEFAULT\_COMPLETION

        public static final [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") DEFAULT\_COMPLETION

        Constant indicating the default time instances of each model are expected to take to complete.

    -   ### NO\_CLEANUP

        public static final int NO\_CLEANUP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.NO_CLEANUP)

    -   ### AUTO\_ARCHIVE

        public static final int AUTO\_ARCHIVE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.AUTO_ARCHIVE)

    -   ### AUTO\_DELETE

        public static final int AUTO\_DELETE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.AUTO_DELETE)

    -   ### SYSTEM\_DEFAULT

        public static final int SYSTEM\_DEFAULT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.SYSTEM_DEFAULT)

    -   ### SYS\_AUTOARCHIVE\_DELAY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYS\_AUTOARCHIVE\_DELAY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.SYS_AUTOARCHIVE_DELAY)

    -   ### SYS\_AUTOARCHIVE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYS\_AUTOARCHIVE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.SYS_AUTOARCHIVE)

    -   ### K\_EXEC\_ENVIRONMENT

        public static final int K\_EXEC\_ENVIRONMENT

        Integer representation of K environment for process execution (0).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractProcessModel.K_EXEC_ENVIRONMENT)

-   ## Constructor Details

    -   ### AbstractProcessModel

        public AbstractProcessModel()

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### getLatestVersion

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLatestVersion()

        Gets the latest version of this model as a dot-separated version number (such as 1.3.0).

        Returns:

        the latest version of the process model

    -   ### setLatestVersion

        public void setLatestVersion([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") latestVersion\_)

        Set the latest version of the process model

        Parameters:

        `latestVersion_` - latest version of the process model, as a dot-separated version number (such as 1.3.0).

    -   ### getExecutionEnvironment

        public int getExecutionEnvironment()

        Returns int representation of the Process Execution Environment. K Execution Environment: 0 Autoscale Execution environment: 1

        Returns:

        int corresponding to the process execution environment

    -   ### setExecutionEnvironment

        public void setExecutionEnvironment(int executionEnvironment\_)

        Set the execution environment in which the process will be run. Return Illegal Argument Exception if int does not correspond with a defined execution environment

        Parameters:

        `executionEnvironment_` - - int 0 for K; 1 for Autoscale

    -   ### getFolderId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getFolderId()

        Gets the id of the folder in which this model is saved.

        Returns:

        the folder in which this model is saved.

    -   ### setFolderId

        public void setFolderId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_)

        Sets the folder in which this model is saved.

        Parameters:

        `folderId_` - the folder in which this model is saved.

    -   ### isValidated

        public boolean isValidated()

        Determines whether or not this model is validated.

        Returns:

        `true`if this model is validated, `false` otherwise.

    -   ### setValidated

        public void setValidated(boolean validated\_)

        Sets whether or not the process model is validated

        Parameters:

        `validated_` - `true`if this model is validated, `false` otherwise.

    -   ### isEnabled

        public boolean isEnabled()

        Determines whether or not the process model is enabled.

        Returns:

        `true` if this model is enabled, `false` otherwise.

    -   ### setEnabled

        public void setEnabled(boolean enabled\_)

        Sets whether or not the process model is enabled.

        Parameters:

        `enabled_` - `true` if this model is enabled, `false` otherwise.

    -   ### getLockedBy

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLockedBy()

        Gets the user that has this model locked.

        Returns:

        the username of the user who has this model locked, or `null` if this model is unlocked.

    -   ### setLockedBy

        public void setLockedBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy\_)

        Sets the user who has this model locked.

        Parameters:

        `lockedBy_` - username of the user who has this model locked, or `null` if the model is unlocked.

    -   ### getLockedByTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getLockedByTime()

        Gets the time at which this model was most recently locked, or `null` if the model is not currently locked.

        Returns:

        the time this model was locked.

    -   ### setLockedByTime

        public void setLockedByTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") lockedByTime\_)

        Sets the time at which this model was most recently locked.

        Parameters:

        `lockedByTime_` - the time this model was locked, or `null` if the model is not currently locked.

    -   ### getVersion

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getVersion()

        Gets the version of this model

        Returns:

        the version of this model, as a string holding a dot-separated number (such as 1.3.0).

    -   ### setVersion

        public void setVersion([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_)

        Sets the version of this model.

        Parameters:

        `version_` - the version of this model, as a string holding a dot-separated number (such as 1.3.0).

    -   ### getVersionStatus

        public int getVersionStatus()

        Gets the version status of this model.

        Returns:

        the status of this version, as one of the `STATUS_XXX` constants.

    -   ### setVersionStatus

        public void setVersionStatus(int versionStatus\_)

        Sets the version status of the process model

        Parameters:

        `versionStatus_` - the version status to set, as one of the `STATUS_XXX` constants.

    -   ### getPriority

        public [Priority](Priority.html "class in com.appiancorp.suiteapi.process") getPriority()

        Gets the priority of this model.

        Returns:

        the priority of this model.

    -   ### setPriority

        public void setPriority([Priority](Priority.html "class in com.appiancorp.suiteapi.process") priority\_)

        Sets the priority for this model

        Parameters:

        `priority_` - the priority of this model.

    -   ### getDescription

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getDescription()

        Gets the localized name mappings of this model.

        Returns:

        the description of this model.

    -   ### setDescription

        public void setDescription([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") description\_)

        Sets the localized name mappings of this process model.

        Parameters:

        `description_` - the description of this model.

    -   ### isModified

        public boolean isModified()

        Determines whether this model has been modified.

        Returns:

        `true` if this model has been modified, `false` otherwise.

    -   ### setModified

        public void setModified(boolean modified\_)

        Sets whether or not the process model has been modified.

        Parameters:

        `modified_` - `true` if this model has been modified, `false` otherwise.

    -   ### getTimeStampCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimeStampCreated()

        Gets the time at which this model was created.

        Returns:

        the time at which this model was created.

    -   ### setTimeStampCreated

        public void setTimeStampCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStampCreated\_)

        Sets the time at which this model was created.

        Parameters:

        `timeStampCreated_` - the time at which this model was created.

    -   ### getTimeStampUpdated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimeStampUpdated()

        Gets the time at which this model was last updated.

        Returns:

        the time this model was last updated.

    -   ### setTimeStampUpdated

        public void setTimeStampUpdated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStampUpdated\_)

        Sets the time at which this model was last updated.

        Parameters:

        `timeStampUpdated_` - the time at which this model was last updated.

    -   ### getCreatorUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreatorUsername()

        Gets the user who created this model.

        Returns:

        the username of the user that created this model.

    -   ### setCreatorUsername

        public void setCreatorUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creatorUsername\_)

        Sets the user who created this model.

        Parameters:

        `creatorUsername_` - the username of the user who created this model.

    -   ### getGroupOwnerId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getGroupOwnerId()

        Deprecated.

        groups do not own processModels anymore.

        Gets the group for which this model was created.

        Returns:

        the id of the group owner of this model.

    -   ### setGroupOwnerId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setGroupOwnerId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupOwnerId\_)

        Deprecated.

        groups do not own processModels anymore.

        Sets the group for which this model was created.

        Parameters:

        `groupOwnerId_` - the id of the group that created this model.

    -   ### getOwnerUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getOwnerUsername()

        Gets the user who owns (created) this model.

        Returns:

        the username of the owner of the process model.

    -   ### setOwnerUsername

        public void setOwnerUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ownerUsername\_)

        Sets the owner of the process model.

        Parameters:

        `ownerUsername_` - the username of the user who created this model.

    -   ### getState

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getState()

        Deprecated.

        Use [`getVersionStatus()`](#getVersionStatus\(\))

        Retrieves the state of the process model.

    -   ### setState

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setState([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") state\_)

        Deprecated.

        Use [`setVersionStatus(int)`](#setVersionStatus\(int\))

        Sets the state of the process model.

    -   ### getAcSchemas

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")\[\] getAcSchemas()

        Deprecated.

        This is a legacy field; it will be removed in the next release.

        Retrieves the activity class schemas that are used in this model. Any schemas that are used by the primary activities of nodes, pre- and post-activities, assignment functions, or for any other reason will be contained in this array. The refererences to the activity classes in all of those places contain an `acSchemaId` property, and tools relate the activities to their schemas by doing a lookup in this array. This array is not explicitly stored in the database, but is generated whenever a process model is retrieved from the database.

        Returns:

        the activity class schemas referenced within this model

    -   ### setAcSchemas

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setAcSchemas([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")\[\] acSchemas\_)

        Deprecated.

        This is a legacy field; it will be removed in the next release.

        Sets the activity class schemas that are used in this model. Any schemas that are used by the primary activities of nodes, pre- and post-activities, assignment functions, or for any other reason MUST be contained in this array. The refererences to the activity classes in all of those places contain an acSchemaId property, and tools relate the activities to their schemas by doing a lookup in this array. This array is not explicitly stored in the database, but is generated whenever a process model is retrieved from the database.

        Parameters:

        `acSchemas_` - the schemas used in this model.

    -   ### getProcessName

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getProcessName()

        Gets the localized name mappings of processes that are started from this model.

        Returns:

        the localized name mappings of the process, which may contain an expression.

    -   ### setProcessName

        public void setProcessName([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") processName\_)

        Sets the localized name mappings of processes that are created from this model.

        Parameters:

        `processName_` - the localized name mappings of the process, which may contain an expression.

    -   ### getSchedules

        public [Schedule](Schedule.html "class in com.appiancorp.suiteapi.process")\[\] getSchedules()

        Retrieves the schedules on which instances of this model are started. So far, this functionality is not supported.

        Returns:

        an array of schedules.

    -   ### setSchedules

        public void setSchedules([Schedule](Schedule.html "class in com.appiancorp.suiteapi.process")\[\] schedules\_)

        sets the schedules for the process model. So far, this functionality is not supported.

    -   ### fillInAppianTypes

        protected void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") appianCache\_, [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")\[\] holders\_)

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") appianCache\_)

        Adds the primary keys of the Appian-typed objects maintained by the elements in the given array to the cache. This method is cheap.

        Specified by:

        `[fillInAppianTypes](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `ath_` - something that has objects that are of Appian types.

    -   ### getNotes

        public [Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] getNotes()

        Gets the notes that have been attached to this model. These notes are really only metadata; for the content, call `getNotesWithContent`.

        Returns:

        the notes that have been attached to this model.

    -   ### setNotes

        public void setNotes([Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] notes\_)

        Sets the notes that have been attached to this model.

        Parameters:

        `notes_` - the notes that have been attached to this model.

    -   ### getNotesWithContent

        public [Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] getNotesWithContent([Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] notes\_)

        Gets the notes that have been attached to this model, including the content of the notes.

        Returns:

        the notes that have been attached to this model.

    -   ### getLastModifiedUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLastModifiedUsername()

        Gets the user who last modified this model.

        Returns:

        the username of the user who last modified this model.

    -   ### setLastModifiedUsername

        public void setLastModifiedUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lastModifiedUsername\_)

        Sets the user who last modified this model.

        Parameters:

        `lastModifiedUsername_` - the username of the user who last modified this model.

    -   ### getDefaultProcessSecurity

        public [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") getDefaultProcessSecurity()

        Gets the default security mapping for processes that are instances of this model.

        Returns:

        the default process security mapping for processes that are instances of this model.

    -   ### setDefaultProcessSecurity

        public void setDefaultProcessSecurity([Security](../common/Security.html "class in com.appiancorp.suiteapi.common") defaultProcessSecurity\_)

        Sets the default security mapping for processes that are instances of this model.

        Parameters:

        `defaultProcessSecurity_` - the default process security mapping for processes that are instances of this model.

    -   ### getSecurity

        public [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") getSecurity()

        Gets the security mapping for this model.

        Returns:

        the security mapping for this model.

    -   ### setSecurity

        public void setSecurity([Security](../common/Security.html "class in com.appiancorp.suiteapi.common") security\_)

        Sets the security mapping for this model.

        Parameters:

        `security_` - the security mapping for this model.

    -   ### getPermissions

        public [ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissions()

        Gets the permissions that the currently logged-in user has on this model.

        Returns:

        the permissions that the current user has on this model.

    -   ### setPermissions

        public void setPermissions([ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") permissions\_)

        Sets the permissions that the currently logged-in user has on this model.

        Parameters:

        `permissions_` - the permissions that the current user has on this model.

    -   ### isMutablePriority

        public boolean isMutablePriority()

        Determines whether the priority of this model can be changed.

        Returns:

        `true` if the priority of this model can be changed, `false` otherwise.

    -   ### setMutablePriority

        public void setMutablePriority(boolean mutablePriority\_)

        Sets whether the priority of this model can be changed.

        Parameters:

        `mutablePriority_` - `true` if the priority of this model can be changed, `false` otherwise.

    -   ### getAttachments

        public [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")\[\] getAttachments()

        Gets the attachments that have been attached to this model.

        Returns:

        the attachments that have been attached to this model.

    -   ### setAttachments

        public void setAttachments([Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")\[\] attachments\_)

        Sets the attachments that have been attached to this model.

        Parameters:

        `attachments_` - the attachments that have been attached to this model.

    -   ### getTargetCompletion

        public [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") getTargetCompletion()

        Gets the target duration in which the process should complete

        Returns:

        a value representing the number of days

    -   ### setTargetCompletion

        public void setTargetCompletion([Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") targetCompletion\_)

        Sets the target duration in which the process should complete

        Parameters:

        `targetCompletion_` - the target duration in days in which the process should complete

    -   ### getFormConfigMap

        public [FormConfigMap](forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms") getFormConfigMap()

        Gets the form config for this model, which is used when instances of the model are started.

        Returns:

        the form config

    -   ### getFormConfig

        public [FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") getFormConfig([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Gets the form config corresponding to the given locale, or null if no such config exists.

        Parameters:

        `locale_` -

        Returns:

    -   ### setFormConfigMap

        public void setFormConfigMap([FormConfigMap](forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms") formConfigMap\_)

        Sets the form config for this model, which is used when instances of the model are started.

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Gets the univerally unique identifier (uuid) for this model. UUIDs are used to compare versions of imported and exported models.

        Returns:

        the uuid of this model.

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid\_)

        Sets the univerally unique identifier (uuid) for this model. UUIDs are used to compare versions of imported and exported models.

    -   ### getAnnotations

        public [AnnotationArtifact](gui/AnnotationArtifact.html "class in com.appiancorp.suiteapi.process.gui")\[\] getAnnotations()

        Returns the annotations that this model contains.

    -   ### setAnnotations

        public void setAnnotations([AnnotationArtifact](gui/AnnotationArtifact.html "class in com.appiancorp.suiteapi.process.gui")\[\] annotations\_)

        See [`getAnnotations()`](#getAnnotations\(\)).

    -   ### getEmailAttachmentFolderId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getEmailAttachmentFolderId()

    -   ### setEmailAttachmentFolderId

        public void setEmailAttachmentFolderId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") emailAttachmentFolderId\_)

    -   ### getIsPublic

        public boolean getIsPublic()

    -   ### setIsPublic

        public void setIsPublic(boolean isPublic\_)

    -   ### getLanes

        public [Lane](gui/Lane.html "class in com.appiancorp.suiteapi.process.gui")\[\] getLanes()

        Gets the Lanes of the Process Model. The order in the array determines the order in which the Lanes display in the Process Modeler.

        Returns:

        Returns the lanes.

    -   ### setLanes

        public void setLanes([Lane](gui/Lane.html "class in com.appiancorp.suiteapi.process.gui")\[\] lanes\_)

        Sets the Lanes of the Process Model See {@link #getLanes());

        Parameters:

        `lanes_` - The lanes to set.

    -   ### getDeadline

        public [Deadline](Deadline.html "class in com.appiancorp.suiteapi.process") getDeadline()

    -   ### setDeadline

        public void setDeadline([Deadline](Deadline.html "class in com.appiancorp.suiteapi.process") deadline\_)

    -   ### getNtfSettings

        public [ProcessModelNotificationSettings](ProcessModelNotificationSettings.html "class in com.appiancorp.suiteapi.process") getNtfSettings()

        Returns:

        Returns the notification settings.

    -   ### setNtfSettings

        public void setNtfSettings([ProcessModelNotificationSettings](ProcessModelNotificationSettings.html "class in com.appiancorp.suiteapi.process") ntfSettings\_)

        Parameters:

        `ntfSettings_` - The notification settings to set.

    -   ### getCleanupAction

        public int getCleanupAction()

        Returns the cleanup action defined by one of the constants AUTO\_ARCHIVE, AUTO\_DELETE, NO\_CLEANUP

        Returns:

    -   ### setCleanupAction

        public void setCleanupAction(int cleanupAction\_)

        Sets the cleanup action. Must be one of the constants AUTO\_ARCHIVE, AUTO\_DELETE, NO\_CLEANUP

        Parameters:

        `cleanupAction_` -

    -   ### getAutoArchiveDelay

        public int getAutoArchiveDelay()

        The number of days after process completion to archive a process.

        Returns:

    -   ### setAutoArchiveDelay

        public void setAutoArchiveDelay(int autoArchiveDelay\_)

        Sets the number of days after process completion to archive a process.

        Parameters:

        `autoArchiveDelay_` -

    -   ### getAutoDeleteDelay

        public int getAutoDeleteDelay()

        The number of days after process completion to delete a process.

        Returns:

    -   ### setAutoDeleteDelay

        public void setAutoDeleteDelay(int autoDeleteDelay\_)

        Sets the number of days after process completion to delete a process.

        Parameters:

        `autoDeleteDelay_` -

    -   ### getTimeZoneId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTimeZoneId()

    -   ### setTimeZoneId

        public void setTimeZoneId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeZoneId)

    -   ### isUseProcessInitiatorTimeZone

        public boolean isUseProcessInitiatorTimeZone()

    -   ### setUseProcessInitiatorTimeZone

        public void setUseProcessInitiatorTimeZone(boolean useProcessInitiatorTimeZone)