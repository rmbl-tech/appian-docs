---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessModel.html
original_path: api/com/appiancorp/suiteapi/process/ProcessModel.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessModel

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.process.AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.ProcessModel

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessModel extends [AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")

The template from which processes are created. A process model contains nodes that are connected to each other through flows (aka connections). Each node represents an activity to be performed by either the system or a user. Nodes have one primary activity, but can have an arbitrary number of pre- and post-activities, as long as such activities are unattended (i.e. do not require user interaction). The process model also holds such meta data as who created it, when, and what group the model is associated with. Process models are generally created through the UI designer.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessModel)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")`

    Inner class that holds the name, id, and description of a process model.

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.[AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")

    `[AUTO_ARCHIVE](AbstractProcessModel.html#AUTO_ARCHIVE), [AUTO_DELETE](AbstractProcessModel.html#AUTO_DELETE), [DEFAULT_COMPLETION](AbstractProcessModel.html#DEFAULT_COMPLETION), [K_EXEC_ENVIRONMENT](AbstractProcessModel.html#K_EXEC_ENVIRONMENT), [LATEST_PUBLISHED_VERSION](AbstractProcessModel.html#LATEST_PUBLISHED_VERSION), [NO_CLEANUP](AbstractProcessModel.html#NO_CLEANUP), [RESULT_CODE_INVALID](AbstractProcessModel.html#RESULT_CODE_INVALID), [RESULT_CODE_NO_PERM_PUBLISH](AbstractProcessModel.html#RESULT_CODE_NO_PERM_PUBLISH), [RESULT_CODE_SUCCESS](AbstractProcessModel.html#RESULT_CODE_SUCCESS), [STATUS_DRAFT](AbstractProcessModel.html#STATUS_DRAFT), [STATUS_PUBLISHED](AbstractProcessModel.html#STATUS_PUBLISHED), [STATUS_VERSION](AbstractProcessModel.html#STATUS_VERSION), [SYS_AUTOARCHIVE](AbstractProcessModel.html#SYS_AUTOARCHIVE), [SYS_AUTOARCHIVE_DELAY](AbstractProcessModel.html#SYS_AUTOARCHIVE_DELAY), [SYSTEM_DEFAULT](AbstractProcessModel.html#SYSTEM_DEFAULT)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessModel](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") appianCache_)`

    Adds the primary keys of the Appian-typed objects maintained by the elements in the given array to the cache.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDatatypeReferences](#getDatatypeReferences\(\))()`

    Gets the list of data types referenced by this model.

    `[ProcessModelLogging](ProcessModelLogging.html "class in com.appiancorp.suiteapi.process")`

    `[getLogging](#getLogging\(\))()`

    `[ProcessNode](ProcessNode.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessNodes](#getProcessNodes\(\))()`

    Gets the nodes that this model comprises.

    `[ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getVariables](#getVariables\(\))()`

    Gets the list of process variables used by this model.

    `void`

    `[resetNodesUUIDsAndEventPersistentIds](#resetNodesUUIDsAndEventPersistentIds\(\))()`

    Resets the UUID of each node and the persistentId of each event in this process model to `null`, so that the database will generate new UUIDs/ids the next time the process model is saved.

    `void`

    `[setDatatypeReferences](#setDatatypeReferences\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] datatypeReferences_)`

    Sets the data types referenced by this model.

    `void`

    `[setLogging](#setLogging\(com.appiancorp.suiteapi.process.ProcessModelLogging\))([ProcessModelLogging](ProcessModelLogging.html "class in com.appiancorp.suiteapi.process") _logging)`

    `void`

    `[setProcessNodes](#setProcessNodes\(com.appiancorp.suiteapi.process.ProcessNode%5B%5D\))([ProcessNode](ProcessNode.html "class in com.appiancorp.suiteapi.process")[] processNodes_)`

    Sets the nodes that this model comprises.

    `void`

    `[setVariables](#setVariables\(com.appiancorp.suiteapi.process.ProcessVariable%5B%5D\))([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[] variables_)`

    Sets the process variables for this model.

    `void`

    `[sortVariables](#sortVariables\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Generates a string representation of this model for debugging.

    `void`

    `[updateFromDescriptor](#updateFromDescriptor\(com.appiancorp.suiteapi.process.ProcessModel.Descriptor\))([ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") src_)`

    ### Methods inherited from class com.appiancorp.suiteapi.process.[AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")

    `[fillInAppianTypes](AbstractProcessModel.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache,com.appiancorp.suiteapi.process.AppianTypeHolder%5B%5D\)), [getAcSchemas](AbstractProcessModel.html#getAcSchemas\(\)), [getAnnotations](AbstractProcessModel.html#getAnnotations\(\)), [getAttachments](AbstractProcessModel.html#getAttachments\(\)), [getAutoArchiveDelay](AbstractProcessModel.html#getAutoArchiveDelay\(\)), [getAutoDeleteDelay](AbstractProcessModel.html#getAutoDeleteDelay\(\)), [getCleanupAction](AbstractProcessModel.html#getCleanupAction\(\)), [getCreatorUsername](AbstractProcessModel.html#getCreatorUsername\(\)), [getDeadline](AbstractProcessModel.html#getDeadline\(\)), [getDefaultProcessSecurity](AbstractProcessModel.html#getDefaultProcessSecurity\(\)), [getDescription](AbstractProcessModel.html#getDescription\(\)), [getEmailAttachmentFolderId](AbstractProcessModel.html#getEmailAttachmentFolderId\(\)), [getExecutionEnvironment](AbstractProcessModel.html#getExecutionEnvironment\(\)), [getFolderId](AbstractProcessModel.html#getFolderId\(\)), [getFormConfig](AbstractProcessModel.html#getFormConfig\(java.util.Locale\)), [getFormConfigMap](AbstractProcessModel.html#getFormConfigMap\(\)), [getGroupOwnerId](AbstractProcessModel.html#getGroupOwnerId\(\)), [getHiddenAttributes](AbstractProcessModel.html#getHiddenAttributes\(\)), [getIsPublic](AbstractProcessModel.html#getIsPublic\(\)), [getLanes](AbstractProcessModel.html#getLanes\(\)), [getLastModifiedUsername](AbstractProcessModel.html#getLastModifiedUsername\(\)), [getLatestVersion](AbstractProcessModel.html#getLatestVersion\(\)), [getLockedBy](AbstractProcessModel.html#getLockedBy\(\)), [getLockedByTime](AbstractProcessModel.html#getLockedByTime\(\)), [getNotes](AbstractProcessModel.html#getNotes\(\)), [getNotesWithContent](AbstractProcessModel.html#getNotesWithContent\(com.appiancorp.suiteapi.process.Note%5B%5D\)), [getNtfSettings](AbstractProcessModel.html#getNtfSettings\(\)), [getOwnerUsername](AbstractProcessModel.html#getOwnerUsername\(\)), [getPermissions](AbstractProcessModel.html#getPermissions\(\)), [getPriority](AbstractProcessModel.html#getPriority\(\)), [getProcessName](AbstractProcessModel.html#getProcessName\(\)), [getSchedules](AbstractProcessModel.html#getSchedules\(\)), [getSecurity](AbstractProcessModel.html#getSecurity\(\)), [getState](AbstractProcessModel.html#getState\(\)), [getTargetCompletion](AbstractProcessModel.html#getTargetCompletion\(\)), [getTimeStampCreated](AbstractProcessModel.html#getTimeStampCreated\(\)), [getTimeStampUpdated](AbstractProcessModel.html#getTimeStampUpdated\(\)), [getTimeZoneId](AbstractProcessModel.html#getTimeZoneId\(\)), [getUuid](AbstractProcessModel.html#getUuid\(\)), [getVersion](AbstractProcessModel.html#getVersion\(\)), [getVersionStatus](AbstractProcessModel.html#getVersionStatus\(\)), [isEnabled](AbstractProcessModel.html#isEnabled\(\)), [isModified](AbstractProcessModel.html#isModified\(\)), [isMutablePriority](AbstractProcessModel.html#isMutablePriority\(\)), [isUseProcessInitiatorTimeZone](AbstractProcessModel.html#isUseProcessInitiatorTimeZone\(\)), [isValidated](AbstractProcessModel.html#isValidated\(\)), [setAcSchemas](AbstractProcessModel.html#setAcSchemas\(com.appiancorp.suiteapi.process.ActivityClassSchema%5B%5D\)), [setAnnotations](AbstractProcessModel.html#setAnnotations\(com.appiancorp.suiteapi.process.gui.AnnotationArtifact%5B%5D\)), [setAttachments](AbstractProcessModel.html#setAttachments\(com.appiancorp.suiteapi.process.Attachment%5B%5D\)), [setAutoArchiveDelay](AbstractProcessModel.html#setAutoArchiveDelay\(int\)), [setAutoDeleteDelay](AbstractProcessModel.html#setAutoDeleteDelay\(int\)), [setCleanupAction](AbstractProcessModel.html#setCleanupAction\(int\)), [setCreatorUsername](AbstractProcessModel.html#setCreatorUsername\(java.lang.String\)), [setDeadline](AbstractProcessModel.html#setDeadline\(com.appiancorp.suiteapi.process.Deadline\)), [setDefaultProcessSecurity](AbstractProcessModel.html#setDefaultProcessSecurity\(com.appiancorp.suiteapi.common.Security\)), [setDescription](AbstractProcessModel.html#setDescription\(com.appiancorp.suiteapi.common.LocaleString\)), [setEmailAttachmentFolderId](AbstractProcessModel.html#setEmailAttachmentFolderId\(java.lang.Long\)), [setEnabled](AbstractProcessModel.html#setEnabled\(boolean\)), [setExecutionEnvironment](AbstractProcessModel.html#setExecutionEnvironment\(int\)), [setFolderId](AbstractProcessModel.html#setFolderId\(java.lang.Long\)), [setFormConfigMap](AbstractProcessModel.html#setFormConfigMap\(com.appiancorp.suiteapi.process.forms.FormConfigMap\)), [setGroupOwnerId](AbstractProcessModel.html#setGroupOwnerId\(java.lang.Long\)), [setIsPublic](AbstractProcessModel.html#setIsPublic\(boolean\)), [setLanes](AbstractProcessModel.html#setLanes\(com.appiancorp.suiteapi.process.gui.Lane%5B%5D\)), [setLastModifiedUsername](AbstractProcessModel.html#setLastModifiedUsername\(java.lang.String\)), [setLatestVersion](AbstractProcessModel.html#setLatestVersion\(java.lang.String\)), [setLockedBy](AbstractProcessModel.html#setLockedBy\(java.lang.String\)), [setLockedByTime](AbstractProcessModel.html#setLockedByTime\(java.sql.Timestamp\)), [setModified](AbstractProcessModel.html#setModified\(boolean\)), [setMutablePriority](AbstractProcessModel.html#setMutablePriority\(boolean\)), [setNotes](AbstractProcessModel.html#setNotes\(com.appiancorp.suiteapi.process.Note%5B%5D\)), [setNtfSettings](AbstractProcessModel.html#setNtfSettings\(com.appiancorp.suiteapi.process.ProcessModelNotificationSettings\)), [setOwnerUsername](AbstractProcessModel.html#setOwnerUsername\(java.lang.String\)), [setPermissions](AbstractProcessModel.html#setPermissions\(com.appiancorp.suiteapi.process.security.ProcessModelPermissions\)), [setPriority](AbstractProcessModel.html#setPriority\(com.appiancorp.suiteapi.process.Priority\)), [setProcessName](AbstractProcessModel.html#setProcessName\(com.appiancorp.suiteapi.common.LocaleString\)), [setSchedules](AbstractProcessModel.html#setSchedules\(com.appiancorp.suiteapi.process.Schedule%5B%5D\)), [setSecurity](AbstractProcessModel.html#setSecurity\(com.appiancorp.suiteapi.common.Security\)), [setState](AbstractProcessModel.html#setState\(java.lang.Long\)), [setTargetCompletion](AbstractProcessModel.html#setTargetCompletion\(java.lang.Float\)), [setTimeStampCreated](AbstractProcessModel.html#setTimeStampCreated\(java.sql.Timestamp\)), [setTimeStampUpdated](AbstractProcessModel.html#setTimeStampUpdated\(java.sql.Timestamp\)), [setTimeZoneId](AbstractProcessModel.html#setTimeZoneId\(java.lang.String\)), [setUseProcessInitiatorTimeZone](AbstractProcessModel.html#setUseProcessInitiatorTimeZone\(boolean\)), [setUuid](AbstractProcessModel.html#setUuid\(java.lang.String\)), [setValidated](AbstractProcessModel.html#setValidated\(boolean\)), [setVersion](AbstractProcessModel.html#setVersion\(java.lang.String\)), [setVersionStatus](AbstractProcessModel.html#setVersionStatus\(int\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/LocalizedIdentity.html#equals\(java.lang.Object\)), [getId](../common/LocalizedIdentity.html#getId\(\)), [getIds](../common/LocalizedIdentity.html#getIds\(com.appiancorp.suiteapi.common.LocalizedIdentity%5B%5D\)), [getName](../common/LocalizedIdentity.html#getName\(\)), [hashCode](../common/LocalizedIdentity.html#hashCode\(\)), [setId](../common/LocalizedIdentity.html#setId\(java.lang.Long\)), [setName](../common/LocalizedIdentity.html#setName\(com.appiancorp.suiteapi.common.LocaleString\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessModel

        public ProcessModel()

-   ## Method Details

    -   ### getProcessNodes

        public [ProcessNode](ProcessNode.html "class in com.appiancorp.suiteapi.process")\[\] getProcessNodes()

        Gets the nodes that this model comprises.

        Returns:

        the process nodes contained in the process model

    -   ### setProcessNodes

        public void setProcessNodes([ProcessNode](ProcessNode.html "class in com.appiancorp.suiteapi.process")\[\] processNodes\_)

        Sets the nodes that this model comprises.

        Parameters:

        `processNodes_` - an array of the nodes in this model.

    -   ### getVariables

        public [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getVariables()

        Gets the list of process variables used by this model.

        Returns:

        the process variables of this model.

    -   ### sortVariables

        public void sortVariables()

    -   ### setVariables

        public void setVariables([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] variables\_)

        Sets the process variables for this model.

        Parameters:

        `variables_` - the process variables used by this model.

    -   ### setDatatypeReferences

        public void setDatatypeReferences([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] datatypeReferences\_)

        Sets the data types referenced by this model. The data types are set by the system when this bean is returned. Calling this method has no effect.

        Parameters:

        `datatypeReferences_` - the data types referenced by this model.

    -   ### getDatatypeReferences

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDatatypeReferences()

        Gets the list of data types referenced by this model.

        Returns:

        the data types referenced by this model.

    -   ### getLogging

        public [ProcessModelLogging](ProcessModelLogging.html "class in com.appiancorp.suiteapi.process") getLogging()

        Returns:

        [`ProcessModelLogging`](ProcessModelLogging.html "class in com.appiancorp.suiteapi.process") of this model.

    -   ### setLogging

        public void setLogging([ProcessModelLogging](ProcessModelLogging.html "class in com.appiancorp.suiteapi.process") \_logging)

        Parameters:

        `_logging` - the [`ProcessModelLogging`](ProcessModelLogging.html "class in com.appiancorp.suiteapi.process") used by this model.

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") appianCache\_)

        Description copied from class: `[AbstractProcessModel](AbstractProcessModel.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))`

        Adds the primary keys of the Appian-typed objects maintained by the elements in the given array to the cache. This method is cheap.

        Specified by:

        `[fillInAppianTypes](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Overrides:

        `[fillInAppianTypes](AbstractProcessModel.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in class `[AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")`

        Parameters:

        `appianCache_` - cache of Appian-typed objects.

    -   ### updateFromDescriptor

        public void updateFromDescriptor([ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process") src\_)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Generates a string representation of this model for debugging.

        Overrides:

        `[toString](../common/LocalizedIdentity.html#toString\(\))` in class `[LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        String representation of the object

    -   ### resetNodesUUIDsAndEventPersistentIds

        public void resetNodesUUIDsAndEventPersistentIds()

        Resets the UUID of each node and the persistentId of each event in this process model to `null`, so that the database will generate new UUIDs/ids the next time the process model is saved.