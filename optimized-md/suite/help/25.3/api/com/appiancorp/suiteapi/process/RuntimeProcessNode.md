---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/RuntimeProcessNode.html
original_path: api/com/appiancorp/suiteapi/process/RuntimeProcessNode.html
version: "25.3"
title: "Class RuntimeProcessNode"
page_id: "api/com/appiancorp/suiteapi/process/RuntimeProcessNode"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class RuntimeProcessNode

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.RuntimeProcessNode

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class RuntimeProcessNode extends [AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")

Information about a node in an executed process. For nodes with multiple instances, only one `ProcessNode` instance exists for the node.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.RuntimeProcessNode)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.[AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")

    `[DEFAULT_COMPLETION](AbstractProcessNode.html#DEFAULT_COMPLETION), [DEFAULT_LAG](AbstractProcessNode.html#DEFAULT_LAG)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[RuntimeProcessNode](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected [AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")[]`

    `[getEscalationAbstraction](#getEscalationAbstraction\(\))()`

    `[EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")[]`

    `[getEscalations](#getEscalations\(\))()`

    Returns the escalation properties of all node instances

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getInstanceIds](#getInstanceIds\(\))()`

    Returns the instance ids for each instance of the node (currently the same as the activity ids)

    `[ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process")`

    `[getSchedule](#getSchedule\(\))()`

    Returns schedule information if a schedule was set up for this node

    `protected [AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process")`

    `[getScheduleAbstraction](#getScheduleAbstraction\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSpawnedInstances](#getSpawnedInstances\(\))()`

    Returns the number of instances that have been spawned.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getStatus](#getStatus\(\))()`

    Returns the status of the process node.

    `void`

    `[setEscalationInstances](#setEscalationInstances\(com.appiancorp.suiteapi.process.EscalationInstance%5B%5D\))([EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")[] escalations_)`

    `void`

    `[setEscalations](#setEscalations\(com.appiancorp.suiteapi.process.EscalationInstance%5B%5D\))([EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")[] escalations_)`

    Sets the escalation properties of all node instances

    `void`

    `[setInstanceIds](#setInstanceIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Sets the instance ids for each instance of the node

    `void`

    `[setSchedule](#setSchedule\(com.appiancorp.suiteapi.process.ScheduleInstance\))([ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process") instance_)`

    Sets schedule information for this node

    `void`

    `[setScheduleInstances](#setScheduleInstances\(com.appiancorp.suiteapi.process.ScheduleInstance\))([ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process") instance_)`

    `void`

    `[setSpawnedInstances](#setSpawnedInstances\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") spawnedInstances_)`

    Sets the number of instances that have spawned

    `void`

    `[setStatus](#setStatus\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") status_)`

    Sets the status of the process node

    ### Methods inherited from class com.appiancorp.suiteapi.process.[AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")

    `[fillInAppianTypes](AbstractProcessNode.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\)), [getActivityClass](AbstractProcessNode.html#getActivityClass\(\)), [getAssign](AbstractProcessNode.html#getAssign\(\)), [getAssociations](AbstractProcessNode.html#getAssociations\(\)), [getAttachments](AbstractProcessNode.html#getAttachments\(\)), [getConfirmationUrl](AbstractProcessNode.html#getConfirmationUrl\(\)), [getConnections](AbstractProcessNode.html#getConnections\(\)), [getDeadline](AbstractProcessNode.html#getDeadline\(\)), [getDefaultNodeInstanceSecurity](AbstractProcessNode.html#getDefaultNodeInstanceSecurity\(\)), [getDescription](AbstractProcessNode.html#getDescription\(\)), [getDisplay](AbstractProcessNode.html#getDisplay\(\)), [getEventProducers](AbstractProcessNode.html#getEventProducers\(\)), [getExceptionFlow](AbstractProcessNode.html#getExceptionFlow\(\)), [getExceptionFlowTriggers](AbstractProcessNode.html#getExceptionFlowTriggers\(\)), [getFriendlyName](AbstractProcessNode.html#getFriendlyName\(\)), [getGroupOwner](AbstractProcessNode.html#getGroupOwner\(\)), [getGroupOwnerId](AbstractProcessNode.html#getGroupOwnerId\(\)), [getGroupOwnerName](AbstractProcessNode.html#getGroupOwnerName\(\)), [getGuiId](AbstractProcessNode.html#getGuiId\(\)), [getHiddenAttributes](AbstractProcessNode.html#getHiddenAttributes\(\)), [getIcon](AbstractProcessNode.html#getIcon\(\)), [getId](AbstractProcessNode.html#getId\(\)), [getLabelStyle](AbstractProcessNode.html#getLabelStyle\(\)), [getLane](AbstractProcessNode.html#getLane\(\)), [getMultipleInstance](AbstractProcessNode.html#getMultipleInstance\(\)), [getNotes](AbstractProcessNode.html#getNotes\(\)), [getNotesWithContent](AbstractProcessNode.html#getNotesWithContent\(com.appiancorp.suiteapi.process.Note%5B%5D\)), [getOwner](AbstractProcessNode.html#getOwner\(\)), [getOwnerId](AbstractProcessNode.html#getOwnerId\(\)), [getOwnerName](AbstractProcessNode.html#getOwnerName\(\)), [getPaletteIcon](AbstractProcessNode.html#getPaletteIcon\(\)), [getPostTriggers](AbstractProcessNode.html#getPostTriggers\(\)), [getPreTriggers](AbstractProcessNode.html#getPreTriggers\(\)), [getPreviousId](AbstractProcessNode.html#getPreviousId\(\)), [getPriority](AbstractProcessNode.html#getPriority\(\)), [getRefreshDefaultValues](AbstractProcessNode.html#getRefreshDefaultValues\(\)), [getTargetCompletion](AbstractProcessNode.html#getTargetCompletion\(\)), [getTargetLag](AbstractProcessNode.html#getTargetLag\(\)), [getUuid](AbstractProcessNode.html#getUuid\(\)), [getX](AbstractProcessNode.html#getX\(\)), [getY](AbstractProcessNode.html#getY\(\)), [isAllowsBack](AbstractProcessNode.html#isAllowsBack\(\)), [isLingering](AbstractProcessNode.html#isLingering\(\)), [isNotify](AbstractProcessNode.html#isNotify\(\)), [isOnCompleteDeletePreviousCompleted](AbstractProcessNode.html#isOnCompleteDeletePreviousCompleted\(\)), [isOnCompleteKeepFormData](AbstractProcessNode.html#isOnCompleteKeepFormData\(\)), [isOnCreateDeletePreviousActive](AbstractProcessNode.html#isOnCreateDeletePreviousActive\(\)), [isOnCreateIgnoreIfActive](AbstractProcessNode.html#isOnCreateIgnoreIfActive\(\)), [isOverrideLaneAssignment](AbstractProcessNode.html#isOverrideLaneAssignment\(\)), [isSkipNotification](AbstractProcessNode.html#isSkipNotification\(\)), [isStartNode](AbstractProcessNode.html#isStartNode\(\)), [mergeNodes](AbstractProcessNode.html#mergeNodes\(com.appiancorp.suiteapi.process.AbstractProcessNode%5B%5D,com.appiancorp.suiteapi.process.AbstractProcessNode%5B%5D\)), [setActivityClass](AbstractProcessNode.html#setActivityClass\(com.appiancorp.suiteapi.process.ActivityClass\)), [setAllowsBack](AbstractProcessNode.html#setAllowsBack\(boolean\)), [setAssign](AbstractProcessNode.html#setAssign\(com.appiancorp.suiteapi.process.Assignment\)), [setAssociations](AbstractProcessNode.html#setAssociations\(com.appiancorp.suiteapi.process.Connection%5B%5D\)), [setAttachments](AbstractProcessNode.html#setAttachments\(com.appiancorp.suiteapi.process.Attachment%5B%5D\)), [setConfirmationUrl](AbstractProcessNode.html#setConfirmationUrl\(java.lang.String\)), [setConnections](AbstractProcessNode.html#setConnections\(com.appiancorp.suiteapi.process.Connection%5B%5D\)), [setDeadline](AbstractProcessNode.html#setDeadline\(com.appiancorp.suiteapi.process.Deadline\)), [setDefaultNodeInstanceSecurity](AbstractProcessNode.html#setDefaultNodeInstanceSecurity\(com.appiancorp.suiteapi.common.Security\)), [setDescription](AbstractProcessNode.html#setDescription\(com.appiancorp.suiteapi.common.LocaleString\)), [setDisplay](AbstractProcessNode.html#setDisplay\(com.appiancorp.suiteapi.common.LocaleString\)), [setEventProducers](AbstractProcessNode.html#setEventProducers\(com.appiancorp.suiteapi.process.events.EventProducer%5B%5D\)), [setExceptionFlow](AbstractProcessNode.html#setExceptionFlow\(com.appiancorp.suiteapi.process.Connection\)), [setExceptionFlowTriggers](AbstractProcessNode.html#setExceptionFlowTriggers\(com.appiancorp.suiteapi.process.events.EventTrigger%5B%5D\)), [setFriendlyName](AbstractProcessNode.html#setFriendlyName\(com.appiancorp.suiteapi.common.LocaleString\)), [setGroupOwner](AbstractProcessNode.html#setGroupOwner\(com.appiancorp.suiteapi.common.Identity\)), [setGroupOwnerId](AbstractProcessNode.html#setGroupOwnerId\(java.lang.Long\)), [setGroupOwnerName](AbstractProcessNode.html#setGroupOwnerName\(java.lang.String\)), [setGuiId](AbstractProcessNode.html#setGuiId\(java.lang.Long\)), [setIcon](AbstractProcessNode.html#setIcon\(java.lang.Long\)), [setId](AbstractProcessNode.html#setId\(java.lang.Long\)), [setLabelStyle](AbstractProcessNode.html#setLabelStyle\(com.appiancorp.suiteapi.process.gui.Label\)), [setLane](AbstractProcessNode.html#setLane\(java.lang.Long\)), [setLingering](AbstractProcessNode.html#setLingering\(boolean\)), [setMultipleInstance](AbstractProcessNode.html#setMultipleInstance\(com.appiancorp.suiteapi.process.MultipleInstance\)), [setNotes](AbstractProcessNode.html#setNotes\(com.appiancorp.suiteapi.process.Note%5B%5D\)), [setNotify](AbstractProcessNode.html#setNotify\(boolean\)), [setOnCompleteDeletePreviousCompleted](AbstractProcessNode.html#setOnCompleteDeletePreviousCompleted\(boolean\)), [setOnCompleteKeepFormData](AbstractProcessNode.html#setOnCompleteKeepFormData\(boolean\)), [setOnCreateDeletePreviousActive](AbstractProcessNode.html#setOnCreateDeletePreviousActive\(boolean\)), [setOnCreateIgnoreIfActive](AbstractProcessNode.html#setOnCreateIgnoreIfActive\(boolean\)), [setOverrideLaneAssignment](AbstractProcessNode.html#setOverrideLaneAssignment\(boolean\)), [setOwner](AbstractProcessNode.html#setOwner\(com.appiancorp.suiteapi.common.Identity\)), [setOwnerId](AbstractProcessNode.html#setOwnerId\(java.lang.Long\)), [setOwnerName](AbstractProcessNode.html#setOwnerName\(java.lang.String\)), [setPaletteIcon](AbstractProcessNode.html#setPaletteIcon\(java.lang.Long\)), [setPostTriggers](AbstractProcessNode.html#setPostTriggers\(com.appiancorp.suiteapi.process.events.EventTrigger%5B%5D\)), [setPreTriggers](AbstractProcessNode.html#setPreTriggers\(com.appiancorp.suiteapi.process.events.EventTrigger%5B%5D\)), [setPreviousId](AbstractProcessNode.html#setPreviousId\(java.lang.Long\)), [setPriority](AbstractProcessNode.html#setPriority\(com.appiancorp.suiteapi.process.Priority\)), [setRefreshDefaultValues](AbstractProcessNode.html#setRefreshDefaultValues\(boolean\)), [setSkipNotification](AbstractProcessNode.html#setSkipNotification\(boolean\)), [setStartNode](AbstractProcessNode.html#setStartNode\(boolean\)), [setTargetCompletion](AbstractProcessNode.html#setTargetCompletion\(java.lang.Float\)), [setTargetLag](AbstractProcessNode.html#setTargetLag\(java.lang.Float\)), [setUuid](AbstractProcessNode.html#setUuid\(java.lang.String\)), [setX](AbstractProcessNode.html#setX\(java.lang.Long\)), [setY](AbstractProcessNode.html#setY\(java.lang.Long\)), [toString](AbstractProcessNode.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### RuntimeProcessNode

        public RuntimeProcessNode()

-   ## Method Details

    -   ### getEscalations

        public [EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")\[\] getEscalations()

        Returns the escalation properties of all node instances

        Returns:

        an `Array` of [`EscalationInstance`](EscalationInstance.html "class in com.appiancorp.suiteapi.process") objects which contain the escalation properties

    -   ### getEscalationAbstraction

        protected [AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")\[\] getEscalationAbstraction()

        Specified by:

        `[getEscalationAbstraction](AbstractProcessNode.html#getEscalationAbstraction\(\))` in class `[AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")`

    -   ### setEscalations

        public void setEscalations([EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")\[\] escalations\_)

        Sets the escalation properties of all node instances

        Parameters:

        `escalations_` - an `Array` of [`EscalationInstance`](EscalationInstance.html "class in com.appiancorp.suiteapi.process") objects which contain the escalation properties

    -   ### setEscalationInstances

        public void setEscalationInstances([EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")\[\] escalations\_)

    -   ### getSpawnedInstances

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSpawnedInstances()

        Returns the number of instances that have been spawned. If the node has not yet been reached, this number will be 0. If the node has been set to spawn, and the node has been activated (ie is currently active, has been completed, or was cancelled or paused after being activated), this will be the number of instances which have been spawned, inclusive of spawned instances as a result of a recurrence.

        Returns:

        the number of instances that have been spawned

    -   ### setSpawnedInstances

        public void setSpawnedInstances([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") spawnedInstances\_)

        Sets the number of instances that have spawned

        Parameters:

        `spawnedInstances_` - the number of instances that have been spawned

        See Also:

        -   [`getSpawnedInstances()`](#getSpawnedInstances\(\))

    -   ### getStatus

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getStatus()

        Returns the status of the process node. The value will be one of the STATUS fields of [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process") if the node has several spawned instances. For nodes with multiple instances, the status will be incomplete until all instances are complete

        Returns:

        the status of the process node

    -   ### setStatus

        public void setStatus([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") status\_)

        Sets the status of the process node

        Parameters:

        `status_` - the status of the process node

        See Also:

        -   [`getStatus()`](#getStatus\(\))

    -   ### getInstanceIds

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getInstanceIds()

        Returns the instance ids for each instance of the node (currently the same as the activity ids)

        Returns:

        the instance ids

    -   ### setInstanceIds

        public void setInstanceIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_)

        Sets the instance ids for each instance of the node

        Parameters:

        `ids_` - the instance ids

    -   ### getSchedule

        public [ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process") getSchedule()

        Returns schedule information if a schedule was set up for this node

        Returns:

        a [`ScheduleInstance`](ScheduleInstance.html "class in com.appiancorp.suiteapi.process") object for the node, or `null` if the node was not set up on a schedule

    -   ### setSchedule

        public void setSchedule([ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process") instance\_)

        Sets schedule information for this node

        Parameters:

        `instance_` - the schedule information

    -   ### setScheduleInstances

        public void setScheduleInstances([ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process") instance\_)

    -   ### getScheduleAbstraction

        protected [AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process") getScheduleAbstraction()

        Specified by:

        `[getScheduleAbstraction](AbstractProcessNode.html#getScheduleAbstraction\(\))` in class `[AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")`