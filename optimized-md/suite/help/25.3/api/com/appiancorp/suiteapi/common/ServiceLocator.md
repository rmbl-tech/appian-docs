---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/ServiceLocator.html
original_path: api/com/appiancorp/suiteapi/common/ServiceLocator.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class ServiceLocator

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.ServiceLocator

All Implemented Interfaces:

`[ServiceName](ServiceName.html "interface in com.appiancorp.suiteapi.common")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class ServiceLocator extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [ServiceName](ServiceName.html "interface in com.appiancorp.suiteapi.common")

Deprecated.

Use services injected by the Appian plug-in framework instead.

This Factory class provides the functionality to request and return instances of services available in the application. Service instances can be requested by calling ServiceLocator.getXService() method, where X is the name of the Service. getXService() is overloaded to take 3 types of arguments.

ServiceLocator.getXService(serviceContext)
ServiceLocator.getXService( HttpServlet, HttpSession)
ServiceLocator.getXService( User )

Out of the above two getXService( HttpServlet, HttpSession) and getXService( User ) are deprecated. The recommended method is to use ServiceLocator.getXService(serviceContext)
The following example shows the way to access service using [`ServiceContext`](../../services/ServiceContext.html "interface in com.appiancorp.services"). An instance of ServiceContext should be created first by using one of the Factory methods provided in [`WebServiceContextFactory`](../../services/WebServiceContextFactory.html "class in com.appiancorp.services").    import com.appiancorp.services.WebServiceContextFactory;
    ServiceContext context = WebServiceContextFactory.getServiceContext( session );

ServiceContext is created for a specific for a user. WebServiceContextFactory provides multiple methods to generate ServiceContext. These methods are:

//Use User object as ASLIdentity parameter
WebServiceContextFactory.getServiceContext(ASLIdentity)

//User object is detected from the session. This method will fail if the session does not have User Object.
WebServiceContextFactory.getServiceContext(HttpServletRequest)

//Detects if the a ServiceContext already exists for the user in the Session. If not creates a new one.
WebServiceContextFactory.getServiceContext(HttpServletRequest, ASLIdentity)

//Creates a new ASLIdentity object from the String parameter and calls the method above
WebServiceContextFactory.getServiceContext(HttpServletRequest, String)

//Finds the User object from the session and creates a new ServiceContext object.
WebServiceContextFactory.getServiceContext(HttpSession)

//Creats a new ASLIdentity object from the String parameter and then creats ServiceContext object.
WebServiceContextFactory.getServiceContext(String)

Once the ServiceContext object is created, the Service instance can be created by calling the following method.

    ProcessExecutionService pes = ServiceLocator.getProcessExecutionService( context );

Note: Use of this class to obtain services for use in plug-ins is not supported. Instead, inject the services you need by passing the `*Service` classes as parameters to the smart service's constructor.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ADMIN_USERNAME](#ADMIN_USERNAME)`

    Deprecated.

    Use `ServiceContextFactory.ADMIN_USERNAME` instead

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ANONYMOUS_USERNAME](#ANONYMOUS_USERNAME)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[ServiceName](ServiceName.html "interface in com.appiancorp.suiteapi.common")

    `[ADMIN_CONSOLE_SERVICE](ServiceName.html#ADMIN_CONSOLE_SERVICE), [APPLICATION_SERVICE](ServiceName.html#APPLICATION_SERVICE), [BODY_SERVICE](ServiceName.html#BODY_SERVICE), [CALENDAR_SERVICE](ServiceName.html#CALENDAR_SERVICE), [COLLAB_ADMINISTRATION_SERVICE](ServiceName.html#COLLAB_ADMINISTRATION_SERVICE), [COLLAB_COMMUNITY_SERVICE](ServiceName.html#COLLAB_COMMUNITY_SERVICE), [COLLAB_DOCUMENT_SERVICE](ServiceName.html#COLLAB_DOCUMENT_SERVICE), [COLLAB_FOLDER_SERVICE](ServiceName.html#COLLAB_FOLDER_SERVICE), [COLLAB_KNOWLEDGECENTER_SERVICE](ServiceName.html#COLLAB_KNOWLEDGECENTER_SERVICE), [COLLAB_REPORTING_SERVICE](ServiceName.html#COLLAB_REPORTING_SERVICE), [COLLAB_SEARCH_SERVICE](ServiceName.html#COLLAB_SEARCH_SERVICE), [COLLAB_STATISTICS_SERVICE](ServiceName.html#COLLAB_STATISTICS_SERVICE), [COLLAB_USER_SERVICE](ServiceName.html#COLLAB_USER_SERVICE), [CONTENT_SERVICE](ServiceName.html#CONTENT_SERVICE), [CONTENT_STATISTICS_SERVICE](ServiceName.html#CONTENT_STATISTICS_SERVICE), [CONVENIENCE_SERVICE](ServiceName.html#CONVENIENCE_SERVICE), [DESIGN_EXPRESSION_SERVICE](ServiceName.html#DESIGN_EXPRESSION_SERVICE), [DISCUSSION_PORTLET_SERVICE](ServiceName.html#DISCUSSION_PORTLET_SERVICE), [EXECUTION_EXPRESSION_SERVICE](ServiceName.html#EXECUTION_EXPRESSION_SERVICE), [EXPRESSION_EVALUATION_SERVICE](ServiceName.html#EXPRESSION_EVALUATION_SERVICE), [EXPRESSION_SERVICE](ServiceName.html#EXPRESSION_SERVICE), [FORUMS_SEARCH_SERVICE](ServiceName.html#FORUMS_SEARCH_SERVICE), [GLOBALIZATION_SERVICE](ServiceName.html#GLOBALIZATION_SERVICE), [GROUP_SERVICE](ServiceName.html#GROUP_SERVICE), [GROUPMESSAGE_SERVICE](ServiceName.html#GROUPMESSAGE_SERVICE), [GROUPTYPE_SERVICE](ServiceName.html#GROUPTYPE_SERVICE), [JMS_CONNECTION_FACTORY](ServiceName.html#JMS_CONNECTION_FACTORY), [LEADER_MESSAGE_SERVICE](ServiceName.html#LEADER_MESSAGE_SERVICE), [LINKS_SERVICE](ServiceName.html#LINKS_SERVICE), [MESSAGE_PUBLISHER_SERVICE](ServiceName.html#MESSAGE_PUBLISHER_SERVICE), [METADATA_SERVICE](ServiceName.html#METADATA_SERVICE), [MINI_BODY_SERVICE](ServiceName.html#MINI_BODY_SERVICE), [MINI_METADATA_SERVICE](ServiceName.html#MINI_METADATA_SERVICE), [NAV_SERVICE](ServiceName.html#NAV_SERVICE), [NAVIGATION_SERVICE](ServiceName.html#NAVIGATION_SERVICE), [NOTIFICATION_SERVICE](ServiceName.html#NOTIFICATION_SERVICE), [OBJECT_METADATA_ADMINISTRATION_SERVICE](ServiceName.html#OBJECT_METADATA_ADMINISTRATION_SERVICE), [OBJECT_METADATA_SERVICE](ServiceName.html#OBJECT_METADATA_SERVICE), [PAGE_SERVICE](ServiceName.html#PAGE_SERVICE), [PERSONALIZATION_SEARCH_SERVICE](ServiceName.html#PERSONALIZATION_SEARCH_SERVICE), [PORTAL_ADMINISTRATION_SERVICE](ServiceName.html#PORTAL_ADMINISTRATION_SERVICE), [PORTAL_NOTIFICATION_SERVICE](ServiceName.html#PORTAL_NOTIFICATION_SERVICE), [PORTLET_SERVICE](ServiceName.html#PORTLET_SERVICE), [PROCESS_ADMINISTRATION_SERVICE](ServiceName.html#PROCESS_ADMINISTRATION_SERVICE), [PROCESS_ANALYTICS2_SERVICE](ServiceName.html#PROCESS_ANALYTICS2_SERVICE), [PROCESS_DESIGN_SERVICE](ServiceName.html#PROCESS_DESIGN_SERVICE), [PROCESS_EXCEPTION_HANDLER_SERVICE](ServiceName.html#PROCESS_EXCEPTION_HANDLER_SERVICE), [PROCESS_EXECUTION_SERVICE](ServiceName.html#PROCESS_EXECUTION_SERVICE), [PROCESS_NOTES_CONTENT_SERVICE](ServiceName.html#PROCESS_NOTES_CONTENT_SERVICE), [PROCESS_PORT_SERVICE](ServiceName.html#PROCESS_PORT_SERVICE), [SYNCHRONIZATION_SERVICE](ServiceName.html#SYNCHRONIZATION_SERVICE), [TYPE_SERVICE](ServiceName.html#TYPE_SERVICE), [USER_SERVICE](ServiceName.html#USER_SERVICE), [USERPROFILE_SERVICE](ServiceName.html#USERPROFILE_SERVICE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ServiceLocator](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `static void`

    `[addServices](#addServices\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceConfig)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static [AdministrationService](../administration/AdministrationService.html "interface in com.appiancorp.suiteapi.administration")`

    `[getAdministrationConsoleService](#getAdministrationConsoleService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    This service pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

    `static [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services")`

    `[getAdministratorServiceContext](#getAdministratorServiceContext\(\))()`

    Deprecated.

    Use {@link ServiceContextFactory.getAdministratorServiceContext()} instead

    `static [User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization")`

    `[getAdministratorUser](#getAdministratorUser\(\))()`

    Deprecated.

    Use {@link ServiceContextFactory.getAdministratorUser()} instead

    `static [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services")`

    `[getAnonymousServiceContext](#getAnonymousServiceContext\(\))()`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static [User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization")`

    `[getAnonymousUser](#getAnonymousUser\(\))()`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static [ApplicationService](../applications/ApplicationService.html "interface in com.appiancorp.suiteapi.applications")`

    `[getApplicationService](#getApplicationService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [CalendarService](../process/CalendarService.html "interface in com.appiancorp.suiteapi.process")`

    `[getCalendarService](#getCalendarService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [AdministrationService](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCollabAdministrationService](#getCollabAdministrationService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    `static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCollabCommunityService](#getCollabCommunityService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    `static [CollaborationSearchService](../collaboration/CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCollaborationSearchService](#getCollaborationSearchService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    `static [CollaborationUserService](../collaboration/CollaborationUserService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCollaborationUserService](#getCollaborationUserService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") insteadad.

    `static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCommunityService](#getCommunityService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") insteadad.

    `static com.appiancorp.kougar.driver.ConnectionManager`

    `[getConnectionManager](#getConnectionManager\(\))()`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static [ContentService](../content/ContentService.html "interface in com.appiancorp.suiteapi.content")`

    `[getContentService](#getContentService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [ContentStatisticsService](../content/ContentStatisticsService.html "interface in com.appiancorp.suiteapi.content")`

    `[getContentStatisticsService](#getContentStatisticsService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [ExpressionService](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression")`

    `[getDesignExpressionService](#getDesignExpressionService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [DiscussionBodyService](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionBodyService](#getDiscussionBodyService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Discussion Forums functionality will be removed in a future release.

    `static [DiscussionMetadataConvenienceService](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionMetadataConvenienceService](#getDiscussionMetadataConvenienceService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Discussion Forums functionality will be removed in a future release.

    `static [DiscussionMetadataCoreService](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionMetadataCoreService](#getDiscussionMetadataCoreService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Discussion Forums functionality will be removed in a future release.

    `static [DiscussionPortletService](../portal/portlets/discussionthreads/DiscussionPortletService.html "interface in com.appiancorp.suiteapi.portal.portlets.discussionthreads")`

    `[getDiscussionPortletService](#getDiscussionPortletService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [DocumentService](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getDocumentService](#getDocumentService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Deprecated.

    Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    `static [ExceptionHandlerService](../process/ExceptionHandlerService.html "interface in com.appiancorp.suiteapi.process")`

    `[getExceptionHandlerService](#getExceptionHandlerService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [ExpressionService](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression")`

    `[getExecutionExpressionService](#getExecutionExpressionService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [ExpressionService](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression")`

    `[getExpressionService](#getExpressionService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use getExecutionExpressionService or getDesignExpressionService

    `static [FolderService](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getFolderService](#getFolderService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Deprecated.

    Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    `static [ForumsSearchService](../forums/ForumsSearchService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getForumsSearchService](#getForumsSearchService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Discussion Forums functionality will be removed in a future release.

    `static [GlobalizationService](../portal/GlobalizationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getGlobalizationService](#getGlobalizationService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [GroupMessageService](../portal/portlets/groupmessage/GroupMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.groupmessage")`

    `[getGroupMessageService](#getGroupMessageService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    the Group Message channel and code will be removed in a future release.

    `static [GroupService](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getGroupService](#getGroupService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [GroupTypeService](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getGroupTypeService](#getGroupTypeService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [JmsConnectionFactory](../messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging")`

    `[getJmsConnectionFactory](#getJmsConnectionFactory\(\))()`

    Deprecated.

    Use [`getJmsConnectionFactory(ServiceContext)`](#getJmsConnectionFactory\(com.appiancorp.services.ServiceContext\)).

    `static [JmsConnectionFactory](../messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging")`

    `[getJmsConnectionFactory](#getJmsConnectionFactory\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static [KnowledgeCenterService](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getKnowledgeCenterService](#getKnowledgeCenterService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    `static [LeaderMessageService](../portal/portlets/leadermessage/LeaderMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.leadermessage")`

    `[getLeaderMessageService](#getLeaderMessageService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Deprecated.

    the Group Message channel and code will be removed in a future release.

    `static [LinksService](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")`

    `[getLinksService](#getLinksService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [MessagePublisherService](../messaging/MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging")`

    `[getMessagePublisherService](#getMessagePublisherService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [MiniBodyService](../portal/portlets/miniwebsite/MiniBodyService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")`

    `[getMiniBodyService](#getMiniBodyService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [MiniMetadataService](../portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")`

    `[getMiniMetadataService](#getMiniMetadataService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [NavigationService](../portal/NavigationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getNavigationService](#getNavigationService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [NotesContentService](../process/NotesContentService.html "interface in com.appiancorp.suiteapi.process")`

    `[getNoteContentsService](#getNoteContentsService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [NotificationService](../portal/NotificationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getNotificationService](#getNotificationService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Notification functionality will be removed in a future release.

    `static [PageNavigationService](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPageNavigationService](#getPageNavigationService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [PageService](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPageService](#getPageService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [PersonalizationSearchService](../personalization/PersonalizationSearchService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getPersonalizationSearchService](#getPersonalizationSearchService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [AdministrationService](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortalAdministrationService](#getPortalAdministrationService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [PortalNotificationService](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortalNotificationService](#getPortalNotificationService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [PortletService](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortletService](#getPortletService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static com.appiancorp.naming.ServiceConnections`

    `[getPrimary](#getPrimary\(\))()`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static [ProcessAdministrationService](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessAdministrationService](#getProcessAdministrationService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [ProcessAnalyticsService](../process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")`

    `[getProcessAnalyticsService2](#getProcessAnalyticsService2\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [ProcessDesignService](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessDesignService](#getProcessDesignService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [ProcessExecutionService](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessExecutionService](#getProcessExecutionService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [ReportingService](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getReportingService](#getReportingService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getService](#getService\(com.appiancorp.services.ServiceContext,java.lang.String\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") ctx, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName)`

    Deprecated.

    Use one of the `get*Service` methods instead.

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getService](#getService\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName)`

    Deprecated.

    Use one of the `get*Service` methods instead.

    `static com.appiancorp.services.ServiceManager`

    `[getServiceManager](#getServiceManager\(\))()`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getServiceNames](#getServiceNames\(\))()`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getServicesAsArray](#getServicesAsArray\(com.appiancorp.services.ServiceContext,java.lang.String%5B%5D\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] serviceNames_)`

    Deprecated.

    Use the `get*Service` methods instead.

    `static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[getServicesAsMap](#getServicesAsMap\(com.appiancorp.services.ServiceContext,java.lang.String%5B%5D\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] serviceNames_)`

    Deprecated.

    Use the `get*Service` methods instead.

    `static [StatisticsService](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getStatisticsService](#getStatisticsService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [SynchronizationService](SynchronizationService.html "interface in com.appiancorp.suiteapi.common")`

    `[getSyncronizationService](#getSyncronizationService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    The Discussion Forums functionality will be removed in a future release.

    `static [TypeService](../type/TypeService.html "interface in com.appiancorp.suiteapi.type")`

    `[getTypeService](#getTypeService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization")`

    `[getUser](#getUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    Use {@link ServiceContextFactory.getUser()} instead

    `static [UserProfileService](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getUserProfileService](#getUserProfileService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getUserService](#getUserService\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    `static void`

    `[recreateConnections](#recreateConnections\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") kougarConfig)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static void`

    `[releaseService](#releaseService\(com.appiancorp.services.ReleasableService\))(com.appiancorp.services.ReleasableService serv_)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static void`

    `[releaseServiceSafe](#releaseServiceSafe\(com.appiancorp.services.ReleasableService\))(com.appiancorp.services.ReleasableService serv_)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static void`

    `[reloadConnectionManagerConfiguration](#reloadConnectionManagerConfiguration\(\))()`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static void`

    `[reloadServiceManagerConfiguration](#reloadServiceManagerConfiguration\(\))()`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static void`

    `[waitForExecutionServers](#waitForExecutionServers\(\))()`

    Deprecated.

    see waitForServers(), preferred, or waitForServers(List connections) instead to wait on just the given connections.

    `static void`

    `[waitForServer](#waitForServer\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static void`

    `[waitForServers](#waitForServers\(\))()`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `static void`

    `[waitForServers](#waitForServers\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<com.appiancorp.kougar.driver.KougarConnection> connections)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### ADMIN\_USERNAME

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ADMIN\_USERNAME

        Deprecated.

        Use `ServiceContextFactory.ADMIN_USERNAME` instead

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.ServiceLocator.ADMIN_USERNAME)

    -   ### ANONYMOUS\_USERNAME

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ANONYMOUS\_USERNAME

        Deprecated.

        This API is being phased out and will be removed in a future release.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.ServiceLocator.ANONYMOUS_USERNAME)

-   ## Constructor Details

    -   ### ServiceLocator

        public ServiceLocator()

        Deprecated.

-   ## Method Details

    -   ### getPrimary

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static com.appiancorp.naming.ServiceConnections getPrimary()

        Deprecated.

        This API is being phased out and will be removed in a future release.

        Get the primary ServiceLocator. The primary ServiceLocator corresponds to the static methods.

        Returns:

    -   ### recreateConnections

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void recreateConnections([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") kougarConfig)

        Deprecated.

        This API is being phased out and will be removed in a future release.

    -   ### addServices

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void addServices([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceConfig)

        Deprecated.

        This API is being phased out and will be removed in a future release.

    -   ### reloadConnectionManagerConfiguration

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void reloadConnectionManagerConfiguration()

        Deprecated.

        This API is being phased out and will be removed in a future release.

    -   ### reloadServiceManagerConfiguration

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void reloadServiceManagerConfiguration()

        Deprecated.

        This API is being phased out and will be removed in a future release.

    -   ### getAdministratorUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") getAdministratorUser()

        Deprecated.

        Use {@link ServiceContextFactory.getAdministratorUser()} instead

        Retrieves the user that is the system administrator. This method can be used to consume a service as the Administrator. Because the Administrator user bypasses some authorization checks, this method should be used sparingly.

        Returns:

        a user who is the system administrator

    -   ### getAdministratorServiceContext

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") getAdministratorServiceContext()

        Deprecated.

        Use {@link ServiceContextFactory.getAdministratorServiceContext()} instead

        Retrieves a service context for an anonymous system administrator. This method can be used to consume a service as the Administrator. Because the Administrator user bypasses some authorization checks, this method should be used sparingly.

        Returns:

        an anonymous administrator service context

    -   ### getAnonymousUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") getAnonymousUser()

        Deprecated.

        This API is being phased out and will be removed in a future release.

        Retrieves an anonymous User object.

        Returns:

        an anonymous user

    -   ### getAnonymousServiceContext

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") getAnonymousServiceContext()

        Deprecated.

        This API is being phased out and will be removed in a future release.

        Retrieves a service context for an anonymous user.

        Returns:

        an anonymous service context

    -   ### getUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") getUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_)

        Deprecated.

        Use {@link ServiceContextFactory.getUser()} instead

        Creates a user object whose username is the given name. This object can then be used to obtain a `ServiceContext`.

        Parameters:

        `userName_` - the username to use

        Returns:

        a `User` with the given username

    -   ### getConnectionManager

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static com.appiancorp.kougar.driver.ConnectionManager getConnectionManager()

        Deprecated.

        This API is being phased out and will be removed in a future release.

    -   ### getServiceManager

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static com.appiancorp.services.ServiceManager getServiceManager()

        Deprecated.

        This API is being phased out and will be removed in a future release.

        Returns the service manager.

    -   ### getService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getService([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use one of the `get*Service` methods instead.

        Gets an instance of the service referenced by `serviceName_` using the service context for an anonymous system administrator. Used for services that are not context-sensitive. Because the Administrator user bypasses some authorization checks, this method should be used sparingly.

        Parameters:

        `serviceName_` - one of the `X_SERVICE` constants defined in this class

        Returns:

        an instance of the service bound to `serviceName_`.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") ctx, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use one of the `get*Service` methods instead.

        Gets an instance of the service referenced by `serviceName_`.

        Parameters:

        `sc_` - a context with which to obtain the service

        `serviceName_` - one of the `X_SERVICE` constants defined in this class

        Returns:

        an instance of the service bound to `serviceName_` whose context is `sc_`.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getServicesAsMap

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> getServicesAsMap([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] serviceNames\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use the `get*Service` methods instead.

        Gets multiple services and returns them as a map

        Parameters:

        `sc_` - a context with which to obtain the services

        `serviceNames_` - References to the services you want to retrieve. Valid values are the `X_SERVICE` constants defined in this class.

        Returns:

        a map where each service name is a key to a service. The services are stored as objects.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getServicesAsArray

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getServicesAsArray([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] serviceNames\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use the `get*Service` methods instead.

        Gets multiple services and returns them in an object array

        Parameters:

        `sc_` - a context with which to obtain the services

        `serviceNames_` - References to the services you want to retrieve. Valid values are the `X_SERVICE` constants defined in this class.

        Returns:

        an array of services

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### releaseService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseService(com.appiancorp.services.ReleasableService serv\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        This API is being phased out and will be removed in a future release.

        Releases the given service

        Parameters:

        `serv_` - the service to release

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### releaseServiceSafe

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseServiceSafe(com.appiancorp.services.ReleasableService serv\_)

        Deprecated.

        This API is being phased out and will be removed in a future release.

        Releases the given service, trapping and logging any exceptions that are raised. This method is "safe" because it does not throw any exceptions

        Parameters:

        `serv_` - the service to release

    -   ### getServiceNames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getServiceNames()

        Deprecated.

        This API is being phased out and will be removed in a future release.

        Gets the names of all configured services. Services are declared across several XML files, and these files are all referenced in /WEB-INF/classes/appian-services.xml

        Returns:

        the names of all services

    -   ### waitForServer

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void waitForServer([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_)

        Deprecated.

        This API is being phased out and will be removed in a future release.

        Causes processing to wait until a given server is up before continuing.

        Parameters:

        `id_` - The name of a connection/service that is exposed by the server you want to restart

    -   ### waitForServers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void waitForServers()

        Deprecated.

        This API is being phased out and will be removed in a future release.

        Causes processing to wait until all servers are up before continuing.

    -   ### waitForServers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void waitForServers([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<com.appiancorp.kougar.driver.KougarConnection> connections)

        Deprecated.

        This API is being phased out and will be removed in a future release.

        Causes processing to wait until all servers' given connections are up before continuing.

        Parameters:

        `connections` -

    -   ### waitForExecutionServers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void waitForExecutionServers()

        Deprecated.

        see waitForServers(), preferred, or waitForServers(List connections) instead to wait on just the given connections. Code should not wait on just execution servers.

        Causes processing to wait until all execution servers are up before continuing.

    -   ### getApplicationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ApplicationService](../applications/ApplicationService.html "interface in com.appiancorp.suiteapi.applications") getApplicationService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`ApplicationService`](../applications/ApplicationService.html "interface in com.appiancorp.suiteapi.applications").

        Parameters:

        `sc` - a context with which to obtain the service

        Returns:

        a `ApplicationService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getLeaderMessageService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [LeaderMessageService](../portal/portlets/leadermessage/LeaderMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.leadermessage") getLeaderMessageService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)

        Deprecated.

        the Group Message channel and code will be removed in a future release.

        Gets an instance of the [`LeaderMessageService`](../portal/portlets/leadermessage/LeaderMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.leadermessage").

        Parameters:

        `sc` - a context with which to obtain the service

        Returns:

        a `LeaderMessageService`

    -   ### getPageNavigationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PageNavigationService](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal") getPageNavigationService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`PageNavigationService`](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc` - a context with which to obtain the service

        Returns:

        a `PageNavigationService`

    -   ### getNavigationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [NavigationService](../portal/NavigationService.html "interface in com.appiancorp.suiteapi.portal") getNavigationService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`NavigationService`](../portal/NavigationService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc` - a context with which to obtain the service

        Returns:

        a `NavigationService`

    -   ### getFolderService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [FolderService](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration") getFolderService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)

        Deprecated.

        Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

        Gets an instance of the [`FolderService`](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc` - a context with which to obtain the service

        Returns:

        a `FolderService`

    -   ### getDocumentService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DocumentService](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration") getDocumentService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)

        Deprecated.

        Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

        Gets an instance of the [`DocumentService`](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc` - a context with which to obtain the service

        Returns:

        a `DocumentService`

    -   ### getPageService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PageService](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal") getPageService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`PageService`](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `PageService`

    -   ### getProcessAnalyticsService2

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessAnalyticsService](../process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2") getProcessAnalyticsService2([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`ProcessAnalyticsService`](../process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ProcessAnalyticsService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getCalendarService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [CalendarService](../process/CalendarService.html "interface in com.appiancorp.suiteapi.process") getCalendarService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`CalendarService`](../process/CalendarService.html "interface in com.appiancorp.suiteapi.process")

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `CalendarService`

    -   ### getCollabAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [AdministrationService](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration") getCollabAdministrationService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

        Gets an instance of the [`AdministrationService`](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `AdministrationService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getCollabCommunityService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration") getCollabCommunityService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

        Gets an instance of the [`CommunityService`](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `CommunityService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getDiscussionBodyService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionBodyService](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionBodyService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

        Gets an instance of the [`DiscussionBodyService`](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `DiscussionBodyService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getDiscussionMetadataConvenienceService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionMetadataConvenienceService](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionMetadataConvenienceService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

        Gets an instance of the [`DiscussionMetadataConvenienceService`](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `DiscussionMetadataConvenienceService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getDiscussionMetadataCoreService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionMetadataCoreService](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionMetadataCoreService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

        Gets an instance of the [`DiscussionMetadataCoreService`](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `DiscussionMetadataCoreService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getForumsSearchService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ForumsSearchService](../forums/ForumsSearchService.html "interface in com.appiancorp.suiteapi.forums") getForumsSearchService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

        Gets an instance of the [`ForumsSearchService`](../forums/ForumsSearchService.html "interface in com.appiancorp.suiteapi.forums")

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ForumsSearchService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getPersonalizationSearchService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PersonalizationSearchService](../personalization/PersonalizationSearchService.html "interface in com.appiancorp.suiteapi.personalization") getPersonalizationSearchService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getGroupService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [GroupService](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization") getGroupService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`GroupService`](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `GroupService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getGlobalizationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [GlobalizationService](../portal/GlobalizationService.html "interface in com.appiancorp.suiteapi.portal") getGlobalizationService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the (@link GlobalizationService)

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `GlobalizationService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getGroupTypeService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [GroupTypeService](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization") getGroupTypeService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`GroupTypeService`](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `GroupTypeService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getKnowledgeCenterService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [KnowledgeCenterService](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration") getKnowledgeCenterService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

        Gets an instance of the [`KnowledgeCenterService`](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `KnowledgeCenterService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getPortalAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [AdministrationService](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal") getPortalAdministrationService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`AdministrationService`](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `AdministrationService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getPortalNotificationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PortalNotificationService](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal") getPortalNotificationService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`PortalNotificationService`](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `PortalNotificationService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getNotificationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [NotificationService](../portal/NotificationService.html "interface in com.appiancorp.suiteapi.portal") getNotificationService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        The Notification functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

        Gets an instance of the [`NotificationService`](../portal/NotificationService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `NotificationService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getPortletService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PortletService](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal") getPortletService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`PortletService`](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `PortletService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getProcessAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessAdministrationService](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process") getProcessAdministrationService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`ProcessAdministrationService`](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ProcessAdministrationService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getProcessDesignService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessDesignService](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process") getProcessDesignService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`ProcessDesignService`](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ProcessDesignService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getProcessExecutionService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessExecutionService](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process") getProcessExecutionService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`ProcessExecutionService`](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ProcessExecutionService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getExceptionHandlerService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ExceptionHandlerService](../process/ExceptionHandlerService.html "interface in com.appiancorp.suiteapi.process") getExceptionHandlerService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`ExceptionHandlerService`](../process/ExceptionHandlerService.html "interface in com.appiancorp.suiteapi.process").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ExceptionHandlerService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getReportingService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ReportingService](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration") getReportingService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`ReportingService`](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ReportingService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getStatisticsService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [StatisticsService](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration") getStatisticsService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`StatisticsService`](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `StatisticsService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getCollaborationSearchService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [CollaborationSearchService](../collaboration/CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration") getCollaborationSearchService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

        Gets an instance of the [`CollaborationSearchService`](../collaboration/CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `CollaborationSearchService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getContentService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ContentService](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") getContentService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ContentService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getContentStatisticsService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ContentStatisticsService](../content/ContentStatisticsService.html "interface in com.appiancorp.suiteapi.content") getContentStatisticsService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`ContentStatisticsService`](../content/ContentStatisticsService.html "interface in com.appiancorp.suiteapi.content").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ContentService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getSyncronizationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [SynchronizationService](SynchronizationService.html "interface in com.appiancorp.suiteapi.common") getSyncronizationService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

        Gets an instance of the [`SynchronizationService`](SynchronizationService.html "interface in com.appiancorp.suiteapi.common").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `SynchronizationService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getUserProfileService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [UserProfileService](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization") getUserProfileService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`UserProfileService`](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `UserProfileService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getGroupMessageService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [GroupMessageService](../portal/portlets/groupmessage/GroupMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.groupmessage") getGroupMessageService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        the Group Message channel and code will be removed in a future release.

        Gets an instance of the [`GroupMessageService`](../portal/portlets/groupmessage/GroupMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.groupmessage").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `GroupMessageService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getUserService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") getUserService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`UserService`](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `UserService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getLinksService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [LinksService](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links") getLinksService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`LinksService`](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `LinksService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getExpressionService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ExpressionService](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression") getExpressionService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use getExecutionExpressionService or getDesignExpressionService

        Gets an instance of the [`ExpressionService`](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ExpressionService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getExecutionExpressionService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ExpressionService](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression") getExecutionExpressionService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the ExpressionService on Execution Server[`ExpressionService`](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ExpressionService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getDesignExpressionService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ExpressionService](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression") getDesignExpressionService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the ExpressionService on Design Server[`ExpressionService`](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ExpressionService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getNoteContentsService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [NotesContentService](../process/NotesContentService.html "interface in com.appiancorp.suiteapi.process") getNoteContentsService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`NotesContentService`](../process/NotesContentService.html "interface in com.appiancorp.suiteapi.process").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `NotesContentService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getTypeService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [TypeService](../type/TypeService.html "interface in com.appiancorp.suiteapi.type") getTypeService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`TypeService`](../type/TypeService.html "interface in com.appiancorp.suiteapi.type").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `TypeService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getAdministrationConsoleService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [AdministrationService](../administration/AdministrationService.html "interface in com.appiancorp.suiteapi.administration") getAdministrationConsoleService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        This service pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

        Gets an instance of the [`AdministrationService`](../administration/AdministrationService.html "interface in com.appiancorp.suiteapi.administration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `AdministrationService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getCommunityService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration") getCommunityService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") insteadad.

        Gets an instance of the [`CommunityService`](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `CommunityService`

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### getDiscussionPortletService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionPortletService](../portal/portlets/discussionthreads/DiscussionPortletService.html "interface in com.appiancorp.suiteapi.portal.portlets.discussionthreads") getDiscussionPortletService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`DiscussionPortletService`](../portal/portlets/discussionthreads/DiscussionPortletService.html "interface in com.appiancorp.suiteapi.portal.portlets.discussionthreads").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `DiscussionPortletService`

    -   ### getMiniMetadataService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [MiniMetadataService](../portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite") getMiniMetadataService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`MiniMetadataService`](../portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `MiniMetadataService`

    -   ### getMiniBodyService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [MiniBodyService](../portal/portlets/miniwebsite/MiniBodyService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite") getMiniBodyService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`MiniBodyService`](../portal/portlets/miniwebsite/MiniBodyService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `MiniBodyService`

    -   ### getCollaborationUserService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [CollaborationUserService](../collaboration/CollaborationUserService.html "interface in com.appiancorp.suiteapi.collaboration") getCollaborationUserService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") insteadad.

        Gets an instance of the [`CollaborationUserService`](../collaboration/CollaborationUserService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `CollaborationUserService`

    -   ### getMessagePublisherService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [MessagePublisherService](../messaging/MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") getMessagePublisherService([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        Use services injected by the Appian plug-in framework instead.

        Gets an instance of the [`MessagePublisherService`](../messaging/MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `MessagePublisherService`

    -   ### getJmsConnectionFactory

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [JmsConnectionFactory](../messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging") getJmsConnectionFactory([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)

        Deprecated.

        This API is being phased out and will be removed in a future release.

        Gets an instance of the [`JmsConnectionFactory`](../messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging").

        Returns:

        a `JmsConnectionFactory`

    -   ### getJmsConnectionFactory

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [JmsConnectionFactory](../messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging") getJmsConnectionFactory()

        Deprecated.

        Use [`getJmsConnectionFactory(ServiceContext)`](#getJmsConnectionFactory\(com.appiancorp.services.ServiceContext\)).