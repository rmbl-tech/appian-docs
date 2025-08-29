---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessDiagram.html
original_path: api/com/appiancorp/suiteapi/process/ProcessDiagram.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessDiagram

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.process.AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.ProcessDiagram

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessDiagram extends [AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")

A runtime representation of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"). The nodes in the diagram represent the tasks in the process. The diagram can be used to make in-flight modifications.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessDiagram)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.[AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")

    `[AUTO_ARCHIVE](AbstractProcessModel.html#AUTO_ARCHIVE), [AUTO_DELETE](AbstractProcessModel.html#AUTO_DELETE), [DEFAULT_COMPLETION](AbstractProcessModel.html#DEFAULT_COMPLETION), [K_EXEC_ENVIRONMENT](AbstractProcessModel.html#K_EXEC_ENVIRONMENT), [LATEST_PUBLISHED_VERSION](AbstractProcessModel.html#LATEST_PUBLISHED_VERSION), [NO_CLEANUP](AbstractProcessModel.html#NO_CLEANUP), [RESULT_CODE_INVALID](AbstractProcessModel.html#RESULT_CODE_INVALID), [RESULT_CODE_NO_PERM_PUBLISH](AbstractProcessModel.html#RESULT_CODE_NO_PERM_PUBLISH), [RESULT_CODE_SUCCESS](AbstractProcessModel.html#RESULT_CODE_SUCCESS), [STATUS_DRAFT](AbstractProcessModel.html#STATUS_DRAFT), [STATUS_PUBLISHED](AbstractProcessModel.html#STATUS_PUBLISHED), [STATUS_VERSION](AbstractProcessModel.html#STATUS_VERSION), [SYS_AUTOARCHIVE](AbstractProcessModel.html#SYS_AUTOARCHIVE), [SYS_AUTOARCHIVE_DELAY](AbstractProcessModel.html#SYS_AUTOARCHIVE_DELAY), [SYSTEM_DEFAULT](AbstractProcessModel.html#SYSTEM_DEFAULT)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessDiagram](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") appianCache_)`

    Adds the primary keys of the Appian-typed objects maintained by the elements in the given array to the cache.

    `[ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")[]`

    `[getChildProcesses](#getChildProcesses\(\))()`

    Gets the child processes of this process, if this process contains sub or linked processes; `null` otherwise.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLockedBy](#getLockedBy\(\))()`

    Gets the user who has this process locked.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getLockedTime](#getLockedTime\(\))()`

    Gets the time at which the process was most recently locked.

    `[ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")[]`

    `[getParentProcesses](#getParentProcesses\(\))()`

    Gets the parent processes of this process, if this process is a sub or linked process; `null` otherwise.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessId](#getProcessId\(\))()`

    Gets the id of the process whose diagram is represented.

    `[RuntimeProcessNode](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessNodes](#getProcessNodes\(\))()`

    Gets the nodes of the process whose diagram is featured here.

    `[ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getProcessPermissions](#getProcessPermissions\(\))()`

    Gets the permissions associated to the process instance represented by this process diagram

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessUuid](#getProcessUuid\(\))()`

    Gets the UUID in the Elastic Engine for this process.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getRuntimeProcessName](#getRuntimeProcessName\(\))()`

    Gets the runtime name of this process, as generated by the process execution engine.

    `[RuntimeProcessNode](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")[]`

    `[getRuntimeProcessNodes](#getRuntimeProcessNodes\(\))()`

    Deprecated.

    use getProcessNodes

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getStatus](#getStatus\(\))()`

    Gets the status of the process whose diagram is featured here.

    `[ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")[]`

    `[getVariableInstances](#getVariableInstances\(\))()`

    Deprecated.

    use getVariables

    `[ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")[]`

    `[getVariables](#getVariables\(\))()`

    Gets the process variables of the process whose diagram is featured here.

    `void`

    `[setChildProcesses](#setChildProcesses\(com.appiancorp.suiteapi.process.ProcessSummary%5B%5D\))([ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")[] childProcesses_)`

    Sets the child processes of this process, if this process contains sub or linked processes; `null` otherwise.

    `void`

    `[setLockedBy](#setLockedBy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processLockedBy_)`

    Sets the user who has this process locked.

    `void`

    `[setLockedTime](#setLockedTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") processLockedTime_)`

    Sets the time at which the process was most recently locked.

    `void`

    `[setParentProcesses](#setParentProcesses\(com.appiancorp.suiteapi.process.ProcessSummary%5B%5D\))([ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")[] parentProcesses_)`

    Sets the parent processes of this process, if this process is a sub or linked process; `null` otherwise.

    `void`

    `[setProcessId](#setProcessId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the id of the process whose diagram is represented.

    `void`

    `[setProcessNodes](#setProcessNodes\(com.appiancorp.suiteapi.process.RuntimeProcessNode%5B%5D\))([RuntimeProcessNode](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")[] processNodes_)`

    Sets the nodes of the process whose diagram is featured here.

    `void`

    `[setProcessPermissions](#setProcessPermissions\(com.appiancorp.suiteapi.process.security.ProcessPermissions\))([ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security") processPermissions_)`

    Sets the permissions associated to the process instance represented by this process diagram

    `void`

    `[setProcessUuid](#setProcessUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processUuid)`

    Sets the UUID in the Elastic Engine for this process.

    `void`

    `[setRuntimeProcessName](#setRuntimeProcessName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") runtimeProcessName_)`

    Sets the runtime name of this process.

    `void`

    `[setRuntimeProcessNodes](#setRuntimeProcessNodes\(com.appiancorp.suiteapi.process.RuntimeProcessNode%5B%5D\))([RuntimeProcessNode](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")[] processNodes_)`

    `void`

    `[setStatus](#setStatus\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") status_)`

    Sets the status of the process whose diagram is featured here.

    `void`

    `[setVariableInstances](#setVariableInstances\(com.appiancorp.suiteapi.process.ProcessVariableInstance%5B%5D\))([ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")[] variables_)`

    Deprecated.

    use setVariables

    `void`

    `[setVariables](#setVariables\(com.appiancorp.suiteapi.process.ProcessVariableInstance%5B%5D\))([ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")[] variables_)`

    Sets the process variables of the process whose diagram is featured here.

    ### Methods inherited from class com.appiancorp.suiteapi.process.[AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")

    `[fillInAppianTypes](AbstractProcessModel.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache,com.appiancorp.suiteapi.process.AppianTypeHolder%5B%5D\)), [getAcSchemas](AbstractProcessModel.html#getAcSchemas\(\)), [getAnnotations](AbstractProcessModel.html#getAnnotations\(\)), [getAttachments](AbstractProcessModel.html#getAttachments\(\)), [getAutoArchiveDelay](AbstractProcessModel.html#getAutoArchiveDelay\(\)), [getAutoDeleteDelay](AbstractProcessModel.html#getAutoDeleteDelay\(\)), [getCleanupAction](AbstractProcessModel.html#getCleanupAction\(\)), [getCreatorUsername](AbstractProcessModel.html#getCreatorUsername\(\)), [getDeadline](AbstractProcessModel.html#getDeadline\(\)), [getDefaultProcessSecurity](AbstractProcessModel.html#getDefaultProcessSecurity\(\)), [getDescription](AbstractProcessModel.html#getDescription\(\)), [getEmailAttachmentFolderId](AbstractProcessModel.html#getEmailAttachmentFolderId\(\)), [getExecutionEnvironment](AbstractProcessModel.html#getExecutionEnvironment\(\)), [getFolderId](AbstractProcessModel.html#getFolderId\(\)), [getFormConfig](AbstractProcessModel.html#getFormConfig\(java.util.Locale\)), [getFormConfigMap](AbstractProcessModel.html#getFormConfigMap\(\)), [getGroupOwnerId](AbstractProcessModel.html#getGroupOwnerId\(\)), [getHiddenAttributes](AbstractProcessModel.html#getHiddenAttributes\(\)), [getIsPublic](AbstractProcessModel.html#getIsPublic\(\)), [getLanes](AbstractProcessModel.html#getLanes\(\)), [getLastModifiedUsername](AbstractProcessModel.html#getLastModifiedUsername\(\)), [getLatestVersion](AbstractProcessModel.html#getLatestVersion\(\)), [getLockedByTime](AbstractProcessModel.html#getLockedByTime\(\)), [getNotes](AbstractProcessModel.html#getNotes\(\)), [getNotesWithContent](AbstractProcessModel.html#getNotesWithContent\(com.appiancorp.suiteapi.process.Note%5B%5D\)), [getNtfSettings](AbstractProcessModel.html#getNtfSettings\(\)), [getOwnerUsername](AbstractProcessModel.html#getOwnerUsername\(\)), [getPermissions](AbstractProcessModel.html#getPermissions\(\)), [getPriority](AbstractProcessModel.html#getPriority\(\)), [getProcessName](AbstractProcessModel.html#getProcessName\(\)), [getSchedules](AbstractProcessModel.html#getSchedules\(\)), [getSecurity](AbstractProcessModel.html#getSecurity\(\)), [getState](AbstractProcessModel.html#getState\(\)), [getTargetCompletion](AbstractProcessModel.html#getTargetCompletion\(\)), [getTimeStampCreated](AbstractProcessModel.html#getTimeStampCreated\(\)), [getTimeStampUpdated](AbstractProcessModel.html#getTimeStampUpdated\(\)), [getTimeZoneId](AbstractProcessModel.html#getTimeZoneId\(\)), [getUuid](AbstractProcessModel.html#getUuid\(\)), [getVersion](AbstractProcessModel.html#getVersion\(\)), [getVersionStatus](AbstractProcessModel.html#getVersionStatus\(\)), [isEnabled](AbstractProcessModel.html#isEnabled\(\)), [isModified](AbstractProcessModel.html#isModified\(\)), [isMutablePriority](AbstractProcessModel.html#isMutablePriority\(\)), [isUseProcessInitiatorTimeZone](AbstractProcessModel.html#isUseProcessInitiatorTimeZone\(\)), [isValidated](AbstractProcessModel.html#isValidated\(\)), [setAcSchemas](AbstractProcessModel.html#setAcSchemas\(com.appiancorp.suiteapi.process.ActivityClassSchema%5B%5D\)), [setAnnotations](AbstractProcessModel.html#setAnnotations\(com.appiancorp.suiteapi.process.gui.AnnotationArtifact%5B%5D\)), [setAttachments](AbstractProcessModel.html#setAttachments\(com.appiancorp.suiteapi.process.Attachment%5B%5D\)), [setAutoArchiveDelay](AbstractProcessModel.html#setAutoArchiveDelay\(int\)), [setAutoDeleteDelay](AbstractProcessModel.html#setAutoDeleteDelay\(int\)), [setCleanupAction](AbstractProcessModel.html#setCleanupAction\(int\)), [setCreatorUsername](AbstractProcessModel.html#setCreatorUsername\(java.lang.String\)), [setDeadline](AbstractProcessModel.html#setDeadline\(com.appiancorp.suiteapi.process.Deadline\)), [setDefaultProcessSecurity](AbstractProcessModel.html#setDefaultProcessSecurity\(com.appiancorp.suiteapi.common.Security\)), [setDescription](AbstractProcessModel.html#setDescription\(com.appiancorp.suiteapi.common.LocaleString\)), [setEmailAttachmentFolderId](AbstractProcessModel.html#setEmailAttachmentFolderId\(java.lang.Long\)), [setEnabled](AbstractProcessModel.html#setEnabled\(boolean\)), [setExecutionEnvironment](AbstractProcessModel.html#setExecutionEnvironment\(int\)), [setFolderId](AbstractProcessModel.html#setFolderId\(java.lang.Long\)), [setFormConfigMap](AbstractProcessModel.html#setFormConfigMap\(com.appiancorp.suiteapi.process.forms.FormConfigMap\)), [setGroupOwnerId](AbstractProcessModel.html#setGroupOwnerId\(java.lang.Long\)), [setIsPublic](AbstractProcessModel.html#setIsPublic\(boolean\)), [setLanes](AbstractProcessModel.html#setLanes\(com.appiancorp.suiteapi.process.gui.Lane%5B%5D\)), [setLastModifiedUsername](AbstractProcessModel.html#setLastModifiedUsername\(java.lang.String\)), [setLatestVersion](AbstractProcessModel.html#setLatestVersion\(java.lang.String\)), [setLockedByTime](AbstractProcessModel.html#setLockedByTime\(java.sql.Timestamp\)), [setModified](AbstractProcessModel.html#setModified\(boolean\)), [setMutablePriority](AbstractProcessModel.html#setMutablePriority\(boolean\)), [setNotes](AbstractProcessModel.html#setNotes\(com.appiancorp.suiteapi.process.Note%5B%5D\)), [setNtfSettings](AbstractProcessModel.html#setNtfSettings\(com.appiancorp.suiteapi.process.ProcessModelNotificationSettings\)), [setOwnerUsername](AbstractProcessModel.html#setOwnerUsername\(java.lang.String\)), [setPermissions](AbstractProcessModel.html#setPermissions\(com.appiancorp.suiteapi.process.security.ProcessModelPermissions\)), [setPriority](AbstractProcessModel.html#setPriority\(com.appiancorp.suiteapi.process.Priority\)), [setProcessName](AbstractProcessModel.html#setProcessName\(com.appiancorp.suiteapi.common.LocaleString\)), [setSchedules](AbstractProcessModel.html#setSchedules\(com.appiancorp.suiteapi.process.Schedule%5B%5D\)), [setSecurity](AbstractProcessModel.html#setSecurity\(com.appiancorp.suiteapi.common.Security\)), [setState](AbstractProcessModel.html#setState\(java.lang.Long\)), [setTargetCompletion](AbstractProcessModel.html#setTargetCompletion\(java.lang.Float\)), [setTimeStampCreated](AbstractProcessModel.html#setTimeStampCreated\(java.sql.Timestamp\)), [setTimeStampUpdated](AbstractProcessModel.html#setTimeStampUpdated\(java.sql.Timestamp\)), [setTimeZoneId](AbstractProcessModel.html#setTimeZoneId\(java.lang.String\)), [setUseProcessInitiatorTimeZone](AbstractProcessModel.html#setUseProcessInitiatorTimeZone\(boolean\)), [setUuid](AbstractProcessModel.html#setUuid\(java.lang.String\)), [setValidated](AbstractProcessModel.html#setValidated\(boolean\)), [setVersion](AbstractProcessModel.html#setVersion\(java.lang.String\)), [setVersionStatus](AbstractProcessModel.html#setVersionStatus\(int\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/LocalizedIdentity.html#equals\(java.lang.Object\)), [getId](../common/LocalizedIdentity.html#getId\(\)), [getIds](../common/LocalizedIdentity.html#getIds\(com.appiancorp.suiteapi.common.LocalizedIdentity%5B%5D\)), [getName](../common/LocalizedIdentity.html#getName\(\)), [hashCode](../common/LocalizedIdentity.html#hashCode\(\)), [setId](../common/LocalizedIdentity.html#setId\(java.lang.Long\)), [setName](../common/LocalizedIdentity.html#setName\(com.appiancorp.suiteapi.common.LocaleString\)), [toString](../common/LocalizedIdentity.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessDiagram

        public ProcessDiagram()

-   ## Method Details

    -   ### getChildProcesses

        public [ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")\[\] getChildProcesses()

        Gets the child processes of this process, if this process contains sub or linked processes; `null` otherwise. Used for breadcrumbs for child processes in the interface; Only contains processes that the user can see.

        Returns:

        summaries of the child processes.

    -   ### setChildProcesses

        public void setChildProcesses([ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")\[\] childProcesses\_)

        Sets the child processes of this process, if this process contains sub or linked processes; `null` otherwise. Used for breadcrumbs for child processes in the interface; Only contains processes that the user can see.

        Parameters:

        `childProcesses_` - summaries of the child processes.

    -   ### getParentProcesses

        public [ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")\[\] getParentProcesses()

        Gets the parent processes of this process, if this process is a sub or linked process; `null` otherwise. Used for breadcrumbs to parent processes in the interface. Only contains processes that the user can see.

        Returns:

        summaries of the parent processes.

    -   ### setParentProcesses

        public void setParentProcesses([ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")\[\] parentProcesses\_)

        Sets the parent processes of this process, if this process is a sub or linked process; `null` otherwise. Used for breadcrumbs to parent processes in the interface. Only contains processes that the user can see.

        Parameters:

        `parentProcesses_` - summaries of the parent processes.

    -   ### getProcessId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessId()

        Gets the id of the process whose diagram is represented.

        Returns:

        the id of the process whose diagram is represented.

    -   ### setProcessId

        public void setProcessId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the id of the process whose diagram is represented.

        Parameters:

        `id_` - the id of the process whose diagram is represented.

    -   ### getRuntimeProcessNodes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [RuntimeProcessNode](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")\[\] getRuntimeProcessNodes()

        Deprecated.

        use getProcessNodes

        Gets the nodes of the process whose diagram is featured here.

        Returns:

        the nodes of the process whose diagram is featured here.

    -   ### getProcessNodes

        public [RuntimeProcessNode](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")\[\] getProcessNodes()

        Gets the nodes of the process whose diagram is featured here.

        Returns:

        the nodes of the process whose diagram is featured here.

    -   ### setProcessNodes

        public void setProcessNodes([RuntimeProcessNode](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")\[\] processNodes\_)

        Sets the nodes of the process whose diagram is featured here.

        Parameters:

        `processNodes_` - the nodes of the process whose diagram is featured here.

    -   ### setRuntimeProcessNodes

        public void setRuntimeProcessNodes([RuntimeProcessNode](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")\[\] processNodes\_)

    -   ### getVariableInstances

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")\[\] getVariableInstances()

        Deprecated.

        use getVariables

        Gets the process variables of the process whose diagram is featured here.

        Returns:

        the process variables of the process whose diagram is featured here.

    -   ### setVariableInstances

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setVariableInstances([ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")\[\] variables\_)

        Deprecated.

        use setVariables

        Sets the process variables of the process whose diagram is featured here.

        Parameters:

        `variables_` - the process variables of the process whose diagram is featured here.

    -   ### getVariables

        public [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")\[\] getVariables()

        Gets the process variables of the process whose diagram is featured here.

        Returns:

        the process variables of the process whose diagram is featured here.

    -   ### setVariables

        public void setVariables([ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")\[\] variables\_)

        Sets the process variables of the process whose diagram is featured here.

        Parameters:

        `variables_` - the process variables of the process whose diagram is featured here.

    -   ### getLockedBy

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLockedBy()

        Gets the user who has this process locked.

        Overrides:

        `[getLockedBy](AbstractProcessModel.html#getLockedBy\(\))` in class `[AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")`

        Returns:

        the username of the user who has this process locked, or `null` if the process is not locked.

    -   ### setLockedBy

        public void setLockedBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processLockedBy\_)

        Sets the user who has this process locked.

        Overrides:

        `[setLockedBy](AbstractProcessModel.html#setLockedBy\(java.lang.String\))` in class `[AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")`

        Parameters:

        `processLockedBy_` - the username of the user who has this process locked, or `null` if the process is not locked.

    -   ### getLockedTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getLockedTime()

        Gets the time at which the process was most recently locked.

        Returns:

        the time at which the process was most recently locked, or `null` if the process is not currently locked.

    -   ### setLockedTime

        public void setLockedTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") processLockedTime\_)

        Sets the time at which the process was most recently locked.

        Parameters:

        `processLockedTime_` - the time at which the process was most recently locked, or `null` if the process is not currently locked.

    -   ### getStatus

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getStatus()

        Gets the status of the process whose diagram is featured here.

        Returns:

        one of the `STATUS_XXX` constants from [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    -   ### setStatus

        public void setStatus([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") status\_)

        Sets the status of the process whose diagram is featured here.

        Parameters:

        `status_` - one of the `STATUS_XXX` constants from [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    -   ### getProcessPermissions

        public [ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security") getProcessPermissions()

        Gets the permissions associated to the process instance represented by this process diagram

        Returns:

        Returns the processPermissions.

    -   ### setProcessPermissions

        public void setProcessPermissions([ProcessPermissions](security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security") processPermissions\_)

        Sets the permissions associated to the process instance represented by this process diagram

        Parameters:

        `processPermissions_` - The processPermissions to set.

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

    -   ### getRuntimeProcessName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getRuntimeProcessName()

        Gets the runtime name of this process, as generated by the process execution engine.

        Returns:

        The runtime name of this process.

    -   ### setRuntimeProcessName

        public void setRuntimeProcessName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") runtimeProcessName\_)

        Sets the runtime name of this process.

        Parameters:

        `runtimeProcessName_` - The runtime name of this process to set.

    -   ### setProcessUuid

        public void setProcessUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processUuid)

        Sets the UUID in the Elastic Engine for this process.

        Parameters:

        `processUuid` - the uuid to set

    -   ### getProcessUuid

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessUuid()

        Gets the UUID in the Elastic Engine for this process.

        Returns:

        this process' UUID