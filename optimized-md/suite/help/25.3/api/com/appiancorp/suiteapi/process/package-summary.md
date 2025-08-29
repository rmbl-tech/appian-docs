---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/package-summary.html
original_path: api/com/appiancorp/suiteapi/process/package-summary.html
version: "25.3"
title: "Package com.appiancorp.suiteapi.process"
page_id: "api/com/appiancorp/suiteapi/process/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.suiteapi.process

* * *

package com.appiancorp.suiteapi.process

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.process.analytics2](analytics2/package-summary.html)

    Provides functionality for querying the process engine for data about process models, processes, and tasks.

    [com.appiancorp.suiteapi.process.calendar](calendar/package-summary.html)

    Contains classes handling the start and ent times for each day of the week..

    [com.appiancorp.suiteapi.process.events](events/package-summary.html)

    Provides event trigger and producer functionality for Appian, which can be used to alter process flow and send and receive messages (including receiving e-mail messages).

    [com.appiancorp.suiteapi.process.exceptions](exceptions/package-summary.html)

    Contains exceptions related to processes.

    [com.appiancorp.suiteapi.process.forms](forms/package-summary.html)

    [com.appiancorp.suiteapi.process.framework](framework/package-summary.html)

    [com.appiancorp.suiteapi.process.gui](gui/package-summary.html)

    [com.appiancorp.suiteapi.process.history](history/package-summary.html)

    [com.appiancorp.suiteapi.process.palette](palette/package-summary.html)

    [com.appiancorp.suiteapi.process.security](security/package-summary.html)

    [com.appiancorp.suiteapi.process.test](test/package-summary.html)

    [com.appiancorp.suiteapi.process.upgrade](upgrade/package-summary.html)

    [com.appiancorp.suiteapi.process.webservices](webservices/package-summary.html)

