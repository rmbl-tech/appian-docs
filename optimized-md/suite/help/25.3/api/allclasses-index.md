---
source_url: https://docs.appian.com/suite/help/25.3/api/allclasses-index.html
original_path: api/allclasses-index.html
version: "25.3"
title: "All Classes and Interfaces"
page_id: "api/allclasses-index"
tags: ["appian","docs","v25.3"]
---


# All Classes and Interfaces

All Classes and InterfacesInterfacesClassesEnum ClassesExceptionsErrorsAnnotation Interfaces

Class

Description

[AbstractActivity](com/appiancorp/suiteapi/process/framework/AbstractActivity.html "class in com.appiancorp.suiteapi.process.framework")

Abstract class to be subclassed when implementing a Java execution environment activity.

[AbstractEscalation](com/appiancorp/suiteapi/process/AbstractEscalation.html "class in com.appiancorp.suiteapi.process")

An escalation of an activity, such as notify my supervisor if I haven't accepted in 2 days.

[AbstractFilterCategoryValidator](com/appiancorp/common/query/AbstractFilterCategoryValidator.html "class in com.appiancorp.common.query")

[AbstractProcessModel](com/appiancorp/suiteapi/process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")

The template from which processes are created.

[AbstractProcessNode](com/appiancorp/suiteapi/process/AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")

A node in a process model.

[AbstractSchedule](com/appiancorp/suiteapi/process/AbstractSchedule.html "class in com.appiancorp.suiteapi.process")

A Schedule is used to define a time for an event based either on an absolute Timestamp or relative to some other event.

[AbstractServiceContext](com/appiancorp/services/AbstractServiceContext.html "class in com.appiancorp.services")

Represents a service context for use with the service framework.

[AcpReturnConverter](com/appiancorp/suiteapi/process/AcpReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated. 

[AcpsReturnConverter](com/appiancorp/suiteapi/process/AcpsReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated. 

[ActionNotFoundException](com/appiancorp/suiteapi/applications/ActionNotFoundException.html "class in com.appiancorp.suiteapi.applications")

This exception is thrown when attempting to access an Action that is not found within an Application.

[Activities](com/appiancorp/suiteapi/process/palette/Activities.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[ActivityClass](com/appiancorp/suiteapi/process/ActivityClass.html "class in com.appiancorp.suiteapi.process")

The activity that is run when a ProcessNode is traversed.

[ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

An ActivityClassParameter is a variable that is specified at design time and used at runtime.

[ActivityClassParameterSchema](com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")

Template from which ActivityClassParameters are created.

[ActivityClassSchema](com/appiancorp/suiteapi/process/ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")

The template from which activity classes are created.

[ActivityExecutionException](com/appiancorp/suiteapi/process/framework/ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")

This is an Exception wrapper, which is used by Activity classes to inform about error conditions while running the activity.

[ActivityExecutionMetadata](com/appiancorp/suiteapi/process/framework/ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework")

Metadata attributes of an activity that are needed during its execution.

[ActivityParameterHelper](com/appiancorp/suiteapi/process/framework/ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework")

Classes that implement this interface provide additional functionality for passing parameters to and receiving parameters from a user interface.

[ActivityProperties](com/appiancorp/suiteapi/process/ActivityProperties.html "class in com.appiancorp.suiteapi.process")

Container for the properties of an activity.

[ActivityReturnVariable](com/appiancorp/suiteapi/process/ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")

Variable that can be returned from an activity.

[AdminConsolePermissions](com/appiancorp/suiteapi/administration/AdminConsolePermissions.html "class in com.appiancorp.suiteapi.administration")

Deprecated.

This class pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

[AdminConsoleRoleMap](com/appiancorp/suiteapi/administration/AdminConsoleRoleMap.html "class in com.appiancorp.suiteapi.administration")

Deprecated.

This class pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

[AdministrationService](com/appiancorp/suiteapi/administration/AdministrationService.html "interface in com.appiancorp.suiteapi.administration")

Deprecated.

The AdministrationService pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

[AdministrationService](com/appiancorp/suiteapi/collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

[AdministrationService](com/appiancorp/suiteapi/portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[AEVRoleMap](com/appiancorp/suiteapi/common/AEVRoleMap.html "class in com.appiancorp.suiteapi.common")

This class can be used as base class for any object acting as RoleMap where `User` and `Group` can be added to view or edit a particular object.

[Aggregation](com/appiancorp/common/query/Aggregation.html "class in com.appiancorp.common.query")

Holds the List of AggregationColumns to project by the Query.

[AggregationColumn](com/appiancorp/common/query/AggregationColumn.html "class in com.appiancorp.common.query")

Immutable bean representing the column dot notation, alias, visibility (if it's should be shown to the client or not).

[AggregationFunction](com/appiancorp/common/query/AggregationFunction.html "enum class in com.appiancorp.common.query")

Enumeration containing the valid aggregation functions which can be applied to a column.

[AheadOfScheduleFilter](com/appiancorp/suiteapi/process/analytics2/AheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Filter for tasks/processes that are ahead of schedule: when this filter is added, only completed tasks/processes that are ahead of schedule will be returned in the report.

[Analytics](com/appiancorp/suiteapi/process/palette/Analytics.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[AnnotationArtifact](com/appiancorp/suiteapi/process/gui/AnnotationArtifact.html "class in com.appiancorp.suiteapi.process.gui")

[AppianError](com/appiancorp/exceptions/AppianError.html "class in com.appiancorp.exceptions")

This class holds information about an error.

[AppianError.Builder](com/appiancorp/exceptions/AppianError.Builder.html "class in com.appiancorp.exceptions")

A builder to create instances of [`AppianError`](com/appiancorp/exceptions/AppianError.html "class in com.appiancorp.exceptions").

[AppianErrorBuilder](com/appiancorp/exceptions/AppianErrorBuilder.html "class in com.appiancorp.exceptions")

Builds localized [`AppianError`](com/appiancorp/exceptions/AppianError.html "class in com.appiancorp.exceptions") objects using Appian error codes.

[AppianErrorCode](com/appiancorp/exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions")

[AppianErrorCode.InvalidErrorCode](com/appiancorp/exceptions/AppianErrorCode.InvalidErrorCode.html "class in com.appiancorp.exceptions")

[AppianErrorCodeFormatter](com/appiancorp/suiteapi/common/exceptions/AppianErrorCodeFormatter.html "interface in com.appiancorp.suiteapi.common.exceptions")

Callback used to format an AppianErrorCode.

[AppianErrorCodeStaticMessageFormatter](com/appiancorp/exceptions/AppianErrorCodeStaticMessageFormatter.html "interface in com.appiancorp.exceptions")

Callback used to format an AppianErrorCode's static message.

[AppianErrorCodeTitleFormatter](com/appiancorp/exceptions/AppianErrorCodeTitleFormatter.html "interface in com.appiancorp.exceptions")

Callback used to format an AppianErrorCode's title.

[AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions")

Deprecated.

use [`AppianException`](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

[AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

`AppianException` is the base class of all application-level exceptions thrown in the product.

[AppianPrivilegeNotFoundException](com/appiancorp/suiteapi/common/exceptions/AppianPrivilegeNotFoundException.html "class in com.appiancorp.suiteapi.common.exceptions")

`AppianPrivilegeNotFoundException` acts as a wrapper around an equivalent `AppianPrivelegeException`.

[AppianResponseError](com/appiancorp/exceptions/AppianResponseError.html "class in com.appiancorp.exceptions")

[AppianResponseError.Builder](com/appiancorp/exceptions/AppianResponseError.Builder.html "class in com.appiancorp.exceptions")

A builder to create instances of [`AppianResponseError`](com/appiancorp/exceptions/AppianResponseError.html "class in com.appiancorp.exceptions").

[AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

`AppianRuntimeException` is the base class of all application-level runtime exceptions thrown in the product.

[AppianScriptingFunctionsCategory](com/appiancorp/suiteapi/expression/annotations/AppianScriptingFunctionsCategory.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

Functions annotated with this annotation will show up under the internal "Appian Scripting Functions" category.

[AppianServlet](com/appiancorp/suiteapi/servlet/AppianServlet.html "class in com.appiancorp.suiteapi.servlet")

Abstract servlet class that provide inject functionality.

[AppianSmartService](com/appiancorp/suiteapi/process/framework/AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework")

Abstract class to extend when creating a custom smart service.

[AppianStorageException](com/appiancorp/suiteapi/common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when an issue is encountered when interacting with Appian file storage.

[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

AppianType List of built-in System Type constants.

[AppianTypeCache](com/appiancorp/suiteapi/process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

Holds the ids and display names of Appian-typed objects such as users and groups.

[AppianTypeHolder](com/appiancorp/suiteapi/process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

Indicates that the implementing class uses Appian-typed objects (User, Group, etc), and needs to add the ids of these objects to a cache so that display names can be retrieved for them later.

[AppianUserDetails](com/appiancorp/suiteapi/security/auth/AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth")

Implements the Spring `UserDetails` interface and holds Appian-specific data about a user.

[AppianUserDetailsService](com/appiancorp/suiteapi/security/auth/AppianUserDetailsService.html "class in com.appiancorp.suiteapi.security.auth")

Retrieves the user data from [`UserProfileService`](com/appiancorp/suiteapi/personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization") and returns an instance of [`AppianUserDetails`](com/appiancorp/suiteapi/security/auth/AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth").

[Application](com/appiancorp/suiteapi/applications/Application.html "class in com.appiancorp.suiteapi.applications")

Represents an Application object, which consists of metadata, a navigation definition, and references to associated objects.

[Application](com/appiancorp/suiteapi/portal/Application.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[Application.ApplicationActions](com/appiancorp/suiteapi/applications/Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications")

Definition of the Application Actions: a collection of [`ApplicationAction`](com/appiancorp/suiteapi/applications/ApplicationAction.html "class in com.appiancorp.suiteapi.applications") associated to the application.

[Application.ApplicationNavigation](com/appiancorp/suiteapi/applications/Application.ApplicationNavigation.html "class in com.appiancorp.suiteapi.applications")

The end-user navigation definition of the application.

[Application.AssociatedApplications](com/appiancorp/suiteapi/applications/Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications")

Stores the references to the applications associated with the application.

[Application.AssociatedObjects](com/appiancorp/suiteapi/applications/Application.AssociatedObjects.html "class in com.appiancorp.suiteapi.applications")

Stores the references to the objects associated with the application.

[Application.Metadata](com/appiancorp/suiteapi/applications/Application.Metadata.html "enum class in com.appiancorp.suiteapi.applications")

[Application.Section](com/appiancorp/suiteapi/applications/Application.Section.html "enum class in com.appiancorp.suiteapi.applications")

An application is logically divided in four different sections: 1.

[ApplicationAction](com/appiancorp/suiteapi/applications/ApplicationAction.html "class in com.appiancorp.suiteapi.applications")

Represents an action that can be executed in the context of an [`Application`](com/appiancorp/suiteapi/applications/Application.html "class in com.appiancorp.suiteapi.applications").

[ApplicationActionBean](com/appiancorp/suiteapi/applications/ApplicationActionBean.html "class in com.appiancorp.suiteapi.applications")

Supporting bean for [`ApplicationAction`](com/appiancorp/suiteapi/applications/ApplicationAction.html "class in com.appiancorp.suiteapi.applications").

[ApplicationDataType](com/appiancorp/suiteapi/process/ApplicationDataType.html "annotation interface in com.appiancorp.suiteapi.process")

Convenience annotation to indicate a value represents an Appian Object.

[ApplicationNavigationItem](com/appiancorp/suiteapi/applications/ApplicationNavigationItem.html "class in com.appiancorp.suiteapi.applications")

Represents each item in the navigation definition of the application.

[ApplicationNotFoundException](com/appiancorp/suiteapi/applications/ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")

Exception thrown by the Service whenever an Application ID does not match any object stored in the database

[ApplicationRoleMap](com/appiancorp/suiteapi/applications/ApplicationRoleMap.html "class in com.appiancorp.suiteapi.applications")

[ApplicationService](com/appiancorp/suiteapi/applications/ApplicationService.html "interface in com.appiancorp.suiteapi.applications")

Application service.

[ApplicationsFolder](com/appiancorp/suiteapi/applications/ApplicationsFolder.html "class in com.appiancorp.suiteapi.applications")

[Approval](com/appiancorp/suiteapi/content/Approval.html "class in com.appiancorp.suiteapi.content")

The approval bean contains the approval status for a list of content items.

[Approved](com/appiancorp/suiteapi/content/Approved.html "class in com.appiancorp.suiteapi.content")

This bean contains information about an approved action.

[ArchivedProcessException](com/appiancorp/suiteapi/process/exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the user calls an API method that acts on a process that has been archived.

[ArvReturnConverter](com/appiancorp/suiteapi/process/ArvReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated. 

[AssigneeReturnConverter](com/appiancorp/suiteapi/process/AssigneeReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated. 

[Assignment](com/appiancorp/suiteapi/process/Assignment.html "class in com.appiancorp.suiteapi.process")

Holds the configuration for the assignment of an attended node.

[Assignment.Assignee](com/appiancorp/suiteapi/process/Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")

A user, group, role, or function that is assigned to a task.

[Attachment](com/appiancorp/suiteapi/forums/Attachment.html "class in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[Attachment](com/appiancorp/suiteapi/process/Attachment.html "class in com.appiancorp.suiteapi.process")

Bean used to represent the Process/Task attachment.

[Attachment.NamedUrl](com/appiancorp/suiteapi/process/Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process")

[AttachmentMediator](com/appiancorp/suiteapi/process/AttachmentMediator.html "class in com.appiancorp.suiteapi.process")

Bean used to represent the Process/Task attachment.

[AttachmentPermissions](com/appiancorp/suiteapi/process/AttachmentPermissions.html "class in com.appiancorp.suiteapi.process")

This class has fields which convey various permissions that the user has for process or Task attachments.

[Attended](com/appiancorp/suiteapi/process/framework/Attended.html "annotation interface in com.appiancorp.suiteapi.process.framework")

[Attribute](com/appiancorp/suiteapi/personalization/Attribute.html "class in com.appiancorp.suiteapi.personalization")

This represents the Attribute object.

[Attribute](com/appiancorp/suiteapi/portal/Attribute.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[AttributeReturnConverter](com/appiancorp/suiteapi/personalization/AttributeReturnConverter.html "class in com.appiancorp.suiteapi.personalization")

Deprecated. 

[AttributeType](com/appiancorp/suiteapi/personalization/AttributeType.html "class in com.appiancorp.suiteapi.personalization")

Title: AttributeType

[AuditHistory](com/appiancorp/suiteapi/process/history/AuditHistory.html "class in com.appiancorp.suiteapi.process.history")

AuditHistory Audit Process History allows reading the process history of live processes and processes deleted, but still archived in Kafka.

[AuditHistoryException](com/appiancorp/suiteapi/process/history/AuditHistoryException.html "class in com.appiancorp.suiteapi.process.history")

AuditHistoryException

[AuditHistoryOptions](com/appiancorp/suiteapi/process/history/options/AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")

AuditHistoryOptions

[AuditHistoryOptionsBuilder](com/appiancorp/suiteapi/process/history/options/AuditHistoryOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")

AuditHistoryOptionsBuilder

[AuditHistoryProcessModelOptions](com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessModelOptions.html "class in com.appiancorp.suiteapi.process.history.options")

AuditHistoryProcessModelOptions

[AuditHistoryProcessModelOptionsBuilder](com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")

AuditHistoryProcessModelOptionsBuilder

[AuditHistoryProcessOptions](com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessOptions.html "class in com.appiancorp.suiteapi.process.history.options")

AuditHistoryProcessOptions

[AuditHistoryProcessOptionsBuilder](com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")

AuditHistoryProcessOptionsBuilder

[AuditHistoryRow](com/appiancorp/suiteapi/process/history/AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")

AuditHistoryRow AuditHistoryRow represents one row of audit log process history.

[AuditHistoryRowConstants](com/appiancorp/suiteapi/process/history/AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history")

AuditHistoryRowConstants The domain!

[AuditInfo](com/appiancorp/suiteapi/process/history/AuditInfo.html "class in com.appiancorp.suiteapi.process.history")

AuditInfo Information about the audit history returned.

[AuthenticationProviderWrapper](com/appiancorp/suiteapi/security/auth/AuthenticationProviderWrapper.html "class in com.appiancorp.suiteapi.security.auth")

The AuthenticationProviderWrapper contains an AuthenticationProvider to which it delegates the actual authentication of an AuthenticationToken.

[AutomationSmartServicesAnalitycs](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesAnalitycs.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[AutomationSmartServicesBusinessRules](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesBusinessRules.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[AutomationSmartServicesCommunication](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesCommunication.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[AutomationSmartServicesDataServices](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesDataServices.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[AutomationSmartServicesDocumentGeneration](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesDocumentGeneration.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[AutomationSmartServicesDocumentManagement](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesDocumentManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[AutomationSmartServicesIdentityManagement](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesIdentityManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[AutomationSmartServicesIntegrationAPIs](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesIntegrationAPIs.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[AutomationSmartServicesProcessManagement](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesProcessManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[AutomationSmartServicesRoboticProcesses](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesRoboticProcesses.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[AutomationSmartServicesSocial](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesSocial.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[AutomationSmartServicesTestManagement](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesTestManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[BackendTimeZone](com/appiancorp/suiteapi/portal/BackendTimeZone.html "class in com.appiancorp.suiteapi.portal")

[BackendTimeZoneSimple](com/appiancorp/suiteapi/portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal")

[BaseAction](com/appiancorp/common/appianwebmvc/BaseAction.html "class in com.appiancorp.common.appianwebmvc")

Deprecated.

The Portal functionality will be removed in a future release.

[BaseActionForm](com/appiancorp/common/appianwebmvc/BaseActionForm.html "class in com.appiancorp.common.appianwebmvc")

Deprecated.

The Portal functionality will be removed in a future release.

[BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Base class for all analytics filters.

[BaseUpdateAction](com/appiancorp/common/appianwebmvc/BaseUpdateAction.html "class in com.appiancorp.common.appianwebmvc")

Deprecated.

The Portal functionality will be removed in a future release.

[BaseViewAction](com/appiancorp/common/appianwebmvc/BaseViewAction.html "class in com.appiancorp.common.appianwebmvc")

Deprecated.

The Portal functionality will be removed in a future release.

[BasicUserDetailsContextMapper](com/appiancorp/suiteapi/common/spring/security/BasicUserDetailsContextMapper.html "class in com.appiancorp.suiteapi.common.spring.security")

This class implements very basic conversion from a Spring LDAP `DirContextOperations` bean to a `UserDetails` bean.

[BehindScheduleFilter](com/appiancorp/suiteapi/process/analytics2/BehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Filter for tasks/processes that are behind schedule: when this filter is added, only the incomplete and completed tasks/processes that are behind schedule will be returned in the report.

[BulkArrayConverter](com/appiancorp/suiteapi/common/BulkArrayConverter.html "class in com.appiancorp.suiteapi.common")

Utility class used to combine an array of array into a single array of combined length and vice versa.

[BulkNodeOption](com/appiancorp/suiteapi/process/BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")

BulkNodeOption This provides options to fine-tune the behavior of the bulk node process execution methods.

[BusinessEntity](com/appiancorp/suiteapi/process/webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices")

This bean represents the Business Information that is registered with the WebServices Registry.

[BusinessEntity.ContactBean](com/appiancorp/suiteapi/process/webservices/BusinessEntity.ContactBean.html "class in com.appiancorp.suiteapi.process.webservices")

A bean detailing contact information

[CalendarDateElement](com/appiancorp/suiteapi/process/calendar/CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar")

The `CalendarDateElement` is similar to the [`CalendarElement`](com/appiancorp/suiteapi/process/calendar/CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar") but it has an additional field which specifies the specific day to which this element is applied.

[CalendarElement](com/appiancorp/suiteapi/process/calendar/CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")

The CalendarElement stores a start and end time, which is used by the WorkingCalendar to specify all start and end times per day.

[CalendarService](com/appiancorp/suiteapi/process/CalendarService.html "interface in com.appiancorp.suiteapi.process")

This service provides methods which retrieve and update calendars in the system.

[CalendarSetting](com/appiancorp/suiteapi/portal/CalendarSetting.html "class in com.appiancorp.suiteapi.portal")

[Category](com/appiancorp/suiteapi/expression/annotations/Category.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

Defines the category in the expression editor in which the function annotated with this annotation should appear.

[CollaborationRoleMap](com/appiancorp/suiteapi/collaboration/CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`ContentRoleMap`](com/appiancorp/suiteapi/content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content") instead.

[CollaborationSearchService](com/appiancorp/suiteapi/collaboration/CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

[CollaborationUserService](com/appiancorp/suiteapi/collaboration/CollaborationUserService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

[Column](com/appiancorp/common/query/Column.html "class in com.appiancorp.common.query")

Immutable bean representing the column dot notation, its alias and its visibility (if it should be shown to the client or not).

[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

The `Column` bean contains information necessary to retrieve a column of data from the backend and display it properly.

[ColumnAlias](com/appiancorp/common/query/ColumnAlias.html "class in com.appiancorp.common.query")

Immutable bean representing the column dot notation and it's alias.

[Communication](com/appiancorp/suiteapi/process/palette/Communication.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[Community](com/appiancorp/suiteapi/collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`Community`](com/appiancorp/suiteapi/knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge") instead.

[Community](com/appiancorp/suiteapi/knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge")

Represents a Knowledge community, which can contain [`KnowledgeCenter`](com/appiancorp/suiteapi/knowledge/KnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge") and `Community` items.

[CommunityDataType](com/appiancorp/suiteapi/knowledge/CommunityDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge")

Convenience annotation to indicate a value represents an Appian Object.

[CommunityKnowledgeCenter](com/appiancorp/suiteapi/knowledge/CommunityKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")

Represents a community knowledge center, which is a knowledge center that other users can view.

[CommunityService](com/appiancorp/suiteapi/collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

[Comparisons](com/appiancorp/suiteapi/process/analytics2/Comparisons.html "class in com.appiancorp.suiteapi.process.analytics2")

Defines constants for logical comparisons between values.

[CompletedAheadOfScheduleFilter](com/appiancorp/suiteapi/process/analytics2/CompletedAheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Deprecated.

this unused filter will be removed in a future release

[CompletedBehindScheduleFilter](com/appiancorp/suiteapi/process/analytics2/CompletedBehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Deprecated.

this unused filter will be removed in a future release; use instead [`DueTodayFilter`](com/appiancorp/suiteapi/process/analytics2/DueTodayFilter.html "class in com.appiancorp.suiteapi.process.analytics2") as it returns the same results

[CompletedFilter](com/appiancorp/suiteapi/process/analytics2/CompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Filter for completed tasks/processes: when this filter is added, only completed tasks/processes will be returned in the report.

[CompleteValue](com/appiancorp/suiteapi/process/history/CompleteValue.html "class in com.appiancorp.suiteapi.process.history")

CompleteValue Some AuditHistoryRows will have PartialValues, others will have CompleteValues.

[CompositeSessionAuthenticationStrategy](com/appiancorp/suiteapi/common/spring/security/CompositeSessionAuthenticationStrategy.html "class in com.appiancorp.suiteapi.common.spring.security")

Allows multiple `SessionAuthenticationStrategy` implementations to be executed as a single `SessionAuthenticationStrategy`.

[Condition](com/appiancorp/suiteapi/personalization/Condition.html "class in com.appiancorp.suiteapi.personalization")

[Configurable](com/appiancorp/suiteapi/common/cli/Configurable.html "interface in com.appiancorp.suiteapi.common.cli")

[Configuration](com/appiancorp/suiteapi/cfg/Configuration.html "interface in com.appiancorp.suiteapi.cfg")

Interface that exposes the public configuration properties in custom.properties for use in custom code.

[Configuration](com/appiancorp/suiteapi/common/Configuration.html "class in com.appiancorp.suiteapi.common")

Provides support for loading configuration files for the product.

[ConfigurationLoader](com/appiancorp/suiteapi/cfg/ConfigurationLoader.html "class in com.appiancorp.suiteapi.cfg")

Factory for returning an instance of Configuration.

[Connection](com/appiancorp/suiteapi/process/Connection.html "class in com.appiancorp.suiteapi.process")

Represents a directional link between two process nodes (startNode and endNode).

[ConnectivityServices](com/appiancorp/suiteapi/process/palette/ConnectivityServices.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[Constant](com/appiancorp/suiteapi/rules/Constant.html "class in com.appiancorp.suiteapi.rules")

Represents a constant, which can be used in expressions throughout the product.

[ConstantDataType](com/appiancorp/suiteapi/rules/ConstantDataType.html "annotation interface in com.appiancorp.suiteapi.rules")

Convenience annotation to indicate a value represents an Appian Object.

[Constants](com/appiancorp/suiteapi/common/Constants.html "interface in com.appiancorp.suiteapi.common")

Interface to represent constants used for retrieving and sorting results obtained from database.

[Container](com/appiancorp/suiteapi/content/Container.html "class in com.appiancorp.suiteapi.content")

This is the abstract class used to represent Content objects that may contain other Content objects.

[Content](com/appiancorp/suiteapi/content/Content.html "class in com.appiancorp.suiteapi.content")

Represents an item of content.

[ContentAccess](com/appiancorp/suiteapi/content/ContentAccess.html "class in com.appiancorp.suiteapi.content")

This class provides methods accessible through JSON, which are relevant to Content objects.

[ContentBeanFactory](com/appiancorp/suiteapi/content/ContentBeanFactory.html "class in com.appiancorp.suiteapi.content")

Provides utility methods for creating content objects based on the type identifiers.

[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Contains constants for use with Content.

[ContentExpiredException](com/appiancorp/suiteapi/content/exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by service methods if the content they are referencing is expired.

[ContentFilter](com/appiancorp/suiteapi/content/ContentFilter.html "class in com.appiancorp.suiteapi.content")

Filters may be applied to Content Service operations in order to filter the final results by the criteria listed here.

[ContentFilter.KeyValue](com/appiancorp/suiteapi/content/ContentFilter.KeyValue.html "class in com.appiancorp.suiteapi.content")

This represents a Key and Value of a Content Attribute.

[ContentOutputStream](com/appiancorp/suiteapi/content/ContentOutputStream.html "class in com.appiancorp.suiteapi.content")

Deprecated.

since 23.2.

[ContentRole](com/appiancorp/suiteapi/content/ContentRole.html "class in com.appiancorp.suiteapi.content")

Holds the data for an individual role within a Content object's role map.

[ContentRoleMap](com/appiancorp/suiteapi/content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content")

This class represents the access permissions for an element in the collaboration center.

[ContentRoleSet](com/appiancorp/suiteapi/content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content")

This class represents the access permissions for a Content item.

[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

This interface provides access to the Content service (formerly the Collaboration service).

[ContentStatisticsService](com/appiancorp/suiteapi/content/ContentStatisticsService.html "interface in com.appiancorp.suiteapi.content")

This interface provides access to the Content Statistics service.

[ContentUploadOutputStream](com/appiancorp/suiteapi/content/ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content")

Represents a document and its output stream to which the document's content should be written during an upload.

[ContextException](com/appiancorp/suiteapi/common/exceptions/ContextException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown if the context is null or not valid.

[ContextSensitiveSingletonService](com/appiancorp/services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

Marks a singleton service as context-sensitive, meaning that the service will have a `ServiceContextProvider` associated with it.

[Contribution](com/appiancorp/suiteapi/portal/Contribution.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

This functionality is no longer supported and will be removed in the next release.

[Controller](com/appiancorp/suiteapi/process/test/Controller.html "class in com.appiancorp.suiteapi.process.test")

Controller is the root of the controller objects that allow the automatic control of processes and their tasks.

[Controller.ControllerException](com/appiancorp/suiteapi/process/test/Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test")

ControllerException This exception is thrown for controller errors.

[Controller.LogElement](com/appiancorp/suiteapi/process/test/Controller.LogElement.html "class in com.appiancorp.suiteapi.process.test")

LogElement The object log is composed of LogElements.

[Controller.LogLevel](com/appiancorp/suiteapi/process/test/Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test")

LogLevel enumeration supported by Controller logging.

[CopyReference](com/appiancorp/suiteapi/content/CopyReference.html "class in com.appiancorp.suiteapi.content")

Represents a reference to a copied Content item.

[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

Represents an instruction for the source of a Content copy.

[Credentials](com/appiancorp/suiteapi/common/Credentials.html "class in com.appiancorp.suiteapi.common")

Bean that represents a User's credentials

[CredentialsReturnConverter](com/appiancorp/suiteapi/common/CredentialsReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated. 

[Criteria](com/appiancorp/common/query/Criteria.html "interface in com.appiancorp.common.query")

Marker interface to be able to create a tree structure while combining filters, search and logical expressions.

[CriteriaValidator](com/appiancorp/common/query/CriteriaValidator.html "class in com.appiancorp.common.query")

[CriteriaValidatorProvider](com/appiancorp/common/query/CriteriaValidatorProvider.html "interface in com.appiancorp.common.query")

[CustomContent](com/appiancorp/suiteapi/content/CustomContent.html "class in com.appiancorp.suiteapi.content")

Custom Content object.

[DatabaseOperationException](com/appiancorp/suiteapi/common/exceptions/DatabaseOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting a failure when backing up and/or saving the Database.

[DatabaseStatus](com/appiancorp/suiteapi/portal/DatabaseStatus.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[DataServices](com/appiancorp/suiteapi/process/palette/DataServices.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[DataSubset](com/appiancorp/suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[T](com/appiancorp/suiteapi/common/paging/DataSubset.html "type parameter in DataSubset"),[I](com/appiancorp/suiteapi/common/paging/DataSubset.html "type parameter in DataSubset")\>

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[Datatype](com/appiancorp/suiteapi/type/Datatype.html "class in com.appiancorp.suiteapi.type")

Datatype The Datatype of a TypedValue.

[DatatypeProperties](com/appiancorp/suiteapi/type/DatatypeProperties.html "class in com.appiancorp.suiteapi.type")

Datatype Properties The Datatype Properties of a TypedValue.

[Deadline](com/appiancorp/suiteapi/process/Deadline.html "class in com.appiancorp.suiteapi.process")

[DecryptionException](com/appiancorp/suiteapi/common/exceptions/DecryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")

Runtime exception thrown when an attempt at text decryption throws an exception.

[DeepCloneable](com/appiancorp/suiteapi/common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

This marker interface identifiers a class that supports the clone method with deep copy semantics, rather than shallow copy semantics.

[DefaultPortletIxHelper](com/appiancorp/suiteapi/ix/data/portlet/DefaultPortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")

[DeprecatedException](com/appiancorp/suiteapi/common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods which themselves are deprecated, or that contain a deprecated combination of parameters.

[DiscussionBodyService](com/appiancorp/suiteapi/forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[DiscussionMessageDataType](com/appiancorp/suiteapi/forums/DiscussionMessageDataType.html "annotation interface in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[DiscussionMetadataConvenienceService](com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[DiscussionPortletService](com/appiancorp/suiteapi/portal/portlets/discussionthreads/DiscussionPortletService.html "interface in com.appiancorp.suiteapi.portal.portlets.discussionthreads")

Deprecated.

The Portal functionality will be removed in a future release.

[DiscussionThread](com/appiancorp/suiteapi/forums/DiscussionThread.html "class in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[DiscussionThreadDataType](com/appiancorp/suiteapi/forums/DiscussionThreadDataType.html "annotation interface in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[Document](com/appiancorp/suiteapi/collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`Document`](com/appiancorp/suiteapi/knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge") instead.

[Document](com/appiancorp/suiteapi/knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge")

Represents a document in the Knowledge application.

[DocumentDataType](com/appiancorp/suiteapi/knowledge/DocumentDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge")

Convenience annotation to indicate a value represents an Appian Object.

[DocumentGeneration](com/appiancorp/suiteapi/process/palette/DocumentGeneration.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[DocumentInputStream](com/appiancorp/suiteapi/content/DocumentInputStream.html "class in com.appiancorp.suiteapi.content")

Represents an input stream for a Document object.

[DocumentManagement](com/appiancorp/suiteapi/process/palette/DocumentManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[DocumentOrFolderDataType](com/appiancorp/suiteapi/knowledge/DocumentOrFolderDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge")

Convenience annotation to indicate a value represents an Appian Object.

[DocumentOutputStream](com/appiancorp/suiteapi/content/DocumentOutputStream.html "class in com.appiancorp.suiteapi.content")

Represents an output stream for a Document object.

[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

[DocumentStatistics](com/appiancorp/suiteapi/collaboration/DocumentStatistics.html "class in com.appiancorp.suiteapi.collaboration")

This class represents a versioned document in the collaboration application.

[DownloadStatistics](com/appiancorp/suiteapi/collaboration/DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")

This class represents a fragment of a download-related query.

[DrillPath](com/appiancorp/suiteapi/process/analytics2/DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2")

The `DrillPath` bean describes how data in a report `Column` links to more information.

[DueTodayFilter](com/appiancorp/suiteapi/process/analytics2/DueTodayFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Filter for tasks/processes that are due today.

[DuplicateExpressionException](com/appiancorp/suiteapi/common/exceptions/DuplicateExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown while trying to create or modify a [`Rule`](com/appiancorp/suiteapi/rules/Rule.html "class in com.appiancorp.suiteapi.rules") with a name that is already registered as an expression function.

[DuplicateIdException](com/appiancorp/suiteapi/common/exceptions/DuplicateIdException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given id is not unique.

[DuplicateNameException](com/appiancorp/suiteapi/common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given name of a user, group, grouptype, or attribute name is not unique.

[DuplicatePortletException](com/appiancorp/suiteapi/common/exceptions/DuplicatePortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when attempting to place a portlet into a page that already contains the same portlet.

[DuplicateUuidException](com/appiancorp/suiteapi/common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods that create content if the UUID specified is already in use for another piece of content.

[DuplicateUuidException](com/appiancorp/suiteapi/content/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by service methods that create content if the UUID specified is already in use for another piece of content.

[DuplicateWebServiceNameException](com/appiancorp/suiteapi/common/exceptions/DuplicateWebServiceNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that is thrown if the user tries to create a web service to start a process model, and a web service with the same name already exists.

[DuplicateWSRPProducerURLException](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/DuplicateWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

Deprecated.

The Portal functionality will be removed in a future release.

[DynamicForm](com/appiancorp/suiteapi/process/forms/DynamicForm.html "class in com.appiancorp.suiteapi.process.forms")

Bean representing dynamic forms

[Editable](com/appiancorp/suiteapi/process/framework/Editable.html "enum class in com.appiancorp.suiteapi.process.framework")

[EmailAddressDataType](com/appiancorp/suiteapi/personalization/EmailAddressDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")

Convenience annotation to indicate a value represents an Appian Object.

[EmailNotificationService](com/appiancorp/suiteapi/portal/EmailNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

The Notification functionality will be removed in a future release.

[EmailRecipientDataType](com/appiancorp/suiteapi/personalization/EmailRecipientDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")

Convenience annotation to indicate a value represents an Appian Object.

[EmptyActivityParameterHelper](com/appiancorp/suiteapi/process/framework/EmptyActivityParameterHelper.html "class in com.appiancorp.suiteapi.process.framework")

This class provides default, do-nothing implementations of all `ActivityParameterHelper` methods.

[EncryptedTextDataType](com/appiancorp/suiteapi/encryption/EncryptedTextDataType.html "annotation interface in com.appiancorp.suiteapi.encryption")

Convenience annotation to indicate a value represents an Encrypted Text object.

[EncryptionException](com/appiancorp/suiteapi/common/exceptions/EncryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")

Runtime exception thrown when an attempt at text encryption throws an exception.

[EncryptionService](com/appiancorp/suiteapi/encryption/EncryptionService.html "interface in com.appiancorp.suiteapi.encryption")

Service that provides the capability to encrypt plaintext values and decrypt values of type Encrypted Text.

[Environment](com/appiancorp/exceptions/Environment.html "enum class in com.appiancorp.exceptions")

[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[ErrorCodeHolder](com/appiancorp/exceptions/ErrorCodeHolder.html "interface in com.appiancorp.exceptions")

Used to indicate that an error includes Appian ErrorCode information

[EscalatedServiceContext](com/appiancorp/services/EscalatedServiceContext.html "class in com.appiancorp.services")

An EscalatedServiceContext is used to strongly-type mark methods that require privilege escalation.

[Escalation](com/appiancorp/suiteapi/process/Escalation.html "class in com.appiancorp.suiteapi.process")

An escalation is an action that occurs if the task has not been completed before the configured [`TimerEventTrigger`](com/appiancorp/suiteapi/process/events/TimerEventTrigger.html "class in com.appiancorp.suiteapi.process.events") triggers.

[EscalationInstance](com/appiancorp/suiteapi/process/EscalationInstance.html "class in com.appiancorp.suiteapi.process")

This class is used to specify escalation properties for a particular node instance.

[Event](com/appiancorp/suiteapi/process/events/Event.html "class in com.appiancorp.suiteapi.process.events")

Base class for all events (both [`EventTrigger`](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") and [`EventProducer`](com/appiancorp/suiteapi/process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events") extend this class).

[EventProducer](com/appiancorp/suiteapi/process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events")

Represents an event producer (an event that performs an action immediately when it is reached in flow).

[EventProducerReturnConverter](com/appiancorp/suiteapi/process/events/EventProducerReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

Deprecated. 

[EventReturnConverter](com/appiancorp/suiteapi/process/events/EventReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

Deprecated. 

[Events](com/appiancorp/suiteapi/process/palette/Events.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[EventTrigger](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

Represents an event trigger (an event that waits for something to occur before continuing flow).

[EventTriggerReturnConverter](com/appiancorp/suiteapi/process/events/EventTriggerReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

Deprecated. 

[ExceptionHandler](com/appiancorp/exceptions/ExceptionHandler.html "interface in com.appiancorp.exceptions")

Encapsulates reusable logic for handling exceptions.

[ExceptionHandlerService](com/appiancorp/suiteapi/process/ExceptionHandlerService.html "interface in com.appiancorp.suiteapi.process")

Provides methods relating to process exception handling.

[ExceptionImportDiagnostic](com/appiancorp/suiteapi/type/config/ExceptionImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")

An ImportDiagnostic that has an associated [`AppianException`](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions").

[ExceptionUtil](com/appiancorp/suiteapi/common/exceptions/ExceptionUtil.html "class in com.appiancorp.suiteapi.common.exceptions")

Deprecated.

use individual method replacements

[Expression](com/appiancorp/suiteapi/personalization/Expression.html "class in com.appiancorp.suiteapi.personalization")

Title: Expression

[ExpressionDependency](com/appiancorp/suiteapi/expression/ExpressionDependency.html "class in com.appiancorp.suiteapi.expression")

This bean will be populated with expression evaluation results when testing a rule.

[ExpressionDependency.TypeDependency](com/appiancorp/suiteapi/expression/ExpressionDependency.TypeDependency.html "class in com.appiancorp.suiteapi.expression")

A TypeDependency represents the variety of type literals that may be discovered as dependencies.

[ExpressionException](com/appiancorp/suiteapi/common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given expression is invalid.

[ExpressionService](com/appiancorp/suiteapi/expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression")

Defines service methods related to the use of expressions within the application.

[Facet](com/appiancorp/common/query/Facet.html "class in com.appiancorp.common.query")<[T](com/appiancorp/common/query/Facet.html "type parameter in Facet")\>

This class holds the metadata for a facet and its options.

[FacetOption](com/appiancorp/common/query/FacetOption.html "class in com.appiancorp.common.query")<[T](com/appiancorp/common/query/FacetOption.html "type parameter in FacetOption")\>

This class holds the metadata for an individual option for a [`facet`](com/appiancorp/common/query/Facet.html "class in com.appiancorp.common.query").

[Feeds](com/appiancorp/suiteapi/process/palette/Feeds.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This class will be removed from the public API in a future release.

[FileChange](com/appiancorp/suiteapi/portal/portlets/miniwebsite/FileChange.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

The Portal functionality will be removed in a future release.

[Filter](com/appiancorp/common/query/Filter.html "class in com.appiancorp.common.query")<[T](com/appiancorp/common/query/Filter.html "type parameter in Filter")\>

Bean representing a configured Filter on a column.

[Filter](com/appiancorp/suiteapi/process/analytics2/Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")

The base interface for all filters in analytics.

[FilterOperator](com/appiancorp/common/query/FilterOperator.html "enum class in com.appiancorp.common.query")

Enumeration of existing filter expression operators.

[FilterOperatorCategory](com/appiancorp/common/query/FilterOperatorCategory.html "enum class in com.appiancorp.common.query")

Categories used by [`FilterOperator`](com/appiancorp/common/query/FilterOperator.html "enum class in com.appiancorp.common.query").

[FilterValidator](com/appiancorp/common/query/FilterValidator.html "interface in com.appiancorp.common.query")

[Folder](com/appiancorp/suiteapi/administration/Folder.html "class in com.appiancorp.suiteapi.administration")

Deprecated.

This class pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

[Folder](com/appiancorp/suiteapi/collaboration/Folder.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`KnowledgeFolder`](com/appiancorp/suiteapi/knowledge/KnowledgeFolder.html "class in com.appiancorp.suiteapi.knowledge") instead.

[Folder](com/appiancorp/suiteapi/content/Folder.html "class in com.appiancorp.suiteapi.content")

Represents a folder in any application.

[Folder](com/appiancorp/suiteapi/portal/portlets/links/Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

The Portal functionality will be removed in a future release.

[FolderDataType](com/appiancorp/suiteapi/knowledge/FolderDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge")

Convenience annotation to indicate a value represents an Appian Object.

[FolderService](com/appiancorp/suiteapi/collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

[FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")

Bean representing the formconfig

[FormConfigMap](com/appiancorp/suiteapi/process/forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms")

Map of FormConfig objects, keyed by locale.

[FormConfigMapParameterConverter](com/appiancorp/suiteapi/process/FormConfigMapParameterConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated. 

[FormConfigMapReturnConverter](com/appiancorp/suiteapi/process/forms/FormConfigMapReturnConverter.html "class in com.appiancorp.suiteapi.process.forms")

Deprecated. 

[FormElement](com/appiancorp/suiteapi/process/forms/FormElement.html "class in com.appiancorp.suiteapi.process.forms")

[FormElement.FormElementType](com/appiancorp/suiteapi/process/forms/FormElement.FormElementType.html "class in com.appiancorp.suiteapi.process.forms")

[FormElement.InferFormElementCallback](com/appiancorp/suiteapi/process/forms/FormElement.InferFormElementCallback.html "interface in com.appiancorp.suiteapi.process.forms")

[FormElementBinding](com/appiancorp/suiteapi/process/forms/FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")

The binding to an `ActivityClassParameter` for an input or element on the form.

[Forum](com/appiancorp/suiteapi/forums/Forum.html "class in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[ForumDataType](com/appiancorp/suiteapi/forums/ForumDataType.html "annotation interface in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[ForumManagement](com/appiancorp/suiteapi/process/palette/ForumManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

[ForumsRoleMap](com/appiancorp/suiteapi/forums/ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[ForumsSearchService](com/appiancorp/suiteapi/forums/ForumsSearchService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[ForumSummary](com/appiancorp/suiteapi/forums/ForumSummary.html "class in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[FreeformRule](com/appiancorp/suiteapi/rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules")

Represents a freeform rule, which has a set of parameters and an expression which is run whenever the rule is called.

[Function](com/appiancorp/suiteapi/expression/annotations/Function.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

Indicates that either a method is a function (if placed on a method), or that all public methods in a class are functions (if placed on a class).

[Function](com/appiancorp/suiteapi/expression/Function.html "class in com.appiancorp.suiteapi.expression")

This class represents a function in the Expression Editor.

[FunctionCategory](com/appiancorp/suiteapi/expression/FunctionCategory.html "class in com.appiancorp.suiteapi.expression")

This class represents a function category in the Expression Editor.

[FunctionParameter](com/appiancorp/suiteapi/expression/FunctionParameter.html "class in com.appiancorp.suiteapi.expression")

This class represents a parameter of a function in the Expression Editor.

[FunctionRequest](com/appiancorp/suiteapi/expression/FunctionRequest.html "class in com.appiancorp.suiteapi.expression")

This class encapsulates a request by a user for a function to be evaluated.

[Gateways](com/appiancorp/suiteapi/process/palette/Gateways.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[GenericFacet](com/appiancorp/common/query/GenericFacet.html "class in com.appiancorp.common.query")

This class holds the metadata for a facet and its options.

[GenericFacet.GenericFacetBuilder](com/appiancorp/common/query/GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")

A builder that will construct a GenericFacet with the correct parameters

[GenericFacetOption](com/appiancorp/common/query/GenericFacetOption.html "class in com.appiancorp.common.query")

This class holds the metadata for an individual option for a [`facet`](com/appiancorp/common/query/Facet.html "class in com.appiancorp.common.query").

[GenericFilter](com/appiancorp/common/query/GenericFilter.html "class in com.appiancorp.common.query")

Immutable bean representing a configured [`Filter`](com/appiancorp/common/query/Filter.html "class in com.appiancorp.common.query") on a column.

[GenericLogicalExpression](com/appiancorp/common/query/GenericLogicalExpression.html "class in com.appiancorp.common.query")

This class represents a logical expression combining multiple filters in a query.

[GenericQuery](com/appiancorp/common/query/GenericQuery.html "class in com.appiancorp.common.query")

A `Query` concrete class An instance can only be obtained by using the helper class [`GenericQuery.GenericBuilder`](com/appiancorp/common/query/GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")

[GenericQuery.GenericBuilder](com/appiancorp/common/query/GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")

A class for incrementally build a `GenericQuery`.

[GenericQuery.GenericBuilder.Aggregator](com/appiancorp/common/query/GenericQuery.GenericBuilder.Aggregator.html "class in com.appiancorp.common.query")

This class encapsulates all the available Aggregation Functions in a more object oriented way.

[GenericQuery.GenericBuilder.FilterOpLiteral](com/appiancorp/common/query/GenericQuery.GenericBuilder.FilterOpLiteral.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[GenericQuery.GenericBuilder.LogicalOp](com/appiancorp/common/query/GenericQuery.GenericBuilder.LogicalOp.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[GenericQuery.GenericBuilder.Order](com/appiancorp/common/query/GenericQuery.GenericBuilder.Order.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[GenericQuery.GenericBuilder.SearchOp](com/appiancorp/common/query/GenericQuery.GenericBuilder.SearchOp.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[GenericQuery.GenericBuilder.Selector](com/appiancorp/common/query/GenericQuery.GenericBuilder.Selector.html "class in com.appiancorp.common.query")

This is how you instantiate columns to configure a query for selection, grouping or aggregation.

[GenericTypedVariable](com/appiancorp/suiteapi/process/GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")

Deprecated.

Use the class [`NamedTypedValue`](com/appiancorp/suiteapi/type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") instead.

[GlobalId](com/appiancorp/suiteapi/common/GlobalId.html "interface in com.appiancorp.suiteapi.common")

This bean is used to identify an object with `Long` Id both locally and remotely.

[GlobalizationService](com/appiancorp/suiteapi/portal/GlobalizationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

Globalization updates should be done via the Admin Console.

[GlobalStringId](com/appiancorp/suiteapi/common/GlobalStringId.html "interface in com.appiancorp.suiteapi.common")

This bean is used to identify an object with `String` Id both locally and remotely.

[Group](com/appiancorp/suiteapi/personalization/Group.html "class in com.appiancorp.suiteapi.personalization")

This represents the Group object.

[GroupBase](com/appiancorp/suiteapi/personalization/GroupBase.html "class in com.appiancorp.suiteapi.personalization")

This represents the basic Group object.

[GroupDataType](com/appiancorp/suiteapi/personalization/GroupDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")

Convenience annotation to indicate a value represents an Appian Object.

[GroupHierarchyBean](com/appiancorp/suiteapi/personalization/GroupHierarchyBean.html "class in com.appiancorp.suiteapi.personalization")

[GroupIsAttributeException](com/appiancorp/suiteapi/common/exceptions/GroupIsAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when trying to delete a group that is being used as an attribute for another group

[GroupMemberPolicy](com/appiancorp/suiteapi/personalization/GroupMemberPolicy.html "class in com.appiancorp.suiteapi.personalization")

Holds the group member policy.

[GroupMemberViewingPolicy](com/appiancorp/suiteapi/personalization/GroupMemberViewingPolicy.html "class in com.appiancorp.suiteapi.personalization")

The group member viewing policy.

[GroupMessage](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessage.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

Deprecated.

The Group Message channel and code will be removed in a future release.

[GroupMessageLink](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessageLink.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

Deprecated.

The Group Message channel and code will be removed in a future release.

[GroupMessageService](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.groupmessage")

Deprecated.

The Group Message channel and code will be removed in a future release.

[GroupSearch](com/appiancorp/suiteapi/personalization/GroupSearch.html "class in com.appiancorp.suiteapi.personalization")

This represents the Group search object.

[GroupSecurityType](com/appiancorp/suiteapi/personalization/GroupSecurityType.html "class in com.appiancorp.suiteapi.personalization")

Group security type bean, holds the groupSecurityTypeID and groupSecurityTypeName

[GroupService](com/appiancorp/suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")

Provides the main functionality needed to create, update, delete, and get groups.

[GroupsExtantException](com/appiancorp/suiteapi/common/exceptions/GroupsExtantException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when an attempt is made to delete a group type but groups exist that reference that group type.

[GroupSummary](com/appiancorp/suiteapi/personalization/GroupSummary.html "class in com.appiancorp.suiteapi.personalization")

Title: GroupSummary

[GroupType](com/appiancorp/suiteapi/personalization/GroupType.html "class in com.appiancorp.suiteapi.personalization")

This represents the common GroupType object.

[GroupTypeBase](com/appiancorp/suiteapi/personalization/GroupTypeBase.html "class in com.appiancorp.suiteapi.personalization")

This represents the base GroupType object.

[GroupTypeService](com/appiancorp/suiteapi/personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")

Provides the main functionality needed to create, update, delete, and get groups types.

[GroupTypeUsedByRulesException](com/appiancorp/suiteapi/common/exceptions/GroupTypeUsedByRulesException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception indicating that the attempted action could not completed because a `GroupType` involved in the action is being used by a rule.

[HandledActivityExecutionException](com/appiancorp/suiteapi/process/framework/HandledActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")

[HasChildrenException](com/appiancorp/suiteapi/content/exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by service methods that delete or deactive content if the content has children and the flag was not set to automatically delete or deactive any children.

[Hidden](com/appiancorp/suiteapi/type/Hidden.html "annotation interface in com.appiancorp.suiteapi.type")

[`Datatype`](com/appiancorp/suiteapi/type/Datatype.html "class in com.appiancorp.suiteapi.type")s created from a POJO containing this annotation will be created as hidden data types.

[HiddenCategory](com/appiancorp/suiteapi/expression/annotations/HiddenCategory.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

Functions annotated with this annotation will not show up in the Expression Editor UI.

[HistoryRecord](com/appiancorp/suiteapi/process/HistoryRecord.html "class in com.appiancorp.suiteapi.process")

An individual history record, representing an element of an audit trail in a process.

[HistoryRecord.ProcessModelInfo](com/appiancorp/suiteapi/process/HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process")

Information about a process model, including id, version, name and uuid.

[Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common")

This bean is used to represent an object with a `String` name, `Long` Id, and `String` UUID.

[IdentityManagement](com/appiancorp/suiteapi/process/palette/IdentityManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[IllegalRecursionException](com/appiancorp/suiteapi/content/exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by service methods that create or modify a content item if the parent is set to the item itself.

[ImportDiagnostic](com/appiancorp/suiteapi/type/config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")

Import diagnostics are generated during the import of data types to provide details on any issues or problems that are encountered during the import.

[ImportDiagnosticSeverity](com/appiancorp/suiteapi/type/config/ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config")

Represents the severity of an import diagnostic.

[ImportDiagnosticUtils](com/appiancorp/suiteapi/type/config/ImportDiagnosticUtils.html "class in com.appiancorp.suiteapi.type.config")

[ImportException](com/appiancorp/suiteapi/type/exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")

Thrown when a new type could not be imported.

[ImportExportService](com/appiancorp/suiteapi/ix/ImportExportService.html "interface in com.appiancorp.suiteapi.ix")

[ImportObject](com/appiancorp/suiteapi/ix/ImportObject.html "class in com.appiancorp.suiteapi.ix")

Represents the resulting object after an import or inspect operation.

[ImportResult](com/appiancorp/suiteapi/type/config/ImportResult.html "class in com.appiancorp.suiteapi.type.config")

Holds the result of an import of types into the system.

[ImportResults](com/appiancorp/suiteapi/ix/ImportResults.html "class in com.appiancorp.suiteapi.ix")

Detailed results from importing or inspecting a package with objects.

[IncompatibleArchivedVersionException](com/appiancorp/suiteapi/process/exceptions/IncompatibleArchivedVersionException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if an archived process file is from an incompatible release version, requiring the migration of the archived process file(s).

[Input](com/appiancorp/suiteapi/process/framework/Input.html "annotation interface in com.appiancorp.suiteapi.process.framework")

The @Input annotation is an optional annotation for smart service setter methods that allows for additional input behaviors to be described.

[Instances](com/appiancorp/suiteapi/process/Instances.html "class in com.appiancorp.suiteapi.process")

Class defines how many instances of the node will be created.

[InsufficientNameUniquenessException](com/appiancorp/suiteapi/content/exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by service methods that create or modify a content item if the name of the content is insufficiently unique for the type of uniqueness specified ([`ContentConstants.UNIQUE_NONE`](com/appiancorp/suiteapi/content/ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_PARENT`](com/appiancorp/suiteapi/content/ContentConstants.html#UNIQUE_FOR_PARENT), [`ContentConstants.UNIQUE_FOR_TYPE`](com/appiancorp/suiteapi/content/ContentConstants.html#UNIQUE_FOR_TYPE), or [`ContentConstants.UNIQUE_FOR_ALL`](com/appiancorp/suiteapi/content/ContentConstants.html#UNIQUE_FOR_ALL)).

[InsufficientPrivilegesException](com/appiancorp/exceptions/InsufficientPrivilegesException.html "class in com.appiancorp.exceptions")

[IntAsBooleanXmlAdapter](com/appiancorp/suiteapi/common/IntAsBooleanXmlAdapter.html "class in com.appiancorp.suiteapi.common")

[InternalForm](com/appiancorp/suiteapi/process/forms/InternalForm.html "class in com.appiancorp.suiteapi.process.forms")

An internal form is form that has been uploaded into Collaboration.

[InternalFormProcessor](com/appiancorp/suiteapi/process/forms/InternalFormProcessor.html "interface in com.appiancorp.suiteapi.process.forms")

This interface will allow for the parsing and processing of forms stored in the collaboration center.

[InternalJmsMessage](com/appiancorp/suiteapi/messaging/InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging")

Represents a JMS message to be posted to JMS.

[InternalMessage](com/appiancorp/suiteapi/messaging/InternalMessage.html "class in com.appiancorp.suiteapi.messaging")

Represents a message in the Appian Messaging framework.

[Interval](com/appiancorp/suiteapi/process/Interval.html "class in com.appiancorp.suiteapi.process")

Interval define a period of time in terms of Minutes, Hours, Days, Weeks, Months and Years.

[InvalidActionException](com/appiancorp/suiteapi/applications/InvalidActionException.html "class in com.appiancorp.suiteapi.applications")

Exception thrown to indicate an invalid [`ApplicationAction`](com/appiancorp/suiteapi/applications/ApplicationAction.html "class in com.appiancorp.suiteapi.applications") element.

[InvalidActivityClassParameterException](com/appiancorp/suiteapi/process/exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the user provides an [`ActivityClassParameter`](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process") for an Activity Class, and that Activity Class does not take that parameter.

[InvalidActivityClassSchemaException](com/appiancorp/suiteapi/process/exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the user calls an API method that acts on an activity class schema (or schemaId or local Id), and that schema does not exist in the database.

[InvalidActivityException](com/appiancorp/suiteapi/process/exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the user calls an API method that acts on an activity (a task or an unattended activity) and that activity does not exist in the database.

[InvalidAdminException](com/appiancorp/suiteapi/common/exceptions/InvalidAdminException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given user or group does not exist as an admin of a group.

[InvalidAnonymousUserException](com/appiancorp/suiteapi/common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that the user is logged in as 'anonymous', but anonymous access has not been enabled.

[InvalidApplicationException](com/appiancorp/suiteapi/applications/InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")

This exception may be thrown by service methods when they detect an invalid state in the Application Object

[InvalidApprovalStateException](com/appiancorp/suiteapi/content/exceptions/InvalidApprovalStateException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by [`ContentService.approveVersion(Long, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#approveVersion\(java.lang.Long,java.lang.Integer\))

[InvalidAttachmentException](com/appiancorp/suiteapi/common/exceptions/InvalidAttachmentException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that is thrown if the user references an attachment that does not exist in the database.

[InvalidAttributeException](com/appiancorp/suiteapi/common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when trying to get, update, or delete an attribute for a group type that does not exist

[InvalidAttributeValueException](com/appiancorp/suiteapi/common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that can be thrown if the user attempts to configure a group or group type attribute incorrectly (that is, by giving an attribute a value which is incompatible with its type).

[InvalidCalendarException](com/appiancorp/suiteapi/process/calendar/InvalidCalendarException.html "class in com.appiancorp.suiteapi.process.calendar")

This exception is thrown if an API method is called that acts on a calendar (or calendar Id) and that calendar does not exist.

[InvalidCategoryException](com/appiancorp/suiteapi/common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when a category id is used that does not refer to an existing category.

[InvalidCommunityException](com/appiancorp/suiteapi/common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a collaboration community does not exist.

[InvalidContentException](com/appiancorp/suiteapi/content/exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by service methods detecting that a content item does not exist.

[InvalidCreatorException](com/appiancorp/suiteapi/common/exceptions/InvalidCreatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

Deprecated.

use InvalidUserException

[InvalidDataFormatException](com/appiancorp/suiteapi/common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods when invalid data formats are passed to the service methods e.g.

[InvalidDecimalException](com/appiancorp/suiteapi/common/exceptions/InvalidDecimalException.html "class in com.appiancorp.suiteapi.common.exceptions")

[InvalidDependencyException](com/appiancorp/suiteapi/common/exceptions/InvalidDependencyException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that is thrown if the user tries to delete a process model, but completed or active processes of that model exist.

[InvalidDocumentException](com/appiancorp/suiteapi/common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a document or any versions of a document does not exist.

[InvalidEmailAddressException](com/appiancorp/suiteapi/common/exceptions/InvalidEmailAddressException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that given email address in invalid.

[InvalidEscalationException](com/appiancorp/suiteapi/common/exceptions/InvalidEscalationException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that the escalation is non-existent or has been deleted.

[InvalidEventException](com/appiancorp/suiteapi/common/exceptions/InvalidEventException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that an event does not exist.

[InvalidExceptionTypeException](com/appiancorp/suiteapi/process/exceptions/InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the user calls an API method that acts on a `ProcessExceptionType` (or exception type id) and that exception type does not exist in the database.

[InvalidExpressionException](com/appiancorp/suiteapi/common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that the expression with the given ID is non-existent or has been deleted.

[InvalidExpressionGroupException](com/appiancorp/suiteapi/process/exceptions/InvalidExpressionGroupException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the user calls an API method that acts on an expression group (a task or an unattended activity) and that expression group does not exist in the database.

[InvalidFolderException](com/appiancorp/suiteapi/common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a folder does not exist.

[InvalidFolderException](com/appiancorp/suiteapi/portal/portlets/links/InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

The Portal functionality will be removed in a future release.

[InvalidForumException](com/appiancorp/suiteapi/common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that is thrown when a user references a forum that does not exist in the database.

[InvalidGroupException](com/appiancorp/suiteapi/common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given group does not exist.

[InvalidGroupMessageException](com/appiancorp/suiteapi/portal/portlets/groupmessage/InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

Deprecated.

The Group Message Channel will be removed in a future release

[InvalidGroupTypeException](com/appiancorp/suiteapi/common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given group type does not exist.

[InvalidJMSDestinationException](com/appiancorp/suiteapi/messaging/InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

[InvalidKnowledgeCenterException](com/appiancorp/suiteapi/common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given knowledge center does not exist.

[InvalidLeaderMessageException](com/appiancorp/suiteapi/portal/portlets/leadermessage/InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

Deprecated.

The Leader Message channel and code will be removed in a future release.

[InvalidLinkException](com/appiancorp/suiteapi/portal/portlets/links/InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

The Portal functionality will be removed in a future release.

[InvalidLinkTypeException](com/appiancorp/suiteapi/portal/portlets/links/InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

The Portal functionality will be removed in a future release.

[InvalidLocalObjectTypeException](com/appiancorp/suiteapi/common/exceptions/InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a local object type does not exist.

[InvalidLoginException](com/appiancorp/suiteapi/common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown by authenticating service methods detecting that a given username and password do not match.

[InvalidMemberException](com/appiancorp/suiteapi/common/exceptions/InvalidMemberException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given user or group does not exist as a member of a group.

[InvalidMemberPolicyException](com/appiancorp/suiteapi/common/exceptions/InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given member policy id when creating a group is either not supported or is not supported in combination with the given security map id and/or viewing policy id.

[InvalidMessageException](com/appiancorp/suiteapi/common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown by service classes to indicate that a thread message is invalid.

[InvalidMetadataRuleException](com/appiancorp/suiteapi/common/exceptions/InvalidMetadataRuleException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when a metadata rule id references a rule that is not in the database.

[InvalidNameException](com/appiancorp/suiteapi/common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that an invalid or `null` name was specified for an object.

[InvalidNavigationItemException](com/appiancorp/suiteapi/applications/InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")

This exception is thrown whenever an invalid ApplicationNavigationItem element is found.

[InvalidNodeDataTypeReferenceException](com/appiancorp/suiteapi/process/exceptions/InvalidNodeDataTypeReferenceException.html "class in com.appiancorp.suiteapi.process.exceptions")

[InvalidNodeException](com/appiancorp/suiteapi/common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that the user has referenced a node that is not in the database.

[InvalidNodeMultiplicityException](com/appiancorp/suiteapi/common/exceptions/InvalidNodeMultiplicityException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that is thrown if a node is started through IFM, but that node is not allowed to have multiple instance (i.e. is restricted by activity chaining).

[InvalidNodeTypeLogicException](com/appiancorp/suiteapi/common/exceptions/InvalidNodeTypeLogicException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that is thrown if an invalid operation such as reassigning or starting the logic node is performed.

[InvalidNodeTypeRecurringException](com/appiancorp/suiteapi/common/exceptions/InvalidNodeTypeRecurringException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that is thrown if an invalid operation such as starting node which is set to recur.

[InvalidNoteException](com/appiancorp/suiteapi/process/exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the user calls an API method that acts on a note (or noteId) and that note does not exist in the database.

[InvalidNotificationException](com/appiancorp/suiteapi/common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when a notification id is used that does not refer to an existing notification.

[InvalidNotificationTypeException](com/appiancorp/suiteapi/common/exceptions/InvalidNotificationTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when the user references a notification type that is not in the database.

[InvalidObjectTypeIdException](com/appiancorp/suiteapi/process/exceptions/InvalidObjectTypeIdException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the user calls an API method that acts on an object type id that does not correspond to an id block allocated in Service Manager.

[InvalidOperationException](com/appiancorp/suiteapi/common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods when the given method does not support a particular operation - for instance, it may be thrown when attempting to delete a collaboration folder that contains documents.

[InvalidPageException](com/appiancorp/suiteapi/common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when a page id is used that does not refer to an existing page.

[InvalidParentException](com/appiancorp/suiteapi/common/exceptions/InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when the parent group is set for a group that the user does not have permission to set or does not exist.

[InvalidPersonalContentException](com/appiancorp/suiteapi/content/exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by [`ContentService.getPersonalId()`](com/appiancorp/suiteapi/content/ContentService.html#getPersonalId\(\)), [`ContentService.getPersonal()`](com/appiancorp/suiteapi/content/ContentService.html#getPersonal\(\)), [`ContentService.getPersonalAndTeams(ContentFilter)`](com/appiancorp/suiteapi/content/ContentService.html#getPersonalAndTeams\(com.appiancorp.suiteapi.content.ContentFilter\)), {@link com.appiancorp.suiteapi.content.ContentService#getPersonalAndTeamsIds(ContentFilter), and [`if no personal knowledge center exists yet for that user, and the service failed to create it. If this is thrown, a new personal knowledge center may be created for that user, and then the call that threw this exception should be repeated.`](com/appiancorp/suiteapi/content/ContentService.html#getPersonalAndTeamsPaging\(com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

[InvalidPortletException](com/appiancorp/suiteapi/common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when a portlet id is used that does not refer to an existing portlet.

[InvalidPortletTypeDefinitionException](com/appiancorp/suiteapi/portal/InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[InvalidPortletTypeException](com/appiancorp/suiteapi/common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when a portlet type id is used that does not refer to an existing portlet type.

[InvalidPortletTypeStateException](com/appiancorp/suiteapi/portal/InvalidPortletTypeStateException.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[InvalidPortletTypeStateFilterException](com/appiancorp/suiteapi/portal/InvalidPortletTypeStateFilterException.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[InvalidPriorityException](com/appiancorp/suiteapi/common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that the user has referenced a priority that is not in the database.

[InvalidProcessException](com/appiancorp/suiteapi/process/exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the user calls an API method that acts on a process (or process Id), and that process does not exist in the database.

[InvalidProcessModelException](com/appiancorp/suiteapi/common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that the user has referenced a process model that is not in the database.

[InvalidProcessVariableNameException](com/appiancorp/suiteapi/process/exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions")

Exception that is thrown if the user calls a method with a process variable name that does not match any variable in the database.

[InvalidPvTypeReferenceException](com/appiancorp/suiteapi/process/exceptions/InvalidPvTypeReferenceException.html "class in com.appiancorp.suiteapi.process.exceptions")

[InvalidRankNameException](com/appiancorp/suiteapi/common/exceptions/InvalidRankNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that the rank name is invalid.

[InvalidRejectionStateException](com/appiancorp/suiteapi/content/exceptions/InvalidRejectionStateException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by [`ContentService.rejectVersion(Long, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#rejectVersion\(java.lang.Long,java.lang.Integer\))

[InvalidRoleException](com/appiancorp/suiteapi/common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception should be thrown whenever an invalid role is passed in.

[InvalidScheduleTypeException](com/appiancorp/suiteapi/common/exceptions/InvalidScheduleTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when an invalid schedule type is triggered.

[InvalidSecurityMapException](com/appiancorp/suiteapi/common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that an Invalid or null security map Id was specified for new group.

[InvalidStateException](com/appiancorp/suiteapi/common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when a page is not in a state compatible with the action attempted on it.

[InvalidStatusException](com/appiancorp/exceptions/InvalidStatusException.html "class in com.appiancorp.exceptions")

[InvalidStatusException](com/appiancorp/suiteapi/common/exceptions/InvalidStatusException.html "class in com.appiancorp.suiteapi.common.exceptions")

[InvalidSupervisorException](com/appiancorp/suiteapi/common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown when trying to create or update a user with a supervisor that does not exist in the database.

[InvalidTaskException](com/appiancorp/suiteapi/process/exceptions/InvalidTaskException.html "class in com.appiancorp.suiteapi.process.exceptions")

Deprecated.

use InvalidActivityException

[InvalidThreadException](com/appiancorp/suiteapi/common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that is thrown if the user references a thread (now known as Topic) that does not exist in the database.

[InvalidTitleException](com/appiancorp/suiteapi/common/exceptions/InvalidTitleException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that the title (rank) is invalid.

[InvalidTypeException](com/appiancorp/suiteapi/type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

Thrown when a type id is used that does not refer to an existing datatype.

[InvalidTypeMaskException](com/appiancorp/suiteapi/content/exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by service methods if they detect that the type mask provided is invalid.

[InvalidTypeReferenceException](com/appiancorp/suiteapi/type/exceptions/InvalidTypeReferenceException.html "class in com.appiancorp.suiteapi.type.exceptions")

Thrown when a QName is used to reference an non-existing datatype

[InvalidUserException](com/appiancorp/suiteapi/common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a referenced user does not exist.

[InvalidUuidException](com/appiancorp/suiteapi/common/exceptions/InvalidUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that is thrown if a user references a UUID that does not exist in the database.

[InvalidVersionException](com/appiancorp/suiteapi/common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a referenced version of an entity (eg a process model) does not exist.

[InvalidViewingPolicyException](com/appiancorp/suiteapi/common/exceptions/InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given viewing policy id when creating a group is either not supported or is not supported in combination with the given security map id and/or member policy policy id.

[InvalidWSRPProducerException](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

Deprecated.

The Portal functionality will be removed in a future release.

[InvalidWSRPProducerURLException](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

Deprecated.

The Portal functionality will be removed in a future release.

[InvalidXsdException](com/appiancorp/suiteapi/type/config/xsd/exceptions/InvalidXsdException.html "class in com.appiancorp.suiteapi.type.config.xsd.exceptions")

Thrown when an XML schema file being imported is found to be invalid.

[InvalidZoneException](com/appiancorp/suiteapi/common/exceptions/InvalidZoneException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when attempting to place a portlet into a non-existing zone in the page.

[JmsConfiguration](com/appiancorp/suiteapi/messaging/JmsConfiguration.html "class in com.appiancorp.suiteapi.messaging")

Contains the values pulled out of jms.properties.

[JmsConnectionFactory](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging")

Factory for obtaining JMS connections from the JMS connection pool.

[JmsTopic](com/appiancorp/suiteapi/messaging/JmsTopic.html "class in com.appiancorp.suiteapi.messaging")

Represents a JMS topic.

[JSONable](com/appiancorp/suiteapi/common/JSONable.html "interface in com.appiancorp.suiteapi.common")

Represents an object that can be converted to JSON format so that an equivalent JavaScript object can be created on the client machine.

[JSONCacheable](com/appiancorp/suiteapi/common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")

This marker interface indicates that a JSONable class always returns the same hidden attributes and thus its JSON marshaling information may be cached rather than recalculated each time.

[JSPForm](com/appiancorp/suiteapi/process/forms/JSPForm.html "class in com.appiancorp.suiteapi.process.forms")

Specifies the location of the JSP for forms that of type JSPForm

[KeyNotFoundException](com/appiancorp/exceptions/KeyNotFoundException.html "class in com.appiancorp.exceptions")

Thrown when a key is not found in a map.

[KnowledgeCenter](com/appiancorp/suiteapi/collaboration/KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`CommunityKnowledgeCenter`](com/appiancorp/suiteapi/knowledge/CommunityKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge") instead.

[KnowledgeCenter](com/appiancorp/suiteapi/knowledge/KnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")

Represents a knowledge center.

[KnowledgeCenterDataType](com/appiancorp/suiteapi/knowledge/KnowledgeCenterDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge")

Convenience annotation to indicate a value represents an Appian Object.

[KnowledgeCenterService](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

[KnowledgeFolder](com/appiancorp/suiteapi/knowledge/KnowledgeFolder.html "class in com.appiancorp.suiteapi.knowledge")

Represents a folder in the Knowledge application.

[KougarServiceContext](com/appiancorp/services/KougarServiceContext.html "interface in com.appiancorp.services")

For Kougar connections, this should be used instead of ServiceContext.

[Label](com/appiancorp/suiteapi/process/gui/Label.html "class in com.appiancorp.suiteapi.process.gui")

[Lane](com/appiancorp/suiteapi/process/gui/Lane.html "class in com.appiancorp.suiteapi.process.gui")

[LastNCompletedFilter](com/appiancorp/suiteapi/process/analytics2/LastNCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

This analytics filter will return the last N processes/tasks to have been completed.

[LastNDaysFilter](com/appiancorp/suiteapi/process/analytics2/LastNDaysFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Filter for processes/tasks which have been started in the last N days.

[LeaderMessage](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessage.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

Deprecated.

The Leader Message channel and code will be removed in a future release.

[LeaderMessageLink](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessageLink.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

Deprecated.

The Leader Message channel and code will be removed in a future release.

[LeaderMessageService](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.leadermessage")

Deprecated.

The Leader Message channel and code will be removed in a future release.

[Link](com/appiancorp/suiteapi/portal/portlets/links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

The Portal functionality will be removed in a future release.

[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

The Portal functionality will be removed in a future release.

[LinkType](com/appiancorp/suiteapi/portal/portlets/links/LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

The Portal functionality will be removed in a future release.

[ListView](com/appiancorp/type/system/ListView.html "class in com.appiancorp.type.system")<[I](com/appiancorp/type/system/ListView.html "type parameter in ListView"),[T](com/appiancorp/type/system/ListView.html "type parameter in ListView")\>

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[ListViewDataSubset](com/appiancorp/type/system/ListViewDataSubset.html "class in com.appiancorp.type.system")<[I](com/appiancorp/type/system/ListViewDataSubset.html "type parameter in ListViewDataSubset")\>

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[ListViewItem](com/appiancorp/type/system/ListViewItem.html "class in com.appiancorp.type.system")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[ListViewItem.Field](com/appiancorp/type/system/ListViewItem.Field.html "enum class in com.appiancorp.type.system")

An enumeration used as keys for the fields of a [`ListViewItem`](com/appiancorp/type/system/ListViewItem.html "class in com.appiancorp.type.system").

[LocaleDisplayFormat](com/appiancorp/suiteapi/expression/LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression")

[LocaleFormatter](com/appiancorp/suiteapi/common/exceptions/LocaleFormatter.html "class in com.appiancorp.suiteapi.common.exceptions")

ErrorCodeFormatter based upon a Locale.

[LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common")

LocaleString LocaleString represents one String with representations in one or more Locales, or in all Locales (an insensitive String).

[LocaleStringParameterConverter](com/appiancorp/suiteapi/common/LocaleStringParameterConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated. 

[LocaleStringReturnConverter](com/appiancorp/suiteapi/common/LocaleStringReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated. 

[LocaleStringXmlAdapter](com/appiancorp/suiteapi/common/LocaleStringXmlAdapter.html "class in com.appiancorp.suiteapi.common")

[LocalId](com/appiancorp/suiteapi/common/LocalId.html "interface in com.appiancorp.suiteapi.common")

This interface represents the local identifier of an object.

[LocalizedAppianRuntimeException](com/appiancorp/exceptions/LocalizedAppianRuntimeException.html "class in com.appiancorp.exceptions")

This is a wrapper Exception for the purposes of localizing the exception before it is sent to the client

[LocalizedAppianRuntimeException.LocalizedAppianException](com/appiancorp/exceptions/LocalizedAppianRuntimeException.LocalizedAppianException.html "class in com.appiancorp.exceptions")

[LocalizedIdentity](com/appiancorp/suiteapi/common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

[LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common")

This class represents the base class for all first-class Appian Objects.

[LocalObjectTypeMapping](com/appiancorp/suiteapi/common/LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

[LocalStringId](com/appiancorp/suiteapi/common/LocalStringId.html "interface in com.appiancorp.suiteapi.common")

This bean represents the local identifier of an object.

[LockedAccountException](com/appiancorp/suiteapi/common/exceptions/LockedAccountException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when the user cannot login because the account is locked.

[LockException](com/appiancorp/suiteapi/common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that indicates operation faliure due to a locking issue.

[LogicalExpression](com/appiancorp/common/query/LogicalExpression.html "class in com.appiancorp.common.query")<[T](com/appiancorp/common/query/LogicalExpression.html "type parameter in LogicalExpression")\>

This class represents a logical expression combining multiple filters in a query.

[LogicalExpressionValidator](com/appiancorp/common/query/LogicalExpressionValidator.html "interface in com.appiancorp.common.query")

[LogicalOperator](com/appiancorp/common/query/LogicalOperator.html "enum class in com.appiancorp.common.query")

Enumeration containing the valid logical operators which can be used to construct filters.

[LoginData](com/appiancorp/suiteapi/portal/LoginData.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[Mapping](com/appiancorp/suiteapi/messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")

Represents a name-value mapping.

[MappingReturnConverter](com/appiancorp/suiteapi/messaging/MappingReturnConverter.html "class in com.appiancorp.suiteapi.messaging")

Deprecated. 

[MaxAvgMetric](com/appiancorp/suiteapi/content/MaxAvgMetric.html "class in com.appiancorp.suiteapi.content")

A simple POJO for holding a particular metric.

[Medium](com/appiancorp/suiteapi/portal/Medium.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[MenuTree](com/appiancorp/suiteapi/collaboration/MenuTree.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

[Message](com/appiancorp/suiteapi/forums/Message.html "class in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[MessageContainer](com/appiancorp/suiteapi/process/framework/MessageContainer.html "interface in com.appiancorp.suiteapi.process.framework")

Container populated with error messages by the `validate` or `onSave` methods in a smart service class that extends [`AppianSmartService`](com/appiancorp/suiteapi/process/framework/AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework").

[MessageEventProducer](com/appiancorp/suiteapi/process/events/MessageEventProducer.html "class in com.appiancorp.suiteapi.process.events")

Represents a send message event.

[MessageEventTrigger](com/appiancorp/suiteapi/process/events/MessageEventTrigger.html "class in com.appiancorp.suiteapi.process.events")

Represents a receive message event.

[MessageHolder](com/appiancorp/suiteapi/process/framework/MessageHolder.html "interface in com.appiancorp.suiteapi.process.framework")

Interface to hold error messages.

[MessagePropertySchema](com/appiancorp/suiteapi/messaging/MessagePropertySchema.html "class in com.appiancorp.suiteapi.messaging")

Represents a schema for a header property of a JMS message.

[MessagePublisherService](com/appiancorp/suiteapi/messaging/MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging")

Service to publish messages to Appian Process and JMS.

[MessageType](com/appiancorp/suiteapi/messaging/MessageType.html "class in com.appiancorp.suiteapi.messaging")

Represents a schema (standard set of properties used for a particular purpose) for a JMS message.

[MessagingProperties](com/appiancorp/suiteapi/messaging/MessagingProperties.html "class in com.appiancorp.suiteapi.messaging")

Contains the values pulled out of messaging.properties.

[MiniBodyService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

The Portal functionality will be removed in a future release.

[MiniMetadata](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

The Portal functionality will be removed in a future release.

[MiniMetadataService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

The Portal functionality will be removed in a future release.

[MultipleInstance](com/appiancorp/suiteapi/process/MultipleInstance.html "class in com.appiancorp.suiteapi.process")

The class includes the multiple instance execution configuration of the node.

[Name](com/appiancorp/suiteapi/common/Name.html "annotation interface in com.appiancorp.suiteapi.common")

Defines the name of the annotated item.

[NamedTypedValue](com/appiancorp/suiteapi/type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")

This is a simple bean that represents a name, type and value.

[NamedTypedValueReturnConverter](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated. 

[NavigationButton](com/appiancorp/suiteapi/portal/NavigationButton.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[NavigationCounter](com/appiancorp/suiteapi/portal/NavigationCounter.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[NavigationMenu](com/appiancorp/suiteapi/portal/NavigationMenu.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[NavigationService](com/appiancorp/suiteapi/portal/NavigationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[NodeActionProcessModelResult](com/appiancorp/suiteapi/process/NodeActionProcessModelResult.html "class in com.appiancorp.suiteapi.process")

NodeActionProcessModelResult represents the result of a node action, e.g., starting a node as a task, in the context of a process model.

[NodeActionProcessResult](com/appiancorp/suiteapi/process/NodeActionProcessResult.html "class in com.appiancorp.suiteapi.process")

NodeActionProcessResult represents the result of a node action, e.g., starting a node as a task, in the context of a process.

[NodeActionResult](com/appiancorp/suiteapi/process/NodeActionResult.html "class in com.appiancorp.suiteapi.process")

NodeActionResult contains all the results of NodeActions, e.g., starting a node as a task, grouped initially by process model.

[NodePermissions](com/appiancorp/suiteapi/process/security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security")

Permissions for the user on a given `Task`

[NonSystemTypesUnsupportedException](com/appiancorp/suiteapi/type/exceptions/NonSystemTypesUnsupportedException.html "class in com.appiancorp.suiteapi.type.exceptions")

Thrown when a non-system type is attempted to be used in a context where they are not yet supported.

[Note](com/appiancorp/suiteapi/process/Note.html "class in com.appiancorp.suiteapi.process")

Deprecated. 

[NoteMetadata](com/appiancorp/suiteapi/process/NoteMetadata.html "class in com.appiancorp.suiteapi.process")

Deprecated. 

[NotEmptyException](com/appiancorp/suiteapi/common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that indicates an operation failed because a container was not empty, such as an attempt to delete a [`Community`](com/appiancorp/suiteapi/collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration") that still has children.

[NotePermissions](com/appiancorp/suiteapi/process/NotePermissions.html "class in com.appiancorp.suiteapi.process")

Deprecated. 

[NotesContentService](com/appiancorp/suiteapi/process/NotesContentService.html "interface in com.appiancorp.suiteapi.process")

Deprecated. 

[NotesLimitException](com/appiancorp/suiteapi/common/exceptions/NotesLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that is thrown if the user tries to attach a [`Note`](com/appiancorp/suiteapi/process/Note.html "class in com.appiancorp.suiteapi.process") to a process (or task), but the maximum number of allowable notes have already been attached.

[Notification](com/appiancorp/suiteapi/portal/Notification.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Notification functionality will be removed in a future release.

[NotificationRule](com/appiancorp/suiteapi/portal/NotificationRule.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Notification functionality will be removed in a future release.

[NotificationService](com/appiancorp/suiteapi/portal/NotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

The Notification functionality will be removed in a future release.

[NotificationsSummary](com/appiancorp/suiteapi/portal/NotificationsSummary.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Notification functionality will be removed in a future release.

[NotLockOwnerException](com/appiancorp/suiteapi/content/exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by [`ContentService.lock(Long)`](com/appiancorp/suiteapi/content/ContentService.html#lock\(java.lang.Long\)) and [`ContentService.lock(Long[])`](com/appiancorp/suiteapi/content/ContentService.html#lock\(java.lang.Long%5B%5D\)) if the content is locked and the current user is not the owner.

[NotYetCompletedFilter](com/appiancorp/suiteapi/process/analytics2/NotYetCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Deprecated.

this unused filter will be removed in a future release

[NullUserRenameException](com/appiancorp/suiteapi/common/exceptions/NullUserRenameException.html "class in com.appiancorp.suiteapi.common.exceptions")

NullUserRenameException

[ObjectNotFoundException](com/appiancorp/exceptions/ObjectNotFoundException.html "class in com.appiancorp.exceptions")

[ObjectTypeMapping](com/appiancorp/suiteapi/common/ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

Enables mapping between Appian type objects and their corresponding type constants.

[Operator](com/appiancorp/suiteapi/personalization/Operator.html "class in com.appiancorp.suiteapi.personalization")

Holds the operator id and its display name.

[Option](com/appiancorp/suiteapi/common/cli/Option.html "class in com.appiancorp.suiteapi.common.cli")

[Option](com/appiancorp/suiteapi/process/forms/Option.html "class in com.appiancorp.suiteapi.process.forms")

[Option.Arguments](com/appiancorp/suiteapi/common/cli/Option.Arguments.html "enum class in com.appiancorp.suiteapi.common.cli")

Arguments may or may not have parameters.

[Option.Execute](com/appiancorp/suiteapi/common/cli/Option.Execute.html "class in com.appiancorp.suiteapi.common.cli")

Any extender of Execute MUST implement one of these methods.

[Option.TerminateOptionsException](com/appiancorp/suiteapi/common/cli/Option.TerminateOptionsException.html "class in com.appiancorp.suiteapi.common.cli")

[Order](com/appiancorp/suiteapi/process/framework/Order.html "annotation interface in com.appiancorp.suiteapi.process.framework")

This annotation is used for specifying the order in which the inputs and outputs of the Smart Service should appear in the data tab.

[OutOfLinkTypesException](com/appiancorp/suiteapi/portal/portlets/links/OutOfLinkTypesException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

The Portal functionality will be removed in a future release.

[OutsideNStandardDeviationsFilter](com/appiancorp/suiteapi/process/analytics2/OutsideNStandardDeviationsFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

The `OutsideNStandardDeviationsFilter` returns processes/tasks whose completion duration is more than the specified number of standard deviations above or below the average completion duration.

[Page](com/appiancorp/suiteapi/portal/Page.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PageDataType](com/appiancorp/suiteapi/portal/PageDataType.html "annotation interface in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PageInfo](com/appiancorp/suiteapi/portal/PageInfo.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PageNavigationService](com/appiancorp/suiteapi/portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PageRoleMap](com/appiancorp/suiteapi/portal/PageRoleMap.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PageService](com/appiancorp/suiteapi/portal/PageService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PagingInfo](com/appiancorp/suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[PagingInfoConverter](com/appiancorp/suiteapi/common/paging/PagingInfoConverter.html "class in com.appiancorp.suiteapi.common.paging")

Helper functions to convert between PagingInfo Java objects and Appian data types

[PagingInfoReturnConverter](com/appiancorp/common/query/returns/PagingInfoReturnConverter.html "class in com.appiancorp.common.query.returns")

[Palette](com/appiancorp/suiteapi/process/Palette.html "class in com.appiancorp.suiteapi.process")

Holds a collection of nodes that can be dropped onto a canvas in the designer to create a process.

[Palette.Descriptor](com/appiancorp/suiteapi/process/Palette.Descriptor.html "class in com.appiancorp.suiteapi.process")

A name/id object that can be used by the UI

[PaletteCategory](com/appiancorp/suiteapi/process/PaletteCategory.html "class in com.appiancorp.suiteapi.process")

A category that holds palettes and/or other palette categories in a hierarchy.

[PaletteCategory.AllCategories](com/appiancorp/suiteapi/process/PaletteCategory.AllCategories.html "class in com.appiancorp.suiteapi.process")

This bean is used to represent the top level of all categories in the hierarchy component

[PaletteCategory.Descriptor](com/appiancorp/suiteapi/process/PaletteCategory.Descriptor.html "class in com.appiancorp.suiteapi.process")

A descriptive object that can be used by the UI

[PaletteCategoryConstants](com/appiancorp/suiteapi/process/palette/PaletteCategoryConstants.html "class in com.appiancorp.suiteapi.process.palette")

Defines the different palette categories that can be used on a custom smart service

[PaletteConstants](com/appiancorp/suiteapi/process/palette/PaletteConstants.html "class in com.appiancorp.suiteapi.process.palette")

Defines the different palettes that can be used on a custom smart service

[PaletteErrorItem](com/appiancorp/suiteapi/process/PaletteErrorItem.html "class in com.appiancorp.suiteapi.process")

Empty class needed to create a new node type in the palette hierarchy.

[PaletteInfo](com/appiancorp/suiteapi/process/palette/PaletteInfo.html "annotation interface in com.appiancorp.suiteapi.process.palette")

[PaletteItem](com/appiancorp/suiteapi/process/PaletteItem.html "class in com.appiancorp.suiteapi.process")

A node that appears in a palette in the process designer, and can be dropped onto the canvas to add an activity to a process model.

[Parameter](com/appiancorp/suiteapi/expression/annotations/Parameter.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

Defines the behavior of an expression function parameter.

[PartialResult](com/appiancorp/suiteapi/expression/PartialResult.html "class in com.appiancorp.suiteapi.expression")

This class represents the partial evaluation of a function in the Expression Editor, as well as the result of that evaluation.

[PartialResultReturnConverter](com/appiancorp/suiteapi/common/PartialResultReturnConverter.html "class in com.appiancorp.suiteapi.common")

[PartialValue](com/appiancorp/suiteapi/process/history/PartialValue.html "class in com.appiancorp.suiteapi.process.history")

PartialValue A PartialValue contains instructions to modify another value, such as changing particular fields or array elements, done in this way to save storage space.

[PasswordDataType](com/appiancorp/suiteapi/personalization/PasswordDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")

Convenience annotation to indicate a value represents an Appian Object.

[PasswordExpiredException](com/appiancorp/suiteapi/common/exceptions/PasswordExpiredException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when the user's password has expired.

[PasswordStatus](com/appiancorp/suiteapi/security/auth/PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth")

This enumeration specifies the different states that a user's password can have in Appian.

[PendingAccess](com/appiancorp/suiteapi/content/PendingAccess.html "class in com.appiancorp.suiteapi.content")

Holds information on which content is pending access for making it a favorite.

[PendingApprovalException](com/appiancorp/suiteapi/content/exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception may be thrown by service methods detecting that content is pending approval, which makes the attempted action illegal.

[PerformanceAttributes](com/appiancorp/suiteapi/process/analytics2/PerformanceAttributes.html "class in com.appiancorp.suiteapi.process.analytics2")

This object represents the attribute that was executed while generating the report.

[PerformanceMetrics](com/appiancorp/suiteapi/process/analytics2/PerformanceMetrics.html "class in com.appiancorp.suiteapi.process.analytics2")

This object represents the metrics for the generated report.

[PersistedWSRPProducer](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/PersistedWSRPProducer.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

Deprecated.

The Portal functionality will be removed in a future release.

[PersonalizationSearchService](com/appiancorp/suiteapi/personalization/PersonalizationSearchService.html "interface in com.appiancorp.suiteapi.personalization")

Provides access to search methods within Personalization.

[PersonalKnowledgeCenter](com/appiancorp/suiteapi/knowledge/PersonalKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")

Represents a personal knowledge center, which is a knowledge center that only the creator can view.

[PortalGroup](com/appiancorp/suiteapi/portal/PortalGroup.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PortalGroup.Page](com/appiancorp/suiteapi/portal/PortalGroup.Page.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PortalManagement](com/appiancorp/suiteapi/process/palette/PortalManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

The Notification functionality will be removed in a future release.

[PortalRoleMap](com/appiancorp/suiteapi/portal/PortalRoleMap.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PortalSearchService](com/appiancorp/suiteapi/portal/PortalSearchService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PortalState](com/appiancorp/suiteapi/web/portal/PortalState.html "class in com.appiancorp.suiteapi.web.portal")

[PortalStateTag](com/appiancorp/suiteapi/web/portal/PortalStateTag.html "class in com.appiancorp.suiteapi.web.portal")

Implementation for the `portalState` tag, which provides access to a `PortalState` object initialized from the current `HttpServletRequest`.

[Portlet](com/appiancorp/suiteapi/portal/Portlet.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PortletIxHelper](com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")

This is the base class for all portlet import/export (ix) helper classes.

[PortletIxHelper.ExportBinder](com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ExportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet")

Allows mapping local ids to UUIDs.

[PortletIxHelper.ImportBinder](com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ImportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet")

Allows mapping UUIDs to local ids.

[PortletIxHelper.ResourceExporter](com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ResourceExporter.html "class in com.appiancorp.suiteapi.ix.data.portlet")

[PortletIxHelper.ResourceImporter](com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ResourceImporter.html "class in com.appiancorp.suiteapi.ix.data.portlet")

[PortletService](com/appiancorp/suiteapi/portal/PortletService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PortletSession](com/appiancorp/suiteapi/web/portal/PortletSession.html "class in com.appiancorp.suiteapi.web.portal")

Encapsulates HTTP session attributes that are specific to a given portlet.

[PortletSharingException](com/appiancorp/suiteapi/common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown if (1) user tries to create/modify a portlet so that it is shareable and inherits security from the page it is on or, (2) user tries to unshare a portlet that is on other pages (without using a method explicitly designed to do this).

[PortletType](com/appiancorp/suiteapi/portal/PortletType.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release.

[PortletUpdateAction](com/appiancorp/ap2/PortletUpdateAction.html "class in com.appiancorp.ap2")

Deprecated.

The Portal functionality will be removed in a future release.

[Preview](com/appiancorp/suiteapi/common/Preview.html "annotation interface in com.appiancorp.suiteapi.common")

Indicates that the target of this annotation is exposed in the Appian public API as a preview of new functionality that may be subject to change in future releases.

[Priority](com/appiancorp/suiteapi/process/Priority.html "class in com.appiancorp.suiteapi.process")

The precedence of any item in its queue.

[PriorityRegistration](com/appiancorp/suiteapi/process/PriorityRegistration.html "class in com.appiancorp.suiteapi.process")

[PrivilegeException](com/appiancorp/suiteapi/common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception thrown to indicate that an operation failed because the actor had insufficient security permissions.

[ProcessAdministrationService](com/appiancorp/suiteapi/process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process")

ProcessAdministrationService is used to create and modify properties of the overall process application.

[ProcessAnalyticsService](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")

ProcessAnalyticsService provides access to reports on entities and events throughout the process application.

[ProcessAnalyticsServiceUtils](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsServiceUtils.html "class in com.appiancorp.suiteapi.process.analytics2")

This class supplements the `ProcessAnalyticsService` with additional methods.

[ProcessApplicationPermissions](com/appiancorp/suiteapi/process/security/ProcessApplicationPermissions.html "class in com.appiancorp.suiteapi.process.security")

Permissions for the user on the Process Application

[ProcessApplicationRoleMap](com/appiancorp/suiteapi/process/ProcessApplicationRoleMap.html "class in com.appiancorp.suiteapi.process")

Defines the roles of users and groups for a process object.

[ProcessAttachmentsLimitException](com/appiancorp/suiteapi/common/exceptions/ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception that is thrown if the user tries to attach an attachment to a process, but that object already has the maximum number of allowed attachments.

[ProcessController](com/appiancorp/suiteapi/process/test/ProcessController.html "class in com.appiancorp.suiteapi.process.test")

ProcessController provides simplified access for controlling a process.

[ProcessDataType](com/appiancorp/suiteapi/process/ProcessDataType.html "annotation interface in com.appiancorp.suiteapi.process")

Convenience annotation to indicate a value represents an Appian Object.

[ProcessDesignService](com/appiancorp/suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

The `ProcessDesignService` is used for creating and modifying [`ProcessModel`](com/appiancorp/suiteapi/process/ProcessModel.html "class in com.appiancorp.suiteapi.process") which are organized by storing them in [`ProcessModelFolder`](com/appiancorp/suiteapi/process/ProcessModelFolder.html "class in com.appiancorp.suiteapi.process") objects.

[ProcessDetails](com/appiancorp/suiteapi/process/ProcessDetails.html "class in com.appiancorp.suiteapi.process")

Contains detailed information about a process.

[ProcessDiagram](com/appiancorp/suiteapi/process/ProcessDiagram.html "class in com.appiancorp.suiteapi.process")

A runtime representation of a [`ProcessModel`](com/appiancorp/suiteapi/process/ProcessModel.html "class in com.appiancorp.suiteapi.process").

[ProcessException](com/appiancorp/suiteapi/process/ProcessException.html "class in com.appiancorp.suiteapi.process")

Contains metadata about an exception (error) that occurred while a process was executing.

[ProcessExceptionType](com/appiancorp/suiteapi/process/ProcessExceptionType.html "class in com.appiancorp.suiteapi.process")

Metadata about a class of process exceptions (errors that occur while a process is executing).

[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Interface to the business logic for the process runtime.

[ProcessFacade](com/appiancorp/suiteapi/process/ProcessFacade.html "class in com.appiancorp.suiteapi.process")

Utility methods dealing with processes

[ProcessManagement](com/appiancorp/suiteapi/process/palette/ProcessManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[ProcessModel](com/appiancorp/suiteapi/process/ProcessModel.html "class in com.appiancorp.suiteapi.process")

The template from which processes are created.

[ProcessModel.Descriptor](com/appiancorp/suiteapi/process/ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")

Inner class that holds the name, id, and description of a process model.

[ProcessModelDataType](com/appiancorp/suiteapi/process/ProcessModelDataType.html "annotation interface in com.appiancorp.suiteapi.process")

Convenience annotation to indicate a value represents an Appian Object.

[ProcessModelDetails](com/appiancorp/suiteapi/process/ProcessModelDetails.html "class in com.appiancorp.suiteapi.process")

Holds detailed metadata about a [`ProcessModel`](com/appiancorp/suiteapi/process/ProcessModel.html "class in com.appiancorp.suiteapi.process").

[ProcessModelFacade](com/appiancorp/suiteapi/process/ProcessModelFacade.html "class in com.appiancorp.suiteapi.process")

Manages the loading and storing and other utility functions of process models.

[ProcessModelFolder](com/appiancorp/suiteapi/process/ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")

Bean that represents a folder into which [`ProcessModel`](com/appiancorp/suiteapi/process/ProcessModel.html "class in com.appiancorp.suiteapi.process")s can be stored.

[ProcessModelFolderPermissions](com/appiancorp/suiteapi/process/security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security")

Permissions for the user to folders where process models are stored

[ProcessModelLogging](com/appiancorp/suiteapi/process/ProcessModelLogging.html "class in com.appiancorp.suiteapi.process")

[ProcessModelNotificationSettings](com/appiancorp/suiteapi/process/ProcessModelNotificationSettings.html "class in com.appiancorp.suiteapi.process")

[ProcessModelPermissions](com/appiancorp/suiteapi/process/security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security")

Permissions for the user on the Process Model

[ProcessModelProperties](com/appiancorp/suiteapi/process/ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")

Holds the properties of a process model.

[ProcessModelSummary](com/appiancorp/suiteapi/process/ProcessModelSummary.html "class in com.appiancorp.suiteapi.process")

Holds summary information about a process model, such as who created it, when, how many process instances are running, and how many have completed.

[ProcessModelWebService](com/appiancorp/suiteapi/process/webservices/ProcessModelWebService.html "class in com.appiancorp.suiteapi.process.webservices")

Bean for process model web service

[ProcessModelWithErrors](com/appiancorp/suiteapi/process/ProcessModelWithErrors.html "class in com.appiancorp.suiteapi.process")

Bean containing a ProcessModel and the errors that were found when trying to publish it.

[ProcessNode](com/appiancorp/suiteapi/process/ProcessNode.html "class in com.appiancorp.suiteapi.process")

A node in a process model.

[ProcessPermissions](com/appiancorp/suiteapi/process/security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security")

This class encapsulates the permissions of a user for a particular process

[ProcessProperties](com/appiancorp/suiteapi/process/ProcessProperties.html "class in com.appiancorp.suiteapi.process")

Holds the properties of a process.

[ProcessReport](com/appiancorp/suiteapi/process/analytics2/ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")

Bean detailing an analytics report specification.

[ProcessRoleMap](com/appiancorp/suiteapi/process/ProcessRoleMap.html "class in com.appiancorp.suiteapi.process")

Defines the roles of users and groups for a process object.

[ProcessStartConfig](com/appiancorp/suiteapi/process/ProcessStartConfig.html "class in com.appiancorp.suiteapi.process")

Specifies options and configurations that control behavior when starting a process.

[ProcessStartingInfo](com/appiancorp/suiteapi/process/webservices/ProcessStartingInfo.html "class in com.appiancorp.suiteapi.process.webservices")

Bean for process starting info

[ProcessSummary](com/appiancorp/suiteapi/process/ProcessSummary.html "class in com.appiancorp.suiteapi.process")

Holds high-level, summary metadata about a process.

[ProcessUpgrade](com/appiancorp/suiteapi/process/upgrade/ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")

The outcome of an attempted upgrade of a process.

[ProcessUpgrade.Outcome](com/appiancorp/suiteapi/process/upgrade/ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")

Represents the outcome of an attempted upgrade of a process.

[ProcessVariable](com/appiancorp/suiteapi/process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")

A variable that is global to a process.

[ProcessVariableInstance](com/appiancorp/suiteapi/process/ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")

Represents the runtime instance of process variable for a process.

[Projection](com/appiancorp/common/query/Projection.html "interface in com.appiancorp.common.query")<[T](com/appiancorp/common/query/Projection.html "type parameter in Projection") extends [Column](com/appiancorp/common/query/Column.html "class in com.appiancorp.common.query")\>

Marker interface for [`Selection`](com/appiancorp/common/query/Selection.html "class in com.appiancorp.common.query") and [`Aggregation`](com/appiancorp/common/query/Aggregation.html "class in com.appiancorp.common.query").

[Provider](com/appiancorp/suiteapi/common/Provider.html "interface in com.appiancorp.suiteapi.common")<[T](com/appiancorp/suiteapi/common/Provider.html "type parameter in Provider")\>

An object capable of providing instances of type T.

[ProvisionException](com/appiancorp/suiteapi/common/ProvisionException.html "class in com.appiancorp.suiteapi.common")

[PublicRoleMap](com/appiancorp/suiteapi/common/PublicRoleMap.html "class in com.appiancorp.suiteapi.common")

Defines the roles of users and groups for an object.

[PvInstancesReturnConverter](com/appiancorp/suiteapi/process/PvInstancesReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated. 

[PvReturnConverter](com/appiancorp/suiteapi/process/PvReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated. 

[Query](com/appiancorp/common/query/Query.html "class in com.appiancorp.common.query")<[T](com/appiancorp/common/query/Query.html "type parameter in Query")\>

An object-oriented representation of a query.

[Query.Builder](com/appiancorp/common/query/Query.Builder.html "class in com.appiancorp.common.query")<[T](com/appiancorp/common/query/Query.Builder.html "type parameter in Query.Builder")\>

A class for incrementally build a Query.

[QueryBuilder](com/appiancorp/common/query/QueryBuilder.html "interface in com.appiancorp.common.query")<[T](com/appiancorp/common/query/QueryBuilder.html "type parameter in QueryBuilder")\>

Interface for incrementally build a Query.

[QueryBuilder.Aggregating](com/appiancorp/common/query/QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](com/appiancorp/common/query/QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")\>

This interface is available as a preview of functionality that will be added to the supported public API in a future release.

[QueryBuilder.Filtering](com/appiancorp/common/query/QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](com/appiancorp/common/query/QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")\>

This interface is available as a preview of functionality that will be added to the supported public API in a future release.

[QueryBuilder.FilteringCriteria](com/appiancorp/common/query/QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](com/appiancorp/common/query/QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")\>

This interface is available as a preview of functionality that will be added to the supported public API in a future release.

[QueryBuilder.Grouping](com/appiancorp/common/query/QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](com/appiancorp/common/query/QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")\>

This interface is available as a preview of functionality that will be added to the supported public API in a future release.

[QueryBuilder.Paging](com/appiancorp/common/query/QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](com/appiancorp/common/query/QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")\>

This interface is available as a preview of functionality that will be added to the supported public API in a future release.

[QueryBuilder.Selecting](com/appiancorp/common/query/QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](com/appiancorp/common/query/QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")\>

This interface is available as a preview of functionality that will be added to the supported public API in a future release.

[QueryBuilder.Sorting](com/appiancorp/common/query/QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](com/appiancorp/common/query/QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")\>

This interface is available as a preview of functionality that will be added to the supported public API in a future release.

[QueryBuilderTools](com/appiancorp/common/query/QueryBuilderTools.html "interface in com.appiancorp.common.query")

[QueryBuilderTools.Aggregator](com/appiancorp/common/query/QueryBuilderTools.Aggregator.html "class in com.appiancorp.common.query")

This class encapsulates all the available Aggregation Functions in a more object oriented way.

[QueryBuilderTools.Order](com/appiancorp/common/query/QueryBuilderTools.Order.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[QueryBuilderTools.SearchOp](com/appiancorp/common/query/QueryBuilderTools.SearchOp.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[QueryBuilderTools.Selector](com/appiancorp/common/query/QueryBuilderTools.Selector.html "class in com.appiancorp.common.query")

This is how you instantiate columns to configure a query for selection, grouping or aggregation.

[QuickFilter](com/appiancorp/suiteapi/process/analytics2/QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

A QuickFilter is a set of QuickFilterItems.

[QuickFilterItem](com/appiancorp/suiteapi/process/analytics2/QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")

A QuickFilterItem is a set of Filters.

[ReadOnlySortInfo](com/appiancorp/suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")

READ ONLY: Only methods that access read-only data.

[Recurrence](com/appiancorp/suiteapi/process/Recurrence.html "class in com.appiancorp.suiteapi.process")

Used to specify properties of a node that is set to re-execute after every configurable interval of time.

[Recurrence.End](com/appiancorp/suiteapi/process/Recurrence.End.html "class in com.appiancorp.suiteapi.process")

Class defines condition under which Recurrence stops for a node in process.

[RecurrenceInstance](com/appiancorp/suiteapi/process/RecurrenceInstance.html "class in com.appiancorp.suiteapi.process")

This class is used to specify properties for a particular node instance that is set to re-execute after every configurable interval of time.

[RecurringInterval](com/appiancorp/suiteapi/process/RecurringInterval.html "class in com.appiancorp.suiteapi.process")

Defines a time interval for an event that repeats after a fixed delay.

[RecurringInterval.Daily](com/appiancorp/suiteapi/process/RecurringInterval.Daily.html "class in com.appiancorp.suiteapi.process")

Class defines Daily recurring interval

[RecurringInterval.Monthly](com/appiancorp/suiteapi/process/RecurringInterval.Monthly.html "class in com.appiancorp.suiteapi.process")

Class defines time interval for Monthly events.

[RecurringInterval.Weekly](com/appiancorp/suiteapi/process/RecurringInterval.Weekly.html "class in com.appiancorp.suiteapi.process")

Class that defines time interval for events that occur on a Weekly basis.

[RecurringInterval.Yearly](com/appiancorp/suiteapi/process/RecurringInterval.Yearly.html "class in com.appiancorp.suiteapi.process")

Class defines time interval for Yearly events.

[RecursiveRelationshipException](com/appiancorp/suiteapi/common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when a relationship is trying to be created that will result in a recursive loop.

[RegexDelegatingUserDetailsService](com/appiancorp/suiteapi/common/spring/security/RegexDelegatingUserDetailsService.html "class in com.appiancorp.suiteapi.common.spring.security")

This class decorates another `UserDetailsService` implementation, allowing for a regular expression to be used to extract the username from the value passed into [`RegexDelegatingUserDetailsService.loadUserByUsername(String)`](com/appiancorp/suiteapi/common/spring/security/RegexDelegatingUserDetailsService.html#loadUserByUsername\(java.lang.String\)).

[RemoteId](com/appiancorp/suiteapi/common/RemoteId.html "interface in com.appiancorp.suiteapi.common")

This bean represents the remote identifier of an object.

[RemoteStringId](com/appiancorp/suiteapi/common/RemoteStringId.html "interface in com.appiancorp.suiteapi.common")

This bean represents the remote identifier of an object.

[RenameNotAllowedException](com/appiancorp/suiteapi/content/exceptions/RenameNotAllowedException.html "class in com.appiancorp.suiteapi.content.exceptions")

This exception should be thrown when renaming of a `Content` (like `Rule` or `Constant`) is not allowed in certain scenarios.

[ReportComplexityException](com/appiancorp/suiteapi/process/exceptions/ReportComplexityException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the expression is too complex.

[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Bean defining the type of data contained in an analytics report.

[ReportDisplay](com/appiancorp/suiteapi/process/analytics2/ReportDisplay.html "class in com.appiancorp.suiteapi.process.analytics2")

Bean detailing how an analytics report is to be displayed.

[ReportingService](com/appiancorp/suiteapi/collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration")

Defines related methods for usage reporting within collaboration.

[ReportResultPage](com/appiancorp/suiteapi/process/analytics2/ReportResultPage.html "class in com.appiancorp.suiteapi.process.analytics2")

Contains the results of an Analytics query.

[ReportSizeException](com/appiancorp/exceptions/ReportSizeException.html "class in com.appiancorp.exceptions")

[ReportSizeException](com/appiancorp/suiteapi/process/exceptions/ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the report has too many cells.

[ReportValidator](com/appiancorp/suiteapi/process/analytics2/ReportValidator.html "class in com.appiancorp.suiteapi.process.analytics2")

Validator for `ProcessReport`s.

[Required](com/appiancorp/suiteapi/process/framework/Required.html "enum class in com.appiancorp.suiteapi.process.framework")

Declares whether the input parameter is required.

[ResolvedEmailAddresses](com/appiancorp/suiteapi/personalization/ResolvedEmailAddresses.html "class in com.appiancorp.suiteapi.personalization")

[ResourceDisabledException](com/appiancorp/services/exceptions/ResourceDisabledException.html "class in com.appiancorp.services.exceptions")

This exception is thrown when a user attempts to access a resource (for example, a service API) which is disabled (ie, turned off).

[ResourceRestrictedException](com/appiancorp/services/exceptions/ResourceRestrictedException.html "class in com.appiancorp.services.exceptions")

This exception is thrown when a user attempts to access a resource (for example, a service API) which is restricted, and the user does not have sufficient privileges for access (usually determined by group membership).

[Result](com/appiancorp/suiteapi/common/Result.html "class in com.appiancorp.suiteapi.common")

Base class for storing the results returned by a service call.

[ResultList](com/appiancorp/suiteapi/common/ResultList.html "class in com.appiancorp.suiteapi.common")

Class for storing the results returned by a service call.

[ResultPage](com/appiancorp/suiteapi/common/ResultPage.html "class in com.appiancorp.suiteapi.common")

Class for storing the results returned by a paging service call.

[ResultPageReturnConverter](com/appiancorp/suiteapi/common/ResultPageReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated. 

[ResultPageSizeException](com/appiancorp/exceptions/ResultPageSizeException.html "class in com.appiancorp.exceptions")

[ResultPageSizeException](com/appiancorp/suiteapi/process/exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

[Retryable](com/appiancorp/suiteapi/common/exceptions/Retryable.html "interface in com.appiancorp.suiteapi.common.exceptions")

A marker interface indicating that an Exception is transient.

[RetryableActivityExecutionException](com/appiancorp/suiteapi/process/framework/RetryableActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")

An [`ActivityExecutionException`](com/appiancorp/suiteapi/process/framework/ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework") that is transient.

[RetryableAppianException](com/appiancorp/suiteapi/common/exceptions/RetryableAppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

A subclass of AppianException that indicates that the exception is transient and the operation can be safely retried.

[RetryableAppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/RetryableAppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

A subclass of AppianRuntimeException that indicates that the exception is transient and the operation can be safely retried.

[RetryableSmartServiceException](com/appiancorp/suiteapi/process/exceptions/RetryableSmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

A subclass of SmartServiceException that indicates that the exception is transient and the smart service can be safely retried.

[RetryableSmartServiceException.Builder](com/appiancorp/suiteapi/process/exceptions/RetryableSmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")

The Builder inner class is used to create an instance of the SmartServiceException.

[Role](com/appiancorp/suiteapi/common/Role.html "class in com.appiancorp.suiteapi.common")

Holds the data for an individual role within a role map.

[Role.PermissionMergeStrategy](com/appiancorp/suiteapi/common/Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common")

Takes a set of existing permissions and a set of new permissions and decides how to combine them into a result set.

[RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common")

A mapping of roles and the users and groups that fill those roles.

[RoleMapChanges](com/appiancorp/suiteapi/content/RoleMapChanges.html "class in com.appiancorp.suiteapi.content")

This class returns information about which users/groups were approved/rejected when modifying the roleMap for a content item.

[RoleSet](com/appiancorp/suiteapi/common/RoleSet.html "class in com.appiancorp.suiteapi.common")

[Rule](com/appiancorp/suiteapi/process/events/Rule.html "class in com.appiancorp.suiteapi.process.events")

Represents a single condition in the set of conditions on an event trigger.

[Rule](com/appiancorp/suiteapi/rules/Rule.html "class in com.appiancorp.suiteapi.rules")

Represents a rule or a constant in rules (constants are actually a special case of rules).

[RuleDataType](com/appiancorp/suiteapi/rules/RuleDataType.html "annotation interface in com.appiancorp.suiteapi.rules")

Convenience annotation to indicate a value represents an Appian Object.

[RuleEventTrigger](com/appiancorp/suiteapi/process/events/RuleEventTrigger.html "class in com.appiancorp.suiteapi.process.events")

Represents the trigger for a rule event.

[RuleManagement](com/appiancorp/suiteapi/process/palette/RuleManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[RuleSet](com/appiancorp/suiteapi/personalization/RuleSet.html "class in com.appiancorp.suiteapi.personalization")

Title: RuleForm

[RulesFolder](com/appiancorp/suiteapi/rules/RulesFolder.html "class in com.appiancorp.suiteapi.rules")

Represents a folder in the Rules application.

[RunningFilter](com/appiancorp/suiteapi/process/analytics2/RunningFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Filter for running processes and tasks.

[RuntimeProcessNode](com/appiancorp/suiteapi/process/RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")

Information about a node in an executed process.

[SafeActivityReturnVariable](com/appiancorp/suiteapi/process/framework/SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")

Wrapper for `ActivityReturnVariable` that enforces non-null value, and contains only getters so that users cannot change the values.

[Schedule](com/appiancorp/suiteapi/process/Schedule.html "class in com.appiancorp.suiteapi.process")

A Schedule is used to define a time for an event based either on an absolute Timestamp or relative to some other event.

[ScheduleInstance](com/appiancorp/suiteapi/process/ScheduleInstance.html "class in com.appiancorp.suiteapi.process")

A Schedule is used to define a time for an event based either on an absolute Timestamp or relative to some other event.

[ScheduleSummary](com/appiancorp/suiteapi/process/ScheduleSummary.html "class in com.appiancorp.suiteapi.process")

Holds a high-level summary of the schedule which could be on a node or a pending node object if there is recurrence and spawning for that node

[Search](com/appiancorp/common/query/Search.html "class in com.appiancorp.common.query")

This class holds a full-text search query, such as "2004 TPS report deadline".

[SearchAndCriteria](com/appiancorp/common/query/SearchAndCriteria.html "class in com.appiancorp.common.query")

[SearchCriteriaProvider](com/appiancorp/common/query/SearchCriteriaProvider.html "class in com.appiancorp.common.query")

[SearchCriteriaProvider.SearchCriteriaFactory](com/appiancorp/common/query/SearchCriteriaProvider.SearchCriteriaFactory.html "interface in com.appiancorp.common.query")

[SearchCriteriaProvider.SearchFields](com/appiancorp/common/query/SearchCriteriaProvider.SearchFields.html "class in com.appiancorp.common.query")

[SecureCredentialsStore](com/appiancorp/suiteapi/security/external/SecureCredentialsStore.html "interface in com.appiancorp.suiteapi.security.external")

[Security](com/appiancorp/suiteapi/common/Security.html "class in com.appiancorp.suiteapi.common")

This bean is used to represent the security on objects in the Application, and what securities that the object can inherit from 'parent' entities, if there are any.

[SecurityEntry](com/appiancorp/suiteapi/common/SecurityEntry.html "class in com.appiancorp.suiteapi.common")

Base class for entities to which security can be applied.

[Selection](com/appiancorp/common/query/Selection.html "class in com.appiancorp.common.query")

Holds the List of Columns to project the Query by.

[SelfRenameException](com/appiancorp/suiteapi/common/exceptions/SelfRenameException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception will be thrown if a user attempts to change their own username by any means.

[Service](com/appiancorp/services/Service.html "interface in com.appiancorp.services")

This is a marker interface for a Kougar service.

[ServiceContext](com/appiancorp/services/ServiceContext.html "interface in com.appiancorp.services")

The context used to borrow services from the service provider.

[ServiceContextCLIConfig](com/appiancorp/suiteapi/common/cli/ServiceContextCLIConfig.html "class in com.appiancorp.suiteapi.common.cli")

[ServiceContextFactory](com/appiancorp/services/ServiceContextFactory.html "class in com.appiancorp.services")

Provides utility methods for creating new service contexts.

[ServiceException](com/appiancorp/services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

This is an unchecked exception which occurs whenever there are unforeseen problems in execution of a request served through Appian Standard Library (ASL).

[ServiceFactory](com/appiancorp/suiteapi/common/ServiceFactory.html "class in com.appiancorp.suiteapi.common")

Deprecated. 

[ServiceLocator](com/appiancorp/suiteapi/common/ServiceLocator.html "class in com.appiancorp.suiteapi.common")

Deprecated.

Use services injected by the Appian plug-in framework instead.

[ServiceLocatorException](com/appiancorp/suiteapi/common/exceptions/ServiceLocatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception meant to represent an error caught by an `ApplicationAssociatedObjectTranslator` while using an underlying service.

[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

[ServiceProvider](com/appiancorp/suiteapi/common/ServiceProvider.html "class in com.appiancorp.suiteapi.common")<[T](com/appiancorp/suiteapi/common/ServiceProvider.html "type parameter in ServiceProvider")\>

Provider implementation which will return a service from the given ServiceContext.

[SimpleColumnFilter](com/appiancorp/suiteapi/process/analytics2/SimpleColumnFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Simple column filter which allows you to filter on any column in the report.

[SimpleColumnFilter.ComparisonType](com/appiancorp/suiteapi/process/analytics2/SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2")

[SimpleEngineCredentials](com/appiancorp/suiteapi/common/SimpleEngineCredentials.html "class in com.appiancorp.suiteapi.common")

[SimpleValueMap](com/appiancorp/suiteapi/common/SimpleValueMap.html "class in com.appiancorp.suiteapi.common")

[SiteCalendarSettings](com/appiancorp/suiteapi/portal/SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal")

Bean to hold the application calendar settings.

[SiteLocaleSettings](com/appiancorp/suiteapi/portal/SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal")

Bean to hold the application locale settings.

[SiteTimeZoneSettings](com/appiancorp/suiteapi/portal/SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal")

Bean to hold the application timezone settings.

[SizingColumn](com/appiancorp/suiteapi/process/SizingColumn.html "class in com.appiancorp.suiteapi.process")

[SizingReport](com/appiancorp/suiteapi/process/SizingReport.html "class in com.appiancorp.suiteapi.process")

[SmartServiceContext](com/appiancorp/suiteapi/process/framework/SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")

Context available to Smart Service at runtime.

[SmartServiceException](com/appiancorp/suiteapi/process/exceptions/SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

An exception thrown by a smart service in the course of its execution.

[SmartServiceException.Builder](com/appiancorp/suiteapi/process/exceptions/SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")

The Builder inner class is used to create an instance of the SmartServiceException.

[Social](com/appiancorp/suiteapi/process/palette/Social.html "annotation interface in com.appiancorp.suiteapi.process.palette")

Deprecated.

This annotation may be removed from the public API in a future release.

[SortInfo](com/appiancorp/suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[SortInfoReturnConverter](com/appiancorp/common/query/returns/SortInfoReturnConverter.html "class in com.appiancorp.common.query.returns")

[Spawning](com/appiancorp/suiteapi/process/Spawning.html "class in com.appiancorp.suiteapi.process")

Nodes that are set to Spawn create multiple instances of themselves, when the process reaches that node.

[Statistics](com/appiancorp/suiteapi/collaboration/Statistics.html "class in com.appiancorp.suiteapi.collaboration")

This class encapsulates the general usage statistics and patterns of the collaboration application.

[StatisticsService](com/appiancorp/suiteapi/collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration")

This interface provides services for other applications using methods related to collaboration download statistics

[StorageLimitException](com/appiancorp/suiteapi/common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that the a particular entity cannot be stored because a particular limit has been reached on the server.

[StrutsMessageHolder](com/appiancorp/suiteapi/process/framework/StrutsMessageHolder.html "class in com.appiancorp.suiteapi.process.framework")

[Suggestion](com/appiancorp/suiteapi/common/Suggestion.html "class in com.appiancorp.suiteapi.common")

[SuggestParam](com/appiancorp/suiteapi/common/SuggestParam.html "class in com.appiancorp.suiteapi.common")

[SuggestParam.SuggestFilter](com/appiancorp/suiteapi/common/SuggestParam.SuggestFilter.html "class in com.appiancorp.suiteapi.common")

[SupportedEvaluationEnvironmentTypes](com/appiancorp/suiteapi/expression/annotations/SupportedEvaluationEnvironmentTypes.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

Defines the environments in which this function is supported
By default, all functions created with the @Function annotation will be marked as supported in the low code platform environment.

[SynchronizationService](com/appiancorp/suiteapi/common/SynchronizationService.html "interface in com.appiancorp.suiteapi.common")

Deprecated.

This interface and all of the methods defined within are obsolete and will be removed in a future release.

[SystemAttributeException](com/appiancorp/suiteapi/common/exceptions/SystemAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when trying to delete an Attribute of a Group Type that is core to the Appian Installation.

[SystemCalendar](com/appiancorp/suiteapi/process/calendar/SystemCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

Deprecated.

use [`WorkingCalendar`](com/appiancorp/suiteapi/process/calendar/WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

[SystemGroupException](com/appiancorp/suiteapi/common/exceptions/SystemGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when trying to delete a group that is core to the Personalization service.

[SystemGroupTypeException](com/appiancorp/suiteapi/common/exceptions/SystemGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when trying to delete a group type that is core to the Appian Installation.

[TaskController](com/appiancorp/suiteapi/process/test/TaskController.html "class in com.appiancorp.suiteapi.process.test")

TaskController enables testing processes with attended tasks via program automation.

[TaskDataType](com/appiancorp/suiteapi/process/TaskDataType.html "annotation interface in com.appiancorp.suiteapi.process")

Convenience annotation to indicate a value represents an Appian Object.

[TaskDesignProperties](com/appiancorp/suiteapi/process/TaskDesignProperties.html "class in com.appiancorp.suiteapi.process")

Holds a task's high level metadata during design time (i.e. in the process modeler, not during execution.)

[TaskDetails](com/appiancorp/suiteapi/process/TaskDetails.html "class in com.appiancorp.suiteapi.process")

More details about a task (attended activity) than are provided in the TaskSummary, including the notes and attachments on the task.

[TaskNavigationException](com/appiancorp/suiteapi/process/exceptions/TaskNavigationException.html "class in com.appiancorp.suiteapi.process.exceptions")

[TaskProperties](com/appiancorp/suiteapi/process/TaskProperties.html "class in com.appiancorp.suiteapi.process")

Holds the properties of a task.

[TaskSummary](com/appiancorp/suiteapi/process/TaskSummary.html "class in com.appiancorp.suiteapi.process")

Holds a high-level summary for a task.

[TaskUrlService](com/appiancorp/suiteapi/process/TaskUrlService.html "class in com.appiancorp.suiteapi.process")

[TemporaryCredentialsExpiredException](com/appiancorp/suiteapi/common/spring/security/TemporaryCredentialsExpiredException.html "class in com.appiancorp.suiteapi.common.spring.security")

Thrown if an authentication request is rejected because the account's **temporary** credentials have expired.

[TemporaryPasswordException](com/appiancorp/suiteapi/common/spring/security/TemporaryPasswordException.html "class in com.appiancorp.suiteapi.common.spring.security")

Thrown if an authentication request is rejected because it's using an account's **temporary** credentials but cannot be redirected to the interface that allows to enter a new password.

[TemporaryPasswordExpiredException](com/appiancorp/suiteapi/common/exceptions/TemporaryPasswordExpiredException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when the user's **temporary** password has expired.

[TerminateAuthenticationChainException](com/appiancorp/suiteapi/security/auth/TerminateAuthenticationChainException.html "class in com.appiancorp.suiteapi.security.auth")

This exception could be thrown by an `AuthenticationProvider` to stop authenticating against other available `AuthenticationProvider`s and immediately fail authentication.

[TerminateEventProducer](com/appiancorp/suiteapi/process/events/TerminateEventProducer.html "class in com.appiancorp.suiteapi.process.events")

Represents a terminate event producer.

[ThreadedMessage](com/appiancorp/suiteapi/forums/ThreadedMessage.html "class in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[ThreadRoleMap](com/appiancorp/suiteapi/forums/ThreadRoleMap.html "class in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[ThreadSummary](com/appiancorp/suiteapi/forums/ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[Threshold](com/appiancorp/suiteapi/process/analytics2/Threshold.html "class in com.appiancorp.suiteapi.process.analytics2")

Bean detailing analytics threshold object.

[TimerEventTrigger](com/appiancorp/suiteapi/process/events/TimerEventTrigger.html "class in com.appiancorp.suiteapi.process.events")

Represents the trigger for a timer event.

[ToggledOffException](com/appiancorp/exceptions/ToggledOffException.html "class in com.appiancorp.exceptions")

This is a marker exception that is intended to be thrown from code that requires a feature toggle to be on.

[TooManyDocumentsException](com/appiancorp/suiteapi/common/exceptions/TooManyDocumentsException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when the number of documents exceeds a specified number

[Total](com/appiancorp/suiteapi/content/Total.html "class in com.appiancorp.suiteapi.content")

This class stores a count and is extended by classes used in the ContentStatisticsService.

[TotalByDayOfWeek](com/appiancorp/suiteapi/content/TotalByDayOfWeek.html "class in com.appiancorp.suiteapi.content")

This bean tracks the count for a day of the week.

[TotalByExtension](com/appiancorp/suiteapi/content/TotalByExtension.html "class in com.appiancorp.suiteapi.content")

This bean tracks the count for an extension.

[TotalByHour](com/appiancorp/suiteapi/content/TotalByHour.html "class in com.appiancorp.suiteapi.content")

This bean tracks the count for a an hour of the day.

[TotalByType](com/appiancorp/suiteapi/content/TotalByType.html "class in com.appiancorp.suiteapi.content")

This bean tracks the count for a Content type.

[Tree](com/appiancorp/suiteapi/common/Tree.html "class in com.appiancorp.suiteapi.common")

Collection of objects such that each object has data and potentially references to other `Tree`s, subject to the following restrictions: Each tree has exactly one root.

[TreeNode](com/appiancorp/suiteapi/common/TreeNode.html "class in com.appiancorp.suiteapi.common")

Represents a node in tree without relationships to other nodes.

[TreePivot](com/appiancorp/suiteapi/common/TreePivot.html "class in com.appiancorp.suiteapi.common")

Represents a view of a tree from the position of a node in the tree.

[TvReturnConverter](com/appiancorp/suiteapi/process/TvReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated. 

[Type](com/appiancorp/suiteapi/type/Type.html "annotation interface in com.appiancorp.suiteapi.type")

The Type annotation enables one to indicate that the annotated method or parameter is dealing with the specified type.

[TypeConverter](com/appiancorp/suiteapi/common/TypeConverter.html "class in com.appiancorp.suiteapi.common")

Base class for conversions between frontend and backend data representation.

[TypeConverterResolver](com/appiancorp/suiteapi/common/TypeConverterResolver.html "class in com.appiancorp.suiteapi.common")

This class defines mappings between datatypes and a set of [`TypeConverter`](com/appiancorp/suiteapi/common/TypeConverter.html "class in com.appiancorp.suiteapi.common")'s classes used for conversions between frontend and backend data representation.

[TypeDescriptor](com/appiancorp/suiteapi/process/TypeDescriptor.html "class in com.appiancorp.suiteapi.process")

Deprecated.

Use the TypeService and related APIs instead.

[TypedValue](com/appiancorp/suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")

This is a simple bean that represents a type and a value.

[TypedValueCriteriaValidatorProvider](com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.html "class in com.appiancorp.common.query")

[TypedValueCriteriaValidatorProvider.FilterContainmentValidation](com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.FilterContainmentValidation.html "class in com.appiancorp.common.query")

[TypedValueCriteriaValidatorProvider.FilterEqualityValidation](com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.FilterEqualityValidation.html "class in com.appiancorp.common.query")

[TypedValueCriteriaValidatorProvider.FilterInequalityValidation](com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.FilterInequalityValidation.html "class in com.appiancorp.common.query")

[TypedValueCriteriaValidatorProvider.FilterNullnessValidation](com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.FilterNullnessValidation.html "class in com.appiancorp.common.query")

[TypedValueCriteriaValidatorProvider.FilterRangeValidation](com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.FilterRangeValidation.html "class in com.appiancorp.common.query")

[TypedValueCriteriaValidatorProvider.FilterWildcardValidation](com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.FilterWildcardValidation.html "class in com.appiancorp.common.query")

[TypedValueCriteriaValidatorProvider.TypedValueLogicalExpressionValidator](com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.TypedValueLogicalExpressionValidator.html "class in com.appiancorp.common.query")

[TypedValueDataSubset](com/appiancorp/suiteapi/common/paging/TypedValueDataSubset.html "class in com.appiancorp.suiteapi.common.paging")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[TypedValueFacet](com/appiancorp/common/query/TypedValueFacet.html "class in com.appiancorp.common.query")

This class holds the metadata for a facet and its options.

[TypedValueFacet.TypedValueFacetBuilder](com/appiancorp/common/query/TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")

A builder that will construct a TypedValueFacet with the correct parameters

[TypedValueFacetOption](com/appiancorp/common/query/TypedValueFacetOption.html "class in com.appiancorp.common.query")

This class holds the metadata for an individual option for a [`facet`](com/appiancorp/common/query/Facet.html "class in com.appiancorp.common.query").

[TypedValueFilter](com/appiancorp/common/query/TypedValueFilter.html "class in com.appiancorp.common.query")

Immutable bean representing a configured [`Filter`](com/appiancorp/common/query/Filter.html "class in com.appiancorp.common.query") on a column.

[TypedValueListView](com/appiancorp/type/system/TypedValueListView.html "class in com.appiancorp.type.system")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[TypedValueListViewDataSubset](com/appiancorp/type/system/TypedValueListViewDataSubset.html "class in com.appiancorp.type.system")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[TypedValueLogicalExpression](com/appiancorp/common/query/TypedValueLogicalExpression.html "class in com.appiancorp.common.query")

This class represents a logical expression combining multiple filters in a query.

[TypedValueParameterConverter](com/appiancorp/suiteapi/common/TypedValueParameterConverter.html "class in com.appiancorp.suiteapi.common")

TypedValue Parameter Conversion

[TypedValueQuery](com/appiancorp/common/query/TypedValueQuery.html "class in com.appiancorp.common.query")

A `Query` concrete class An instance can only be obtained by using the helper class [`TypedValueQuery.TypedValueBuilder`](com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")

[TypedValueQuery.TypedValueBuilder](com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[TypedValueQuery.TypedValueBuilder.Aggregator](com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.Aggregator.html "class in com.appiancorp.common.query")

This class encapsulates all the available Aggregation Functions in a more object oriented way.

[TypedValueQuery.TypedValueBuilder.FilterOpExpr](com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.FilterOpExpr.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[TypedValueQuery.TypedValueBuilder.FilterOpLiteral](com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.FilterOpLiteral.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[TypedValueQuery.TypedValueBuilder.LogicalOp](com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.LogicalOp.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[TypedValueQuery.TypedValueBuilder.Order](com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.Order.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[TypedValueQuery.TypedValueBuilder.SearchOp](com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.SearchOp.html "class in com.appiancorp.common.query")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[TypedValueQuery.TypedValueBuilder.Selector](com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.Selector.html "class in com.appiancorp.common.query")

This is how you instantiate columns to configure a query for selection, grouping or aggregation.

[TypedValueQueryValidator](com/appiancorp/common/query/TypedValueQueryValidator.html "class in com.appiancorp.common.query")

[TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

Deprecated.

Use the class [`NamedTypedValue`](com/appiancorp/suiteapi/type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") instead.

[TypedVariableToGroupAttributeType](com/appiancorp/suiteapi/personalization/TypedVariableToGroupAttributeType.html "class in com.appiancorp.suiteapi.personalization")

[TypedVariableTypes](com/appiancorp/suiteapi/process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

Use [`AppianType`](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type") instead.

[TypedVariableUtils](com/appiancorp/suiteapi/process/TypedVariableUtils.html "class in com.appiancorp.suiteapi.process")

Utility class for TypedVariables

[TypedVariableUtils.People](com/appiancorp/suiteapi/process/TypedVariableUtils.People.html "class in com.appiancorp.suiteapi.process")

Class representing groups and/or users

[TypeResource](com/appiancorp/suiteapi/type/TypeResource.html "class in com.appiancorp.suiteapi.type")

HashMap that validates 'K' keys.

[TypeService](com/appiancorp/suiteapi/type/TypeService.html "interface in com.appiancorp.suiteapi.type")

[UiExpressionForm](com/appiancorp/suiteapi/process/forms/UiExpressionForm.html "class in com.appiancorp.suiteapi.process.forms")

UiExpressionForm This class represents a user interface generated by expression.

[Unattended](com/appiancorp/suiteapi/process/framework/Unattended.html "annotation interface in com.appiancorp.suiteapi.process.framework")

[UnattendedActivityValidationException](com/appiancorp/suiteapi/process/exceptions/UnattendedActivityValidationException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if validation fails (the validate() method of the parameter helper class returns false) when trying to execute an unattended activity.

[UnavailableApplicationException](com/appiancorp/suiteapi/applications/UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")

When updating an application, we will try to lock the object before making any updates in order to avoid race conditions.

[UnsupportedAttributeTypeException](com/appiancorp/suiteapi/common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown when trying to create or update an attribute type that is not supported by the Personalization service.

[UnsupportedOperatorException](com/appiancorp/suiteapi/common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when a given operator is not supported by the Personalization service.

[UnsupportedRelationshipException](com/appiancorp/suiteapi/common/exceptions/UnsupportedRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a relationship type does not exist or is not currently supported.

[UnsupportedReportSpecificationException](com/appiancorp/suiteapi/process/exceptions/UnsupportedReportSpecificationException.html "class in com.appiancorp.suiteapi.process.exceptions")

This exception is thrown if the user calls an API method that acts on a report specification and that specification has an unsupported metric, transformation, attribute, etc.

[UnsupportedReportSpecificationException.Environment](com/appiancorp/suiteapi/process/exceptions/UnsupportedReportSpecificationException.Environment.html "enum class in com.appiancorp.suiteapi.process.exceptions")

[UnsupportedReportSpecificationException.ErrorType](com/appiancorp/suiteapi/process/exceptions/UnsupportedReportSpecificationException.ErrorType.html "enum class in com.appiancorp.suiteapi.process.exceptions")

[UnsupportedRoleException](com/appiancorp/suiteapi/common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given role does not exist or is not supported.

[UnsupportedServiceException](com/appiancorp/services/exceptions/UnsupportedServiceException.html "class in com.appiancorp.services.exceptions")

This is an unchecked exception which occurs when a client makes a request for a service that was not part of the ASL configuration.

[UnsupportedTitleException](com/appiancorp/suiteapi/common/exceptions/UnsupportedTitleException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that a given title is not currently supported.

[UnsupportedXsdException](com/appiancorp/suiteapi/type/config/xsd/exceptions/UnsupportedXsdException.html "class in com.appiancorp.suiteapi.type.config.xsd.exceptions")

Thrown when an XML schema file being imported is found to contain constructs or references that are not yet supported in the product.

[UpgradeException](com/appiancorp/suiteapi/process/upgrade/UpgradeException.html "class in com.appiancorp.suiteapi.process.upgrade")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[UpgradeResult](com/appiancorp/suiteapi/process/upgrade/UpgradeResult.html "class in com.appiancorp.suiteapi.process.upgrade")

This class is available as a preview of functionality that will be added to the supported public API in a future release.

[UploadStatistics](com/appiancorp/suiteapi/collaboration/UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")

This class represents a fragment of an upload-related query.

[User](com/appiancorp/suiteapi/personalization/User.html "class in com.appiancorp.suiteapi.personalization")

This represents the common User object.

[UserBase](com/appiancorp/suiteapi/personalization/UserBase.html "class in com.appiancorp.suiteapi.personalization")

This represents the base User object.

[UserDataType](com/appiancorp/suiteapi/personalization/UserDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")

Convenience annotation to indicate a value represents an Appian Object.

[UserMessageCount](com/appiancorp/suiteapi/forums/UserMessageCount.html "class in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[UserOrGroupDataType](com/appiancorp/suiteapi/personalization/UserOrGroupDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")

Convenience annotation to indicate a value represents an Appian Object.

[UserPreferences](com/appiancorp/suiteapi/personalization/UserPreferences.html "class in com.appiancorp.suiteapi.personalization")

[UserProfile](com/appiancorp/suiteapi/personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization")

This represents the full User profile object.

[UserProfileService](com/appiancorp/suiteapi/personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")

Provides the main functionality needed to create, update, delete, and retrieve [`UserProfile`](com/appiancorp/suiteapi/personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") objects from the Personalization service.

[UserRank](com/appiancorp/suiteapi/personalization/UserRank.html "class in com.appiancorp.suiteapi.personalization")

Title: UserRank

[UserSearch](com/appiancorp/suiteapi/personalization/UserSearch.html "class in com.appiancorp.suiteapi.personalization")

This represents the User search object.

[UserService](com/appiancorp/suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")

Provides the main functionality needed to create, update, delete, and retrieve Users.

[UserServiceContext](com/appiancorp/services/UserServiceContext.html "class in com.appiancorp.services")

UserServiceContext can be used to request services explicitly in standalone applications.

[UserSpace](com/appiancorp/suiteapi/collaboration/UserSpace.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

[UserStatistics](com/appiancorp/suiteapi/collaboration/UserStatistics.html "class in com.appiancorp.suiteapi.collaboration")

This class encapsulates the user/usage statistics of the collaboration application.

[UserStatistics](com/appiancorp/suiteapi/content/UserStatistics.html "class in com.appiancorp.suiteapi.content")

This class is used for statistics on users in the AE system.

[UserUtilities](com/appiancorp/suiteapi/forums/UserUtilities.html "class in com.appiancorp.suiteapi.forums")

Deprecated.

The Discussion Forums functionality will be removed in a future release.

[UserUuidTransformation](com/appiancorp/suiteapi/process/history/UserUuidTransformation.html "class in com.appiancorp.suiteapi.process.history")

UserUuidTransformation As process audit history returns users in user UUID form, this allows those user UUIDs to be transformed into usernames.

[UserUuidTransformation.Action](com/appiancorp/suiteapi/process/history/UserUuidTransformation.Action.html "enum class in com.appiancorp.suiteapi.process.history")

[UserValidationUtils](com/appiancorp/suiteapi/personalization/UserValidationUtils.html "class in com.appiancorp.suiteapi.personalization")

[UserValidationUtils.NameField](com/appiancorp/suiteapi/personalization/UserValidationUtils.NameField.html "enum class in com.appiancorp.suiteapi.personalization")

[Utilities](com/appiancorp/suiteapi/common/Utilities.html "class in com.appiancorp.suiteapi.common")

[Validatable](com/appiancorp/suiteapi/process/Validatable.html "interface in com.appiancorp.suiteapi.process")

Classes implementing this interface can be subjected to runtime validation.

[ValidationCode](com/appiancorp/suiteapi/common/ValidationCode.html "class in com.appiancorp.suiteapi.common")

[ValidationImportDiagnostic](com/appiancorp/suiteapi/type/config/ValidationImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")

An ImportDiagnostic that has an associated [`ValidationItem`](com/appiancorp/suiteapi/common/ValidationItem.html "class in com.appiancorp.suiteapi.common").

[ValidationItem](com/appiancorp/suiteapi/common/ValidationItem.html "class in com.appiancorp.suiteapi.common")

A `ValidationItem` associates a `ValidationCode` to the the supplied parameters.

[WebServiceContext](com/appiancorp/services/WebServiceContext.html "class in com.appiancorp.services")

Represents a service context that was obtained from the [`WebServiceContextFactory`](com/appiancorp/services/WebServiceContextFactory.html "class in com.appiancorp.services") by sending it a session or request.

[WebServiceContextFactory](com/appiancorp/services/WebServiceContextFactory.html "class in com.appiancorp.services")

Used to manufacture the `ServiceContext` used within the product and in other web applications.

[WorkflowActivities](com/appiancorp/suiteapi/process/palette/WorkflowActivities.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[WorkflowEvents](com/appiancorp/suiteapi/process/palette/WorkflowEvents.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[WorkflowGateways](com/appiancorp/suiteapi/process/palette/WorkflowGateways.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[WorkflowHumanTasks](com/appiancorp/suiteapi/process/palette/WorkflowHumanTasks.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

[WorkingCalendar](com/appiancorp/suiteapi/process/calendar/WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

A bean representing a calendar.

[WorkingCalendarSerializationUtils](com/appiancorp/suiteapi/process/calendar/WorkingCalendarSerializationUtils.html "class in com.appiancorp.suiteapi.process.calendar")

This class is used as a helper to output a JSON String containing the calendar information inside of a Calendar Service

[WriteException](com/appiancorp/suiteapi/common/exceptions/WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception should be thrown when an error occurs trying to write data to a storage location (whether it be writing to a flat file on disk or writing to a DB).

[Writer](com/appiancorp/suiteapi/expression/Writer.html "interface in com.appiancorp.suiteapi.expression")

The Writer is used for writing values to External Systems during the Save process of a SAIL expression re-evaluation.

[WSImporterException](com/appiancorp/suiteapi/process/exceptions/WSImporterException.html "class in com.appiancorp.suiteapi.process.exceptions")

This Exception is thrown when Process Model Importer fails to import or configure a WebService Node (v2)

[XMLable](com/appiancorp/suiteapi/common/XMLable.html "interface in com.appiancorp.suiteapi.common")

Implementing classes can be represented in XML.

[XMLBuilderUtils](com/appiancorp/suiteapi/process/XMLBuilderUtils.html "class in com.appiancorp.suiteapi.process")

Class provides utility methods to create an XML document

[XsdImportEcoreSaveException](com/appiancorp/suiteapi/type/config/xsd/exceptions/XsdImportEcoreSaveException.html "class in com.appiancorp.suiteapi.type.config.xsd.exceptions")

[XsdTypeImporter](com/appiancorp/suiteapi/type/config/xsd/XsdTypeImporter.html "class in com.appiancorp.suiteapi.type.config.xsd")

Imports datatypes into the system from XSD.