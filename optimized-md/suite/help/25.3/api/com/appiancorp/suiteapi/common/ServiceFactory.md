---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/ServiceFactory.html
original_path: api/com/appiancorp/suiteapi/common/ServiceFactory.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class ServiceFactory

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.ServiceFactory

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class ServiceFactory extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Deprecated.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ServiceFactory](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `static [AdministrationService](../administration/AdministrationService.html "interface in com.appiancorp.suiteapi.administration")`

    `[getAdministrationConsoleService](#getAdministrationConsoleService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    This service pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

    `static [User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization")`

    `[getAdministratorUser](#getAdministratorUser\(\))()`

    Deprecated.

    Retrieves the user that is the system administrator.

    `static [AdministrationService](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCollabAdministrationService](#getCollabAdministrationService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`AdministrationService`](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration").

    `static [AdministrationService](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCollabAdministrationService](#getCollabAdministrationService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getCollabAdministrationService( ServiceContext sc\_ )

    `static [AdministrationService](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCollabAdministrationService](#getCollabAdministrationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getCollabAdministrationService( ServiceContext sc\_ )

    `static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCollabCommunityService](#getCollabCommunityService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`CommunityService`](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration").

    `static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCollabCommunityService](#getCollabCommunityService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getCollabCommunityService( ServiceContext sc\_ )

    `static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCommunityService](#getCommunityService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`CommunityService`](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration").

    `static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getCommunityService](#getCommunityService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getCommunityService( ServiceContext sc\_ )

    `static [DiscussionBodyService](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionBodyService](#getDiscussionBodyService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    `static [DiscussionBodyService](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionBodyService](#getDiscussionBodyService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getDiscussionBodyService( ServiceContext sc\_ )

    `static [DiscussionBodyService](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionBodyService](#getDiscussionBodyService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getDiscussionBodyService( ServiceContext sc\_ )

    `static [DiscussionMetadataConvenienceService](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionMetadataConvenienceService](#getDiscussionMetadataConvenienceService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    `static [DiscussionMetadataConvenienceService](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionMetadataConvenienceService](#getDiscussionMetadataConvenienceService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getDiscussionMetadataConvenienceService( ServiceContext sc\_ )

    `static [DiscussionMetadataConvenienceService](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionMetadataConvenienceService](#getDiscussionMetadataConvenienceService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getDiscussionMetadataConvenienceService( ServiceContext sc\_ )

    `static [DiscussionMetadataCoreService](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionMetadataCoreService](#getDiscussionMetadataCoreService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    `static [DiscussionMetadataCoreService](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionMetadataCoreService](#getDiscussionMetadataCoreService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getDiscussionMetadataCoreService( ServiceContext sc\_ )

    `static [DiscussionMetadataCoreService](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")`

    `[getDiscussionMetadataCoreService](#getDiscussionMetadataCoreService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getDiscussionMetadataCoreService( ServiceContext sc\_ )

    `static [DiscussionPortletService](../portal/portlets/discussionthreads/DiscussionPortletService.html "interface in com.appiancorp.suiteapi.portal.portlets.discussionthreads")`

    `[getDiscussionPortletService](#getDiscussionPortletService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [DocumentService](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getDocumentService](#getDocumentService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`DocumentService`](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration").

    `static [DocumentService](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getDocumentService](#getDocumentService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getDocumentService( ServiceContext sc\_ )

    `static [DocumentService](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getDocumentService](#getDocumentService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getDocumentService( ServiceContext sc\_ )

    `static [ExceptionHandlerService](../process/ExceptionHandlerService.html "interface in com.appiancorp.suiteapi.process")`

    `[getExceptionHandlerService](#getExceptionHandlerService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`ExceptionHandlerService`](../process/ExceptionHandlerService.html "interface in com.appiancorp.suiteapi.process").

    `static [ExpressionService](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression")`

    `[getExpressionService](#getExpressionService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`ExpressionService`](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression").

    `static [FolderService](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getFolderService](#getFolderService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`FolderService`](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration").

    `static [FolderService](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getFolderService](#getFolderService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getFolderService( ServiceContext sc\_ )

    `static [FolderService](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getFolderService](#getFolderService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getFolderService( ServiceContext sc\_ )

    `static [GroupMessageService](../portal/portlets/groupmessage/GroupMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.groupmessage")`

    `[getGroupMessageService](#getGroupMessageService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    the Group Message channel and code will be removed in a future release.

    `static [GroupService](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getGroupService](#getGroupService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`GroupService`](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization").

    `static [GroupService](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getGroupService](#getGroupService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getGroupService( ServiceContext sc\_ )

    `static [GroupService](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getGroupService](#getGroupService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getGroupService( ServiceContext sc\_ )

    `static [GroupTypeService](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getGroupTypeService](#getGroupTypeService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`GroupTypeService`](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization").

    `static [GroupTypeService](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getGroupTypeService](#getGroupTypeService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getGroupTypeService( ServiceContext sc\_ )

    `static [GroupTypeService](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getGroupTypeService](#getGroupTypeService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getGroupTypeService( ServiceContext sc\_ )

    `static [KnowledgeCenterService](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getKnowledgeCenterService](#getKnowledgeCenterService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`KnowledgeCenterService`](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration").

    `static [KnowledgeCenterService](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getKnowledgeCenterService](#getKnowledgeCenterService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getKnowledgeCenterService( ServiceContext sc\_ )

    `static [KnowledgeCenterService](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getKnowledgeCenterService](#getKnowledgeCenterService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getKnowledgeCenterService( ServiceContext sc\_ )

    `static [LeaderMessageService](../portal/portlets/leadermessage/LeaderMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.leadermessage")`

    `[getLeaderMessageService](#getLeaderMessageService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    the Leader Message channel and code will be removed in a future release.

    `static [LinksService](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")`

    `[getLinksService](#getLinksService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`LinksService`](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links").

    `static [LinksService](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")`

    `[getLinksService](#getLinksService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getLinksService( ServiceContext sc\_ )

    `static [LinksService](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")`

    `[getLinksService](#getLinksService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getLinksService( ServiceContext sc\_ )

    `static [MiniMetadataService](../portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")`

    `[getMiniMetadataService](#getMiniMetadataService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`MiniMetadataService`](../portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite").

    `static [NotesContentService](../process/NotesContentService.html "interface in com.appiancorp.suiteapi.process")`

    `[getNoteContentsService](#getNoteContentsService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`NotesContentService`](../process/NotesContentService.html "interface in com.appiancorp.suiteapi.process").

    `static [NotificationService](../portal/NotificationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getNotificationService](#getNotificationService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`NotificationService`](../portal/NotificationService.html "interface in com.appiancorp.suiteapi.portal").

    `static [PageNavigationService](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPageNavigationService](#getPageNavigationService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [PageNavigationService](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPageNavigationService](#getPageNavigationService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getPageNavigationService( ServiceContext sc\_ )

    `static [PageNavigationService](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPageNavigationService](#getPageNavigationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getPageNavigationService( ServiceContext sc\_ )

    `static [PageService](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPageService](#getPageService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [PageService](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPageService](#getPageService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getPageService( ServiceContext sc\_ )

    `static [PageService](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPageService](#getPageService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getPageService( ServiceContext sc\_ )

    `static [PersonalizationSearchService](../personalization/PersonalizationSearchService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getPersonalizationSearchService](#getPersonalizationSearchService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

     

    `static [AdministrationService](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortalAdministrationService](#getPortalAdministrationService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [AdministrationService](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortalAdministrationService](#getPortalAdministrationService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getPortalAdministrationService( ServiceContext sc\_ )

    `static [AdministrationService](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortalAdministrationService](#getPortalAdministrationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getPortalAdministrationService( ServiceContext sc\_ )

    `static [PortalNotificationService](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortalNotificationService](#getPortalNotificationService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`PortalNotificationService`](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal").

    `static [PortalNotificationService](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortalNotificationService](#getPortalNotificationService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getPortalNotificationService( ServiceContext sc\_ )

    `static [PortalNotificationService](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortalNotificationService](#getPortalNotificationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getPortalNotificationService( ServiceContext sc\_ )

    `static [PortletService](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortletService](#getPortletService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    The Portal functionality will be removed in a future release.

    `static [PortletService](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortletService](#getPortletService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getPortletService( ServiceContext sc\_ )

    `static [PortletService](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal")`

    `[getPortletService](#getPortletService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getPortletService( ServiceContext sc\_ )

    `static [ProcessAdministrationService](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessAdministrationService](#getProcessAdministrationService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`ProcessAdministrationService`](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process").

    `static [ProcessAdministrationService](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessAdministrationService](#getProcessAdministrationService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getProcessAdministrationService( ServiceContext sc\_ )

    `static [ProcessAdministrationService](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessAdministrationService](#getProcessAdministrationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getProcessAdministrationService( ServiceContext sc\_ )

    `static [ProcessDesignService](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessDesignService](#getProcessDesignService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`ProcessDesignService`](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process").

    `static [ProcessDesignService](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessDesignService](#getProcessDesignService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getProcessDesignService( ServiceContext sc\_ )

    `static [ProcessDesignService](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessDesignService](#getProcessDesignService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getProcessDesignService( ServiceContext sc\_ )

    `static [ProcessExecutionService](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessExecutionService](#getProcessExecutionService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`ProcessExecutionService`](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process").

    `static [ProcessExecutionService](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessExecutionService](#getProcessExecutionService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getProcessExecutionService( ServiceContext sc\_ )

    `static [ProcessExecutionService](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")`

    `[getProcessExecutionService](#getProcessExecutionService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getProcessExecutionService( ServiceContext sc\_ )

    `static [ReportingService](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getReportingService](#getReportingService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`ReportingService`](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration").

    `static [ReportingService](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getReportingService](#getReportingService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getReportingService( ServiceContext sc\_ )

    `static [ReportingService](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getReportingService](#getReportingService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getReportingService( ServiceContext sc\_ )

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getService](#getService\(com.appiancorp.asl3.servicefw.connect.ServiceContext,java.lang.String\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName_)`

    Deprecated.

    Gets an instance of the service referenced by `serviceName_`.

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getService](#getService\(com.appiancorp.suiteapi.personalization.User,java.lang.String\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName_)`

    Deprecated.

    use getService( ServiceContext sc\_, String serviceName\_ )

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getService](#getService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession,java.lang.String\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName_)`

    Deprecated.

    use getService( ServiceContext sc\_, String serviceName\_ )

    `static [StatisticsService](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getStatisticsService](#getStatisticsService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`StatisticsService`](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration").

    `static [StatisticsService](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getStatisticsService](#getStatisticsService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getStatisticsService( ServiceContext sc\_ )

    `static [StatisticsService](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration")`

    `[getStatisticsService](#getStatisticsService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getStatisticsService( ServiceContext sc\_ )

    `static [SynchronizationService](SynchronizationService.html "interface in com.appiancorp.suiteapi.common")`

    `[getSynchronizationService](#getSynchronizationService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getSynchronizationService( ServiceContext sc\_ )

    `static [SynchronizationService](SynchronizationService.html "interface in com.appiancorp.suiteapi.common")`

    `[getSyncronizationService](#getSyncronizationService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`SynchronizationService`](SynchronizationService.html "interface in com.appiancorp.suiteapi.common").

    `static [SynchronizationService](SynchronizationService.html "interface in com.appiancorp.suiteapi.common")`

    `[getSyncronizationService](#getSyncronizationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getSynchronizationService( ServiceContext sc\_ )

    `static [User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization")`

    `[getUser](#getUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    Creates a user object whose username is the given name.

    `static [UserProfileService](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getUserProfileService](#getUserProfileService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`UserProfileService`](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization").

    `static [UserProfileService](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getUserProfileService](#getUserProfileService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getUserProfileService( ServiceContext sc\_ )

    `static [UserProfileService](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getUserProfileService](#getUserProfileService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getUserProfileService( ServiceContext sc\_ )

    `static [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getUserService](#getUserService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))(com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Gets an instance of the [`UserService`](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization").

    `static [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getUserService](#getUserService\(com.appiancorp.suiteapi.personalization.User\))([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u_)`

    Deprecated.

    use getUserService( ServiceContext sc\_ )

    `static [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")`

    `[getUserService](#getUserService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))(javax.servlet.http.HttpServlet s_, javax.servlet.http.HttpSession hs_)`

    Deprecated.

    use getUserService( ServiceContext sc\_ )

    `static void`

    `[releaseCollabAdministrationService](#releaseCollabAdministrationService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseCommunityService](#releaseCommunityService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseDiscussionBodyService](#releaseDiscussionBodyService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseDiscussionMetadataConvenienceService](#releaseDiscussionMetadataConvenienceService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseDiscussionMetadataCoreService](#releaseDiscussionMetadataCoreService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseDocumentService](#releaseDocumentService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseFolderService](#releaseFolderService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseGroupService](#releaseGroupService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseGroupTypeService](#releaseGroupTypeService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseKnowledgeCenterService](#releaseKnowledgeCenterService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseLinksService](#releaseLinksService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseMetadataService](#releaseMetadataService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releasePageNavigationService](#releasePageNavigationService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releasePageService](#releasePageService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releasePortalAdministrationService](#releasePortalAdministrationService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releasePortalNotificationService](#releasePortalNotificationService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releasePortletService](#releasePortletService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseProcessDesignService](#releaseProcessDesignService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseProcessExecutionService](#releaseProcessExecutionService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseReportingService](#releaseReportingService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseService](#releaseService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    Releases the given service.

    `static void`

    `[releaseService](#releaseService\(java.lang.Object,java.lang.String\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") s_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseService](#releaseService\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseService](#releaseService\(javax.servlet.http.HttpServlet,java.lang.String,java.lang.Object\))(javax.servlet.http.HttpServlet s_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseServices](#releaseServices\(java.lang.Object%5B%5D\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] ss_)`

    Deprecated.

    Releases each service in the given array.

    `static void`

    `[releaseServiceSafe](#releaseServiceSafe\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    Releases the given service, trapping and logging any exceptions that are raised.

    `static void`

    `[releaseServicesSafe](#releaseServicesSafe\(java.lang.Object%5B%5D\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] ss_)`

    Deprecated.

    Releases the given services, trapping and logging any exceptions that are raised.

    `static void`

    `[releaseStatisticsService](#releaseStatisticsService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseSynchronizationService](#releaseSynchronizationService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseUserProfileService](#releaseUserProfileService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    `static void`

    `[releaseUserService](#releaseUserService\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv_)`

    Deprecated.

    use releaseService( Service s\_ )

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ServiceFactory

        public ServiceFactory()

        Deprecated.

-   ## Method Details

    -   ### getAdministratorUser

        public static [User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") getAdministratorUser()

        Deprecated.

        Retrieves the user that is the system administrator. This method can be used to consume a service as the administrator, but should obviously be used sparingly for security reasons.

        Returns:

        a user who is the system administrator

    -   ### getUser

        public static [User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") getUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_)

        Deprecated.

        Creates a user object whose username is the given name. This object can then be used to obtain a `ServiceContext`.

        Parameters:

        `userName_` - the username to use

        Returns:

        a `User` with the given username

    -   ### getLeaderMessageService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [LeaderMessageService](../portal/portlets/leadermessage/LeaderMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.leadermessage") getLeaderMessageService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        the Leader Message channel and code will be removed in a future release.

        Gets an instance of the [`LeaderMessageService`](../portal/portlets/leadermessage/LeaderMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.leadermessage").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `LeaderMessageService`

    -   ### getPageNavigationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PageNavigationService](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal") getPageNavigationService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`PageNavigationService`](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `PageNavigationService`

    -   ### getFolderService

        public static [FolderService](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration") getFolderService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        Gets an instance of the [`FolderService`](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `FolderService`

    -   ### getDocumentService

        public static [DocumentService](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration") getDocumentService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        Gets an instance of the [`DocumentService`](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `DocumentService`

    -   ### getPageService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PageService](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal") getPageService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`PageService`](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `PageService`

    -   ### getCollabAdministrationService

        public static [AdministrationService](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration") getCollabAdministrationService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`AdministrationService`](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `AdministrationService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getCollabCommunityService

        public static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration") getCollabCommunityService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`CommunityService`](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `CommunityService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getDiscussionBodyService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionBodyService](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionBodyService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`DiscussionBodyService`](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `DiscussionBodyService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getDiscussionMetadataConvenienceService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionMetadataConvenienceService](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionMetadataConvenienceService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`DiscussionMetadataConvenienceService`](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `DiscussionMetadataConvenienceService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getDiscussionMetadataCoreService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionMetadataCoreService](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionMetadataCoreService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`DiscussionMetadataCoreService`](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `DiscussionMetadataCoreService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPersonalizationSearchService

        public static [PersonalizationSearchService](../personalization/PersonalizationSearchService.html "interface in com.appiancorp.suiteapi.personalization") getPersonalizationSearchService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getGroupService

        public static [GroupService](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization") getGroupService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`GroupService`](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `GroupService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getGroupTypeService

        public static [GroupTypeService](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization") getGroupTypeService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`GroupTypeService`](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `GroupTypeService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getKnowledgeCenterService

        public static [KnowledgeCenterService](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration") getKnowledgeCenterService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`KnowledgeCenterService`](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `KnowledgeCenterService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPortalAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [AdministrationService](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal") getPortalAdministrationService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`AdministrationService`](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `AdministrationService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPortalNotificationService

        public static [PortalNotificationService](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal") getPortalNotificationService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`PortalNotificationService`](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `PortalNotificationService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getNotificationService

        public static [NotificationService](../portal/NotificationService.html "interface in com.appiancorp.suiteapi.portal") getNotificationService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`NotificationService`](../portal/NotificationService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `NotificationService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPortletService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PortletService](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal") getPortletService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`PortletService`](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `PortletService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getProcessAdministrationService

        public static [ProcessAdministrationService](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process") getProcessAdministrationService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`ProcessAdministrationService`](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ProcessAdministrationService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getProcessDesignService

        public static [ProcessDesignService](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process") getProcessDesignService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`ProcessDesignService`](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ProcessDesignService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getProcessExecutionService

        public static [ProcessExecutionService](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process") getProcessExecutionService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`ProcessExecutionService`](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ProcessExecutionService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getExceptionHandlerService

        public static [ExceptionHandlerService](../process/ExceptionHandlerService.html "interface in com.appiancorp.suiteapi.process") getExceptionHandlerService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`ExceptionHandlerService`](../process/ExceptionHandlerService.html "interface in com.appiancorp.suiteapi.process").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ExceptionHandlerService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getReportingService

        public static [ReportingService](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration") getReportingService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`ReportingService`](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ReportingService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getStatisticsService

        public static [StatisticsService](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration") getStatisticsService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`StatisticsService`](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `StatisticsService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getSyncronizationService

        public static [SynchronizationService](SynchronizationService.html "interface in com.appiancorp.suiteapi.common") getSyncronizationService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`SynchronizationService`](SynchronizationService.html "interface in com.appiancorp.suiteapi.common").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `SynchronizationService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getUserProfileService

        public static [UserProfileService](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization") getUserProfileService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`UserProfileService`](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `UserProfileService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getGroupMessageService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [GroupMessageService](../portal/portlets/groupmessage/GroupMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.groupmessage") getGroupMessageService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        the Group Message channel and code will be removed in a future release.

        Gets an instance of the [`GroupMessageService`](../portal/portlets/groupmessage/GroupMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.groupmessage").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `GroupMessageService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getService

        public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the service referenced by `serviceName_`.

        Parameters:

        `sc_` - a context with which to obtain the service

        `serviceName_` - one of the `XXX_SERVICE` constants

        Returns:

        an instance of the service bound to `serviceName_` whose context is `sc_`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getUserService

        public static [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") getUserService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`UserService`](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `UserService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getLinksService

        public static [LinksService](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links") getLinksService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`LinksService`](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `LinksService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getExpressionService

        public static [ExpressionService](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression") getExpressionService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`ExpressionService`](../expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `ExpressionService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getNoteContentsService

        public static [NotesContentService](../process/NotesContentService.html "interface in com.appiancorp.suiteapi.process") getNoteContentsService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`NotesContentService`](../process/NotesContentService.html "interface in com.appiancorp.suiteapi.process").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `NotesContentService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getAdministrationConsoleService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [AdministrationService](../administration/AdministrationService.html "interface in com.appiancorp.suiteapi.administration") getAdministrationConsoleService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        This service pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

        Gets an instance of the [`AdministrationService`](../administration/AdministrationService.html "interface in com.appiancorp.suiteapi.administration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `AdministrationService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getCollabAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [AdministrationService](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration") getCollabAdministrationService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getCollabAdministrationService( ServiceContext sc\_ )

        Gets an instance of [`AdministrationService`](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `AdministrationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getCollabAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [AdministrationService](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration") getCollabAdministrationService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getCollabAdministrationService( ServiceContext sc\_ )

        Gets an instance of [`AdministrationService`](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `AdministrationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getCollabCommunityService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration") getCollabCommunityService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getCollabCommunityService( ServiceContext sc\_ )

        Gets an instance of [`CommunityService`](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `CommunityService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getCommunityService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration") getCommunityService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getCommunityService( ServiceContext sc\_ )

        Gets an instance of [`CommunityService`](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `CommunityService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getCommunityService

        public static [CommunityService](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration") getCommunityService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Gets an instance of the [`CommunityService`](../collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `CommunityService`

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getDiscussionBodyService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionBodyService](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionBodyService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getDiscussionBodyService( ServiceContext sc\_ )

        Gets an instance of [`DiscussionBodyService`](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `DiscussionBodyService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getDiscussionBodyService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionBodyService](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionBodyService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getDiscussionBodyService( ServiceContext sc\_ )

        Gets an instance of [`DiscussionBodyService`](../forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `DiscussionBodyService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getDiscussionMetadataConvenienceService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionMetadataConvenienceService](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionMetadataConvenienceService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getDiscussionMetadataConvenienceService( ServiceContext sc\_ )

        Gets an instance of [`DiscussionMetadataConvenienceService`](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `DiscussionMetadataConvenienceService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getDiscussionMetadataConvenienceService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionMetadataConvenienceService](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionMetadataConvenienceService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getDiscussionMetadataConvenienceService( ServiceContext sc\_ )

        Gets an instance of [`DiscussionMetadataConvenienceService`](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `DiscussionMetadataConvenienceService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getDiscussionMetadataCoreService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionMetadataCoreService](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionMetadataCoreService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getDiscussionMetadataCoreService( ServiceContext sc\_ )

        Gets an instance of [`DiscussionMetadataCoreService`](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `DiscussionMetadataCoreService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getDiscussionMetadataCoreService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionMetadataCoreService](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums") getDiscussionMetadataCoreService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getDiscussionMetadataCoreService( ServiceContext sc\_ )

        Gets an instance of [`DiscussionMetadataCoreService`](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `DiscussionMetadataCoreService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getDiscussionPortletService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DiscussionPortletService](../portal/portlets/discussionthreads/DiscussionPortletService.html "interface in com.appiancorp.suiteapi.portal.portlets.discussionthreads") getDiscussionPortletService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        The Portal functionality will be removed in a future release.

        Gets an instance of the [`DiscussionPortletService`](../portal/portlets/discussionthreads/DiscussionPortletService.html "interface in com.appiancorp.suiteapi.portal.portlets.discussionthreads").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `DiscussionPortletService`

    -   ### getMiniMetadataService

        public static [MiniMetadataService](../portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite") getMiniMetadataService(com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        Gets an instance of the [`MiniMetadataService`](../portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite").

        Parameters:

        `sc_` - a context with which to obtain the service

        Returns:

        a `MiniMetadataService`

    -   ### getDocumentService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DocumentService](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration") getDocumentService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getDocumentService( ServiceContext sc\_ )

        Gets an instance of [`DocumentService`](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `DocumentService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getDocumentService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [DocumentService](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration") getDocumentService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getDocumentService( ServiceContext sc\_ )

        Gets an instance of [`DocumentService`](../collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `DocumentService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getFolderService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [FolderService](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration") getFolderService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getFolderService( ServiceContext sc\_ )

        Gets an instance of [`FolderService`](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `FolderService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getFolderService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [FolderService](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration") getFolderService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getFolderService( ServiceContext sc\_ )

        Gets an instance of [`FolderService`](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `FolderService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getGroupService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [GroupService](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization") getGroupService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getGroupService( ServiceContext sc\_ )

        Gets an instance of [`GroupService`](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `GroupService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getGroupService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [GroupService](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization") getGroupService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getGroupService( ServiceContext sc\_ )

        Gets an instance of [`GroupService`](../personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `GroupService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getGroupTypeService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [GroupTypeService](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization") getGroupTypeService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getGroupTypeService( ServiceContext sc\_ )

        Gets an instance of [`GroupTypeService`](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `GroupTypeService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getGroupTypeService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [GroupTypeService](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization") getGroupTypeService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getGroupTypeService( ServiceContext sc\_ )

        Gets an instance of [`GroupTypeService`](../personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `GroupTypeService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getKnowledgeCenterService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [KnowledgeCenterService](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration") getKnowledgeCenterService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getKnowledgeCenterService( ServiceContext sc\_ )

        Gets an instance of [`KnowledgeCenterService`](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `KnowledgeCenterService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getKnowledgeCenterService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [KnowledgeCenterService](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration") getKnowledgeCenterService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getKnowledgeCenterService( ServiceContext sc\_ )

        Gets an instance of [`KnowledgeCenterService`](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `KnowledgeCenterService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPageNavigationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PageNavigationService](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal") getPageNavigationService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getPageNavigationService( ServiceContext sc\_ )

        Gets an instance of [`PageNavigationService`](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `PageNavigationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPageNavigationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PageNavigationService](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal") getPageNavigationService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getPageNavigationService( ServiceContext sc\_ )

        Gets an instance of [`PageNavigationService`](../portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `PageNavigationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPageService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PageService](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal") getPageService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getPageService( ServiceContext sc\_ )

        Gets an instance of [`PageService`](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `PageService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPageService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PageService](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal") getPageService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getPageService( ServiceContext sc\_ )

        Gets an instance of [`PageService`](../portal/PageService.html "interface in com.appiancorp.suiteapi.portal") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `PageService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPortalAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [AdministrationService](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal") getPortalAdministrationService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getPortalAdministrationService( ServiceContext sc\_ )

        Gets an instance of [`AdministrationService`](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `AdministrationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPortalAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [AdministrationService](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal") getPortalAdministrationService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getPortalAdministrationService( ServiceContext sc\_ )

        Gets an instance of [`AdministrationService`](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `AdministrationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPortalNotificationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PortalNotificationService](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal") getPortalNotificationService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getPortalNotificationService( ServiceContext sc\_ )

        Gets an instance of [`PortalNotificationService`](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `PortalNotificationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPortalNotificationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PortalNotificationService](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal") getPortalNotificationService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getPortalNotificationService( ServiceContext sc\_ )

        Gets an instance of [`PortalNotificationService`](../portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `PortalNotificationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPortletService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PortletService](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal") getPortletService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getPortletService( ServiceContext sc\_ )

        Gets an instance of [`PortletService`](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `PortletService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getPortletService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PortletService](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal") getPortletService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getPortletService( ServiceContext sc\_ )

        Gets an instance of [`PortletService`](../portal/PortletService.html "interface in com.appiancorp.suiteapi.portal") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `PortletService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getProcessAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessAdministrationService](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process") getProcessAdministrationService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getProcessAdministrationService( ServiceContext sc\_ )

        Gets an instance of [`ProcessAdministrationService`](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `ProcessAdministrationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getProcessAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessAdministrationService](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process") getProcessAdministrationService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getProcessAdministrationService( ServiceContext sc\_ )

        Gets an instance of [`ProcessAdministrationService`](../process/ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `ProcessAdministrationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getProcessDesignService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessDesignService](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process") getProcessDesignService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getProcessDesignService( ServiceContext sc\_ )

        Gets an instance of [`ProcessDesignService`](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `ProcessDesignService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getProcessDesignService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessDesignService](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process") getProcessDesignService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getProcessDesignService( ServiceContext sc\_ )

        Gets an instance of [`ProcessDesignService`](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `ProcessDesignService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getProcessExecutionService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessExecutionService](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process") getProcessExecutionService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getProcessExecutionService( ServiceContext sc\_ )

        Gets an instance of [`ProcessExecutionService`](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `ProcessExecutionService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getProcessExecutionService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessExecutionService](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process") getProcessExecutionService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getProcessExecutionService( ServiceContext sc\_ )

        Gets an instance of [`ProcessExecutionService`](../process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `ProcessExecutionService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getReportingService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ReportingService](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration") getReportingService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getReportingService( ServiceContext sc\_ )

        Gets an instance of [`ReportingService`](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `ReportingService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getReportingService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ReportingService](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration") getReportingService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getReportingService( ServiceContext sc\_ )

        Gets an instance of [`ReportingService`](../collaboration/ReportingService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `ReportingService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getService( ServiceContext sc\_, String serviceName\_ )

        Gets an instance of the service referenced by `serviceName_` whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        `serviceName_` - one of the `XXX_SERVICE` constants.

        Returns:

        an instance of the service referenced by `serviceName_`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getService( ServiceContext sc\_, String serviceName\_ )

        Gets an instance of the service referenced by `serviceName_` whose context is determined by the given user.

        Parameters:

        `u_` - the user making the request.

        `serviceName_` - one of the `XXX_SERVICE` constants.

        Returns:

        an instance of the service referenced by `serviceName_`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getStatisticsService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [StatisticsService](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration") getStatisticsService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getStatisticsService( ServiceContext sc\_ )

        Gets an instance of [`StatisticsService`](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `StatisticsService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getStatisticsService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [StatisticsService](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration") getStatisticsService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getStatisticsService( ServiceContext sc\_ )

        Gets an instance of [`StatisticsService`](../collaboration/StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `StatisticsService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getSynchronizationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [SynchronizationService](SynchronizationService.html "interface in com.appiancorp.suiteapi.common") getSynchronizationService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getSynchronizationService( ServiceContext sc\_ )

        Gets an instance of [`SynchronizationService`](SynchronizationService.html "interface in com.appiancorp.suiteapi.common") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `SynchronizationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getSyncronizationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [SynchronizationService](SynchronizationService.html "interface in com.appiancorp.suiteapi.common") getSyncronizationService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getSynchronizationService( ServiceContext sc\_ )

        Gets an instance of [`SynchronizationService`](SynchronizationService.html "interface in com.appiancorp.suiteapi.common") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `SynchronizationService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getUserProfileService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [UserProfileService](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization") getUserProfileService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getUserProfileService( ServiceContext sc\_ )

        Gets an instance of [`UserProfileService`](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `UserProfileService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getUserProfileService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [UserProfileService](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization") getUserProfileService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getUserProfileService( ServiceContext sc\_ )

        Gets an instance of [`UserProfileService`](../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `UserProfileService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getUserService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") getUserService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getUserService( ServiceContext sc\_ )

        Gets an instance of [`UserService`](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `UserService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getUserService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") getUserService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getUserService( ServiceContext sc\_ )

        Gets an instance of [`UserService`](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `UserService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getLinksService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [LinksService](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links") getLinksService(javax.servlet.http.HttpServlet s\_, javax.servlet.http.HttpSession hs\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getLinksService( ServiceContext sc\_ )

        Gets an instance of [`LinksService`](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links") whose context is determined by the given session.

        Parameters:

        `s_` - the servlet from which this request is made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `hs_` - the session of the user making the request. This session is used to forge a context under which the service is obtained.

        Returns:

        a `LinksService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### getLinksService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [LinksService](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links") getLinksService([User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") u\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use getLinksService( ServiceContext sc\_ )

        Gets an instance of [`LinksService`](../portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links") whose context is determined by the given session.

        Parameters:

        `u_` - the user making the request.

        Returns:

        a `LinksService`.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseCollabAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseCollabAdministrationService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseCommunityService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseCommunityService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseDiscussionBodyService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseDiscussionBodyService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseDiscussionMetadataConvenienceService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseDiscussionMetadataConvenienceService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseDiscussionMetadataCoreService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseDiscussionMetadataCoreService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseDocumentService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseDocumentService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseFolderService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseFolderService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseGroupService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseGroupService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseGroupTypeService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseGroupTypeService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseKnowledgeCenterService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseKnowledgeCenterService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releasePageNavigationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releasePageNavigationService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releasePageService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releasePageService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releasePortalAdministrationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releasePortalAdministrationService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releasePortalNotificationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releasePortalNotificationService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releasePortletService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releasePortletService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseProcessDesignService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseProcessDesignService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseProcessExecutionService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseProcessExecutionService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseReportingService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseReportingService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseService(javax.servlet.http.HttpServlet s\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `s_` - the servlet from which the request is being made. The old ASL supported a mode in which each servlet could have its own ASL configuration.

        `serv_` - the service to release

        `name_` - one of the `XXX_SERVICE` constants indicating what king of service `serv_` is.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") s\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `s_` - the service to release

        `serviceName_` - one of the `XXX_SERVICE` constants indicating what king of service `s_` is.

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseService([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `name_` - one of the `XXX_SERVICE` constants indicating what king of service `serv_` is.

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseStatisticsService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseStatisticsService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseSynchronizationService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseSynchronizationService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseUserProfileService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseUserProfileService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseUserService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseUserService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseLinksService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseLinksService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseMetadataService

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void releaseMetadataService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        use releaseService( Service s\_ )

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseService

        public static void releaseService([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Releases the given service. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseServices

        public static void releaseServices([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] ss\_) throws com.appiancorp.asl3.servicefw.connect.ServiceException

        Deprecated.

        Releases each service in the given array. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `ss_` - the services to release

        Throws:

        `com.appiancorp.asl3.servicefw.connect.ServiceException`

    -   ### releaseServiceSafe

        public static void releaseServiceSafe([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") serv\_)

        Deprecated.

        Releases the given service, trapping and logging any exceptions that are raised. This method is "safe" because it does not throw any unchecked exceptions. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `serv_` - the service to release

    -   ### releaseServicesSafe

        public static void releaseServicesSafe([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] ss\_)

        Deprecated.

        Releases the given services, trapping and logging any exceptions that are raised. This method is "safe" because it does not throw any unchecked exceptions. Services do not have to be released, but they should be, because future implementations may require the releasing of underlying resources.

        Parameters:

        `ss_` - the services to release