-   All Classes and InterfacesInterfacesClassesEnum ClassesAnnotation Interfaces

    Class

    Description

    [AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")

    An escalation of an activity, such as notify my supervisor if I haven't accepted in 2 days.

    [AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")

    The template from which processes are created.

    [AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")

    A node in a process model.

    [AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process")

    A Schedule is used to define a time for an event based either on an absolute Timestamp or relative to some other event.

    [AcpReturnConverter](AcpReturnConverter.html "class in com.appiancorp.suiteapi.process")

    Deprecated. 

    [AcpsReturnConverter](AcpsReturnConverter.html "class in com.appiancorp.suiteapi.process")

    Deprecated. 

    [ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process")

    The activity that is run when a ProcessNode is traversed.

    [ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

    An ActivityClassParameter is a variable that is specified at design time and used at runtime.

    [ActivityClassParameterSchema](ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")

    Template from which ActivityClassParameters are created.

    [ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")

    The template from which activity classes are created.

    [ActivityProperties](ActivityProperties.html "class in com.appiancorp.suiteapi.process")

    Container for the properties of an activity.

    [ActivityReturnVariable](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")

    Variable that can be returned from an activity.

    [AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

    Holds the ids and display names of Appian-typed objects such as users and groups.

    [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

    Indicates that the implementing class uses Appian-typed objects (User, Group, etc), and needs to add the ids of these objects to a cache so that display names can be retrieved for them later.

    [ApplicationDataType](ApplicationDataType.html "annotation interface in com.appiancorp.suiteapi.process")

    Convenience annotation to indicate a value represents an Appian Object.

    [ArvReturnConverter](ArvReturnConverter.html "class in com.appiancorp.suiteapi.process")

    Deprecated. 

    [AssigneeReturnConverter](AssigneeReturnConverter.html "class in com.appiancorp.suiteapi.process")

    Deprecated. 

    [Assignment](Assignment.html "class in com.appiancorp.suiteapi.process")

    Holds the configuration for the assignment of an attended node.

    [Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")

    A user, group, role, or function that is assigned to a task.

    [Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")

    Bean used to represent the Process/Task attachment.

    [Attachment.NamedUrl](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process")

    [AttachmentMediator](AttachmentMediator.html "class in com.appiancorp.suiteapi.process")

    Bean used to represent the Process/Task attachment.

    [AttachmentPermissions](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process")

    This class has fields which convey various permissions that the user has for process or Task attachments.

    [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")

    BulkNodeOption This provides options to fine-tune the behavior of the bulk node process execution methods.

    [CalendarService](CalendarService.html "interface in com.appiancorp.suiteapi.process")

    This service provides methods which retrieve and update calendars in the system.

    [Connection](Connection.html "class in com.appiancorp.suiteapi.process")

    Represents a directional link between two process nodes (startNode and endNode).

    [Deadline](Deadline.html "class in com.appiancorp.suiteapi.process")

    [Escalation](Escalation.html "class in com.appiancorp.suiteapi.process")

    An escalation is an action that occurs if the task has not been completed before the configured [`TimerEventTrigger`](events/TimerEventTrigger.html "class in com.appiancorp.suiteapi.process.events") triggers.

    [EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")

    This class is used to specify escalation properties for a particular node instance.

    [ExceptionHandlerService](ExceptionHandlerService.html "interface in com.appiancorp.suiteapi.process")

    Provides methods relating to process exception handling.

    [FormConfigMapParameterConverter](FormConfigMapParameterConverter.html "class in com.appiancorp.suiteapi.process")

    Deprecated. 

    [GenericTypedVariable](GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")

    Deprecated.

    Use the class [`NamedTypedValue`](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") instead.

    [HistoryRecord](HistoryRecord.html "class in com.appiancorp.suiteapi.process")

    An individual history record, representing an element of an audit trail in a process.

    [HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process")

    Information about a process model, including id, version, name and uuid.

    [Instances](Instances.html "class in com.appiancorp.suiteapi.process")

    Class defines how many instances of the node will be created.

    [Interval](Interval.html "class in com.appiancorp.suiteapi.process")

    Interval define a period of time in terms of Minutes, Hours, Days, Weeks, Months and Years.

    [MultipleInstance](MultipleInstance.html "class in com.appiancorp.suiteapi.process")

    The class includes the multiple instance execution configuration of the node.

    [NodeActionProcessModelResult](NodeActionProcessModelResult.html "class in com.appiancorp.suiteapi.process")

    NodeActionProcessModelResult represents the result of a node action, e.g., starting a node as a task, in the context of a process model.

    [NodeActionProcessResult](NodeActionProcessResult.html "class in com.appiancorp.suiteapi.process")

    NodeActionProcessResult represents the result of a node action, e.g., starting a node as a task, in the context of a process.

    [NodeActionResult](NodeActionResult.html "class in com.appiancorp.suiteapi.process")

    NodeActionResult contains all the results of NodeActions, e.g., starting a node as a task, grouped initially by process model.

    [Note](Note.html "class in com.appiancorp.suiteapi.process")

    Deprecated. 

    [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")

    Deprecated. 

    [NotePermissions](NotePermissions.html "class in com.appiancorp.suiteapi.process")

    Deprecated. 

    [NotesContentService](NotesContentService.html "interface in com.appiancorp.suiteapi.process")

    Deprecated. 

    [Palette](Palette.html "class in com.appiancorp.suiteapi.process")

    Holds a collection of nodes that can be dropped onto a canvas in the designer to create a process.

    [Palette.Descriptor](Palette.Descriptor.html "class in com.appiancorp.suiteapi.process")

    A name/id object that can be used by the UI

    [PaletteCategory](PaletteCategory.html "class in com.appiancorp.suiteapi.process")

    A category that holds palettes and/or other palette categories in a hierarchy.

    [PaletteCategory.AllCategories](PaletteCategory.AllCategories.html "class in com.appiancorp.suiteapi.process")

    This bean is used to represent the top level of all categories in the hierarchy component

    [PaletteCategory.Descriptor](PaletteCategory.Descriptor.html "class in com.appiancorp.suiteapi.process")

    A descriptive object that can be used by the UI

    [PaletteErrorItem](PaletteErrorItem.html "class in com.appiancorp.suiteapi.process")

    Empty class needed to create a new node type in the palette hierarchy.

    [PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process")

    A node that appears in a palette in the process designer, and can be dropped onto the canvas to add an activity to a process model.

    [Priority](Priority.html "class in com.appiancorp.suiteapi.process")

    The precedence of any item in its queue.

    [PriorityRegistration](PriorityRegistration.html "class in com.appiancorp.suiteapi.process")

    [ProcessAdministrationService](ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process")

    ProcessAdministrationService is used to create and modify properties of the overall process application.

    [ProcessApplicationRoleMap](ProcessApplicationRoleMap.html "class in com.appiancorp.suiteapi.process")

    Defines the roles of users and groups for a process object.

    [ProcessDataType](ProcessDataType.html "annotation interface in com.appiancorp.suiteapi.process")

    Convenience annotation to indicate a value represents an Appian Object.

    [ProcessDesignService](ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

    The `ProcessDesignService` is used for creating and modifying [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process") which are organized by storing them in [`ProcessModelFolder`](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") objects.

    [ProcessDetails](ProcessDetails.html "class in com.appiancorp.suiteapi.process")

    Contains detailed information about a process.

    [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process")

    A runtime representation of a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    [ProcessException](ProcessException.html "class in com.appiancorp.suiteapi.process")

    Contains metadata about an exception (error) that occurred while a process was executing.

    [ProcessExceptionType](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process")

    Metadata about a class of process exceptions (errors that occur while a process is executing).

    [ProcessExecutionService](ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

    Interface to the business logic for the process runtime.

    [ProcessFacade](ProcessFacade.html "class in com.appiancorp.suiteapi.process")

    Utility methods dealing with processes

    [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")

    The template from which processes are created.

    [ProcessModel.Descriptor](ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")

    Inner class that holds the name, id, and description of a process model.

    [ProcessModelDataType](ProcessModelDataType.html "annotation interface in com.appiancorp.suiteapi.process")

    Convenience annotation to indicate a value represents an Appian Object.

    [ProcessModelDetails](ProcessModelDetails.html "class in com.appiancorp.suiteapi.process")

    Holds detailed metadata about a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

    [ProcessModelFacade](ProcessModelFacade.html "class in com.appiancorp.suiteapi.process")

    Manages the loading and storing and other utility functions of process models.

    [ProcessModelFolder](ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")

    Bean that represents a folder into which [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process")s can be stored.

    [ProcessModelLogging](ProcessModelLogging.html "class in com.appiancorp.suiteapi.process")

    [ProcessModelNotificationSettings](ProcessModelNotificationSettings.html "class in com.appiancorp.suiteapi.process")

    [ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")

    Holds the properties of a process model.

    [ProcessModelSummary](ProcessModelSummary.html "class in com.appiancorp.suiteapi.process")

    Holds summary information about a process model, such as who created it, when, how many process instances are running, and how many have completed.

    [ProcessModelWithErrors](ProcessModelWithErrors.html "class in com.appiancorp.suiteapi.process")

    Bean containing a ProcessModel and the errors that were found when trying to publish it.

    [ProcessNode](ProcessNode.html "class in com.appiancorp.suiteapi.process")

    A node in a process model.

    [ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process")

    Holds the properties of a process.

    [ProcessRoleMap](ProcessRoleMap.html "class in com.appiancorp.suiteapi.process")

    Defines the roles of users and groups for a process object.

    [ProcessStartConfig](ProcessStartConfig.html "class in com.appiancorp.suiteapi.process")

    Specifies options and configurations that control behavior when starting a process.

    [ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")

    Holds high-level, summary metadata about a process.

    [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")

    A variable that is global to a process.

    [ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")

    Represents the runtime instance of process variable for a process.

    [PvInstancesReturnConverter](PvInstancesReturnConverter.html "class in com.appiancorp.suiteapi.process")

    Deprecated. 

    [PvReturnConverter](PvReturnConverter.html "class in com.appiancorp.suiteapi.process")

    Deprecated. 

    [Recurrence](Recurrence.html "class in com.appiancorp.suiteapi.process")

    Used to specify properties of a node that is set to re-execute after every configurable interval of time.

    [Recurrence.End](Recurrence.End.html "class in com.appiancorp.suiteapi.process")

    Class defines condition under which Recurrence stops for a node in process.

    [RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process")

    This class is used to specify properties for a particular node instance that is set to re-execute after every configurable interval of time.

    [RecurringInterval](RecurringInterval.html "class in com.appiancorp.suiteapi.process")

    Defines a time interval for an event that repeats after a fixed delay.

    [RecurringInterval.Daily](RecurringInterval.Daily.html "class in com.appiancorp.suiteapi.process")

    Class defines Daily recurring interval

    [RecurringInterval.Monthly](RecurringInterval.Monthly.html "class in com.appiancorp.suiteapi.process")

    Class defines time interval for Monthly events.

    [RecurringInterval.Weekly](RecurringInterval.Weekly.html "class in com.appiancorp.suiteapi.process")

    Class that defines time interval for events that occur on a Weekly basis.

    [RecurringInterval.Yearly](RecurringInterval.Yearly.html "class in com.appiancorp.suiteapi.process")

    Class defines time interval for Yearly events.

    [RuntimeProcessNode](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")

    Information about a node in an executed process.

    [Schedule](Schedule.html "class in com.appiancorp.suiteapi.process")

    A Schedule is used to define a time for an event based either on an absolute Timestamp or relative to some other event.

    [ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process")

    A Schedule is used to define a time for an event based either on an absolute Timestamp or relative to some other event.

    [ScheduleSummary](ScheduleSummary.html "class in com.appiancorp.suiteapi.process")

    Holds a high-level summary of the schedule which could be on a node or a pending node object if there is recurrence and spawning for that node

    [SizingColumn](SizingColumn.html "class in com.appiancorp.suiteapi.process")

    [SizingReport](SizingReport.html "class in com.appiancorp.suiteapi.process")

    [Spawning](Spawning.html "class in com.appiancorp.suiteapi.process")

    Nodes that are set to Spawn create multiple instances of themselves, when the process reaches that node.

    [TaskDataType](TaskDataType.html "annotation interface in com.appiancorp.suiteapi.process")

    Convenience annotation to indicate a value represents an Appian Object.

    [TaskDesignProperties](TaskDesignProperties.html "class in com.appiancorp.suiteapi.process")

    Holds a task's high level metadata during design time (i.e. in the process modeler, not during execution.)

    [TaskDetails](TaskDetails.html "class in com.appiancorp.suiteapi.process")

    More details about a task (attended activity) than are provided in the TaskSummary, including the notes and attachments on the task.

    [TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process")

    Holds the properties of a task.

    [TaskSummary](TaskSummary.html "class in com.appiancorp.suiteapi.process")

    Holds a high-level summary for a task.

    [TaskUrlService](TaskUrlService.html "class in com.appiancorp.suiteapi.process")

    [TvReturnConverter](TvReturnConverter.html "class in com.appiancorp.suiteapi.process")

    Deprecated. 

    [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")

    Deprecated.

    Use the TypeService and related APIs instead.

    [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")

    Deprecated.

    Use the class [`NamedTypedValue`](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") instead.

    [TypedVariableTypes](TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")

    Deprecated.

    Use [`AppianType`](../type/AppianType.html "interface in com.appiancorp.suiteapi.type") instead.

    [TypedVariableUtils](TypedVariableUtils.html "class in com.appiancorp.suiteapi.process")

    Utility class for TypedVariables

    [TypedVariableUtils.People](TypedVariableUtils.People.html "class in com.appiancorp.suiteapi.process")

    Class representing groups and/or users

    [Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process")

    Classes implementing this interface can be subjected to runtime validation.

    [XMLBuilderUtils](XMLBuilderUtils.html "class in com.appiancorp.suiteapi.process")

    Class provides utility methods to create an XML document