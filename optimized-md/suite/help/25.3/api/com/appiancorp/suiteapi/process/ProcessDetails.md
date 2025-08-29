---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessDetails.html
original_path: api/com/appiancorp/suiteapi/process/ProcessDetails.html
version: "25.3"
title: "Class ProcessDetails"
page_id: "api/com/appiancorp/suiteapi/process/ProcessDetails"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessDetails

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.process.ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process")

[com.appiancorp.suiteapi.process.ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.ProcessDetails

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessDetails extends [ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")

Contains detailed information about a process. In addition to the data contained in [`ProcessSummary`](ProcessSummary.html "class in com.appiancorp.suiteapi.process"), maintains the lists of users and groups that own the task, notes and attachments that belong to the process, and the configuration of the form that is shown to the user that starts the process.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessDetails)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.[ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")

    `[SORT_BY_PROCESS_COMPLETED_TASK_COUNT](ProcessSummary.html#SORT_BY_PROCESS_COMPLETED_TASK_COUNT), [SORT_BY_PROCESS_CURRENT_TASK_COUNT](ProcessSummary.html#SORT_BY_PROCESS_CURRENT_TASK_COUNT), [SORT_BY_PROCESS_ELAPSED_MILLISECONDS](ProcessSummary.html#SORT_BY_PROCESS_ELAPSED_MILLISECONDS), [SORT_BY_PROCESS_END_TIME](ProcessSummary.html#SORT_BY_PROCESS_END_TIME), [SORT_BY_PROCESS_ID](ProcessSummary.html#SORT_BY_PROCESS_ID), [SORT_BY_PROCESS_INITIATOR](ProcessSummary.html#SORT_BY_PROCESS_INITIATOR), [SORT_BY_PROCESS_MODEL_NAME](ProcessSummary.html#SORT_BY_PROCESS_MODEL_NAME), [SORT_BY_PROCESS_NAME](ProcessSummary.html#SORT_BY_PROCESS_NAME), [SORT_BY_PROCESS_PARENT_NAME](ProcessSummary.html#SORT_BY_PROCESS_PARENT_NAME), [SORT_BY_PROCESS_PRIORITY](ProcessSummary.html#SORT_BY_PROCESS_PRIORITY), [SORT_BY_PROCESS_PRIORITY_NAME](ProcessSummary.html#SORT_BY_PROCESS_PRIORITY_NAME), [SORT_BY_PROCESS_START_TIME](ProcessSummary.html#SORT_BY_PROCESS_START_TIME), [SORT_BY_PROCESS_STATUS_NAME](ProcessSummary.html#SORT_BY_PROCESS_STATUS_NAME), [STATE_ACTIVE](ProcessSummary.html#STATE_ACTIVE), [STATE_CANCELLED](ProcessSummary.html#STATE_CANCELLED), [STATE_COMPLETED](ProcessSummary.html#STATE_COMPLETED), [STATE_PAUSED](ProcessSummary.html#STATE_PAUSED), [STATE_PAUSED_BY_EXCEPTION](ProcessSummary.html#STATE_PAUSED_BY_EXCEPTION)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessDetails](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDeadline](#getDeadline\(\))()`

    Gets the deadline of this process.

    `[FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getFormConfig](#getFormConfig\(\))()`

    Gets the configuration of the form that is shown to the user who starts the process.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getGroupOwners](#getGroupOwners\(\))()`

    Deprecated.

    property is no longer used

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLockedBy](#getLockedBy\(\))()`

    `[Note](Note.html "class in com.appiancorp.suiteapi.process")[]`

    `[getNotes](#getNotes\(\))()`

    Gets the notes associated with this process.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTimezone](#getTimezone\(\))()`

    Gets the timezone associated with this process.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getUserOwners](#getUserOwners\(\))()`

    Deprecated.

    property is no longer used

    `void`

    `[setDeadline](#setDeadline\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") deadline_)`

    Sets the deadline of this process.

    `void`

    `[setFormConfig](#setFormConfig\(com.appiancorp.suiteapi.process.forms.FormConfig\))([FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") formConfig_)`

    Sets the configuration of the form that is shown to the user who starts this process.

    `void`

    `[setGroupOwners](#setGroupOwners\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] owners_)`

    Deprecated.

    property is no longer used

    `void`

    `[setLockedBy](#setLockedBy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy_)`

    `void`

    `[setNotes](#setNotes\(com.appiancorp.suiteapi.process.Note%5B%5D\))([Note](Note.html "class in com.appiancorp.suiteapi.process")[] notes_)`

    Sets the notes associated with this process.

    `void`

    `[setTimezone](#setTimezone\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timezone_)`

    Sets the timezone associated with this process.

    `void`

    `[setUserOwners](#setUserOwners\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] owners_)`

    Deprecated.

    property is no longer used

    ### Methods inherited from class com.appiancorp.suiteapi.process.[ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")

    `[getAutoscaleUuid](ProcessSummary.html#getAutoscaleUuid\(\)), [getCompletedTaskCount](ProcessSummary.html#getCompletedTaskCount\(\)), [getCurrentTaskCount](ProcessSummary.html#getCurrentTaskCount\(\)), [getDashboardId](ProcessSummary.html#getDashboardId\(\)), [getDesigner](ProcessSummary.html#getDesigner\(\)), [getElapsedMilliseconds](ProcessSummary.html#getElapsedMilliseconds\(\)), [getEndTime](ProcessSummary.html#getEndTime\(\)), [getException](ProcessSummary.html#getException\(\)), [getFavorite](ProcessSummary.html#getFavorite\(\)), [getMutablePriority](ProcessSummary.html#getMutablePriority\(\)), [getParentId](ProcessSummary.html#getParentId\(\)), [getParentName](ProcessSummary.html#getParentName\(\)), [getPermissions](ProcessSummary.html#getPermissions\(\)), [getProcessModelId](ProcessSummary.html#getProcessModelId\(\)), [getProcessModelName](ProcessSummary.html#getProcessModelName\(\)), [getProcessModelVersion](ProcessSummary.html#getProcessModelVersion\(\)), [getStartTime](ProcessSummary.html#getStartTime\(\)), [getStatus](ProcessSummary.html#getStatus\(\)), [getStatusName](ProcessSummary.html#getStatusName\(\)), [setAutoscaleUuid](ProcessSummary.html#setAutoscaleUuid\(java.lang.String\)), [setCompletedTaskCount](ProcessSummary.html#setCompletedTaskCount\(java.lang.Integer\)), [setCurrentTaskCount](ProcessSummary.html#setCurrentTaskCount\(java.lang.Integer\)), [setDashboardId](ProcessSummary.html#setDashboardId\(java.lang.Long\)), [setDesigner](ProcessSummary.html#setDesigner\(java.lang.String\)), [setElapsedMilliseconds](ProcessSummary.html#setElapsedMilliseconds\(java.lang.Long\)), [setEndTime](ProcessSummary.html#setEndTime\(java.sql.Timestamp\)), [setException](ProcessSummary.html#setException\(com.appiancorp.suiteapi.process.ProcessException\)), [setFavorite](ProcessSummary.html#setFavorite\(boolean\)), [setMutablePriority](ProcessSummary.html#setMutablePriority\(boolean\)), [setParentId](ProcessSummary.html#setParentId\(java.lang.Long\)), [setParentName](ProcessSummary.html#setParentName\(java.lang.String\)), [setPermissions](ProcessSummary.html#setPermissions\(com.appiancorp.suiteapi.process.security.ProcessPermissions\)), [setProcessModelId](ProcessSummary.html#setProcessModelId\(java.lang.Long\)), [setProcessModelName](ProcessSummary.html#setProcessModelName\(java.lang.String\)), [setProcessModelVersion](ProcessSummary.html#setProcessModelVersion\(java.lang.String\)), [setStartTime](ProcessSummary.html#setStartTime\(java.sql.Timestamp\)), [setStatus](ProcessSummary.html#setStatus\(int\)), [setStatusName](ProcessSummary.html#setStatusName\(java.lang.String\)), [toString](ProcessSummary.html#toString\(\)), [toXML](ProcessSummary.html#toXML\(java.lang.StringBuilder\))`

    ### Methods inherited from class com.appiancorp.suiteapi.process.[ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process")

    `[getDepth](ProcessProperties.html#getDepth\(\)), [getInitiator](ProcessProperties.html#getInitiator\(\)), [getPriority](ProcessProperties.html#getPriority\(\)), [setDepth](ProcessProperties.html#setDepth\(int\)), [setInitiator](ProcessProperties.html#setInitiator\(java.lang.String\)), [setPriority](ProcessProperties.html#setPriority\(com.appiancorp.suiteapi.process.Priority\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessDetails

        public ProcessDetails()

-   ## Method Details

    -   ### getLockedBy

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLockedBy()

    -   ### setLockedBy

        public void setLockedBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy\_)

    -   ### getFormConfig

        public [FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") getFormConfig()

        Gets the configuration of the form that is shown to the user who starts the process.

        Returns:

        the form configuration.

    -   ### setFormConfig

        public void setFormConfig([FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") formConfig\_)

        Sets the configuration of the form that is shown to the user who starts this process.

        Parameters:

        `formConfig_` - the form configuration.

    -   ### getGroupOwners

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getGroupOwners()

        Deprecated.

        property is no longer used

        Gets the list of groups that own this process.

        Returns:

        the groups that own this process.

    -   ### setGroupOwners

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setGroupOwners([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] owners\_)

        Deprecated.

        property is no longer used

        Sets the list of groups that own this process.

        Parameters:

        `owners_` - the groups that own this process.

    -   ### getNotes

        public [Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] getNotes()

        Gets the notes associated with this process.

        Returns:

        the notes associated with this process.

    -   ### setNotes

        public void setNotes([Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] notes\_)

        Sets the notes associated with this process.

        Parameters:

        `notes_` - the notes associated with this process.

    -   ### getUserOwners

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getUserOwners()

        Deprecated.

        property is no longer used

        Gets the list of users who own this process.

        Returns:

        the users who own this process.

    -   ### setUserOwners

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setUserOwners([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] owners\_)

        Deprecated.

        property is no longer used

        Sets the list of users who own this process.

        Parameters:

        `owners_` - the users who own this process.

    -   ### getTimezone

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTimezone()

        Gets the timezone associated with this process.

        Returns:

        the timezone associated with this process.

    -   ### setTimezone

        public void setTimezone([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timezone\_)

        Sets the timezone associated with this process.

        Parameters:

        `timezone_` - the timezone id associated with this process.

    -   ### getDeadline

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDeadline()

        Gets the deadline of this process.

        Returns:

        the deadline of this process.

    -   ### setDeadline

        public void setDeadline([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") deadline\_)

        Sets the deadline of this process.

        Parameters:

        `deadline_` - the deadline of this process.