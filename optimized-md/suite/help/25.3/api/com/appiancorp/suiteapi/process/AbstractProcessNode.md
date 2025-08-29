---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/AbstractProcessNode.html
original_path: api/com/appiancorp/suiteapi/process/AbstractProcessNode.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class AbstractProcessNode

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.AbstractProcessNode

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ProcessNode](ProcessNode.html "class in com.appiancorp.suiteapi.process")`, `[RuntimeProcessNode](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")`

* * *

public abstract class AbstractProcessNode extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process"), [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")

A node in a process model. A node is a conceptual representation of an activity used in a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"). The node contains the primary activity, which is its defining characteristic, as well as any pre- and post-activities that the designer has configured. Attended nodes are assigned to users, and are represented as tasks in the task list at runtime. Each node also potentially contains one or many flows (or connections), which are transitions to other nodes that can be traversed once this node is completed.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.AbstractProcessNode)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang")`

    `[DEFAULT_COMPLETION](#DEFAULT_COMPLETION)`

    The default time, in days, in which each node should complete.

    `static final [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang")`

    `[DEFAULT_LAG](#DEFAULT_LAG)`

    The default log, in days, in which ecah node should complete.

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AbstractProcessNode](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Adds the primary keys of any Appian-typed objects that are used by the activites or escalations of this node to the given cache.

    `[ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process")`

    `[getActivityClass](#getActivityClass\(\))()`

    Gets the primary activity class associated with this node.

    `[Assignment](Assignment.html "class in com.appiancorp.suiteapi.process")`

    `[getAssign](#getAssign\(\))()`

    If this node has an attended primary activity, this method gets the people, groups, etc.  to whom the activity is assigned.

    `[Connection](Connection.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAssociations](#getAssociations\(\))()`

    `[Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAttachments](#getAttachments\(\))()`

    Gets the attachments that have been attached to this node.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getConfirmationUrl](#getConfirmationUrl\(\))()`

    Gets the URL to which the runtime user should be forwarded after successfully completing the activity associated with this node.

    `[Connection](Connection.html "class in com.appiancorp.suiteapi.process")[]`

    `[getConnections](#getConnections\(\))()`

    Gets the collection of flows representing connections to other nodes.

    `[Deadline](Deadline.html "class in com.appiancorp.suiteapi.process")`

    `[getDeadline](#getDeadline\(\))()`

    `[Security](../common/Security.html "class in com.appiancorp.suiteapi.common")`

    `[getDefaultNodeInstanceSecurity](#getDefaultNodeInstanceSecurity\(\))()`

    Gets the default security mapping for instances of this node.

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getDescription](#getDescription\(\))()`

    Gets the localized description mappings of this node.

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getDisplay](#getDisplay\(\))()`

    Returns the task display name for this node.

    `protected abstract [AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")[]`

    `[getEscalationAbstraction](#getEscalationAbstraction\(\))()`

    `[EventProducer](events/EventProducer.html "class in com.appiancorp.suiteapi.process.events")[]`

    `[getEventProducers](#getEventProducers\(\))()`

    Gets the event producers for this node

    `[Connection](Connection.html "class in com.appiancorp.suiteapi.process")`

    `[getExceptionFlow](#getExceptionFlow\(\))()`

    `[EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")[]`

    `[getExceptionFlowTriggers](#getExceptionFlowTriggers\(\))()`

    Gets the triggers that can trigger an exception flow

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getFriendlyName](#getFriendlyName\(\))()`

    Returns the name of this node.

    `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

    `[getGroupOwner](#getGroupOwner\(\))()`

    Gets the group that owns this process node.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getGroupOwnerId](#getGroupOwnerId\(\))()`

    Gets the group that owns this node.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGroupOwnerName](#getGroupOwnerName\(\))()`

    Gets the name of the group that owns this node.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getGuiId](#getGuiId\(\))()`

    Gets the `guiId` of this node.

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getIcon](#getIcon\(\))()`

    Gets the id of the icon of the process node.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Gets the primary key of this node.

    `[Label](gui/Label.html "class in com.appiancorp.suiteapi.process.gui")`

    `[getLabelStyle](#getLabelStyle\(\))()`

    Gets the styling bean for this node's label.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getLane](#getLane\(\))()`

    Gets the index of the `Lane` in which this node is contained.

    `[MultipleInstance](MultipleInstance.html "class in com.appiancorp.suiteapi.process")`

    `[getMultipleInstance](#getMultipleInstance\(\))()`

    Returns the multiple instance configuration of the node.

    `[Note](Note.html "class in com.appiancorp.suiteapi.process")[]`

    `[getNotes](#getNotes\(\))()`

    Gets the notes that have been attached to this node.

    `static [Note](Note.html "class in com.appiancorp.suiteapi.process")[]`

    `[getNotesWithContent](#getNotesWithContent\(com.appiancorp.suiteapi.process.Note%5B%5D\))([Note](Note.html "class in com.appiancorp.suiteapi.process")[] notes_)`

    Deprecated.

    use ProcessExecution.getNotesWithContent(Note\[\], ServiceContext)

    `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

    `[getOwner](#getOwner\(\))()`

    Gets the id and name of the owner of this node.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getOwnerId](#getOwnerId\(\))()`

    Gets the id of the user that owns this node.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getOwnerName](#getOwnerName\(\))()`

    Gets the name of the user that owns this node.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPaletteIcon](#getPaletteIcon\(\))()`

    Gets the icon of the palette item from which this node was added to the process model.

    `[EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")[]`

    `[getPostTriggers](#getPostTriggers\(\))()`

    Gets the post-triggers.

    `[EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")[]`

    `[getPreTriggers](#getPreTriggers\(\))()`

    Gets pre-triggers.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPreviousId](#getPreviousId\(\))()`

    Gets the primary key that this node had in a previous version of this model.

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[getPriority](#getPriority\(\))()`

    Gets the priority for this node.

    `boolean`

    `[getRefreshDefaultValues](#getRefreshDefaultValues\(\))()`

    Determines whether to refresh the default values each time a task form is viewed.

    `protected abstract [AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process")`

    `[getScheduleAbstraction](#getScheduleAbstraction\(\))()`

    `[Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang")`

    `[getTargetCompletion](#getTargetCompletion\(\))()`

    Gets the target duration in which the task should complete

    `[Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang")`

    `[getTargetLag](#getTargetLag\(\))()`

    Gets the target duration in which the task should be accepted

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getX](#getX\(\))()`

    Gets the horizontal coordinate of this node, which tells graphical designers where to render the icon.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getY](#getY\(\))()`

    Gets the vertical coordinate of this node, which tells graphical designers where to render the icon.

    `boolean`

    `[isAllowsBack](#isAllowsBack\(\))()`

    Determines if a user is allowed to step back to this node in an activity chain.

    `boolean`

    `[isLingering](#isLingering\(\))()`

    a node is lingering if its existence is known to execution server only.

    `boolean`

    `[isNotify](#isNotify\(\))()`

    Determines whether this node has a notification associated with it.

    `boolean`

    `[isOnCompleteDeletePreviousCompleted](#isOnCompleteDeletePreviousCompleted\(\))()`

    `boolean`

    `[isOnCompleteKeepFormData](#isOnCompleteKeepFormData\(\))()`

    `boolean`

    `[isOnCreateDeletePreviousActive](#isOnCreateDeletePreviousActive\(\))()`

    `boolean`

    `[isOnCreateIgnoreIfActive](#isOnCreateIgnoreIfActive\(\))()`

    `boolean`

    `[isOverrideLaneAssignment](#isOverrideLaneAssignment\(\))()`

    Gets whether the node overrides the assignment of the lane in which it is contained.

    `boolean`

    `[isSkipNotification](#isSkipNotification\(\))()`

    `boolean`

    `[isStartNode](#isStartNode\(\))()`

    Used by tracking logic, this property is not always available.

    `static void`

    `[mergeNodes](#mergeNodes\(com.appiancorp.suiteapi.process.AbstractProcessNode%5B%5D,com.appiancorp.suiteapi.process.AbstractProcessNode%5B%5D\))([AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")[] dbNodes_, [AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")[] fsNodes_)`

    `void`

    `[setActivityClass](#setActivityClass\(com.appiancorp.suiteapi.process.ActivityClass\))([ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process") activityClass_)`

    Gets the primary activity class associated with this node.

    `void`

    `[setAllowsBack](#setAllowsBack\(boolean\))(boolean allowsBack_)`

    Set whether a user is allowed to step back to this node in an activity chain.

    `void`

    `[setAssign](#setAssign\(com.appiancorp.suiteapi.process.Assignment\))([Assignment](Assignment.html "class in com.appiancorp.suiteapi.process") assign_)`

    If this node has an attended primary activity, this method sets the people, groups, etc.  to whom the activity is assigned.

    `void`

    `[setAssociations](#setAssociations\(com.appiancorp.suiteapi.process.Connection%5B%5D\))([Connection](Connection.html "class in com.appiancorp.suiteapi.process")[] associations_)`

    `void`

    `[setAttachments](#setAttachments\(com.appiancorp.suiteapi.process.Attachment%5B%5D\))([Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")[] attachments_)`

    Gets the attachments that have been attached to this node.

    `void`

    `[setConfirmationUrl](#setConfirmationUrl\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") confirmationUrl_)`

    Sets the URL to which the runtime user should be forwarded after successfully completing the activity associated with this node.

    `void`

    `[setConnections](#setConnections\(com.appiancorp.suiteapi.process.Connection%5B%5D\))([Connection](Connection.html "class in com.appiancorp.suiteapi.process")[] connections_)`

    Sets the collection of flows representing connections to other nodes.

    `void`

    `[setDeadline](#setDeadline\(com.appiancorp.suiteapi.process.Deadline\))([Deadline](Deadline.html "class in com.appiancorp.suiteapi.process") deadline_)`

    `void`

    `[setDefaultNodeInstanceSecurity](#setDefaultNodeInstanceSecurity\(com.appiancorp.suiteapi.common.Security\))([Security](../common/Security.html "class in com.appiancorp.suiteapi.common") defaultNodeInstanceSecurity_)`

    Sets the default security mapping for instances of this node.

    `void`

    `[setDescription](#setDescription\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") description_)`

    Sets the localized description mappings for this node.

    `void`

    `[setDisplay](#setDisplay\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") display_)`

    See [`getDisplay()`](#getDisplay\(\)).

    `void`

    `[setEventProducers](#setEventProducers\(com.appiancorp.suiteapi.process.events.EventProducer%5B%5D\))([EventProducer](events/EventProducer.html "class in com.appiancorp.suiteapi.process.events")[] eventProducers_)`

    Sets the event producers for this node

    `void`

    `[setExceptionFlow](#setExceptionFlow\(com.appiancorp.suiteapi.process.Connection\))([Connection](Connection.html "class in com.appiancorp.suiteapi.process") exceptionFlow_)`

    `void`

    `[setExceptionFlowTriggers](#setExceptionFlowTriggers\(com.appiancorp.suiteapi.process.events.EventTrigger%5B%5D\))([EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")[] exceptionFlowTriggers_)`

    Sets the triggers that can trigger an exception flow

    `void`

    `[setFriendlyName](#setFriendlyName\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") friendlyName_)`

    See [`getFriendlyName()`](#getFriendlyName\(\)).

    `void`

    `[setGroupOwner](#setGroupOwner\(com.appiancorp.suiteapi.common.Identity\))([Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") groupOwner_)`

    Sets the group that owns this process node.

    `void`

    `[setGroupOwnerId](#setGroupOwnerId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupOwnerId_)`

    Sets the group owner id of this node.

    `void`

    `[setGroupOwnerName](#setGroupOwnerName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupOwnerName_)`

    Sets the name of the group that owns this node.

    `void`

    `[setGuiId](#setGuiId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") guiId_)`

    Sets the `guiId` of this node.

    `void`

    `[setIcon](#setIcon\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") icon_)`

    Sets the id of the icon of the process node.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the primary key of this node.

    `void`

    `[setLabelStyle](#setLabelStyle\(com.appiancorp.suiteapi.process.gui.Label\))([Label](gui/Label.html "class in com.appiancorp.suiteapi.process.gui") labelStyle_)`

    Sets the styling bean for this node's label.

    `void`

    `[setLane](#setLane\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") lane_)`

    Sets the index of the `Lane` in which this node is contained.

    `void`

    `[setLingering](#setLingering\(boolean\))(boolean lingering_)`

    `void`

    `[setMultipleInstance](#setMultipleInstance\(com.appiancorp.suiteapi.process.MultipleInstance\))([MultipleInstance](MultipleInstance.html "class in com.appiancorp.suiteapi.process") multipleInstance_)`

    Sets the multiple instance configuration of the node.

    `void`

    `[setNotes](#setNotes\(com.appiancorp.suiteapi.process.Note%5B%5D\))([Note](Note.html "class in com.appiancorp.suiteapi.process")[] notes_)`

    Sets the notes that have been attached to this node.

    `void`

    `[setNotify](#setNotify\(boolean\))(boolean notify_)`

    Sets whether there is notification associated with this node.

    `void`

    `[setOnCompleteDeletePreviousCompleted](#setOnCompleteDeletePreviousCompleted\(boolean\))(boolean onCompleteDeletePreviousCompleted_)`

    `void`

    `[setOnCompleteKeepFormData](#setOnCompleteKeepFormData\(boolean\))(boolean onCompleteKeepFormData_)`

    `void`

    `[setOnCreateDeletePreviousActive](#setOnCreateDeletePreviousActive\(boolean\))(boolean onCreateDeletePreviousActive_)`

    `void`

    `[setOnCreateIgnoreIfActive](#setOnCreateIgnoreIfActive\(boolean\))(boolean onCreateIgnoreIfActive_)`

    `void`

    `[setOverrideLaneAssignment](#setOverrideLaneAssignment\(boolean\))(boolean overrideLaneAssignment_)`

    Sets whether the node overrides the assignment of the lane in which it is contained.

    `void`

    `[setOwner](#setOwner\(com.appiancorp.suiteapi.common.Identity\))([Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") owner_)`

    Sets the identity of the owner of the process node

    `void`

    `[setOwnerId](#setOwnerId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") ownerId_)`

    Sets the user that owns this node.

    `void`

    `[setOwnerName](#setOwnerName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ownerName_)`

    Sets the user that owns this node.

    `void`

    `[setPaletteIcon](#setPaletteIcon\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") paletteIcon_)`

    Sets the icon of the palette item from which this node was added to the process model.

    `void`

    `[setPostTriggers](#setPostTriggers\(com.appiancorp.suiteapi.process.events.EventTrigger%5B%5D\))([EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")[] postTriggers_)`

    Sets the post-triggers

    `void`

    `[setPreTriggers](#setPreTriggers\(com.appiancorp.suiteapi.process.events.EventTrigger%5B%5D\))([EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")[] preTriggers_)`

    Sets the pre-triggers

    `void`

    `[setPreviousId](#setPreviousId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") previousId_)`

    Sets the primary key that this node had in a previous version of this model.

    `void`

    `[setPriority](#setPriority\(com.appiancorp.suiteapi.process.Priority\))([Priority](Priority.html "class in com.appiancorp.suiteapi.process") priority_)`

    Sets the priority for this node.

    `void`

    `[setRefreshDefaultValues](#setRefreshDefaultValues\(boolean\))(boolean refreshDefaultValues_)`

    Sets whether to refresh the default values each time a task form is viewed.

    `void`

    `[setSkipNotification](#setSkipNotification\(boolean\))(boolean skipNotification_)`

    `void`

    `[setStartNode](#setStartNode\(boolean\))(boolean startNode)`

    Used by tracking logic, this property is not always available.

    `void`

    `[setTargetCompletion](#setTargetCompletion\(java.lang.Float\))([Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") targetCompletion_)`

    Sets the target duration in which the process should complete

    `void`

    `[setTargetLag](#setTargetLag\(java.lang.Float\))([Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") targetLag_)`

    Sets the target duration in which the task should be accepted

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid_)`

    `void`

    `[setX](#setX\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") x_)`

    Sets the horizontal coordinate of this node, which tells graphical designers where to render the icon.

    `void`

    `[setY](#setY\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") y_)`

    Gets the vertical coordinate of this node, which tells graphical designers where to render the icon.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Converts the process node to a string, which can be used in debugging.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### DEFAULT\_COMPLETION

        public static final [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") DEFAULT\_COMPLETION

        The default time, in days, in which each node should complete.

    -   ### DEFAULT\_LAG

        public static final [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") DEFAULT\_LAG

        The default log, in days, in which ecah node should complete.

-   ## Constructor Details

    -   ### AbstractProcessNode

        public AbstractProcessNode()

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### getPriority

        public [Priority](Priority.html "class in com.appiancorp.suiteapi.process") getPriority()

        Gets the priority for this node.

        Returns:

        the priority for this node.

    -   ### setPriority

        public void setPriority([Priority](Priority.html "class in com.appiancorp.suiteapi.process") priority\_)

        Sets the priority for this node.

        Parameters:

        `priority_` - the priority for this node.

    -   ### getActivityClass

        public [ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process") getActivityClass()

        Gets the primary activity class associated with this node.

        Returns:

        the activity class that runs when this node is traversed in a process at runtime.

    -   ### setActivityClass

        public void setActivityClass([ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process") activityClass\_)

        Gets the primary activity class associated with this node.

        Parameters:

        `activityClass_` - the activity class that runs when this node is traversed in a process at runtime.

    -   ### getConnections

        public [Connection](Connection.html "class in com.appiancorp.suiteapi.process")\[\] getConnections()

        Gets the collection of flows representing connections to other nodes.

        Returns:

        the flows that leave this node and connect to other nodes.

    -   ### setConnections

        public void setConnections([Connection](Connection.html "class in com.appiancorp.suiteapi.process")\[\] connections\_)

        Sets the collection of flows representing connections to other nodes.

        Parameters:

        `connections_` - the flows that leave this node and connect to other nodes.

    -   ### getAssociations

        public [Connection](Connection.html "class in com.appiancorp.suiteapi.process")\[\] getAssociations()

    -   ### setAssociations

        public void setAssociations([Connection](Connection.html "class in com.appiancorp.suiteapi.process")\[\] associations\_)

    -   ### getFriendlyName

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getFriendlyName()

        Returns the name of this node.

        See Also:

        -   [`getDisplay()`](#getDisplay\(\))

    -   ### setFriendlyName

        public void setFriendlyName([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") friendlyName\_)

        See [`getFriendlyName()`](#getFriendlyName\(\)).

    -   ### getGroupOwner

        public [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") getGroupOwner()

        Gets the group that owns this process node.

        Returns:

        the group owner of the process node.

    -   ### setGroupOwner

        public void setGroupOwner([Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") groupOwner\_)

        Sets the group that owns this process node.

        Parameters:

        `groupOwner_` - the group owner of the process node.

    -   ### getIcon

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getIcon()

        Gets the id of the icon of the process node. Icons are documents stored in content management.

    -   ### setIcon

        public void setIcon([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") icon\_)

        Sets the id of the icon of the process node. Icons are documents stored in content management.

    -   ### getOwner

        public [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") getOwner()

        Gets the id and name of the owner of this node.

        Returns:

        the identity of the owner of the process node

    -   ### setOwner

        public void setOwner([Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") owner\_)

        Sets the identity of the owner of the process node

        Parameters:

        `owner_` - the id and name of the owner of this node.

    -   ### getX

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getX()

        Gets the horizontal coordinate of this node, which tells graphical designers where to render the icon.

        Returns:

        the horizontal coordinate of this node.

    -   ### setX

        public void setX([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") x\_)

        Sets the horizontal coordinate of this node, which tells graphical designers where to render the icon.

        Parameters:

        `x_` - the horizontal coordinate of this node.

    -   ### getY

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getY()

        Gets the vertical coordinate of this node, which tells graphical designers where to render the icon.

        Returns:

        the vertical coordinate of this node.

    -   ### setY

        public void setY([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") y\_)

        Gets the vertical coordinate of this node, which tells graphical designers where to render the icon.

        Parameters:

        `y_` - the vertical coordinate of this node.

    -   ### getEscalationAbstraction

        protected abstract [AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")\[\] getEscalationAbstraction()

    -   ### getScheduleAbstraction

        protected abstract [AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process") getScheduleAbstraction()

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Converts the process node to a string, which can be used in debugging.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getGuiId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getGuiId()

        Gets the `guiId` of this node. The `guiId` is an internal identifier, used by graphcial tools. Think of it as the id of this node within the context of a model, in contrast to the "id" property, which is the primary key in the database. Generally, the first node added to the model is 0, the second node is 1, and so on. This id is used by connections.

        Returns:

        the `guiId` of this node.

    -   ### setGuiId

        public void setGuiId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") guiId\_)

        Sets the `guiId` of this node. The `guiId` is an internal identifier, used by graphcial tools. Think of it as the id of this node within the context of a model, in contrast to the "id" property, which is the primary key in the database. Generally, the first node added to the model is 0, the second node is 1, and so on. This id is used by connections.

        Parameters:

        `guiId_` - the `guiId` of this node.

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Gets the primary key of this node.

        Returns:

        the primary key of this node.

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the primary key of this node.

        Parameters:

        `id_` - the primary key of this node.

    -   ### getGroupOwnerId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getGroupOwnerId()

        Gets the group that owns this node.

        Returns:

        the id of the group that owns this node.

    -   ### setGroupOwnerId

        public void setGroupOwnerId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupOwnerId\_)

        Sets the group owner id of this node.

        Parameters:

        `groupOwnerId_` - the id of the group that owns this node.

    -   ### getGroupOwnerName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGroupOwnerName()

        Gets the name of the group that owns this node.

        Returns:

        the name of the group that owns this node.

    -   ### setGroupOwnerName

        public void setGroupOwnerName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupOwnerName\_)

        Sets the name of the group that owns this node.

        Parameters:

        `groupOwnerName_` - the name of the group that owns this node.

    -   ### getOwnerId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getOwnerId()

        Gets the id of the user that owns this node.

        Returns:

        the owner id of this node

    -   ### setOwnerId

        public void setOwnerId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") ownerId\_)

        Sets the user that owns this node.

        Parameters:

        `ownerId_` - the id of the user that owns this node.

    -   ### getOwnerName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getOwnerName()

        Gets the name of the user that owns this node.

        Returns:

        the owner name of the process node

    -   ### setOwnerName

        public void setOwnerName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ownerName\_)

        Sets the user that owns this node.

        Parameters:

        `ownerName_` - the username of the user that owns this node.

    -   ### getPreviousId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPreviousId()

        Gets the primary key that this node had in a previous version of this model. This is probably not useful, but some tools may take advantage of it later.

    -   ### setPreviousId

        public void setPreviousId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") previousId\_)

        Sets the primary key that this node had in a previous version of this model. This is probably not useful, but some tools may take advantage of it later.

    -   ### getAssign

        public [Assignment](Assignment.html "class in com.appiancorp.suiteapi.process") getAssign()

        If this node has an attended primary activity, this method gets the people, groups, etc.  to whom the activity is assigned.

        Returns:

        the entities to whom this node is assigned.

    -   ### setAssign

        public void setAssign([Assignment](Assignment.html "class in com.appiancorp.suiteapi.process") assign\_)

        If this node has an attended primary activity, this method sets the people, groups, etc.  to whom the activity is assigned.

        Parameters:

        `assign_` - the entities to whom this node is assigned.

    -   ### getDescription

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getDescription()

        Gets the localized description mappings of this node.

        Returns:

        the description for this node.

    -   ### setDescription

        public void setDescription([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") description\_)

        Sets the localized description mappings for this node.

        Parameters:

        `description_` - the description of this node.

    -   ### getDisplay

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getDisplay()

        Returns the task display name for this node.

        See Also:

        -   [`getFriendlyName()`](#getFriendlyName\(\))

    -   ### setDisplay

        public void setDisplay([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") display\_)

        See [`getDisplay()`](#getDisplay\(\)).

    -   ### isNotify

        public boolean isNotify()

        Determines whether this node has a notification associated with it.

        Returns:

        `true` if this node has an associated notification, `false` otherwise.

    -   ### setNotify

        public void setNotify(boolean notify\_)

        Sets whether there is notification associated with this node.

        Parameters:

        `notify_` - `true` if this node has an associated notification, `false` otherwise.

    -   ### getConfirmationUrl

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getConfirmationUrl()

        Gets the URL to which the runtime user should be forwarded after successfully completing the activity associated with this node. This data is only useful for nodes with attended primary activities.

        Returns:

        the url to which the user is forwarded after successful completion of this node.

    -   ### setConfirmationUrl

        public void setConfirmationUrl([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") confirmationUrl\_)

        Sets the URL to which the runtime user should be forwarded after successfully completing the activity associated with this node. This data is only useful for nodes with attended primary activities.

        Parameters:

        `confirmationUrl_` - the url to whcih the user is forwarded after succesful completion of this node.

    -   ### getPaletteIcon

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPaletteIcon()

        Gets the icon of the palette item from which this node was added to the process model.

        Returns:

        the id of a document which is stored in content management.

    -   ### setPaletteIcon

        public void setPaletteIcon([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") paletteIcon\_)

        Sets the icon of the palette item from which this node was added to the process model.

        Parameters:

        `paletteIcon_` - the id of a document which is stored in content management.

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Adds the primary keys of any Appian-typed objects that are used by the activites or escalations of this node to the given cache.

        Specified by:

        `[fillInAppianTypes](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - cache of Appian-typed objects.

    -   ### getDefaultNodeInstanceSecurity

        public [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") getDefaultNodeInstanceSecurity()

        Gets the default security mapping for instances of this node.

        Returns:

        the default security mapping for instances of this node.

    -   ### setDefaultNodeInstanceSecurity

        public void setDefaultNodeInstanceSecurity([Security](../common/Security.html "class in com.appiancorp.suiteapi.common") defaultNodeInstanceSecurity\_)

        Sets the default security mapping for instances of this node.

        Parameters:

        `defaultNodeInstanceSecurity_` - the default security mapping for instances of this node.

    -   ### getMultipleInstance

        public [MultipleInstance](MultipleInstance.html "class in com.appiancorp.suiteapi.process") getMultipleInstance()

        Returns the multiple instance configuration of the node. This may include Spawning and Recurrence configurations.

        Returns:

        Multiple instance configuration of the node.

    -   ### setMultipleInstance

        public void setMultipleInstance([MultipleInstance](MultipleInstance.html "class in com.appiancorp.suiteapi.process") multipleInstance\_)

        Sets the multiple instance configuration of the node. The may include Spawning and Recurrence configurations.

        Parameters:

        `multipleInstance_` - configuration

    -   ### getTargetCompletion

        public [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") getTargetCompletion()

        Gets the target duration in which the task should complete

        Returns:

        a value representing the number of days

    -   ### setTargetCompletion

        public void setTargetCompletion([Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") targetCompletion\_)

        Sets the target duration in which the process should complete

        Parameters:

        `targetCompletion_` - the target duration in days in which the task should complete

    -   ### getTargetLag

        public [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") getTargetLag()

        Gets the target duration in which the task should be accepted

        Returns:

        a value representing the number of days

    -   ### setTargetLag

        public void setTargetLag([Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") targetLag\_)

        Sets the target duration in which the task should be accepted

        Parameters:

        `targetLag_` - the target duration in days in which the task should be accepted

    -   ### getNotes

        public [Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] getNotes()

        Gets the notes that have been attached to this node.

        Returns:

        the notes that have been attached to this node.

    -   ### setNotes

        public void setNotes([Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] notes\_)

        Sets the notes that have been attached to this node.

        Parameters:

        `notes_` - the notes that have been attached to this node.

    -   ### getNotesWithContent

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] getNotesWithContent([Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] notes\_)

        Deprecated.

        use ProcessExecution.getNotesWithContent(Note\[\], ServiceContext)

        Returns the notes with content populated from fileSystem.

        Parameters:

        `notes_` - array of Notes to populate

        Returns:

        content populates notes array.

    -   ### getAttachments

        public [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")\[\] getAttachments()

        Gets the attachments that have been attached to this node.

        Returns:

        the attachments that have been attached to this node.

    -   ### setAttachments

        public void setAttachments([Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")\[\] attachments\_)

        Gets the attachments that have been attached to this node.

        Parameters:

        `attachments_` - the attachments that have been attached to this node.

    -   ### isLingering

        public boolean isLingering()

        a node is lingering if its existence is known to execution server only. i.e. when the task is instantiated, analytics and notifications servers are not notified of it. this property is currently only used to implement "quicktasks"

    -   ### setLingering

        public void setLingering(boolean lingering\_)

    -   ### getExceptionFlowTriggers

        public [EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")\[\] getExceptionFlowTriggers()

        Gets the triggers that can trigger an exception flow

        Returns:

        the exception flow triggers

    -   ### setExceptionFlowTriggers

        public void setExceptionFlowTriggers([EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")\[\] exceptionFlowTriggers\_)

        Sets the triggers that can trigger an exception flow

        Parameters:

        `exceptionFlowTriggers_` - the exception flow triggers

    -   ### getPreTriggers

        public [EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")\[\] getPreTriggers()

        Gets pre-triggers. These triggers are activated once the node is reached in flow. If the node is not reached in flow, these triggers are activated when the process is started)

        Returns:

        the pre-triggers

    -   ### setPreTriggers

        public void setPreTriggers([EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")\[\] preTriggers\_)

        Sets the pre-triggers

        Parameters:

        `preTriggers_` - the pre-triggers

        See Also:

        -   [`getPreTriggers()`](#getPreTriggers\(\))

    -   ### getPostTriggers

        public [EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")\[\] getPostTriggers()

        Gets the post-triggers. These triggers are activated after the node has otherwise completed. The triggers must fire before flow can move on.

        Returns:

        the post-triggers

    -   ### getEventProducers

        public [EventProducer](events/EventProducer.html "class in com.appiancorp.suiteapi.process.events")\[\] getEventProducers()

        Gets the event producers for this node

        Returns:

        the event producers

    -   ### setEventProducers

        public void setEventProducers([EventProducer](events/EventProducer.html "class in com.appiancorp.suiteapi.process.events")\[\] eventProducers\_)

        Sets the event producers for this node

        Parameters:

        `eventProducers_` - the event producers

    -   ### setPostTriggers

        public void setPostTriggers([EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")\[\] postTriggers\_)

        Sets the post-triggers

        Parameters:

        `postTriggers_` -

        See Also:

        -   [`getPostTriggers()`](#getPostTriggers\(\))

    -   ### getLane

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getLane()

        Gets the index of the `Lane` in which this node is contained. This number indexes into the `Lanes` field in [`AbstractProcessModel`](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process"). If this node is not contained within a `Lane` then this value will be -1.

        Returns:

        The index of the `Lane` in which this node is contained

    -   ### setLane

        public void setLane([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") lane\_)

        Sets the index of the `Lane` in which this node is contained.

        Parameters:

        `lane_` - The index of the `Lane` in which this node is contained

        See Also:

        -   [`getLane()`](#getLane\(\))

    -   ### isOverrideLaneAssignment

        public boolean isOverrideLaneAssignment()

        Gets whether the node overrides the assignment of the lane in which it is contained. This field is ignored if

        1.  The node is not contained within a lane
        2.  The node's lane does not have lane assignment set
        3.  The node cannot run as the lane assignment specifies. EG. A node that must be attended within a lane that has unattended lane assignment. In this case the lane assignment will always be overriden, regardless of the value returned by this function

        Returns:

        Whether the node overrids the assignment of the line in which it is contained.

    -   ### setOverrideLaneAssignment

        public void setOverrideLaneAssignment(boolean overrideLaneAssignment\_)

        Sets whether the node overrides the assignment of the lane in which it is contained.

        Parameters:

        `overrideLaneAssignment_` - Whether the node overrides the assignment of the lane in which it is contained.

        See Also:

        -   [`isOverrideLaneAssignment()`](#isOverrideLaneAssignment\(\))

    -   ### getLabelStyle

        public [Label](gui/Label.html "class in com.appiancorp.suiteapi.process.gui") getLabelStyle()

        Gets the styling bean for this node's label. The bean contains information on how to style the label such as font color, size, and decoration.

        Returns:

        The `Label` bean for this node.

    -   ### setLabelStyle

        public void setLabelStyle([Label](gui/Label.html "class in com.appiancorp.suiteapi.process.gui") labelStyle\_)

        Sets the styling bean for this node's label.

        Parameters:

        `labelStyle_` - Sets the `Label` bean for this node.

        See Also:

        -   [`getLabelStyle()`](#getLabelStyle\(\))

    -   ### mergeNodes

        public static void mergeNodes([AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")\[\] dbNodes\_, [AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")\[\] fsNodes\_)

    -   ### getDeadline

        public [Deadline](Deadline.html "class in com.appiancorp.suiteapi.process") getDeadline()

    -   ### setDeadline

        public void setDeadline([Deadline](Deadline.html "class in com.appiancorp.suiteapi.process") deadline\_)

    -   ### getExceptionFlow

        public [Connection](Connection.html "class in com.appiancorp.suiteapi.process") getExceptionFlow()

    -   ### setExceptionFlow

        public void setExceptionFlow([Connection](Connection.html "class in com.appiancorp.suiteapi.process") exceptionFlow\_)

    -   ### isOnCompleteDeletePreviousCompleted

        public boolean isOnCompleteDeletePreviousCompleted()

        Returns:

        Returns the onCompleteDeletePreviousCompleted.

    -   ### setOnCompleteDeletePreviousCompleted

        public void setOnCompleteDeletePreviousCompleted(boolean onCompleteDeletePreviousCompleted\_)

        Parameters:

        `onCompleteDeletePreviousCompleted_` - The onCompleteDeletePreviousCompleted to set.

    -   ### isOnCompleteKeepFormData

        public boolean isOnCompleteKeepFormData()

    -   ### setOnCompleteKeepFormData

        public void setOnCompleteKeepFormData(boolean onCompleteKeepFormData\_)

    -   ### isOnCreateDeletePreviousActive

        public boolean isOnCreateDeletePreviousActive()

        Returns:

        Returns the onCreateDeletePreviousActive.

    -   ### setOnCreateDeletePreviousActive

        public void setOnCreateDeletePreviousActive(boolean onCreateDeletePreviousActive\_)

        Parameters:

        `onCreateDeletePreviousActive_` - The onCreateDeletePreviousActive to set.

    -   ### isOnCreateIgnoreIfActive

        public boolean isOnCreateIgnoreIfActive()

        Returns:

        Returns the onCreateIgnoreIfActive.

    -   ### setOnCreateIgnoreIfActive

        public void setOnCreateIgnoreIfActive(boolean onCreateIgnoreIfActive\_)

        Parameters:

        `onCreateIgnoreIfActive_` - The onCreateIgnoreIfActive to set.

    -   ### isAllowsBack

        public boolean isAllowsBack()

        Determines if a user is allowed to step back to this node in an activity chain.

        Returns:

        true if the user is allowed to step back to this node

        See Also:

        -   [`setAllowsBack(boolean)`](#setAllowsBack\(boolean\))

    -   ### setAllowsBack

        public void setAllowsBack(boolean allowsBack\_)

        Set whether a user is allowed to step back to this node in an activity chain.

        Parameters:

        `allowsBack_` - true to allow users to step back to this node

        See Also:

        -   [`isAllowsBack()`](#isAllowsBack\(\))

    -   ### getRefreshDefaultValues

        public boolean getRefreshDefaultValues()

        Determines whether to refresh the default values each time a task form is viewed.

        Returns:

        true if the default values should be refreshed

        See Also:

        -   [`setRefreshDefaultValues(boolean)`](#setRefreshDefaultValues\(boolean\))

    -   ### setRefreshDefaultValues

        public void setRefreshDefaultValues(boolean refreshDefaultValues\_)

        Sets whether to refresh the default values each time a task form is viewed.

        Parameters:

        `refreshDefaultValues_` - true to refresh the default values

        See Also:

        -   [`getRefreshDefaultValues()`](#getRefreshDefaultValues\(\))

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Returns:

        Returns the uuid.

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid\_)

        Parameters:

        `uuid` - The uuid to set.

    -   ### isSkipNotification

        public boolean isSkipNotification()

        Returns:

        `true` if we are skipping notification emails for this node, `false` otherwise

    -   ### setSkipNotification

        public void setSkipNotification(boolean skipNotification\_)

        Parameters:

        `skipNotification_` - `true` to skip notification emails for this node, `false` otherwise

    -   ### isStartNode

        public boolean isStartNode()

        Used by tracking logic, this property is not always available.

        Returns:

        is this marked as a start node, either implicit or explicit?

    -   ### setStartNode

        public void setStartNode(boolean startNode)

        Used by tracking logic, this property is not always available.

        Parameters:

        `startNode` - set this as a start node, either implicit or explicit.