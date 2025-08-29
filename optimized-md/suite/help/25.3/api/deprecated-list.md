---
source_url: https://docs.appian.com/suite/help/25.3/api/deprecated-list.html
original_path: api/deprecated-list.html
version: "25.3"
---

# Deprecated API

## Contents

-   [Packages](#package)
-   [Interfaces](#interface)
-   [Classes](#class)
-   [Exceptions](#exception)
-   [Annotation Interfaces](#annotation-interface)
-   [Fields](#field)
-   [Methods](#method)
-   [Constructors](#constructor)
-   [Enum Constants](#enum-constant)
-   [Annotation Interface Elements](#annotation-interface-member)

-   Deprecated Packages

    Package

    Description

    [com.appiancorp.suiteapi.administration](com/appiancorp/suiteapi/administration/package-summary.html)

    This package pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

    [com.appiancorp.suiteapi.forums](com/appiancorp/suiteapi/forums/package-summary.html)

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

-   Deprecated Interfaces

    Interface

    Description

    [com.appiancorp.suiteapi.administration.AdministrationService](com/appiancorp/suiteapi/administration/AdministrationService.html "interface in com.appiancorp.suiteapi.administration")

    The AdministrationService pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

    [com.appiancorp.suiteapi.collaboration.AdministrationService](com/appiancorp/suiteapi/collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.collaboration.CollaborationSearchService](com/appiancorp/suiteapi/collaboration/CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration")

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.collaboration.CollaborationUserService](com/appiancorp/suiteapi/collaboration/CollaborationUserService.html "interface in com.appiancorp.suiteapi.collaboration")

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.collaboration.CommunityService](com/appiancorp/suiteapi/collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.collaboration.DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.collaboration.FolderService](com/appiancorp/suiteapi/collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration")

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.common.SynchronizationService](com/appiancorp/suiteapi/common/SynchronizationService.html "interface in com.appiancorp.suiteapi.common")

    This interface and all of the methods defined within are obsolete and will be removed in a future release.

    [com.appiancorp.suiteapi.forums.DiscussionBodyService](com/appiancorp/suiteapi/forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService](com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.ForumsSearchService](com/appiancorp/suiteapi/forums/ForumsSearchService.html "interface in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.portal.AdministrationService](com/appiancorp/suiteapi/portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.portal.EmailNotificationService](com/appiancorp/suiteapi/portal/EmailNotificationService.html "interface in com.appiancorp.suiteapi.portal")

    The Notification functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.GlobalizationService](com/appiancorp/suiteapi/portal/GlobalizationService.html "interface in com.appiancorp.suiteapi.portal")

    Globalization updates should be done via the Admin Console.

    [com.appiancorp.suiteapi.portal.NavigationCounter](com/appiancorp/suiteapi/portal/NavigationCounter.html "interface in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.NavigationService](com/appiancorp/suiteapi/portal/NavigationService.html "interface in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.NotificationService](com/appiancorp/suiteapi/portal/NotificationService.html "interface in com.appiancorp.suiteapi.portal")

    The Notification functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.PageNavigationService](com/appiancorp/suiteapi/portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.PageService](com/appiancorp/suiteapi/portal/PageService.html "interface in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

    The Notification functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.PortalSearchService](com/appiancorp/suiteapi/portal/PortalSearchService.html "interface in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.discussionthreads.DiscussionPortletService](com/appiancorp/suiteapi/portal/portlets/discussionthreads/DiscussionPortletService.html "interface in com.appiancorp.suiteapi.portal.portlets.discussionthreads")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.groupmessage")

    The Group Message channel and code will be removed in a future release.

    [com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageService](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.leadermessage")

    The Leader Message channel and code will be removed in a future release.

    [com.appiancorp.suiteapi.portal.portlets.links.LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniBodyService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.PortletService](com/appiancorp/suiteapi/portal/PortletService.html "interface in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.process.NotesContentService](com/appiancorp/suiteapi/process/NotesContentService.html "interface in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.TypedVariableTypes](com/appiancorp/suiteapi/process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")

    Use [`AppianType`](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type") instead.

-   Deprecated Classes

    Class

    Description

    [com.appiancorp.ap2.PortletUpdateAction](com/appiancorp/ap2/PortletUpdateAction.html "class in com.appiancorp.ap2")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.common.appianwebmvc.BaseAction](com/appiancorp/common/appianwebmvc/BaseAction.html "class in com.appiancorp.common.appianwebmvc")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.common.appianwebmvc.BaseActionForm](com/appiancorp/common/appianwebmvc/BaseActionForm.html "class in com.appiancorp.common.appianwebmvc")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.common.appianwebmvc.BaseUpdateAction](com/appiancorp/common/appianwebmvc/BaseUpdateAction.html "class in com.appiancorp.common.appianwebmvc")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.common.appianwebmvc.BaseViewAction](com/appiancorp/common/appianwebmvc/BaseViewAction.html "class in com.appiancorp.common.appianwebmvc")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.administration.AdminConsolePermissions](com/appiancorp/suiteapi/administration/AdminConsolePermissions.html "class in com.appiancorp.suiteapi.administration")

    This class pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

    [com.appiancorp.suiteapi.administration.AdminConsoleRoleMap](com/appiancorp/suiteapi/administration/AdminConsoleRoleMap.html "class in com.appiancorp.suiteapi.administration")

    This class pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

    [com.appiancorp.suiteapi.administration.Folder](com/appiancorp/suiteapi/administration/Folder.html "class in com.appiancorp.suiteapi.administration")

    This class pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

    [com.appiancorp.suiteapi.collaboration.CollaborationRoleMap](com/appiancorp/suiteapi/collaboration/CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration")

    Use the class [`ContentRoleMap`](com/appiancorp/suiteapi/content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.collaboration.Community](com/appiancorp/suiteapi/collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration")

    Use the class [`Community`](com/appiancorp/suiteapi/knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge") instead.

    [com.appiancorp.suiteapi.collaboration.Document](com/appiancorp/suiteapi/collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration")

    Use the class [`Document`](com/appiancorp/suiteapi/knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge") instead.

    [com.appiancorp.suiteapi.collaboration.Folder](com/appiancorp/suiteapi/collaboration/Folder.html "class in com.appiancorp.suiteapi.collaboration")

    Use the class [`KnowledgeFolder`](com/appiancorp/suiteapi/knowledge/KnowledgeFolder.html "class in com.appiancorp.suiteapi.knowledge") instead.

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenter](com/appiancorp/suiteapi/collaboration/KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")

    Use the class [`CommunityKnowledgeCenter`](com/appiancorp/suiteapi/knowledge/CommunityKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge") instead.

    [com.appiancorp.suiteapi.collaboration.MenuTree](com/appiancorp/suiteapi/collaboration/MenuTree.html "class in com.appiancorp.suiteapi.collaboration")

    [com.appiancorp.suiteapi.collaboration.UserSpace](com/appiancorp/suiteapi/collaboration/UserSpace.html "class in com.appiancorp.suiteapi.collaboration")

    [com.appiancorp.suiteapi.common.CredentialsReturnConverter](com/appiancorp/suiteapi/common/CredentialsReturnConverter.html "class in com.appiancorp.suiteapi.common")

    [com.appiancorp.suiteapi.common.exceptions.ExceptionUtil](com/appiancorp/suiteapi/common/exceptions/ExceptionUtil.html "class in com.appiancorp.suiteapi.common.exceptions")

    use individual method replacements

    [com.appiancorp.suiteapi.common.LocaleStringParameterConverter](com/appiancorp/suiteapi/common/LocaleStringParameterConverter.html "class in com.appiancorp.suiteapi.common")

    [com.appiancorp.suiteapi.common.LocaleStringReturnConverter](com/appiancorp/suiteapi/common/LocaleStringReturnConverter.html "class in com.appiancorp.suiteapi.common")

    [com.appiancorp.suiteapi.common.NamedTypedValueReturnConverter](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

    [com.appiancorp.suiteapi.common.ResultPageReturnConverter](com/appiancorp/suiteapi/common/ResultPageReturnConverter.html "class in com.appiancorp.suiteapi.common")

    [com.appiancorp.suiteapi.common.ServiceFactory](com/appiancorp/suiteapi/common/ServiceFactory.html "class in com.appiancorp.suiteapi.common")

    [com.appiancorp.suiteapi.common.ServiceLocator](com/appiancorp/suiteapi/common/ServiceLocator.html "class in com.appiancorp.suiteapi.common")

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.content.ContentOutputStream](com/appiancorp/suiteapi/content/ContentOutputStream.html "class in com.appiancorp.suiteapi.content")

    since 23.2. Use [`ContentUploadOutputStream`](com/appiancorp/suiteapi/content/ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content") or [`DocumentOutputStream`](com/appiancorp/suiteapi/content/DocumentOutputStream.html "class in com.appiancorp.suiteapi.content") instead

    [com.appiancorp.suiteapi.forums.Attachment](com/appiancorp/suiteapi/forums/Attachment.html "class in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.DiscussionThread](com/appiancorp/suiteapi/forums/DiscussionThread.html "class in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.Forum](com/appiancorp/suiteapi/forums/Forum.html "class in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.ForumsRoleMap](com/appiancorp/suiteapi/forums/ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.ForumSummary](com/appiancorp/suiteapi/forums/ForumSummary.html "class in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.Message](com/appiancorp/suiteapi/forums/Message.html "class in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.ThreadedMessage](com/appiancorp/suiteapi/forums/ThreadedMessage.html "class in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.ThreadRoleMap](com/appiancorp/suiteapi/forums/ThreadRoleMap.html "class in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.ThreadSummary](com/appiancorp/suiteapi/forums/ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.UserMessageCount](com/appiancorp/suiteapi/forums/UserMessageCount.html "class in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.UserUtilities](com/appiancorp/suiteapi/forums/UserUtilities.html "class in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.messaging.MappingReturnConverter](com/appiancorp/suiteapi/messaging/MappingReturnConverter.html "class in com.appiancorp.suiteapi.messaging")

    [com.appiancorp.suiteapi.personalization.AttributeReturnConverter](com/appiancorp/suiteapi/personalization/AttributeReturnConverter.html "class in com.appiancorp.suiteapi.personalization")

    [com.appiancorp.suiteapi.portal.Application](com/appiancorp/suiteapi/portal/Application.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.Attribute](com/appiancorp/suiteapi/portal/Attribute.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.Contribution](com/appiancorp/suiteapi/portal/Contribution.html "class in com.appiancorp.suiteapi.portal")

    This functionality is no longer supported and will be removed in the next release.

    [com.appiancorp.suiteapi.portal.DatabaseStatus](com/appiancorp/suiteapi/portal/DatabaseStatus.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.LoginData](com/appiancorp/suiteapi/portal/LoginData.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.Medium](com/appiancorp/suiteapi/portal/Medium.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.NavigationButton](com/appiancorp/suiteapi/portal/NavigationButton.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.NavigationMenu](com/appiancorp/suiteapi/portal/NavigationMenu.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.Notification](com/appiancorp/suiteapi/portal/Notification.html "class in com.appiancorp.suiteapi.portal")

    The Notification functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.NotificationRule](com/appiancorp/suiteapi/portal/NotificationRule.html "class in com.appiancorp.suiteapi.portal")

    The Notification functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.NotificationsSummary](com/appiancorp/suiteapi/portal/NotificationsSummary.html "class in com.appiancorp.suiteapi.portal")

    The Notification functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.Page](com/appiancorp/suiteapi/portal/Page.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.PageInfo](com/appiancorp/suiteapi/portal/PageInfo.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.PageRoleMap](com/appiancorp/suiteapi/portal/PageRoleMap.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.PortalGroup](com/appiancorp/suiteapi/portal/PortalGroup.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.PortalGroup.Page](com/appiancorp/suiteapi/portal/PortalGroup.Page.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.PortalRoleMap](com/appiancorp/suiteapi/portal/PortalRoleMap.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.Portlet](com/appiancorp/suiteapi/portal/Portlet.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessage](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessage.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

    The Group Message channel and code will be removed in a future release.

    [com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageLink](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessageLink.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

    The Group Message channel and code will be removed in a future release.

    [com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessage](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessage.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

    The Leader Message channel and code will be removed in a future release.

    [com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageLink](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessageLink.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

    The Leader Message channel and code will be removed in a future release.

    [com.appiancorp.suiteapi.portal.portlets.links.Folder](com/appiancorp/suiteapi/portal/portlets/links/Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.links.Link](com/appiancorp/suiteapi/portal/portlets/links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.links.LinkType](com/appiancorp/suiteapi/portal/portlets/links/LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.miniwebsite.FileChange](com/appiancorp/suiteapi/portal/portlets/miniwebsite/FileChange.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadata](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.wsrp.consumer.PersistedWSRPProducer](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/PersistedWSRPProducer.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.PortletType](com/appiancorp/suiteapi/portal/PortletType.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.process.AcpReturnConverter](com/appiancorp/suiteapi/process/AcpReturnConverter.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.AcpsReturnConverter](com/appiancorp/suiteapi/process/AcpsReturnConverter.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.analytics2.CompletedAheadOfScheduleFilter](com/appiancorp/suiteapi/process/analytics2/CompletedAheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    this unused filter will be removed in a future release

    [com.appiancorp.suiteapi.process.analytics2.CompletedBehindScheduleFilter](com/appiancorp/suiteapi/process/analytics2/CompletedBehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    this unused filter will be removed in a future release; use instead [`DueTodayFilter`](com/appiancorp/suiteapi/process/analytics2/DueTodayFilter.html "class in com.appiancorp.suiteapi.process.analytics2") as it returns the same results

    [com.appiancorp.suiteapi.process.analytics2.NotYetCompletedFilter](com/appiancorp/suiteapi/process/analytics2/NotYetCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    this unused filter will be removed in a future release

    [com.appiancorp.suiteapi.process.ArvReturnConverter](com/appiancorp/suiteapi/process/ArvReturnConverter.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.AssigneeReturnConverter](com/appiancorp/suiteapi/process/AssigneeReturnConverter.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.calendar.SystemCalendar](com/appiancorp/suiteapi/process/calendar/SystemCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

    use [`WorkingCalendar`](com/appiancorp/suiteapi/process/calendar/WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

    [com.appiancorp.suiteapi.process.events.EventProducerReturnConverter](com/appiancorp/suiteapi/process/events/EventProducerReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

    [com.appiancorp.suiteapi.process.events.EventReturnConverter](com/appiancorp/suiteapi/process/events/EventReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

    [com.appiancorp.suiteapi.process.events.EventTriggerReturnConverter](com/appiancorp/suiteapi/process/events/EventTriggerReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

    [com.appiancorp.suiteapi.process.FormConfigMapParameterConverter](com/appiancorp/suiteapi/process/FormConfigMapParameterConverter.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.forms.FormConfigMapReturnConverter](com/appiancorp/suiteapi/process/forms/FormConfigMapReturnConverter.html "class in com.appiancorp.suiteapi.process.forms")

    [com.appiancorp.suiteapi.process.GenericTypedVariable](com/appiancorp/suiteapi/process/GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")

    Use the class [`NamedTypedValue`](com/appiancorp/suiteapi/type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") instead.

    [com.appiancorp.suiteapi.process.Note](com/appiancorp/suiteapi/process/Note.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.NoteMetadata](com/appiancorp/suiteapi/process/NoteMetadata.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.NotePermissions](com/appiancorp/suiteapi/process/NotePermissions.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.PvInstancesReturnConverter](com/appiancorp/suiteapi/process/PvInstancesReturnConverter.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.PvReturnConverter](com/appiancorp/suiteapi/process/PvReturnConverter.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.TvReturnConverter](com/appiancorp/suiteapi/process/TvReturnConverter.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.TypeDescriptor](com/appiancorp/suiteapi/process/TypeDescriptor.html "class in com.appiancorp.suiteapi.process")

    Use the TypeService and related APIs instead.

    [com.appiancorp.suiteapi.process.TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

    Use the class [`NamedTypedValue`](com/appiancorp/suiteapi/type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") instead.

-   Deprecated Exceptions

    Exceptions

    Description

    [com.appiancorp.exceptions.AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions")

    use [`AppianException`](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    [com.appiancorp.suiteapi.common.exceptions.InvalidCreatorException](com/appiancorp/suiteapi/common/exceptions/InvalidCreatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

    use InvalidUserException

    [com.appiancorp.suiteapi.portal.InvalidPortletTypeDefinitionException](com/appiancorp/suiteapi/portal/InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.InvalidPortletTypeStateException](com/appiancorp/suiteapi/portal/InvalidPortletTypeStateException.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.InvalidPortletTypeStateFilterException](com/appiancorp/suiteapi/portal/InvalidPortletTypeStateFilterException.html "class in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.groupmessage.InvalidGroupMessageException](com/appiancorp/suiteapi/portal/portlets/groupmessage/InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

    The Group Message Channel will be removed in a future release

    [com.appiancorp.suiteapi.portal.portlets.leadermessage.InvalidLeaderMessageException](com/appiancorp/suiteapi/portal/portlets/leadermessage/InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

    The Leader Message channel and code will be removed in a future release.

    [com.appiancorp.suiteapi.portal.portlets.links.InvalidFolderException](com/appiancorp/suiteapi/portal/portlets/links/InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.links.InvalidLinkException](com/appiancorp/suiteapi/portal/portlets/links/InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.links.InvalidLinkTypeException](com/appiancorp/suiteapi/portal/portlets/links/InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.links.OutOfLinkTypesException](com/appiancorp/suiteapi/portal/portlets/links/OutOfLinkTypesException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.wsrp.consumer.DuplicateWSRPProducerURLException](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/DuplicateWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.wsrp.consumer.InvalidWSRPProducerException](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.portal.portlets.wsrp.consumer.InvalidWSRPProducerURLException](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.process.exceptions.InvalidTaskException](com/appiancorp/suiteapi/process/exceptions/InvalidTaskException.html "class in com.appiancorp.suiteapi.process.exceptions")

    use InvalidActivityException

-   Deprecated Annotation Interfaces

    Annotation Interface

    Description

    [com.appiancorp.suiteapi.forums.DiscussionMessageDataType](com/appiancorp/suiteapi/forums/DiscussionMessageDataType.html "annotation interface in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.DiscussionThreadDataType](com/appiancorp/suiteapi/forums/DiscussionThreadDataType.html "annotation interface in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.forums.ForumDataType](com/appiancorp/suiteapi/forums/ForumDataType.html "annotation interface in com.appiancorp.suiteapi.forums")

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.portal.PageDataType](com/appiancorp/suiteapi/portal/PageDataType.html "annotation interface in com.appiancorp.suiteapi.portal")

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.process.palette.Activities](com/appiancorp/suiteapi/process/palette/Activities.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`WorkflowActivities`](com/appiancorp/suiteapi/process/palette/WorkflowActivities.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.Analytics](com/appiancorp/suiteapi/process/palette/Analytics.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesAnalitycs`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesAnalitycs.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.Communication](com/appiancorp/suiteapi/process/palette/Communication.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesCommunication`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesCommunication.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.ConnectivityServices](com/appiancorp/suiteapi/process/palette/ConnectivityServices.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesIntegrationAPIs`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesIntegrationAPIs.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.DataServices](com/appiancorp/suiteapi/process/palette/DataServices.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesDataServices`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesDataServices.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.DocumentGeneration](com/appiancorp/suiteapi/process/palette/DocumentGeneration.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesDocumentGeneration`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesDocumentGeneration.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.DocumentManagement](com/appiancorp/suiteapi/process/palette/DocumentManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesDocumentManagement`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesDocumentManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.Events](com/appiancorp/suiteapi/process/palette/Events.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`WorkflowEvents`](com/appiancorp/suiteapi/process/palette/WorkflowEvents.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.Feeds](com/appiancorp/suiteapi/process/palette/Feeds.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This class will be removed from the public API in a future release. The "Feeds" palette was renamed to "Social"

    [com.appiancorp.suiteapi.process.palette.ForumManagement](com/appiancorp/suiteapi/process/palette/ForumManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.Gateways](com/appiancorp/suiteapi/process/palette/Gateways.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`WorkflowGateways`](com/appiancorp/suiteapi/process/palette/WorkflowGateways.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.IdentityManagement](com/appiancorp/suiteapi/process/palette/IdentityManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesIdentityManagement`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesIdentityManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.PortalManagement](com/appiancorp/suiteapi/process/palette/PortalManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.ProcessManagement](com/appiancorp/suiteapi/process/palette/ProcessManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesProcessManagement`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesProcessManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.RuleManagement](com/appiancorp/suiteapi/process/palette/RuleManagement.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesBusinessRules`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesBusinessRules.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    [com.appiancorp.suiteapi.process.palette.Social](com/appiancorp/suiteapi/process/palette/Social.html "annotation interface in com.appiancorp.suiteapi.process.palette")

    This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesSocial`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesSocial.html "annotation interface in com.appiancorp.suiteapi.process.palette")

-   Deprecated Fields

    Field

    Description

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.CODELESS\_DATA\_MODELING\_INCORRECT\_DATA\_CONFIGURATION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_INCORRECT_DATA_CONFIGURATION)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.CODELESS\_DATA\_MODELING\_NON\_MATCHING\_FIELDS](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_NON_MATCHING_FIELDS)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.CODELESS\_DATA\_MODELING\_PARTIAL\_SQL\_FAILURE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_PARTIAL_SQL_FAILURE)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_CHECK\_PERMISSION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_SQL_FAILED_TO_CHECK_PERMISSION)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_CHECK\_TABLE\_EXISTS](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_SQL_FAILED_TO_CHECK_TABLE_EXISTS)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_FETCH\_COLUMNS](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_SQL_FAILED_TO_FETCH_COLUMNS)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.CODELESS\_DATA\_MODELING\_SQL\_NOT\_PRESENT\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_SQL_NOT_PRESENT_ERROR)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.DATA\_EXPORT\_DATA\_DENSITY\_TOO\_HIGH](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#DATA_EXPORT_DATA_DENSITY_TOO_HIGH)

    Used in 17.4 and 18.1 only

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.DECISION\_TABLE\_DUPLICATED\_DECISION\_TABLE\_NAME](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#DECISION_TABLE_DUPLICATED_DECISION_TABLE_NAME)

    ErrorCode for unreleased Decision Table feature

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.DECISION\_TABLE\_DUPLICATED\_INPUT\_NAME](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#DECISION_TABLE_DUPLICATED_INPUT_NAME)

    ErrorCode for unreleased Decision Table feature

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.DECISION\_TABLE\_INVALID\_CONDITION\_DEFINITION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#DECISION_TABLE_INVALID_CONDITION_DEFINITION)

    ErrorCode for unreleased Decision Table feature

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.DECISION\_TABLE\_INVALID\_DECISION\_TABLE\_NAME](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#DECISION_TABLE_INVALID_DECISION_TABLE_NAME)

    ErrorCode for unreleased Decision Table feature

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.DECISION\_TABLE\_INVALID\_INPUT\_NAME](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#DECISION_TABLE_INVALID_INPUT_NAME)

    ErrorCode for unreleased Decision Table feature

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.DECISION\_TABLE\_INVALID\_RULE\_INPUT](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#DECISION_TABLE_INVALID_RULE_INPUT)

    ErrorCode for unreleased Decision Table feature

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.DECISION\_TABLE\_OPERATOR\_TYPE\_MISMATCH](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#DECISION_TABLE_OPERATOR_TYPE_MISMATCH)

    ErrorCode for unreleased Decision Table feature

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.HIERARCHY\_FIELD\_NODE\_DUPLICATE\_ID](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#HIERARCHY_FIELD_NODE_DUPLICATE_ID)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.KM\_INVALID\_DATA\_FORMAT](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#KM_INVALID_DATA_FORMAT)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.KM\_INVALID\_REPORT](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#KM_INVALID_REPORT)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.OUTBOUND\_INTEGRATION\_MISSING\_PROPERTY\_UPDATE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#OUTBOUND_INTEGRATION_MISSING_PROPERTY_UPDATE)

    outboundintegration ix create exception

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.QUERY\_RECORD\_CANNOT\_QUERY\_EXPRESSION\_BASED\_RECORDS](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#QUERY_RECORD_CANNOT_QUERY_EXPRESSION_BASED_RECORDS)

    use [`ErrorCode.RECORD_QUERY_CANNOT_QUERY_EXPRESSION_BASED_RECORDS`](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_QUERY_CANNOT_QUERY_EXPRESSION_BASED_RECORDS) instead.

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.QUERY\_VALIDATOR\_FILTER\_LOGICAL\_EXPRESSION\_MISSING\_CRITERIA](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#QUERY_VALIDATOR_FILTER_LOGICAL_EXPRESSION_MISSING_CRITERIA)

    passing empty criteria to the "filters" parameter of queryLogicalExpression no longer results in an error.

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_DATA\_SYNC\_BRANCH\_NOT\_OPENED](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_DATA_SYNC_BRANCH_NOT_OPENED)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_DELETE\_NO\_PK\_INPUT](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_DELETE_NO_PK_INPUT)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_FROM\_SCRATCH\_BAD\_DATA\_SOURCE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_FROM_SCRATCH_BAD_DATA_SOURCE)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_FROM\_SCRATCH\_CANT\_HAVE\_NULL\_TABLE\_NAME](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_FROM_SCRATCH_CANT_HAVE_NULL_TABLE_NAME)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_FROM\_SCRATCH\_DOCUMENT\_PERSIST\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_FROM_SCRATCH_DOCUMENT_PERSIST_ERROR)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_FROM\_SCRATCH\_FAILED\_TO\_GET\_UNIQUE\_NAME](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_FROM_SCRATCH_FAILED_TO_GET_UNIQUE_NAME)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_FROM\_SCRATCH\_TABLE\_CREATION\_UNSUCCESFUL](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_FROM_SCRATCH_TABLE_CREATION_UNSUCCESFUL)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_FROM\_SCRATCH\_TABLE\_PUBLISH\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_FROM_SCRATCH_TABLE_PUBLISH_ERROR)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_SECURITY\_INVALID\_RECORD\_IDENTIFIER\_TYPE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_SECURITY_INVALID_RECORD_IDENTIFIER_TYPE)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_SECURITY\_NOT\_ENABLED\_FOR\_ENTITY](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_SECURITY_NOT_ENABLED_FOR_ENTITY)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_SECURITY\_REQUIRES\_DATA\_STORE\_ADMIN](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_SECURITY_REQUIRES_DATA_STORE_ADMIN)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_SECURITY\_REQUIRES\_EDITOR\_PERMISSION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_SECURITY_REQUIRES_EDITOR_PERMISSION)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_SYNC\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_SYNC_ERROR)

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_TYPE\_INSUFFICIENT\_PRIVILEGES\_TEMP](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_TYPE_INSUFFICIENT_PRIVILEGES_TEMP)

    `ErrorCode.RECORD_TYPE_NOT_FOUND_INSUFFICIENT_PRIVILEGES`

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_UI\_DETAIL](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_UI_DETAIL)

    see RECORD\_UI\_HEADER\_DETAIL

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.RECORD\_UI\_HEADER](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#RECORD_UI_HEADER)

    see RECORD\_UI\_HEADER\_DETAIL

    [com.appiancorp.suiteapi.common.exceptions.ErrorCode.TYPE\_VALIDATION\_EXPR\_DESIGNER\_HEADER\_COLUMN\_ARRAY\_NULL](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#TYPE_VALIDATION_EXPR_DESIGNER_HEADER_COLUMN_ARRAY_NULL)

    Type no longer exists

    [com.appiancorp.suiteapi.common.ServiceLocator.ADMIN\_USERNAME](com/appiancorp/suiteapi/common/ServiceLocator.html#ADMIN_USERNAME)

    Use `ServiceContextFactory.ADMIN_USERNAME` instead

    [com.appiancorp.suiteapi.common.ServiceLocator.ANONYMOUS\_USERNAME](com/appiancorp/suiteapi/common/ServiceLocator.html#ANONYMOUS_USERNAME)

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceName.DISCUSSION\_PORTLET\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#DISCUSSION_PORTLET_SERVICE)

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.common.ServiceName.MINI\_METADATA\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#MINI_METADATA_SERVICE)

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.common.ServiceName.NAV\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#NAV_SERVICE)

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.common.ServiceName.NAVIGATION\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#NAVIGATION_SERVICE)

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.common.ServiceName.NOTIFICATION\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#NOTIFICATION_SERVICE)

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.common.ServiceName.PAGE\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#PAGE_SERVICE)

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.common.ServiceName.PORTAL\_ADMINISTRATION\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#PORTAL_ADMINISTRATION_SERVICE)

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.common.ServiceName.PORTAL\_NOTIFICATION\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#PORTAL_NOTIFICATION_SERVICE)

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.common.ServiceName.PORTLET\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#PORTLET_SERVICE)

    The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.common.ValidationCode.IX\_GROUP\_RULES\_IGNORED](com/appiancorp/suiteapi/common/ValidationCode.html#IX_GROUP_RULES_IGNORED)

    [com.appiancorp.suiteapi.common.XMLable.DEFAULT\_BUFFER\_SIZE](com/appiancorp/suiteapi/common/XMLable.html#DEFAULT_BUFFER_SIZE)

    use the default StringBuilder constructor or one adjusted directly to the known size

    [com.appiancorp.suiteapi.content.ContentConstants.COLUMN\_METADATA\_IDS](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_METADATA_IDS)

    Use attributes to associate metadata instead.

    [com.appiancorp.suiteapi.content.ContentConstants.CREATION\_SECURITY\_TYPE](com/appiancorp/suiteapi/content/ContentConstants.html#CREATION_SECURITY_TYPE)

    No longer used

    [com.appiancorp.suiteapi.content.ContentConstants.FILTER\_TYPE\_ALL](com/appiancorp/suiteapi/content/ContentConstants.html#FILTER_TYPE_ALL)

    use [`ContentFilter.ALL`](com/appiancorp/suiteapi/content/ContentFilter.html#ALL)

    [com.appiancorp.suiteapi.content.ContentConstants.KNOWLEDGE\_ROOT\_SYSTEM\_ID](com/appiancorp/suiteapi/content/ContentConstants.html#KNOWLEDGE_ROOT_SYSTEM_ID)

    use [`ContentConstants.UUID_COMMUNITY_ROOT`](com/appiancorp/suiteapi/content/ContentConstants.html#UUID_COMMUNITY_ROOT) and [`ContentService.getIdByUuid(String)`](com/appiancorp/suiteapi/content/ContentService.html#getIdByUuid\(java.lang.String\))

    [com.appiancorp.suiteapi.content.ContentConstants.RULES\_ROOT\_SYSTEM\_ID](com/appiancorp/suiteapi/content/ContentConstants.html#RULES_ROOT_SYSTEM_ID)

    use [`ContentConstants.UUID_RULES_ROOT_FOLDER`](com/appiancorp/suiteapi/content/ContentConstants.html#UUID_RULES_ROOT_FOLDER) and [`ContentService.getIdByUuid(String)`](com/appiancorp/suiteapi/content/ContentService.html#getIdByUuid\(java.lang.String\))

    [com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE\_RULE\_DECISION\_TABLE](com/appiancorp/suiteapi/content/ContentConstants.html#SUBTYPE_RULE_DECISION_TABLE)

    Was never supported.

    [com.appiancorp.suiteapi.content.ContentConstants.VIS\_QUOTA](com/appiancorp/suiteapi/content/ContentConstants.html#VIS_QUOTA)

    User quotas have been removed. This visibility flag has no effect.

    [com.appiancorp.suiteapi.personalization.GroupSearch.CONTAINS](com/appiancorp/suiteapi/personalization/GroupSearch.html#CONTAINS)

    [com.appiancorp.suiteapi.personalization.GroupSearch.DOES\_NOT\_EQUAL](com/appiancorp/suiteapi/personalization/GroupSearch.html#DOES_NOT_EQUAL)

    [com.appiancorp.suiteapi.personalization.GroupSearch.ENDS\_WITH](com/appiancorp/suiteapi/personalization/GroupSearch.html#ENDS_WITH)

    [com.appiancorp.suiteapi.personalization.GroupSearch.EQUALS](com/appiancorp/suiteapi/personalization/GroupSearch.html#EQUALS)

    [com.appiancorp.suiteapi.personalization.GroupSearch.GREATER\_THAN](com/appiancorp/suiteapi/personalization/GroupSearch.html#GREATER_THAN)

    [com.appiancorp.suiteapi.personalization.GroupSearch.GREATER\_THAN\_OR\_EQUALS](com/appiancorp/suiteapi/personalization/GroupSearch.html#GREATER_THAN_OR_EQUALS)

    [com.appiancorp.suiteapi.personalization.GroupSearch.LESS\_THAN](com/appiancorp/suiteapi/personalization/GroupSearch.html#LESS_THAN)

    [com.appiancorp.suiteapi.personalization.GroupSearch.LESS\_THAN\_OR\_EQUALS](com/appiancorp/suiteapi/personalization/GroupSearch.html#LESS_THAN_OR_EQUALS)

    [com.appiancorp.suiteapi.personalization.GroupSearch.LIKE](com/appiancorp/suiteapi/personalization/GroupSearch.html#LIKE)

    [com.appiancorp.suiteapi.personalization.GroupSearch.STARTS\_WITH](com/appiancorp/suiteapi/personalization/GroupSearch.html#STARTS_WITH)

    [com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO\_COMMENT\_ON\_MESSAGE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#TEMPO_COMMENT_ON_MESSAGE)

    [`PortalNotificationService.TEMPO_COMMENT_ON_MESSAGE_TO_GROUP`](com/appiancorp/suiteapi/portal/PortalNotificationService.html#TEMPO_COMMENT_ON_MESSAGE_TO_GROUP) is now used for messages to users, groups and everyone

    [com.appiancorp.suiteapi.process.analytics2.Column.COL\_AGGREGATION\_AVG\_EXCLUDE\_NULL](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_AVG_EXCLUDE_NULL)

    use COL\_AGGREGATION\_AVG

    [com.appiancorp.suiteapi.process.analytics2.Column.COL\_AGGREGATION\_MEDIAN](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_MEDIAN)

    no longer used

    [com.appiancorp.suiteapi.process.analytics2.Column.COL\_AGGREGATION\_MODE](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_MODE)

    no longer used

    [com.appiancorp.suiteapi.process.analytics2.Column.COL\_AGGREGATION\_SUM\_EXCLUDE\_NULL](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_SUM_EXCLUDE_NULL)

    use COL\_AGGREGATION\_SUM

    [com.appiancorp.suiteapi.process.analytics2.ReportData.REPORT\_TYPE\_ARCHIVED\_PROCESS](com/appiancorp/suiteapi/process/analytics2/ReportData.html#REPORT_TYPE_ARCHIVED_PROCESS)

    this has not been considered a valid report type and will be removed

    [com.appiancorp.suiteapi.process.analytics2.ReportData.REPORT\_TYPE\_EVENTS](com/appiancorp/suiteapi/process/analytics2/ReportData.html#REPORT_TYPE_EVENTS)

    this has not been considered a valid report type and will be removed

    [com.appiancorp.suiteapi.process.Assignment.ASSIGNEE\_TYPE\_FUNCTION](com/appiancorp/suiteapi/process/Assignment.html#ASSIGNEE_TYPE_FUNCTION)

    This assignment type is not used.

    [com.appiancorp.suiteapi.process.palette.PaletteCategoryConstants.APPIAN\_SMART\_SERVICES](com/appiancorp/suiteapi/process/palette/PaletteCategoryConstants.html#APPIAN_SMART_SERVICES)

    This constant may be removed from the public API in a future release. Instead use [`PaletteCategoryConstants.AUTOMATION_SMART_SERVICES`](com/appiancorp/suiteapi/process/palette/PaletteCategoryConstants.html#AUTOMATION_SMART_SERVICES)

    [com.appiancorp.suiteapi.process.palette.PaletteCategoryConstants.INTEGRATION\_SERVICES](com/appiancorp/suiteapi/process/palette/PaletteCategoryConstants.html#INTEGRATION_SERVICES)

    This constant may be removed from the public API in a future release. Instead use [`PaletteCategoryConstants.AUTOMATION_SMART_SERVICES`](com/appiancorp/suiteapi/process/palette/PaletteCategoryConstants.html#AUTOMATION_SMART_SERVICES)

    [com.appiancorp.suiteapi.process.palette.PaletteCategoryConstants.STANDARD\_NODES](com/appiancorp/suiteapi/process/palette/PaletteCategoryConstants.html#STANDARD_NODES)

    This constant may be removed from the public API in a future release. Instead use [`PaletteCategoryConstants.WORKFLOW`](com/appiancorp/suiteapi/process/palette/PaletteCategoryConstants.html#WORKFLOW)

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_PROCESS\_CANCELLED](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_PROCESS_CANCELLED)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_PROCESS\_INSUFFICIENT\_PRIVILEGES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_PROCESS_INSUFFICIENT_PRIVILEGES)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_PROCESS\_INVALID](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_PROCESS_INVALID)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_PROCESS\_INVALID\_BEAN](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_PROCESS_INVALID_BEAN)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_PROCESS\_NOTE\_LIMIT\_EXCEEDED](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_PROCESS_NOTE_LIMIT_EXCEEDED)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_PROCESS\_SUCCESS](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_PROCESS_SUCCESS)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_TASK\_CANCELLED](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_TASK_CANCELLED)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_TASK\_INSUFFICIENT\_PRIVILEGES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_TASK_INSUFFICIENT_PRIVILEGES)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_TASK\_INVALID](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_TASK_INVALID)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_TASK\_INVALID\_BEAN](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_TASK_INVALID_BEAN)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_TASK\_NOTE\_LIMIT\_EXCEEDED](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_TASK_NOTE_LIMIT_EXCEEDED)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_TASK\_SUCCESS](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_TASK_SUCCESS)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_CREATION\_TASK\_UNATTENDED](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_CREATION_TASK_UNATTENDED)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_DELETION\_INSUFFICIENT\_PRIVILEGES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_DELETION_INSUFFICIENT_PRIVILEGES)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_DELETION\_INVALID](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_DELETION_INVALID)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTE\_DELETION\_SUCCESS](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTE_DELETION_SUCCESS)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTES\_RETURN\_INVALID](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTES_RETURN_INVALID)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTES\_RETURN\_PERMISSIONS](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTES_RETURN_PERMISSIONS)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.NOTES\_RETURN\_SUCCESS](com/appiancorp/suiteapi/process/ProcessExecutionService.html#NOTES_RETURN_SUCCESS)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.RETRIEVE\_PROCESS\_MODEL\_NOTES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#RETRIEVE_PROCESS_MODEL_NOTES)

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.RETRIEVE\_PROCESS\_NOTES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#RETRIEVE_PROCESS_NOTES)

    since 23.2

    [com.appiancorp.suiteapi.process.TaskSummary.SORT\_BY\_ELAPSED](com/appiancorp/suiteapi/process/TaskSummary.html#SORT_BY_ELAPSED)

    Use [`TaskSummary.SORT_BY_ELAPSED_MILLISECONDS`](com/appiancorp/suiteapi/process/TaskSummary.html#SORT_BY_ELAPSED_MILLISECONDS) instead.

    [com.appiancorp.suiteapi.process.TaskSummary.SORT\_BY\_PRIORITY\_ID](com/appiancorp/suiteapi/process/TaskSummary.html#SORT_BY_PRIORITY_ID)

    Use [`TaskSummary.SORT_BY_PRIORITY_NAME`](com/appiancorp/suiteapi/process/TaskSummary.html#SORT_BY_PRIORITY_NAME) instead, which produces the same results.

    [com.appiancorp.suiteapi.process.TaskSummary.TASK\_STATUS\_ABORTED](com/appiancorp/suiteapi/process/TaskSummary.html#TASK_STATUS_ABORTED)

    [com.appiancorp.suiteapi.rules.FreeformRule.WHITELISTED\_FOR\_K\_KEY](com/appiancorp/suiteapi/rules/FreeformRule.html#WHITELISTED_FOR_K_KEY)

    This attribute is no longer used

    [com.appiancorp.suiteapi.type.AppianType.ALIAS](com/appiancorp/suiteapi/type/AppianType.html#ALIAS)

    [com.appiancorp.suiteapi.type.AppianType.ARRAY](com/appiancorp/suiteapi/type/AppianType.html#ARRAY)

    [com.appiancorp.suiteapi.type.AppianType.BINARY](com/appiancorp/suiteapi/type/AppianType.html#BINARY)

    [com.appiancorp.suiteapi.type.AppianType.CURRENCY](com/appiancorp/suiteapi/type/AppianType.html#CURRENCY)

    [com.appiancorp.suiteapi.type.AppianType.DECISION\_TABLE](com/appiancorp/suiteapi/type/AppianType.html#DECISION_TABLE)

    [com.appiancorp.suiteapi.type.AppianType.FIXED](com/appiancorp/suiteapi/type/AppianType.html#FIXED)

    [com.appiancorp.suiteapi.type.AppianType.LIST\_OF\_BINARY](com/appiancorp/suiteapi/type/AppianType.html#LIST_OF_BINARY)

    [com.appiancorp.suiteapi.type.AppianType.LIST\_OF\_CURRENCY](com/appiancorp/suiteapi/type/AppianType.html#LIST_OF_CURRENCY)

    [com.appiancorp.suiteapi.type.AppianType.LIST\_OF\_DECISION\_TABLE](com/appiancorp/suiteapi/type/AppianType.html#LIST_OF_DECISION_TABLE)

    [com.appiancorp.suiteapi.type.AppianType.LIST\_OF\_FIXED](com/appiancorp/suiteapi/type/AppianType.html#LIST_OF_FIXED)

    [com.appiancorp.suiteapi.type.AppianType.LIST\_OF\_RANGE](com/appiancorp/suiteapi/type/AppianType.html#LIST_OF_RANGE)

    [com.appiancorp.suiteapi.type.AppianType.RANGE](com/appiancorp/suiteapi/type/AppianType.html#RANGE)

    [com.appiancorp.suiteapi.type.DatatypeProperties.DYNAMIC\_TYPE\_HAS\_USERNAME](com/appiancorp/suiteapi/type/DatatypeProperties.html#DYNAMIC_TYPE_HAS_USERNAME)

    For Appian internal use only.

    [com.appiancorp.suiteapi.type.DatatypeProperties.DYNAMIC\_TYPE\_HAS\_VARIANT](com/appiancorp/suiteapi/type/DatatypeProperties.html#DYNAMIC_TYPE_HAS_VARIANT)

    For Appian internal use only.

-   Deprecated Methods

    Method

    Description

    [com.appiancorp.common.appianwebmvc.BaseAction.addError(HttpServletRequest, String)](com/appiancorp/common/appianwebmvc/BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String\))

    use addError(HttpServletRequest q\_, ActionError error\_) instead.

    [com.appiancorp.services.ServiceContext.getIdentity()](com/appiancorp/services/ServiceContext.html#getIdentity\(\))

    Use [`ServiceContext.getName()`](com/appiancorp/services/ServiceContext.html#getName\(\)) instead.

    [com.appiancorp.suiteapi.applications.Application.addObjects(Type<?, ?, String>, String\[\])](com/appiancorp/suiteapi/applications/Application.html#addObjects\(com.appiancorp.ix.Type,java.lang.String%5B%5D\))

    use [`Application.addObjectsByType(Long, Object[])`](com/appiancorp/suiteapi/applications/Application.html#addObjectsByType\(java.lang.Long,U%5B%5D\))

    [com.appiancorp.suiteapi.applications.Application.addObjectsByType(Type<H, I, U>, U\[\])](com/appiancorp/suiteapi/applications/Application.html#addObjectsByType\(com.appiancorp.ix.Type,U%5B%5D\))

    use [`Application.addObjectsByType(Long, Object[])`](com/appiancorp/suiteapi/applications/Application.html#addObjectsByType\(java.lang.Long,U%5B%5D\))

    [com.appiancorp.suiteapi.applications.Application.getApplicationObjects(Type<?, ?, String>)](com/appiancorp/suiteapi/applications/Application.html#getApplicationObjects\(com.appiancorp.ix.Type\))

    use [`Application.getObjectsByType(Long)`](com/appiancorp/suiteapi/applications/Application.html#getObjectsByType\(java.lang.Long\))

    [com.appiancorp.suiteapi.applications.Application.getObjectsByType(Type<H, I, U>)](com/appiancorp/suiteapi/applications/Application.html#getObjectsByType\(com.appiancorp.ix.Type\))

    use [`Application.getObjectsByType(Long)`](com/appiancorp/suiteapi/applications/Application.html#getObjectsByType\(java.lang.Long\))

    [com.appiancorp.suiteapi.applications.Application.removeObjects(Type<?, ?, String>, String\[\])](com/appiancorp/suiteapi/applications/Application.html#removeObjects\(com.appiancorp.ix.Type,java.lang.String%5B%5D\))

    use [`Application.removeObjectsByType(Long, Object[])`](com/appiancorp/suiteapi/applications/Application.html#removeObjectsByType\(java.lang.Long,U%5B%5D\)) instead

    [com.appiancorp.suiteapi.applications.Application.removeObjectsByType(Type<H, I, U>, U\[\])](com/appiancorp/suiteapi/applications/Application.html#removeObjectsByType\(com.appiancorp.ix.Type,U%5B%5D\))

    use [`Application.removeObjectsByType(Long, Object[])`](com/appiancorp/suiteapi/applications/Application.html#removeObjectsByType\(java.lang.Long,U%5B%5D\)) instead

    [com.appiancorp.suiteapi.applications.ApplicationService.updateAssociatedObjects(Long, Type<?, ?, String>, String\[\], String\[\])](com/appiancorp/suiteapi/applications/ApplicationService.html#updateAssociatedObjects\(java.lang.Long,com.appiancorp.ix.Type,java.lang.String%5B%5D,java.lang.String%5B%5D\))

    use [`ApplicationService.updateAssociatedObjectsByType(Long, Type, Object[], Object[])`](com/appiancorp/suiteapi/applications/ApplicationService.html#updateAssociatedObjectsByType\(java.lang.Long,com.appiancorp.ix.Type,U%5B%5D,U%5B%5D\)) instead

    [com.appiancorp.suiteapi.cfg.Configuration.getDatasources()](com/appiancorp/suiteapi/cfg/Configuration.html#getDatasources\(\))

    [com.appiancorp.suiteapi.cfg.Configuration.getMaxExportRows()](com/appiancorp/suiteapi/cfg/Configuration.html#getMaxExportRows\(\))

    Not in use anymore

    [com.appiancorp.suiteapi.cfg.ConfigurationLoader.initializeConfigurations()](com/appiancorp/suiteapi/cfg/ConfigurationLoader.html#initializeConfigurations\(\))

    This method is needed to use the service APIs from a standalone application, which is no longer supported.

    [com.appiancorp.suiteapi.cfg.ConfigurationLoader.isInitialized()](com/appiancorp/suiteapi/cfg/ConfigurationLoader.html#isInitialized\(\))

    This method is needed to use the service APIs from a standalone application, which is no longer supported.

    [com.appiancorp.suiteapi.collaboration.AdministrationService.activateUserSession(Long\[\], Long\[\])](com/appiancorp/suiteapi/collaboration/AdministrationService.html#activateUserSession\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.collaboration.AdministrationService.commitUpdateUsernames()](com/appiancorp/suiteapi/collaboration/AdministrationService.html#commitUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.collaboration.AdministrationService.getUserSpace()](com/appiancorp/suiteapi/collaboration/AdministrationService.html#getUserSpace\(\))

    User quotas have been removed. This method will always show that the user has unlimited space.

    [com.appiancorp.suiteapi.collaboration.AdministrationService.getUserSpaceUsage()](com/appiancorp/suiteapi/collaboration/AdministrationService.html#getUserSpaceUsage\(\))

    User quotas have been removed. This method will always show that the user has unlimited space.

    [com.appiancorp.suiteapi.collaboration.AdministrationService.reloadProperties()](com/appiancorp/suiteapi/collaboration/AdministrationService.html#reloadProperties\(\))

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    [com.appiancorp.suiteapi.collaboration.AdministrationService.rollbackUpdateUsernames()](com/appiancorp/suiteapi/collaboration/AdministrationService.html#rollbackUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.collaboration.AdministrationService.setUserSpaceUsage(String, Long)](com/appiancorp/suiteapi/collaboration/AdministrationService.html#setUserSpaceUsage\(java.lang.String,java.lang.Long\))

    User quotas have been removed. Calls to this method will be ignored.

    [com.appiancorp.suiteapi.collaboration.AdministrationService.updateUsernames(String\[\], String\[\], long)](com/appiancorp/suiteapi/collaboration/AdministrationService.html#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.collaboration.AdministrationService.validateGroupMembership(Long\[\], Long\[\])](com/appiancorp/suiteapi/collaboration/AdministrationService.html#validateGroupMembership\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.collaboration.CommunityService.getAdministratableCommunitiesForUser()](com/appiancorp/suiteapi/collaboration/CommunityService.html#getAdministratableCommunitiesForUser\(\))

    use [`CommunityService.getAdministratableCommunitiesForUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getAdministratableCommunitiesForUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getChildCommunities(Long, Integer, String)](com/appiancorp/suiteapi/collaboration/CommunityService.html#getChildCommunities\(java.lang.Long,java.lang.Integer,java.lang.String\))

    use [`CommunityService.getChildCommunitiesPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getChildCommunitiesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getChildKnowledgeCenters(Long, Integer, String)](com/appiancorp/suiteapi/collaboration/CommunityService.html#getChildKnowledgeCenters\(java.lang.Long,java.lang.Integer,java.lang.String\))

    use [`CommunityService.getChildKnowledgeCentersPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getChildKnowledgeCentersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getCommunities(Long\[\])](com/appiancorp/suiteapi/collaboration/CommunityService.html#getCommunities\(java.lang.Long%5B%5D\))

    use [`CommunityService.getCommunitiesPaging(Long[], int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getCommunitiesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getCommunitiesForUser()](com/appiancorp/suiteapi/collaboration/CommunityService.html#getCommunitiesForUser\(\))

    use [`CommunityService.getCommunitiesForUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getCommunitiesForUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getFavoriteCommunities(Integer, String)](com/appiancorp/suiteapi/collaboration/CommunityService.html#getFavoriteCommunities\(java.lang.Integer,java.lang.String\))

    use [`CommunityService.getFavoriteCommunitiesPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getFavoriteCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForCommunity(Long)](com/appiancorp/suiteapi/collaboration/CommunityService.html#getFeaturedDocumentsForCommunity\(java.lang.Long\))

    use [`CommunityService.getFeaturedDocumentsForCommunityPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getFeaturedDocumentsForCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForCommunityForUser(Long)](com/appiancorp/suiteapi/collaboration/CommunityService.html#getFeaturedDocumentsForCommunityForUser\(java.lang.Long\))

    use [`CommunityService.getFeaturedDocumentsForCommunityForUserPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getFeaturedDocumentsForCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForTopLevelCommunity(Long)](com/appiancorp/suiteapi/collaboration/CommunityService.html#getFeaturedDocumentsForTopLevelCommunity\(java.lang.Long\))

    use [`CommunityService.getFeaturedDocumentsForTopLevelCommunityPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getFeaturedDocumentsForTopLevelCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForTopLevelCommunityForUser(Long)](com/appiancorp/suiteapi/collaboration/CommunityService.html#getFeaturedDocumentsForTopLevelCommunityForUser\(java.lang.Long\))

    use [`CommunityService.getFeaturedDocumentsForTopLevelCommunityForUserPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getFeaturedDocumentsForTopLevelCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getInactiveCommunities()](com/appiancorp/suiteapi/collaboration/CommunityService.html#getInactiveCommunities\(\))

    use [`CommunityService.getInactiveCommunitiesPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getInactiveCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getRootCommunities()](com/appiancorp/suiteapi/collaboration/CommunityService.html#getRootCommunities\(\))

    use [`CommunityService.getRootCommunitiesPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getRootCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.CommunityService.getSystemCommunityId(String)](com/appiancorp/suiteapi/collaboration/CommunityService.html#getSystemCommunityId\(java.lang.String\))

    use [`ContentService.getIdByUuid(String)`](com/appiancorp/suiteapi/content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`CommunityService.getCommunityIdForContentId(Long)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#getCommunityIdForContentId\(java.lang.Long\))

    [com.appiancorp.suiteapi.collaboration.CommunityService.setSystemCommunityId(String, Long)](com/appiancorp/suiteapi/collaboration/CommunityService.html#setSystemCommunityId\(java.lang.String,java.lang.Long\))

    use [`CommunityService.createCommunity(Community)`](com/appiancorp/suiteapi/collaboration/CommunityService.html#createCommunity\(com.appiancorp.suiteapi.collaboration.Community\)) with a pre-populated UUID

    [com.appiancorp.suiteapi.collaboration.Document.getLockedBy()](com/appiancorp/suiteapi/collaboration/Document.html#getLockedBy\(\))

    use [`Document.getLockedByUsername()`](com/appiancorp/suiteapi/collaboration/Document.html#getLockedByUsername\(\))

    [com.appiancorp.suiteapi.collaboration.Document.setLockedBy(String)](com/appiancorp/suiteapi/collaboration/Document.html#setLockedBy\(java.lang.String\))

    use [`Document.getLockedByUsername()`](com/appiancorp/suiteapi/collaboration/Document.html#getLockedByUsername\(\))

    [com.appiancorp.suiteapi.collaboration.DocumentService.deleteDocument(Long)](com/appiancorp/suiteapi/collaboration/DocumentService.html#deleteDocument\(java.lang.Long\))

    Use the method [`#deactivate(Long, Boolean)`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.collaboration.DocumentService.deleteDocuments(Long\[\])](com/appiancorp/suiteapi/collaboration/DocumentService.html#deleteDocuments\(java.lang.Long%5B%5D\))

    Use the method [`#deactivate(Long[], Boolean)`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.collaboration.DocumentService.deleteVersion(Long, Integer)](com/appiancorp/suiteapi/collaboration/DocumentService.html#deleteVersion\(java.lang.Long,java.lang.Integer\))

    Use the method [`#deactivateVersion(Long, Integer, Boolean)`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.collaboration.DocumentService.deleteVersions(Long, Integer\[\])](com/appiancorp/suiteapi/collaboration/DocumentService.html#deleteVersions\(java.lang.Long,java.lang.Integer%5B%5D\))

    Use the method [`#deactivateVersions(Long, Integer[], Boolean)`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.collaboration.DocumentService.getAllVersionsForDocument(Long)](com/appiancorp/suiteapi/collaboration/DocumentService.html#getAllVersionsForDocument\(java.lang.Long\))

    Use [`DocumentService.getAllVersionsForDocumentPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/DocumentService.html#getAllVersionsForDocumentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.collaboration.DocumentService.getDocuments(Long\[\])](com/appiancorp/suiteapi/collaboration/DocumentService.html#getDocuments\(java.lang.Long%5B%5D\))

    use [`DocumentService.getDocumentsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/DocumentService.html#getDocumentsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.collaboration.DocumentService.getFavoriteDocuments(Integer, String)](com/appiancorp/suiteapi/collaboration/DocumentService.html#getFavoriteDocuments\(java.lang.Integer,java.lang.String\))

    Use [`DocumentService.getFavoriteDocumentsPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/DocumentService.html#getFavoriteDocumentsPaging\(int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.collaboration.DocumentService.getSystemDocumentId(String)](com/appiancorp/suiteapi/collaboration/DocumentService.html#getSystemDocumentId\(java.lang.String\))

    use [`ContentService.getIdByUuid(String)`](com/appiancorp/suiteapi/content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`DocumentService.getDocumentIdForContentId(Long)`](com/appiancorp/suiteapi/collaboration/DocumentService.html#getDocumentIdForContentId\(java.lang.Long\))

    [com.appiancorp.suiteapi.collaboration.DocumentService.getVersions(Long, Integer\[\])](com/appiancorp/suiteapi/collaboration/DocumentService.html#getVersions\(java.lang.Long,java.lang.Integer%5B%5D\))

    Use [`DocumentService.getVersionsPaging(java.lang.Long, java.lang.Integer[], int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/DocumentService.html#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.collaboration.DocumentService.searchDocuments(String, int, int)](com/appiancorp/suiteapi/collaboration/DocumentService.html#searchDocuments\(java.lang.String,int,int\))

    Use [`DocumentService.searchDocumentsPaging(java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/DocumentService.html#searchDocumentsPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.collaboration.DocumentService.setSystemDocumentId(String, Long)](com/appiancorp/suiteapi/collaboration/DocumentService.html#setSystemDocumentId\(java.lang.String,java.lang.Long\))

    use [`DocumentService.createDocument(Document)`](com/appiancorp/suiteapi/collaboration/DocumentService.html#createDocument\(com.appiancorp.suiteapi.collaboration.Document\)) with a pre-populated UUID

    [com.appiancorp.suiteapi.collaboration.FolderService.getChildDocuments(Long, Integer, String, int, int)](com/appiancorp/suiteapi/collaboration/FolderService.html#getChildDocuments\(java.lang.Long,java.lang.Integer,java.lang.String,int,int\))

    use [`FolderService.getChildDocumentsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/FolderService.html#getChildDocumentsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.FolderService.getChildFolders(Long, Integer, String, int, int)](com/appiancorp/suiteapi/collaboration/FolderService.html#getChildFolders\(java.lang.Long,java.lang.Integer,java.lang.String,int,int\))

    use [`FolderService.getChildFoldersPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/FolderService.html#getChildFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.FolderService.getFavoriteFolders(Integer, String)](com/appiancorp/suiteapi/collaboration/FolderService.html#getFavoriteFolders\(java.lang.Integer,java.lang.String\))

    use [`FolderService.getFavoriteFoldersPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/FolderService.html#getFavoriteFoldersPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.FolderService.getFolders(Long\[\])](com/appiancorp/suiteapi/collaboration/FolderService.html#getFolders\(java.lang.Long%5B%5D\))

    use [`FolderService.getFoldersPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/FolderService.html#getFoldersPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.FolderService.getParentFolders(Long)](com/appiancorp/suiteapi/collaboration/FolderService.html#getParentFolders\(java.lang.Long\))

    use [`FolderService.getParentFoldersPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/FolderService.html#getParentFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.FolderService.getSystemFolderId(String)](com/appiancorp/suiteapi/collaboration/FolderService.html#getSystemFolderId\(java.lang.String\))

    use [`ContentService.getIdByUuid(String)`](com/appiancorp/suiteapi/content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`FolderService.getFolderIdForContentId(Long)`](com/appiancorp/suiteapi/collaboration/FolderService.html#getFolderIdForContentId\(java.lang.Long\))

    [com.appiancorp.suiteapi.collaboration.FolderService.setSystemFolderId(String, Long)](com/appiancorp/suiteapi/collaboration/FolderService.html#setSystemFolderId\(java.lang.String,java.lang.Long\))

    use [`FolderService.createFolder(Folder)`](com/appiancorp/suiteapi/collaboration/FolderService.html#createFolder\(com.appiancorp.suiteapi.collaboration.Folder\)) with a pre-populated UUID

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.browseKnowledgeCenters(int, int)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#browseKnowledgeCenters\(int,int\))

    use [`KnowledgeCenterService.browseKnowledgeCentersPaging(int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#browseKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getAllFolders(Long)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getAllFolders\(java.lang.Long\))

    use [`KnowledgeCenterService.getAllFoldersPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getAllFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getDocumentsRequiringApproval(Long)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getDocumentsRequiringApproval\(java.lang.Long\))

    use [`KnowledgeCenterService.getDocumentsRequiringApprovalPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getDocumentsRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getExpiredDocuments(Long)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getExpiredDocuments\(java.lang.Long\))

    use [`KnowledgeCenterService.getExpiredDocumentsPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getExpiredDocumentsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getFavoriteKnowledgeCenters(Integer, String)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getFavoriteKnowledgeCenters\(java.lang.Integer,java.lang.String\))

    use [`KnowledgeCenterService.getFavoriteKnowledgeCentersPaging(int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getFavoriteKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getFoldersRequiringApproval(Long)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getFoldersRequiringApproval\(java.lang.Long\))

    use [`KnowledgeCenterService.getFoldersRequiringApprovalPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getFoldersRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCenters(Long\[\])](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getKnowledgeCenters\(java.lang.Long%5B%5D\))

    use [`KnowledgeCenterService.getKnowledgeCentersPaging(Long[], int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getKnowledgeCentersPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersForCommunities(Long\[\])](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getKnowledgeCentersForCommunities\(java.lang.Long%5B%5D\))

    use [`KnowledgeCenterService.getKnowledgeCentersForCommunitiesPaging(Long[], int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getKnowledgeCentersForCommunitiesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersForCommunity(Long)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getKnowledgeCentersForCommunity\(java.lang.Long\))

    use [`KnowledgeCenterService.getKnowledgeCentersForCommunityPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getKnowledgeCentersForCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersForGroup(Long)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getKnowledgeCentersForGroup\(java.lang.Long\))

    use [`KnowledgeCenterService.getKnowledgeCentersForGroupPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getKnowledgeCentersForGroupPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getParentCommunities(Long)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getParentCommunities\(java.lang.Long\))

    use [`KnowledgeCenterService.getParentCommunitiesPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getParentCommunitiesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getPersonalKnowledgeCenters()](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getPersonalKnowledgeCenters\(\))

    use [`KnowledgeCenterService.getPersonalKnowledgeCentersPaging(int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getPersonalKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getRootFolders(Long, Integer, String, int, int)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getRootFolders\(java.lang.Long,java.lang.Integer,java.lang.String,int,int\))

    use [`KnowledgeCenterService.getRootFoldersPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getRootFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getSubscribedKnowledgeCenters()](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getSubscribedKnowledgeCenters\(\))

    use [`KnowledgeCenterService.getSubscribedKnowledgeCentersPaging(int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getSubscribedKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getSystemKnowledgeCenterId(String)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getSystemKnowledgeCenterId\(java.lang.String\))

    use [`ContentService.getIdByUuid(String)`](com/appiancorp/suiteapi/content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`KnowledgeCenterService.getKnowledgeCenterIdForContentId(Long)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getKnowledgeCenterIdForContentId\(java.lang.Long\))

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getVersionsRequiringApproval(Long)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getVersionsRequiringApproval\(java.lang.Long\))

    use [`KnowledgeCenterService.getVersionsRequiringApprovalPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getVersionsRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getWritableKnowledgeCenters()](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getWritableKnowledgeCenters\(\))

    use [`KnowledgeCenterService.getWritableKnowledgeCentersPaging(int, int, Integer, Integer)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#getWritableKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.searchKnowledgeCenters(String, int, int)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#searchKnowledgeCenters\(java.lang.String,int,int\))

    use searchKnowledgeCentersPaging instead

    [com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.setSystemKnowledgeCenterId(String, Long)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#setSystemKnowledgeCenterId\(java.lang.String,java.lang.Long\))

    use [`KnowledgeCenterService.createKnowledgeCenter(KnowledgeCenter)`](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#createKnowledgeCenter\(com.appiancorp.suiteapi.collaboration.KnowledgeCenter\)) with a pre-populated UUID

    [com.appiancorp.suiteapi.collaboration.ReportingService.getCommunitiesWithMostUploads(Long)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getCommunitiesWithMostUploads\(java.lang.Long\))

    use getCommunitiesWithMostUploadsPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getCommunitiesWithMostUploadsPaging(int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getCommunitiesWithMostUploadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getCommunityAdminReport(Long)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getCommunityAdminReport\(java.lang.Long\))

    use getCommunityAdminReportPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getCommunityAdminReportPaging(Long, int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getCommunityAdminReportPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getGeneralStatistics()](com/appiancorp/suiteapi/collaboration/ReportingService.html#getGeneralStatistics\(\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getGeneralUserStatistics()](com/appiancorp/suiteapi/collaboration/ReportingService.html#getGeneralUserStatistics\(\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getKnowledgeCentersWithMostUploads(Long)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getKnowledgeCentersWithMostUploads\(java.lang.Long\))

    use getKnowledgeCentersWithMostUploadsPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getKnowledgeCentersWithMostUploadsPaging(int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getKnowledgeCentersWithMostUploadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getMoreWhatsNewSubscriptions(String, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getMoreWhatsNewSubscriptions\(java.lang.String,java.lang.Integer,java.lang.Integer\))

    use getMoreWhatsNewSubscriptionsPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getMoreWhatsNewSubscriptionsPaging(int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getMoreWhatsNewSubscriptionsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getNumberUploads(Long)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getNumberUploads\(java.lang.Long\))

    user getNumberUploadsPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getTotalUploads()](com/appiancorp/suiteapi/collaboration/ReportingService.html#getTotalUploads\(\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByHour()](com/appiancorp/suiteapi/collaboration/ReportingService.html#getUploadsByHour\(\))

    use getUploadsByHourPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByHourPaging(int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getUploadsByHourPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByType()](com/appiancorp/suiteapi/collaboration/ReportingService.html#getUploadsByType\(\))

    use getUploadsByTypePaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByTypePaging(int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getUploadsByTypePaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByWeekDays()](com/appiancorp/suiteapi/collaboration/ReportingService.html#getUploadsByWeekDays\(\))

    use getUploadsByWeekDaysPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByWeekDaysPaging(int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getUploadsByWeekDaysPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewCommunity(Long, Long)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewCommunity\(java.lang.Long,java.lang.Long\))

    use getWhatsNewCommunityPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewCommunityForUser(Long, Long)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewCommunityForUser\(java.lang.Long,java.lang.Long\))

    use getWhatsNewCommunityForUserPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewCommunityForUserPaging(Long, int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewCommunityPaging(Long, int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewKnowledgeCenter(Long, Integer, String)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewKnowledgeCenter\(java.lang.Long,java.lang.Integer,java.lang.String\))

    use getWhatsNewKnowledgeCenterPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewKnowledgeCenterPaging(Long, int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewSubscriptions()](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewSubscriptions\(\))

    use getWhatsNewSubscriptionsPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewSubscriptionsPaging(int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewSubscriptionsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewTopLevelCommunity(Long, Long)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewTopLevelCommunity\(java.lang.Long,java.lang.Long\))

    use getWhatsNewTopLevelCommunityPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewTopLevelCommunityForUser(Long, Long)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewTopLevelCommunityForUser\(java.lang.Long,java.lang.Long\))

    use getWhatsNewTopLevelCommunityForUserPaging

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewTopLevelCommunityForUserPaging(Long, int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewTopLevelCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    This method always returns an empty array of Documents

    [com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewTopLevelCommunityPaging(Long, int, int, Integer, Integer)](com/appiancorp/suiteapi/collaboration/ReportingService.html#getWhatsNewTopLevelCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.StatisticsService.getCommunitiesWithMostDownloads(Long)](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getCommunitiesWithMostDownloads\(java.lang.Long\))

    use [`StatisticsService.getCommunitiesWithMostDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getCommunitiesWithMostDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByDayForKnowledgeCenter(Long, Long)](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getDownloadsByDayForKnowledgeCenter\(java.lang.Long,java.lang.Long\))

    use [`StatisticsService.getDownloadsByDayForKnowledgeCenterPaging(java.lang.Long, java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getDownloadsByDayForKnowledgeCenterPaging\(java.lang.Long,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByHour()](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getDownloadsByHour\(\))

    use [`StatisticsService.getDownloadsByHourPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getDownloadsByHourPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByType()](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getDownloadsByType\(\))

    use [`StatisticsService.getDownloadsByTypePaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getDownloadsByTypePaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByWeekDays()](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getDownloadsByWeekDays\(\))

    use [`StatisticsService.getDownloadsByWeekDaysPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getDownloadsByWeekDaysPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.StatisticsService.getKnowledgeCentersWithMostDownloads(Long)](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getKnowledgeCentersWithMostDownloads\(java.lang.Long\))

    use [`StatisticsService.getKnowledgeCentersWithMostDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getKnowledgeCentersWithMostDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.StatisticsService.getNumberDownloads(Long)](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getNumberDownloads\(java.lang.Long\))

    use [`StatisticsService.getNumberDownloadsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.StatisticsService.getPopularDocumentsKnowledgeCenter(Long, Long)](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getPopularDocumentsKnowledgeCenter\(java.lang.Long,java.lang.Long\))

    use [`StatisticsService.getPopularDocumentsKnowledgeCenterPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getPopularDocumentsKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.StatisticsService.getTopDocumentsByDownloads(Long)](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getTopDocumentsByDownloads\(java.lang.Long\))

    use [`StatisticsService.getTopDocumentsByDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getTopDocumentsByDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.StatisticsService.getUsersByDownloadedContent(Long)](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getUsersByDownloadedContent\(java.lang.Long\))

    use [`StatisticsService.getUsersByDownloadedContentPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getUsersByDownloadedContentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.collaboration.StatisticsService.getUsersByDownloadedDocument(Long)](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getUsersByDownloadedDocument\(java.lang.Long\))

    use [`StatisticsService.getUsersByDownloadedDocumentPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/collaboration/StatisticsService.html#getUsersByDownloadedDocumentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.common.exceptions.ExceptionUtil.isAssignableFrom(Class<?>, Class<?>)](com/appiancorp/suiteapi/common/exceptions/ExceptionUtil.html#isAssignableFrom\(java.lang.Class,java.lang.Class\))

    see Class.isAssignableFrom

    [com.appiancorp.suiteapi.common.exceptions.ExceptionUtil.isDelegateInstanceOf(AppianRuntimeException, Class<? extends AppianException>)](com/appiancorp/suiteapi/common/exceptions/ExceptionUtil.html#isDelegateInstanceOf\(com.appiancorp.suiteapi.common.exceptions.AppianRuntimeException,java.lang.Class\))

    see AppianRuntimeException's isDelegateInstanceOf

    [com.appiancorp.suiteapi.common.exceptions.ExceptionUtil.printStackTrace(Throwable, PrintWriter)](com/appiancorp/suiteapi/common/exceptions/ExceptionUtil.html#printStackTrace\(java.lang.Throwable,java.io.PrintWriter\))

    see Throwable.printStackTrace

    [com.appiancorp.suiteapi.common.LocaleString.retrieveValueForUserLocaleOrPrimary(Locale, SiteLocaleSettings)](com/appiancorp/suiteapi/common/LocaleString.html#retrieveValueForUserLocaleOrPrimary\(java.util.Locale,com.appiancorp.suiteapi.portal.SiteLocaleSettings\))

    This method will be removed in a future release. Use retrieveValueForUserLocaleOrPrimary(Locale, Locale) instead.

    [com.appiancorp.suiteapi.common.ServiceFactory.getAdministrationConsoleService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceFactory.html#getAdministrationConsoleService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    This service pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

    [com.appiancorp.suiteapi.common.ServiceFactory.getCollabAdministrationService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getCollabAdministrationService\(com.appiancorp.suiteapi.personalization.User\))

    use getCollabAdministrationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getCollabAdministrationService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getCollabAdministrationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getCollabAdministrationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getCollabCommunityService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getCollabCommunityService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getCollabCommunityService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getCommunityService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getCommunityService\(com.appiancorp.suiteapi.personalization.User\))

    use getCommunityService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getDiscussionBodyService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDiscussionBodyService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    [com.appiancorp.suiteapi.common.ServiceFactory.getDiscussionBodyService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDiscussionBodyService\(com.appiancorp.suiteapi.personalization.User\))

    use getDiscussionBodyService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getDiscussionBodyService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDiscussionBodyService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getDiscussionBodyService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getDiscussionMetadataConvenienceService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDiscussionMetadataConvenienceService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    [com.appiancorp.suiteapi.common.ServiceFactory.getDiscussionMetadataConvenienceService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDiscussionMetadataConvenienceService\(com.appiancorp.suiteapi.personalization.User\))

    use getDiscussionMetadataConvenienceService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getDiscussionMetadataConvenienceService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDiscussionMetadataConvenienceService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getDiscussionMetadataConvenienceService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getDiscussionMetadataCoreService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDiscussionMetadataCoreService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    [com.appiancorp.suiteapi.common.ServiceFactory.getDiscussionMetadataCoreService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDiscussionMetadataCoreService\(com.appiancorp.suiteapi.personalization.User\))

    use getDiscussionMetadataCoreService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getDiscussionMetadataCoreService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDiscussionMetadataCoreService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getDiscussionMetadataCoreService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getDiscussionPortletService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDiscussionPortletService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceFactory.getDocumentService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDocumentService\(com.appiancorp.suiteapi.personalization.User\))

    use getDocumentService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getDocumentService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getDocumentService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getDocumentService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getFolderService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getFolderService\(com.appiancorp.suiteapi.personalization.User\))

    use getFolderService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getFolderService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getFolderService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getFolderService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getGroupMessageService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceFactory.html#getGroupMessageService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    the Group Message channel and code will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceFactory.getGroupService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getGroupService\(com.appiancorp.suiteapi.personalization.User\))

    use getGroupService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getGroupService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getGroupService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getGroupService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getGroupTypeService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getGroupTypeService\(com.appiancorp.suiteapi.personalization.User\))

    use getGroupTypeService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getGroupTypeService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getGroupTypeService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getGroupTypeService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getKnowledgeCenterService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getKnowledgeCenterService\(com.appiancorp.suiteapi.personalization.User\))

    use getKnowledgeCenterService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getKnowledgeCenterService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getKnowledgeCenterService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getKnowledgeCenterService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getLeaderMessageService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceFactory.html#getLeaderMessageService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    the Leader Message channel and code will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceFactory.getLinksService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getLinksService\(com.appiancorp.suiteapi.personalization.User\))

    use getLinksService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getLinksService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getLinksService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getLinksService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getPageNavigationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPageNavigationService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceFactory.getPageNavigationService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPageNavigationService\(com.appiancorp.suiteapi.personalization.User\))

    use getPageNavigationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getPageNavigationService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPageNavigationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getPageNavigationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getPageService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPageService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceFactory.getPageService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPageService\(com.appiancorp.suiteapi.personalization.User\))

    use getPageService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getPageService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPageService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getPageService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getPortalAdministrationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPortalAdministrationService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceFactory.getPortalAdministrationService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPortalAdministrationService\(com.appiancorp.suiteapi.personalization.User\))

    use getPortalAdministrationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getPortalAdministrationService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPortalAdministrationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getPortalAdministrationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getPortalNotificationService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPortalNotificationService\(com.appiancorp.suiteapi.personalization.User\))

    use getPortalNotificationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getPortalNotificationService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPortalNotificationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getPortalNotificationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getPortletService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPortletService\(com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceFactory.getPortletService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPortletService\(com.appiancorp.suiteapi.personalization.User\))

    use getPortletService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getPortletService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getPortletService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getPortletService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getProcessAdministrationService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getProcessAdministrationService\(com.appiancorp.suiteapi.personalization.User\))

    use getProcessAdministrationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getProcessAdministrationService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getProcessAdministrationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getProcessAdministrationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getProcessDesignService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getProcessDesignService\(com.appiancorp.suiteapi.personalization.User\))

    use getProcessDesignService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getProcessDesignService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getProcessDesignService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getProcessDesignService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getProcessExecutionService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getProcessExecutionService\(com.appiancorp.suiteapi.personalization.User\))

    use getProcessExecutionService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getProcessExecutionService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getProcessExecutionService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getProcessExecutionService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getReportingService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getReportingService\(com.appiancorp.suiteapi.personalization.User\))

    use getReportingService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getReportingService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getReportingService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getReportingService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getService(User, String)](com/appiancorp/suiteapi/common/ServiceFactory.html#getService\(com.appiancorp.suiteapi.personalization.User,java.lang.String\))

    use getService( ServiceContext sc\_, String serviceName\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getService(HttpServlet, HttpSession, String)](com/appiancorp/suiteapi/common/ServiceFactory.html#getService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession,java.lang.String\))

    use getService( ServiceContext sc\_, String serviceName\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getStatisticsService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getStatisticsService\(com.appiancorp.suiteapi.personalization.User\))

    use getStatisticsService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getStatisticsService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getStatisticsService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getStatisticsService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getSynchronizationService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getSynchronizationService\(com.appiancorp.suiteapi.personalization.User\))

    use getSynchronizationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getSyncronizationService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getSyncronizationService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getSynchronizationService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getUserProfileService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getUserProfileService\(com.appiancorp.suiteapi.personalization.User\))

    use getUserProfileService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getUserProfileService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getUserProfileService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getUserProfileService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getUserService(User)](com/appiancorp/suiteapi/common/ServiceFactory.html#getUserService\(com.appiancorp.suiteapi.personalization.User\))

    use getUserService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.getUserService(HttpServlet, HttpSession)](com/appiancorp/suiteapi/common/ServiceFactory.html#getUserService\(javax.servlet.http.HttpServlet,javax.servlet.http.HttpSession\))

    use getUserService( ServiceContext sc\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseCollabAdministrationService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseCollabAdministrationService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseCommunityService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseCommunityService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseDiscussionBodyService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseDiscussionBodyService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseDiscussionMetadataConvenienceService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseDiscussionMetadataConvenienceService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseDiscussionMetadataCoreService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseDiscussionMetadataCoreService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseDocumentService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseDocumentService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseFolderService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseFolderService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseGroupService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseGroupService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseGroupTypeService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseGroupTypeService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseKnowledgeCenterService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseKnowledgeCenterService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseLinksService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseLinksService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseMetadataService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseMetadataService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releasePageNavigationService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releasePageNavigationService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releasePageService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releasePageService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releasePortalAdministrationService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releasePortalAdministrationService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releasePortalNotificationService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releasePortalNotificationService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releasePortletService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releasePortletService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseProcessDesignService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseProcessDesignService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseProcessExecutionService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseProcessExecutionService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseReportingService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseReportingService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseService(Object, String)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseService\(java.lang.Object,java.lang.String\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseService(String, Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseService\(java.lang.String,java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseService(HttpServlet, String, Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseService\(javax.servlet.http.HttpServlet,java.lang.String,java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseStatisticsService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseStatisticsService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseSynchronizationService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseSynchronizationService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseUserProfileService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseUserProfileService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceFactory.releaseUserService(Object)](com/appiancorp/suiteapi/common/ServiceFactory.html#releaseUserService\(java.lang.Object\))

    use releaseService( Service s\_ )

    [com.appiancorp.suiteapi.common.ServiceLocator.addServices(String)](com/appiancorp/suiteapi/common/ServiceLocator.html#addServices\(java.lang.String\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getAdministrationConsoleService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getAdministrationConsoleService\(com.appiancorp.services.ServiceContext\))

    This service pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

    [com.appiancorp.suiteapi.common.ServiceLocator.getAdministratorServiceContext()](com/appiancorp/suiteapi/common/ServiceLocator.html#getAdministratorServiceContext\(\))

    Use {@link ServiceContextFactory.getAdministratorServiceContext()} instead

    [com.appiancorp.suiteapi.common.ServiceLocator.getAdministratorUser()](com/appiancorp/suiteapi/common/ServiceLocator.html#getAdministratorUser\(\))

    Use {@link ServiceContextFactory.getAdministratorUser()} instead

    [com.appiancorp.suiteapi.common.ServiceLocator.getAnonymousServiceContext()](com/appiancorp/suiteapi/common/ServiceLocator.html#getAnonymousServiceContext\(\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getAnonymousUser()](com/appiancorp/suiteapi/common/ServiceLocator.html#getAnonymousUser\(\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getApplicationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getApplicationService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getCalendarService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getCalendarService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getCollabAdministrationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getCollabAdministrationService\(com.appiancorp.services.ServiceContext\))

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getCollabCommunityService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getCollabCommunityService\(com.appiancorp.services.ServiceContext\))

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getCollaborationSearchService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getCollaborationSearchService\(com.appiancorp.services.ServiceContext\))

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getCollaborationUserService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getCollaborationUserService\(com.appiancorp.services.ServiceContext\))

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") insteadad.

    [com.appiancorp.suiteapi.common.ServiceLocator.getCommunityService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getCommunityService\(com.appiancorp.services.ServiceContext\))

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") insteadad.

    [com.appiancorp.suiteapi.common.ServiceLocator.getConnectionManager()](com/appiancorp/suiteapi/common/ServiceLocator.html#getConnectionManager\(\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getContentService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getContentService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getContentStatisticsService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getContentStatisticsService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getDesignExpressionService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getDesignExpressionService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getDiscussionBodyService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getDiscussionBodyService\(com.appiancorp.services.ServiceContext\))

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.common.ServiceLocator.getDiscussionMetadataConvenienceService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getDiscussionMetadataConvenienceService\(com.appiancorp.services.ServiceContext\))

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.common.ServiceLocator.getDiscussionMetadataCoreService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getDiscussionMetadataCoreService\(com.appiancorp.services.ServiceContext\))

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.common.ServiceLocator.getDiscussionPortletService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getDiscussionPortletService\(com.appiancorp.services.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getDocumentService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getDocumentService\(com.appiancorp.services.ServiceContext\))

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getExceptionHandlerService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getExceptionHandlerService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getExecutionExpressionService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getExecutionExpressionService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getExpressionService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getExpressionService\(com.appiancorp.services.ServiceContext\))

    Use getExecutionExpressionService or getDesignExpressionService

    [com.appiancorp.suiteapi.common.ServiceLocator.getFolderService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getFolderService\(com.appiancorp.services.ServiceContext\))

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getForumsSearchService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getForumsSearchService\(com.appiancorp.services.ServiceContext\))

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.common.ServiceLocator.getGlobalizationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getGlobalizationService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getGroupMessageService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getGroupMessageService\(com.appiancorp.services.ServiceContext\))

    the Group Message channel and code will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getGroupService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getGroupService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getGroupTypeService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getGroupTypeService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getJmsConnectionFactory()](com/appiancorp/suiteapi/common/ServiceLocator.html#getJmsConnectionFactory\(\))

    Use [`ServiceLocator.getJmsConnectionFactory(ServiceContext)`](com/appiancorp/suiteapi/common/ServiceLocator.html#getJmsConnectionFactory\(com.appiancorp.services.ServiceContext\)).

    [com.appiancorp.suiteapi.common.ServiceLocator.getJmsConnectionFactory(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getJmsConnectionFactory\(com.appiancorp.services.ServiceContext\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getKnowledgeCenterService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getKnowledgeCenterService\(com.appiancorp.services.ServiceContext\))

    Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getLeaderMessageService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getLeaderMessageService\(com.appiancorp.services.ServiceContext\))

    the Group Message channel and code will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getLinksService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getLinksService\(com.appiancorp.services.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getMessagePublisherService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getMessagePublisherService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getMiniBodyService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getMiniBodyService\(com.appiancorp.services.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getMiniMetadataService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getMiniMetadataService\(com.appiancorp.services.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getNavigationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getNavigationService\(com.appiancorp.services.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getNoteContentsService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getNoteContentsService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getNotificationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getNotificationService\(com.appiancorp.services.ServiceContext\))

    The Notification functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

    [com.appiancorp.suiteapi.common.ServiceLocator.getPageNavigationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getPageNavigationService\(com.appiancorp.services.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getPageService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getPageService\(com.appiancorp.services.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getPersonalizationSearchService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getPersonalizationSearchService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getPortalAdministrationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getPortalAdministrationService\(com.appiancorp.services.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getPortalNotificationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getPortalNotificationService\(com.appiancorp.services.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getPortletService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getPortletService\(com.appiancorp.services.ServiceContext\))

    The Portal functionality will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getPrimary()](com/appiancorp/suiteapi/common/ServiceLocator.html#getPrimary\(\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getProcessAdministrationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getProcessAdministrationService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getProcessAnalyticsService2(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getProcessAnalyticsService2\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getProcessDesignService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getProcessDesignService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getProcessExecutionService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getProcessExecutionService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getReportingService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getReportingService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getService(ServiceContext, String)](com/appiancorp/suiteapi/common/ServiceLocator.html#getService\(com.appiancorp.services.ServiceContext,java.lang.String\))

    Use one of the `get*Service` methods instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getService(String)](com/appiancorp/suiteapi/common/ServiceLocator.html#getService\(java.lang.String\))

    Use one of the `get*Service` methods instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getServiceManager()](com/appiancorp/suiteapi/common/ServiceLocator.html#getServiceManager\(\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getServiceNames()](com/appiancorp/suiteapi/common/ServiceLocator.html#getServiceNames\(\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.getServicesAsArray(ServiceContext, String\[\])](com/appiancorp/suiteapi/common/ServiceLocator.html#getServicesAsArray\(com.appiancorp.services.ServiceContext,java.lang.String%5B%5D\))

    Use the `get*Service` methods instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getServicesAsMap(ServiceContext, String\[\])](com/appiancorp/suiteapi/common/ServiceLocator.html#getServicesAsMap\(com.appiancorp.services.ServiceContext,java.lang.String%5B%5D\))

    Use the `get*Service` methods instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getStatisticsService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getStatisticsService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getSyncronizationService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getSyncronizationService\(com.appiancorp.services.ServiceContext\))

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.common.ServiceLocator.getTypeService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getTypeService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getUser(String)](com/appiancorp/suiteapi/common/ServiceLocator.html#getUser\(java.lang.String\))

    Use {@link ServiceContextFactory.getUser()} instead

    [com.appiancorp.suiteapi.common.ServiceLocator.getUserProfileService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getUserProfileService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.getUserService(ServiceContext)](com/appiancorp/suiteapi/common/ServiceLocator.html#getUserService\(com.appiancorp.services.ServiceContext\))

    Use services injected by the Appian plug-in framework instead.

    [com.appiancorp.suiteapi.common.ServiceLocator.recreateConnections(String)](com/appiancorp/suiteapi/common/ServiceLocator.html#recreateConnections\(java.lang.String\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.releaseService(ReleasableService)](com/appiancorp/suiteapi/common/ServiceLocator.html#releaseService\(com.appiancorp.services.ReleasableService\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.releaseServiceSafe(ReleasableService)](com/appiancorp/suiteapi/common/ServiceLocator.html#releaseServiceSafe\(com.appiancorp.services.ReleasableService\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.reloadConnectionManagerConfiguration()](com/appiancorp/suiteapi/common/ServiceLocator.html#reloadConnectionManagerConfiguration\(\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.reloadServiceManagerConfiguration()](com/appiancorp/suiteapi/common/ServiceLocator.html#reloadServiceManagerConfiguration\(\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.waitForExecutionServers()](com/appiancorp/suiteapi/common/ServiceLocator.html#waitForExecutionServers\(\))

    see waitForServers(), preferred, or waitForServers(List connections) instead to wait on just the given connections. Code should not wait on just execution servers.

    [com.appiancorp.suiteapi.common.ServiceLocator.waitForServer(String)](com/appiancorp/suiteapi/common/ServiceLocator.html#waitForServer\(java.lang.String\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.waitForServers()](com/appiancorp/suiteapi/common/ServiceLocator.html#waitForServers\(\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.common.ServiceLocator.waitForServers(List<KougarConnection>)](com/appiancorp/suiteapi/common/ServiceLocator.html#waitForServers\(java.util.List\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.content.Content.getForum()](com/appiancorp/suiteapi/content/Content.html#getForum\(\))

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.content.Content.getLockedBy()](com/appiancorp/suiteapi/content/Content.html#getLockedBy\(\))

    use [`Content.getLockedByUsername()`](com/appiancorp/suiteapi/content/Content.html#getLockedByUsername\(\))

    [com.appiancorp.suiteapi.content.Content.getVersions()](com/appiancorp/suiteapi/content/Content.html#getVersions\(\))

    [com.appiancorp.suiteapi.content.Content.setForum(Long)](com/appiancorp/suiteapi/content/Content.html#setForum\(java.lang.Long\))

    The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

    [com.appiancorp.suiteapi.content.Content.setLockedBy(String)](com/appiancorp/suiteapi/content/Content.html#setLockedBy\(java.lang.String\))

    use {@link #setLockedByUsername(String))}

    [com.appiancorp.suiteapi.content.Content.setVersions(Long\[\])](com/appiancorp/suiteapi/content/Content.html#setVersions\(java.lang.Long%5B%5D\))

    this field cannot be updated in the database.

    [com.appiancorp.suiteapi.content.ContentOutputStream.getChannel()](com/appiancorp/suiteapi/content/ContentOutputStream.html#getChannel\(\))

    [com.appiancorp.suiteapi.content.ContentService.activateUserSession(Long\[\], Long\[\], Integer)](com/appiancorp/suiteapi/content/ContentService.html#activateUserSession\(java.lang.Long%5B%5D,java.lang.Long%5B%5D,java.lang.Integer\))

    [com.appiancorp.suiteapi.content.ContentService.addFavorite(Long)](com/appiancorp/suiteapi/content/ContentService.html#addFavorite\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.addFavoriteForUsers(Long, String\[\])](com/appiancorp/suiteapi/content/ContentService.html#addFavoriteForUsers\(java.lang.Long,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.addFavorites(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#addFavorites\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.addLinks(Long, Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#addLinks\(java.lang.Long,java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.approve(Long)](com/appiancorp/suiteapi/content/ContentService.html#approve\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.approve(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#approve\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.approveVersion(Long, Integer)](com/appiancorp/suiteapi/content/ContentService.html#approveVersion\(java.lang.Long,java.lang.Integer\))

    [com.appiancorp.suiteapi.content.ContentService.areFavorites(Content\[\])](com/appiancorp/suiteapi/content/ContentService.html#areFavorites\(com.appiancorp.suiteapi.content.Content%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.areFavorites(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#areFavorites\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.breakLock(Long)](com/appiancorp/suiteapi/content/ContentService.html#breakLock\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.breakLock(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#breakLock\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.browse(Long, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#browse\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.browsePaging(Long, ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#browsePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.cleanseApprovals()](com/appiancorp/suiteapi/content/ContentService.html#cleanseApprovals\(\))

    [com.appiancorp.suiteapi.content.ContentService.cleanseFavorites()](com/appiancorp/suiteapi/content/ContentService.html#cleanseFavorites\(\))

    [com.appiancorp.suiteapi.content.ContentService.commitUpdateUsernames()](com/appiancorp/suiteapi/content/ContentService.html#commitUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.createVersion(Content\[\], Integer)](com/appiancorp/suiteapi/content/ContentService.html#createVersion\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\))

    Use [`ContentService.createVersion(Content, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#createVersion\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\))

    [com.appiancorp.suiteapi.content.ContentService.getAdministratable(Long, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#getAdministratable\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.getAdministratablePaging(Long, ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getAdministratablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getAdvertisedChildren(Long, ContentFilter, Integer)](com/appiancorp/suiteapi/content/ContentService.html#getAdvertisedChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))

    use [`ContentService.getAdvertisedChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getAdvertisedChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getAllChildren(Long, ContentFilter, Integer)](com/appiancorp/suiteapi/content/ContentService.html#getAllChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))

    use [`ContentService.getAllChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getAllChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getAllChildrenAndVersions(Long, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#getAllChildrenAndVersions\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.getAllChildrenAndVersionsPaging(Long, ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getAllChildrenAndVersionsPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getAllVersions(Long)](com/appiancorp/suiteapi/content/ContentService.html#getAllVersions\(java.lang.Long\))

    use [`ContentService.getAllVersionsPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getAllVersionsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getChildren(Long, ContentFilter, Integer)](com/appiancorp/suiteapi/content/ContentService.html#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))

    use [`ContentService.getChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getContent(Long)](com/appiancorp/suiteapi/content/ContentService.html#getContent\(java.lang.Long\))

    use [`ContentService.getVersion(Long, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getVersion\(java.lang.Long,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getContent(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#getContent\(java.lang.Long%5B%5D\))

    use [`ContentService.getVersionsPaging(Long, Integer[], int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getContentPaging(Long\[\], int, int, Integer, Integer)](com/appiancorp/suiteapi/content/ContentService.html#getContentPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))

    use [`ContentService.getVersionsPaging(Long[], Integer, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getVersionsPaging\(java.lang.Long%5B%5D,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getContentTree(Long, Integer, Integer, Integer)](com/appiancorp/suiteapi/content/ContentService.html#getContentTree\(java.lang.Long,java.lang.Integer,java.lang.Integer,java.lang.Integer\))

    use [`ContentService.getContentTreePaging(Long, Integer, Integer, Integer, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getContentTreePaging\(java.lang.Long,java.lang.Integer,java.lang.Integer,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getContentWhereViewable(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#getContentWhereViewable\(java.lang.Long%5B%5D\))

    use [`ContentService.getContentWhereViewablePaging(Long[], int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getContentWhereViewablePaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getEditable(Long, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#getEditable\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.getEditablePaging(Long, ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getEditablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getExpired(Long, Integer, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#getExpired\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.getExpiredPaging(Long, Integer, ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getExpiredPaging\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getExpiredIds(Long, Integer, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#getExpiredIds\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter\))

    [com.appiancorp.suiteapi.content.ContentService.getExpiredPaging(Long, Integer, ContentFilter, int, int, Integer, Integer)](com/appiancorp/suiteapi/content/ContentService.html#getExpiredPaging\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.content.ContentService.getFavoriteByRootIds(Long, ContentFilter, Boolean)](com/appiancorp/suiteapi/content/ContentService.html#getFavoriteByRootIds\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Boolean\))

    [com.appiancorp.suiteapi.content.ContentService.getFavoritesByRoot(Long, ContentFilter, Boolean)](com/appiancorp/suiteapi/content/ContentService.html#getFavoritesByRoot\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Boolean\))

    use [`ContentService.getFavoritesByRootPaging(Long, ContentFilter, Boolean, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getFavoritesByRootPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getFavoritesByRootPaging(Long, ContentFilter, Boolean, int, int, Integer, Integer)](com/appiancorp/suiteapi/content/ContentService.html#getFavoritesByRootPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Boolean,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.content.ContentService.getInactive(Long, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#getInactive\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.getInactivePaging(Long, ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getInactivePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getInternalFilename(Long)](com/appiancorp/suiteapi/content/ContentService.html#getInternalFilename\(java.lang.Long\))

    since 23.2. Use [`ContentService.getDocumentInputStream(long)`](com/appiancorp/suiteapi/content/ContentService.html#getDocumentInputStream\(long\)) for reads and [`ContentService.uploadDocument(Document, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#uploadDocument\(com.appiancorp.suiteapi.knowledge.Document,java.lang.Integer\)) for writes, or call [`and use supported APIs on {@link com.appiancorp.suiteapi.knowledge.Document}`](com/appiancorp/suiteapi/content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\))

    [com.appiancorp.suiteapi.content.ContentService.getInternalFilenames(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#getInternalFilenames\(java.lang.Long%5B%5D\))

    since 23.2. Use [`ContentService.getDocumentInputStream(long[])`](com/appiancorp/suiteapi/content/ContentService.html#getDocumentInputStream\(long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.getMyInactive()](com/appiancorp/suiteapi/content/ContentService.html#getMyInactive\(\))

    use [`ContentService.getMyInactivePaging(int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getMyInactivePaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getPending(Long, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#getPending\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.getPendingPaging(Long, ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getPendingPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getPendingPaging(Long, ContentFilter, int, int, Integer, Integer)](com/appiancorp/suiteapi/content/ContentService.html#getPendingPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.content.ContentService.getPendingReview(Long)](com/appiancorp/suiteapi/content/ContentService.html#getPendingReview\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.getPendingReviews(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#getPendingReviews\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.getPersonalAndTeams(ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#getPersonalAndTeams\(com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.getPersonalAndTeamsPaging(ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getPersonalAndTeamsPaging\(com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getRestrictionMap(Long)](com/appiancorp/suiteapi/content/ContentService.html#getRestrictionMap\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.getRoleSetForUser(String, Long)](com/appiancorp/suiteapi/content/ContentService.html#getRoleSetForUser\(java.lang.String,java.lang.Long\))

    Requires two sets of credentials.

    [com.appiancorp.suiteapi.content.ContentService.getRoleSetsForUser(String, Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#getRoleSetsForUser\(java.lang.String,java.lang.Long%5B%5D\))

    Requires two sets of credentials.

    [com.appiancorp.suiteapi.content.ContentService.getSystemId(String)](com/appiancorp/suiteapi/content/ContentService.html#getSystemId\(java.lang.String\))

    use [`ContentService.getIdByUuid(String)`](com/appiancorp/suiteapi/content/ContentService.html#getIdByUuid\(java.lang.String\)) instead. This method will be removed in a future release

    [com.appiancorp.suiteapi.content.ContentService.getSystemIds(String\[\])](com/appiancorp/suiteapi/content/ContentService.html#getSystemIds\(java.lang.String%5B%5D\))

    use [`ContentService.getIdsByUuid(String[])`](com/appiancorp/suiteapi/content/ContentService.html#getIdsByUuid\(java.lang.String%5B%5D\)) instead. This method will be removed in a future release

    [com.appiancorp.suiteapi.content.ContentService.getSystemNames()](com/appiancorp/suiteapi/content/ContentService.html#getSystemNames\(\))

    see [`ContentService.getIdByUuid(String)`](com/appiancorp/suiteapi/content/ContentService.html#getIdByUuid\(java.lang.String\))

    [com.appiancorp.suiteapi.content.ContentService.getUserSpaceAvailable()](com/appiancorp/suiteapi/content/ContentService.html#getUserSpaceAvailable\(\))

    User quotas have been removed. This method will always return [`- 1`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html#MAX_VALUE "class or interface in java.lang")

    [com.appiancorp.suiteapi.content.ContentService.getUserSpaceAvailableForUser(String)](com/appiancorp/suiteapi/content/ContentService.html#getUserSpaceAvailableForUser\(java.lang.String\))

    User quotas have been removed. This method will always return [`- 1`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html#MAX_VALUE "class or interface in java.lang")

    [com.appiancorp.suiteapi.content.ContentService.getUserSpaceUsage()](com/appiancorp/suiteapi/content/ContentService.html#getUserSpaceUsage\(\))

    User quotas have been removed. This method will always return 0

    [com.appiancorp.suiteapi.content.ContentService.getVersions(Long\[\], Integer)](com/appiancorp/suiteapi/content/ContentService.html#getVersions\(java.lang.Long%5B%5D,java.lang.Integer\))

    use [`ContentService.getVersionsPaging(Long, Integer[], int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getViewable(Long, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#getViewable\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.getViewablePaging(Long, ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getViewablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.getWhatsNew(Long, Integer, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#getWhatsNew\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.getWhatsNewPaging(Long, Integer, ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#getWhatsNewPaging\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.importContent(Content\[\], Integer)](com/appiancorp/suiteapi/content/ContentService.html#importContent\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\))

    This API is no longer supported and will be removed in the next release. Only objects that are exported using the Applications import/export will be importable in the next release.

    [com.appiancorp.suiteapi.content.ContentService.lock(Long)](com/appiancorp/suiteapi/content/ContentService.html#lock\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.lock(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#lock\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.notifyApproved(Approved...)](com/appiancorp/suiteapi/content/ContentService.html#notifyApproved\(com.appiancorp.suiteapi.content.Approved...\))

    [com.appiancorp.suiteapi.content.ContentService.notifyUserCreation(String)](com/appiancorp/suiteapi/content/ContentService.html#notifyUserCreation\(java.lang.String\))

    done automatically by UserService.createUser

    [com.appiancorp.suiteapi.content.ContentService.notifyUsersCreation(String\[\])](com/appiancorp/suiteapi/content/ContentService.html#notifyUsersCreation\(java.lang.String%5B%5D\))

    done automatically by UserService.createUser

    [com.appiancorp.suiteapi.content.ContentService.populateFavorites(Content\[\])](com/appiancorp/suiteapi/content/ContentService.html#populateFavorites\(com.appiancorp.suiteapi.content.Content%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.queryByRoot(Long, String, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#queryByRoot\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.queryByRootPaging(Long, String, ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#queryByRootPaging\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.reject(Long)](com/appiancorp/suiteapi/content/ContentService.html#reject\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.reject(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#reject\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.rejectVersion(Long, Integer)](com/appiancorp/suiteapi/content/ContentService.html#rejectVersion\(java.lang.Long,java.lang.Integer\))

    [com.appiancorp.suiteapi.content.ContentService.removeFavorite(Long)](com/appiancorp/suiteapi/content/ContentService.html#removeFavorite\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.removeFavoriteForUsers(Long, String\[\])](com/appiancorp/suiteapi/content/ContentService.html#removeFavoriteForUsers\(java.lang.Long,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.removeFavorites(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#removeFavorites\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.removeLinks(Long, Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#removeLinks\(java.lang.Long,java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.requestAccess(Long)](com/appiancorp/suiteapi/content/ContentService.html#requestAccess\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.requestAccess(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#requestAccess\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.resetGroupMembership(Timestamp)](com/appiancorp/suiteapi/content/ContentService.html#resetGroupMembership\(java.sql.Timestamp\))

    No longer necessary with credential system

    [com.appiancorp.suiteapi.content.ContentService.rollbackUpdateUsernames()](com/appiancorp/suiteapi/content/ContentService.html#rollbackUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.searchByRoot(Long, String, ContentFilter)](com/appiancorp/suiteapi/content/ContentService.html#searchByRoot\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter\))

    use [`ContentService.searchByRootPaging(Long, String, ContentFilter, int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#searchByRootPaging\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.searchWithin(String, Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#searchWithin\(java.lang.String,java.lang.Long%5B%5D\))

    use [`ContentService.searchWithinPaging(String, Long[], int, int, Integer, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#searchWithinPaging\(java.lang.String,java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.setRestrictionMap(Long, RoleMap)](com/appiancorp/suiteapi/content/ContentService.html#setRestrictionMap\(java.lang.Long,com.appiancorp.suiteapi.common.RoleMap\))

    [com.appiancorp.suiteapi.content.ContentService.setRoot(String, Long)](com/appiancorp/suiteapi/content/ContentService.html#setRoot\(java.lang.String,java.lang.Long\))

    use [`ContentService.setAsRoot(Long)`](com/appiancorp/suiteapi/content/ContentService.html#setAsRoot\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.setSizeOfDocumentVersion(Long)](com/appiancorp/suiteapi/content/ContentService.html#setSizeOfDocumentVersion\(java.lang.Long\))

    since 23.2. Writing to a Document via [`DocumentOutputStream`](com/appiancorp/suiteapi/content/DocumentOutputStream.html "class in com.appiancorp.suiteapi.content") or [`ContentUploadOutputStream`](com/appiancorp/suiteapi/content/ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content") will update the Document size metadata automatically upon closing the stream.

    [com.appiancorp.suiteapi.content.ContentService.setSystemId(String, Long)](com/appiancorp/suiteapi/content/ContentService.html#setSystemId\(java.lang.String,java.lang.Long\))

    Use [`ContentService.create(Content, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#create\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\)) with a pre-populated UUID and the flag [`ContentConstants.VIS_SYSTEM`](com/appiancorp/suiteapi/content/ContentConstants.html#VIS_SYSTEM).

    [com.appiancorp.suiteapi.content.ContentService.setSystemIds(String\[\], Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#setSystemIds\(java.lang.String%5B%5D,java.lang.Long%5B%5D\))

    Use [`ContentService.create(Content[], Integer)`](com/appiancorp/suiteapi/content/ContentService.html#create\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\)) with pre-populated UUIDs and the flag [`ContentConstants.VIS_SYSTEM`](com/appiancorp/suiteapi/content/ContentConstants.html#VIS_SYSTEM).

    [com.appiancorp.suiteapi.content.ContentService.setUserSpaceAvailable(String, Long)](com/appiancorp/suiteapi/content/ContentService.html#setUserSpaceAvailable\(java.lang.String,java.lang.Long\))

    User quotas have been removed. Calls to this method will be ignored.

    [com.appiancorp.suiteapi.content.ContentService.setUserSpaceUsage(String, Long)](com/appiancorp/suiteapi/content/ContentService.html#setUserSpaceUsage\(java.lang.String,java.lang.Long\))

    User quotas have been removed. Calls to this method will be ignored.

    [com.appiancorp.suiteapi.content.ContentService.unexpire(Long)](com/appiancorp/suiteapi/content/ContentService.html#unexpire\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.unexpire(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#unexpire\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.unlock(Long)](com/appiancorp/suiteapi/content/ContentService.html#unlock\(java.lang.Long\))

    [com.appiancorp.suiteapi.content.ContentService.unlock(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#unlock\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.updateUsernames(String\[\], String\[\], long)](com/appiancorp/suiteapi/content/ContentService.html#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.content.ContentService.upload(Document, Integer)](com/appiancorp/suiteapi/content/ContentService.html#upload\(com.appiancorp.suiteapi.knowledge.Document,java.lang.Integer\))

    since 23.2. Use [`ContentService.uploadDocument(Document, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#uploadDocument\(com.appiancorp.suiteapi.knowledge.Document,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.content.ContentService.validateGroupMembership(Long\[\], Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#validateGroupMembership\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))

    No longer necessary with credential system

    [com.appiancorp.suiteapi.content.CopyReference.getSourceFilename()](com/appiancorp/suiteapi/content/CopyReference.html#getSourceFilename\(\))

    since 23.2. Use [`CopyReference.copyContents()`](com/appiancorp/suiteapi/content/CopyReference.html#copyContents\(\)) instead

    [com.appiancorp.suiteapi.content.CopyReference.getTargetFilename()](com/appiancorp/suiteapi/content/CopyReference.html#getTargetFilename\(\))

    since 23.2. Use [`CopyReference.copyContents()`](com/appiancorp/suiteapi/content/CopyReference.html#copyContents\(\)) instead

    [com.appiancorp.suiteapi.content.CopyReference.setSourceFilename(String)](com/appiancorp/suiteapi/content/CopyReference.html#setSourceFilename\(java.lang.String\))

    since 23.2

    [com.appiancorp.suiteapi.content.CopyReference.setTargetFilename(String)](com/appiancorp/suiteapi/content/CopyReference.html#setTargetFilename\(java.lang.String\))

    since 23.2

    [com.appiancorp.suiteapi.expression.annotations.Function.returnType()](com/appiancorp/suiteapi/expression/annotations/Function.html#returnType\(\))

    since 6.0.3. Use the @Type annotation instead.

    [com.appiancorp.suiteapi.expression.ExpressionService.cancelFunction(Long, String)](com/appiancorp/suiteapi/expression/ExpressionService.html#cancelFunction\(java.lang.Long,java.lang.String\))

    see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

    [com.appiancorp.suiteapi.expression.ExpressionService.continueFunction(Long, TypedVariable)](com/appiancorp/suiteapi/expression/ExpressionService.html#continueFunction\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable\))

    see ProcessDesignService.evaluateExpression

    [com.appiancorp.suiteapi.expression.ExpressionService.evaluateExpression(Long, TypedVariable\[\])](com/appiancorp/suiteapi/expression/ExpressionService.html#evaluateExpression\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable%5B%5D\))

    see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

    [com.appiancorp.suiteapi.expression.ExpressionService.evaluateExpressionType(Long, TypedVariable\[\], int)](com/appiancorp/suiteapi/expression/ExpressionService.html#evaluateExpressionType\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable%5B%5D,int\))

    see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

    [com.appiancorp.suiteapi.expression.ExpressionService.prepareExpression(String)](com/appiancorp/suiteapi/expression/ExpressionService.html#prepareExpression\(java.lang.String\))

    see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

    [com.appiancorp.suiteapi.expression.ExpressionService.prepareModifyExpression(String, String, String)](com/appiancorp/suiteapi/expression/ExpressionService.html#prepareModifyExpression\(java.lang.String,java.lang.String,java.lang.String\))

    see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

    [com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getForumSummaries(Long\[\])](com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html#getForumSummaries\(java.lang.Long%5B%5D\))

    use getForumSummariesPaging instead

    [com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getSponsoredThreadSummaries(Long\[\], Integer, Integer, int, int)](com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html#getSponsoredThreadSummaries\(java.lang.Long%5B%5D,java.lang.Integer,java.lang.Integer,int,int\))

    use getSponsoredThreadSummariesPaging instead

    [com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getSponsoredThreadSummaries(Long, Integer, Integer, int, int)](com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html#getSponsoredThreadSummaries\(java.lang.Long,java.lang.Integer,java.lang.Integer,int,int\))

    use getSponsoredThreadSummariesPaging instead

    [com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getSubscribedForumSummaries(Integer, Integer, int, int)](com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html#getSubscribedForumSummaries\(java.lang.Integer,java.lang.Integer,int,int\))

    use getSubscribedForumSummariesPaging instead

    [com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getSubscribedThreadSummaries(Integer, Integer, int, int)](com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html#getSubscribedThreadSummaries\(java.lang.Integer,java.lang.Integer,int,int\))

    use getSubscribedThreadSummariesPaging instead

    [com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getThreadedMessages(Long, Integer, Integer, int, int)](com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html#getThreadedMessages\(java.lang.Long,java.lang.Integer,java.lang.Integer,int,int\))

    use getThreadedMessagesPaging instead

    [com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getThreadSummaries(Long\[\])](com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html#getThreadSummaries\(java.lang.Long%5B%5D\))

    use getThreadSummariesPaging instead

    [com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getThreadSummariesForForum(Long, Integer, Integer, int, int)](com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html#getThreadSummariesForForum\(java.lang.Long,java.lang.Integer,java.lang.Integer,int,int\))

    use getThreadSummariesForForumPaging instead

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.activateUserSession(Long\[\], Long\[\], Long)](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#activateUserSession\(java.lang.Long%5B%5D,java.lang.Long%5B%5D,java.lang.Long\))

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.commitUpdateUsernames()](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#commitUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getForumIdsByRelated(LocalObject)](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getForumIdsByRelated\(com.appiancorp.suiteapi.common.LocalObject\))

    Use [`DiscussionMetadataCoreService.getForumIdsByRelatedPaging(com.appiancorp.suiteapi.common.LocalObject, int, int, java.lang.Integer)`](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getForumIdsByRelatedPaging\(com.appiancorp.suiteapi.common.LocalObject,int,int,java.lang.Integer\)).

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getForums(Long\[\])](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getForums\(java.lang.Long%5B%5D\))

    Use [`DiscussionMetadataCoreService.getForumsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getForumsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getMessages(Long\[\])](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getMessages\(java.lang.Long%5B%5D\))

    Use [`DiscussionMetadataCoreService.getMessagesPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getMessagesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getMessagesForThread(Long, Integer, Integer, int, int)](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getMessagesForThread\(java.lang.Long,java.lang.Integer,java.lang.Integer,int,int\))

    Use [`DiscussionMetadataCoreService.getMessagesForThreadPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getMessagesForThreadPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getThreads(Long\[\])](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getThreads\(java.lang.Long%5B%5D\))

    Use [`DiscussionMetadataCoreService.getThreadsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getThreadsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getThreadsForForum(Long, Integer, Integer, int, int)](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getThreadsForForum\(java.lang.Long,java.lang.Integer,java.lang.Integer,int,int\))

    Use [`DiscussionMetadataCoreService.getThreadsForForumPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#getThreadsForForumPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.notifyUserCreation(String)](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#notifyUserCreation\(java.lang.String\))

    done automatically by UserService.createUser

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.reloadProperties()](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#reloadProperties\(\))

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.rollbackUpdateUsernames()](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#rollbackUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.setTimeZoneSameAs(BackendTimeZoneSimple, String)](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#setTimeZoneSameAs\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple,java.lang.String\))

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.subscribeUsersToThread(Long, String\[\])](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#subscribeUsersToThread\(java.lang.Long,java.lang.String%5B%5D\))

    the combination of [`DiscussionMetadataCoreService.inviteUsersToThread(java.lang.String[], java.lang.Long)`](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#inviteUsersToThread\(java.lang.String%5B%5D,java.lang.Long\)) and [`DiscussionMetadataCoreService.acceptThreadInvitation(java.lang.Long)`](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#acceptThreadInvitation\(java.lang.Long\)) is more secure, and should be used instead

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.updateUsernames(String\[\], String\[\], long)](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.validateGroupMembership(Long\[\], Long\[\])](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#validateGroupMembership\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))

    No longer necessary with credential system

    [com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.getInstance(Class<? extends PortletIxHelper>, Operation, Long, String, Diagnostics)](com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.html#getInstance\(java.lang.Class,com.appiancorp.ix.Operation,java.lang.Long,java.lang.String,com.appiancorp.ix.diagnostics.Diagnostics\))

    use [`PortletIxHelper.getInstance(Class, Operation, Long, String, Diagnostics, ServiceContext)`](com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.html#getInstance\(java.lang.Class,com.appiancorp.ix.Operation,java.lang.Long,java.lang.String,com.appiancorp.ix.diagnostics.Diagnostics,com.appiancorp.services.ServiceContext\))

    [com.appiancorp.suiteapi.ix.ImportObject.getId()](com/appiancorp/suiteapi/ix/ImportObject.html#getId\(\))

    use [`ImportObject.getObjectId()`](com/appiancorp/suiteapi/ix/ImportObject.html#getObjectId\(\))

    [com.appiancorp.suiteapi.knowledge.Document.getInternalFilename()](com/appiancorp/suiteapi/knowledge/Document.html#getInternalFilename\(\))

    since 23.2. See [`Document.getInputStream()`](com/appiancorp/suiteapi/knowledge/Document.html#getInputStream\(\)) or [`Document.accessAsReadOnlyFile()`](com/appiancorp/suiteapi/knowledge/Document.html#accessAsReadOnlyFile\(\)) to read and [`Document.getOutputStream()`](com/appiancorp/suiteapi/knowledge/Document.html#getOutputStream\(\)) or [`Document.write(InputStream)`](com/appiancorp/suiteapi/knowledge/Document.html#write\(java.io.InputStream\)) to write

    [com.appiancorp.suiteapi.knowledge.Document.setInternalFilename(String)](com/appiancorp/suiteapi/knowledge/Document.html#setInternalFilename\(java.lang.String\))

    since 23.2. See [`Document.getInputStream()`](com/appiancorp/suiteapi/knowledge/Document.html#getInputStream\(\)) or [`Document.accessAsReadOnlyFile()`](com/appiancorp/suiteapi/knowledge/Document.html#accessAsReadOnlyFile\(\)) to read and [`Document.getOutputStream()`](com/appiancorp/suiteapi/knowledge/Document.html#getOutputStream\(\)) or [`Document.write(InputStream)`](com/appiancorp/suiteapi/knowledge/Document.html#write\(java.io.InputStream\)) to write

    [com.appiancorp.suiteapi.messaging.JmsConnectionFactory.getPublisher(TopicSession, Topic)](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#getPublisher\(javax.jms.TopicSession,javax.jms.Topic\))

    Use instead session.createProducer(destination);

    [com.appiancorp.suiteapi.messaging.JmsConnectionFactory.getSubscriber(TopicSession, Topic, String)](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#getSubscriber\(javax.jms.TopicSession,javax.jms.Topic,java.lang.String\))

    Use instead session.createDurableSubscriber(topic,durableSubscriberName)

    [com.appiancorp.suiteapi.messaging.JmsConnectionFactory.getTopic(int, String)](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#getTopic\(int,java.lang.String\))

    use createTopic instead for Connection based rather than TopicConnection based JMS.

    [com.appiancorp.suiteapi.messaging.JmsConnectionFactory.getTopic(TopicSession, String)](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#getTopic\(javax.jms.TopicSession,java.lang.String\))

    use createTopic instead for Connection based rather than TopicConnection based JMS.

    [com.appiancorp.suiteapi.messaging.JmsConnectionFactory.getTopicConnection()](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#getTopicConnection\(\))

    use getConnection instead.

    [com.appiancorp.suiteapi.messaging.JmsConnectionFactory.getTopicSession(int)](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#getTopicSession\(int\))

    Use getSession instead.

    [com.appiancorp.suiteapi.messaging.JmsConnectionFactory.getTopicSession(TopicConnection, int)](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#getTopicSession\(javax.jms.TopicConnection,int\))

    Use getSession instead.

    [com.appiancorp.suiteapi.messaging.Mapping.isMultiple()](com/appiancorp/suiteapi/messaging/Mapping.html#isMultiple\(\))

    [com.appiancorp.suiteapi.messaging.Mapping.setMultiple(boolean)](com/appiancorp/suiteapi/messaging/Mapping.html#setMultiple\(boolean\))

    [com.appiancorp.suiteapi.personalization.GroupService.findAdminGroups(GroupSearch, boolean)](com/appiancorp/suiteapi/personalization/GroupService.html#findAdminGroups\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean\))

    use [`GroupService.findAdminGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/personalization/GroupService.html#findAdminGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.personalization.GroupService.findAvailableParentGroups(GroupSearch, boolean, Long)](com/appiancorp/suiteapi/personalization/GroupService.html#findAvailableParentGroups\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long\))

    use [`GroupService.findAvailableParentGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/personalization/GroupService.html#findAvailableParentGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.personalization.GroupService.findGroups(GroupSearch, boolean)](com/appiancorp/suiteapi/personalization/GroupService.html#findGroups\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean\))

    use [`GroupService.findGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/personalization/GroupService.html#findGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.personalization.GroupService.findNonMemberAncestorGroups(GroupSearch, boolean, Long)](com/appiancorp/suiteapi/personalization/GroupService.html#findNonMemberAncestorGroups\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long\))

    use [`GroupService.findNonMemberAncestorGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/personalization/GroupService.html#findNonMemberAncestorGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead.

    [com.appiancorp.suiteapi.personalization.GroupService.getGroupsForUserByRoles(String, Integer\[\])](com/appiancorp/suiteapi/personalization/GroupService.html#getGroupsForUserByRoles\(java.lang.String,java.lang.Integer%5B%5D\))

    Use [`GroupService.getGroupsForUserByRolesPaging(String, Integer[], int, int, Integer, Integer)`](com/appiancorp/suiteapi/personalization/GroupService.html#getGroupsForUserByRolesPaging\(java.lang.String,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead.

    [com.appiancorp.suiteapi.personalization.GroupService.getGroupsOfType(Long)](com/appiancorp/suiteapi/personalization/GroupService.html#getGroupsOfType\(java.lang.Long\))

    use [`GroupService.getGroupsOfTypePaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/personalization/GroupService.html#getGroupsOfTypePaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.personalization.GroupService.getGroupsOfTypeForMemberUser(Long\[\], String)](com/appiancorp/suiteapi/personalization/GroupService.html#getGroupsOfTypeForMemberUser\(java.lang.Long%5B%5D,java.lang.String\))

    Use [`GroupService.getGroupsForUserByRolePaging(String, Integer, int, int, Integer, Integer)`](com/appiancorp/suiteapi/personalization/GroupService.html#getGroupsForUserByRolePaging\(java.lang.String,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) and extract groups of the desired types from the results.

    [com.appiancorp.suiteapi.personalization.GroupService.getGroupSummaryForUser(String)](com/appiancorp/suiteapi/personalization/GroupService.html#getGroupSummaryForUser\(java.lang.String\))

    Use [`GroupService.getGroupSummaryForUserPaging(String, int, int, Integer, Integer)`](com/appiancorp/suiteapi/personalization/GroupService.html#getGroupSummaryForUserPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead.

    [com.appiancorp.suiteapi.personalization.GroupService.getMemberUsernamesDirect(Long)](com/appiancorp/suiteapi/personalization/GroupService.html#getMemberUsernamesDirect\(java.lang.Long\))

    Use [`GroupService.getMemberUsersDirectPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/personalization/GroupService.html#getMemberUsersDirectPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.personalization.GroupService.getMemberUsersDirect(Long)](com/appiancorp/suiteapi/personalization/GroupService.html#getMemberUsersDirect\(java.lang.Long\))

    Use [`GroupService.getMemberUsersDirectPaging(Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/personalization/GroupService.html#getMemberUsersDirectPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.personalization.GroupService.getMyGroups(int, int, Integer, Integer)](com/appiancorp/suiteapi/personalization/GroupService.html#getMyGroups\(int,int,java.lang.Integer,java.lang.Integer\))

    use getFavoriteGroups

    [com.appiancorp.suiteapi.personalization.GroupService.getSystemDefaultApplication()](com/appiancorp/suiteapi/personalization/GroupService.html#getSystemDefaultApplication\(\))

    Use {@link ApplicationService.getDefaultApplication()}

    [com.appiancorp.suiteapi.personalization.GroupService.getUserDefaultApplication(String)](com/appiancorp/suiteapi/personalization/GroupService.html#getUserDefaultApplication\(java.lang.String\))

    Use {@link ApplicationService.getDefaultApplication()} for the site-wide default.

    [com.appiancorp.suiteapi.personalization.GroupService.removeMemberUser(String, Long)](com/appiancorp/suiteapi/personalization/GroupService.html#removeMemberUser\(java.lang.String,java.lang.Long\))

    Use [`GroupService.removeMemberUsers(String[], Long)`](com/appiancorp/suiteapi/personalization/GroupService.html#removeMemberUsers\(java.lang.String%5B%5D,java.lang.Long\)) and pass a single user in the array.

    [com.appiancorp.suiteapi.personalization.GroupService.resolveEmailAddress(LocalObject)](com/appiancorp/suiteapi/personalization/GroupService.html#resolveEmailAddress\(com.appiancorp.suiteapi.common.LocalObject\))

    Use [`GroupService.resolveEmailDestinations(LocalObject[], LocalObject[], LocalObject[])`](com/appiancorp/suiteapi/personalization/GroupService.html#resolveEmailDestinations\(com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D\))

    [com.appiancorp.suiteapi.personalization.GroupService.resolveEmailAddresses(LocalObject\[\])](com/appiancorp/suiteapi/personalization/GroupService.html#resolveEmailAddresses\(com.appiancorp.suiteapi.common.LocalObject%5B%5D\))

    Use [`GroupService.resolveEmailDestinations(LocalObject[], LocalObject[], LocalObject[])`](com/appiancorp/suiteapi/personalization/GroupService.html#resolveEmailDestinations\(com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D\))

    [com.appiancorp.suiteapi.personalization.GroupService.suggestGroups(String, int)](com/appiancorp/suiteapi/personalization/GroupService.html#suggestGroups\(java.lang.String,int\))

    use [`GroupService.suggest(String, int, SuggestParam[], Boolean)`](com/appiancorp/suiteapi/personalization/GroupService.html#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    [com.appiancorp.suiteapi.personalization.GroupService.suggestGroupsBulk(String\[\], int)](com/appiancorp/suiteapi/personalization/GroupService.html#suggestGroupsBulk\(java.lang.String%5B%5D,int\))

    use [`GroupService.suggest(String, int, SuggestParam[], Boolean)`](com/appiancorp/suiteapi/personalization/GroupService.html#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    [com.appiancorp.suiteapi.personalization.GroupService.suggestUsersAndGroups(String, int)](com/appiancorp/suiteapi/personalization/GroupService.html#suggestUsersAndGroups\(java.lang.String,int\))

    use [`GroupService.suggest(String, int, SuggestParam[], Boolean)`](com/appiancorp/suiteapi/personalization/GroupService.html#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    [com.appiancorp.suiteapi.personalization.GroupService.suggestUsersAndGroupsBulk(String\[\], int)](com/appiancorp/suiteapi/personalization/GroupService.html#suggestUsersAndGroupsBulk\(java.lang.String%5B%5D,int\))

    use [`GroupService.suggest(String, int, SuggestParam[], Boolean)`](com/appiancorp/suiteapi/personalization/GroupService.html#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    [com.appiancorp.suiteapi.personalization.GroupTypeService.getAllGroupTypeAttributesForGroupRules(Long)](com/appiancorp/suiteapi/personalization/GroupTypeService.html#getAllGroupTypeAttributesForGroupRules\(java.lang.Long\))

    [com.appiancorp.suiteapi.personalization.PersonalizationSearchService.getPermissionsForUserIdsForUser(Long\[\], String)](com/appiancorp/suiteapi/personalization/PersonalizationSearchService.html#getPermissionsForUserIdsForUser\(java.lang.Long%5B%5D,java.lang.String\))

    Use [`UserService.getSecurityForUser(String)`](com/appiancorp/suiteapi/personalization/UserService.html#getSecurityForUser\(java.lang.String\))

    [com.appiancorp.suiteapi.personalization.PersonalizationSearchService.getPermissionsForUserNames(String\[\])](com/appiancorp/suiteapi/personalization/PersonalizationSearchService.html#getPermissionsForUserNames\(java.lang.String%5B%5D\))

    Use [`UserService.getSecurityForUser(String)`](com/appiancorp/suiteapi/personalization/UserService.html#getSecurityForUser\(java.lang.String\))

    [com.appiancorp.suiteapi.personalization.PersonalizationSearchService.getPermissionsForUserNamesForUser(String\[\], String)](com/appiancorp/suiteapi/personalization/PersonalizationSearchService.html#getPermissionsForUserNamesForUser\(java.lang.String%5B%5D,java.lang.String\))

    Use [`UserService.getSecurityForUser(String)`](com/appiancorp/suiteapi/personalization/UserService.html#getSecurityForUser\(java.lang.String\))

    [com.appiancorp.suiteapi.personalization.User.getPassword()](com/appiancorp/suiteapi/personalization/User.html#getPassword\(\))

    Since 6.0.2, use [`User.getUserPassword()`](com/appiancorp/suiteapi/personalization/User.html#getUserPassword\(\))

    [com.appiancorp.suiteapi.personalization.User.setPassword(String)](com/appiancorp/suiteapi/personalization/User.html#setPassword\(java.lang.String\))

    Since 6.0.2, use [`User.setUserPassword(byte[])`](com/appiancorp/suiteapi/personalization/User.html#setUserPassword\(byte%5B%5D\))

    [com.appiancorp.suiteapi.personalization.UserProfile.getConfirmPassword()](com/appiancorp/suiteapi/personalization/UserProfile.html#getConfirmPassword\(\))

    Since 6.0.2, use [`User.getUserPassword()`](com/appiancorp/suiteapi/personalization/User.html#getUserPassword\(\))

    [com.appiancorp.suiteapi.personalization.UserProfile.setConfirmPassword(String)](com/appiancorp/suiteapi/personalization/UserProfile.html#setConfirmPassword\(java.lang.String\))

    Since 6.0.2, use `#setUserPassword(String)`

    [com.appiancorp.suiteapi.personalization.UserProfileService.authenticateUser(String, String)](com/appiancorp/suiteapi/personalization/UserProfileService.html#authenticateUser\(java.lang.String,java.lang.String\))

    Since 6.0.2, use `#authenticate(String, byte[])`

    [com.appiancorp.suiteapi.personalization.UserProfileService.findUsers(UserSearch, boolean)](com/appiancorp/suiteapi/personalization/UserProfileService.html#findUsers\(com.appiancorp.suiteapi.personalization.UserSearch,boolean\))

    Use [`UserProfileService.findUsersPaging(UserSearch, boolean, int, int, Integer, Integer)`](com/appiancorp/suiteapi/personalization/UserProfileService.html#findUsersPaging\(com.appiancorp.suiteapi.personalization.UserSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead.

    [com.appiancorp.suiteapi.personalization.UserProfileService.getUsersForGroupByRolePaging(Long, int, int, int, Integer, Integer)](com/appiancorp/suiteapi/personalization/UserProfileService.html#getUsersForGroupByRolePaging\(java.lang.Long,int,int,int,java.lang.Integer,java.lang.Integer\))

    Use [`UserService.getUsersForGroupByRolePaging(Long, Integer, int, int, Integer, Integer)`](com/appiancorp/suiteapi/personalization/UserService.html#getUsersForGroupByRolePaging\(java.lang.Long,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.personalization.UserRank.getId()](com/appiancorp/suiteapi/personalization/UserRank.html#getId\(\))

    Use the Name field instead.

    [com.appiancorp.suiteapi.personalization.UserRank.setId(Long)](com/appiancorp/suiteapi/personalization/UserRank.html#setId\(java.lang.Long\))

    Use the Name field instead.

    [com.appiancorp.suiteapi.personalization.UserService.authenticateUser(String, String)](com/appiancorp/suiteapi/personalization/UserService.html#authenticateUser\(java.lang.String,java.lang.String\))

    Since 6.0.2, use [`UserService.authenticate(String, byte[])`](com/appiancorp/suiteapi/personalization/UserService.html#authenticate\(java.lang.String,byte%5B%5D\))

    [com.appiancorp.suiteapi.personalization.UserService.commitUpdateUsernames()](com/appiancorp/suiteapi/personalization/UserService.html#commitUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.personalization.UserService.findUsers(UserSearch, boolean)](com/appiancorp/suiteapi/personalization/UserService.html#findUsers\(com.appiancorp.suiteapi.personalization.UserSearch,boolean\))

    use findUsersPaging

    [com.appiancorp.suiteapi.personalization.UserService.findUsersForGroupType(UserSearch, boolean, Long)](com/appiancorp/suiteapi/personalization/UserService.html#findUsersForGroupType\(com.appiancorp.suiteapi.personalization.UserSearch,boolean,java.lang.Long\))

    Use [`UserService.findUsersForGroupPaging(UserSearch, boolean, Long, int, int, Integer, Integer)`](com/appiancorp/suiteapi/personalization/UserService.html#findUsersForGroupPaging\(com.appiancorp.suiteapi.personalization.UserSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.personalization.UserService.isPasswordValid(String, String)](com/appiancorp/suiteapi/personalization/UserService.html#isPasswordValid\(java.lang.String,java.lang.String\))

    Since 6.0.2, use [`UserService.isUserPasswordValid(String, byte[])`](com/appiancorp/suiteapi/personalization/UserService.html#isUserPasswordValid\(java.lang.String,byte%5B%5D\))

    [com.appiancorp.suiteapi.personalization.UserService.loginAttempt(boolean)](com/appiancorp/suiteapi/personalization/UserService.html#loginAttempt\(boolean\))

    Use [`UserService.loginAttempt(String, boolean)`](com/appiancorp/suiteapi/personalization/UserService.html#loginAttempt\(java.lang.String,boolean\)) instead.

    [com.appiancorp.suiteapi.personalization.UserService.reloadProperties()](com/appiancorp/suiteapi/personalization/UserService.html#reloadProperties\(\))

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    [com.appiancorp.suiteapi.personalization.UserService.rollbackUpdateUsernames()](com/appiancorp/suiteapi/personalization/UserService.html#rollbackUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.personalization.UserService.suggestUsers(String, int)](com/appiancorp/suiteapi/personalization/UserService.html#suggestUsers\(java.lang.String,int\))

    use [`UserService.suggest(String, int, SuggestParam[], Boolean)`](com/appiancorp/suiteapi/personalization/UserService.html#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    [com.appiancorp.suiteapi.personalization.UserService.suggestUsersBulk(String\[\], int)](com/appiancorp/suiteapi/personalization/UserService.html#suggestUsersBulk\(java.lang.String%5B%5D,int\))

    use [`UserService.suggest(String, int, SuggestParam[], Boolean)`](com/appiancorp/suiteapi/personalization/UserService.html#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    [com.appiancorp.suiteapi.personalization.UserService.updateUsernames(String\[\], String\[\], long)](com/appiancorp/suiteapi/personalization/UserService.html#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.portal.AdministrationService.activateUserSession(Long\[\], Long\[\])](com/appiancorp/suiteapi/portal/AdministrationService.html#activateUserSession\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.portal.AdministrationService.commitUpdateUsernames()](com/appiancorp/suiteapi/portal/AdministrationService.html#commitUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.portal.AdministrationService.findPortletTypes(String, String)](com/appiancorp/suiteapi/portal/AdministrationService.html#findPortletTypes\(java.lang.String,java.lang.String\))

    use [`AdministrationService.findPortletTypesPaging(String, String, int, int, Integer, Integer)`](com/appiancorp/suiteapi/portal/AdministrationService.html#findPortletTypesPaging\(java.lang.String,java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead. JSR-168 and WSRP Portlets have been deprecated, and no portlets of those types will be returned by this method.

    [com.appiancorp.suiteapi.portal.AdministrationService.findPortletTypesPaging(String, String, int, int, Integer, Integer)](com/appiancorp/suiteapi/portal/AdministrationService.html#findPortletTypesPaging\(java.lang.String,java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))

    JSR-168 and WSRP Portlets have been deprecated, and no portlets of those types will be returned by this method.

    [com.appiancorp.suiteapi.portal.AdministrationService.getApplicationName()](com/appiancorp/suiteapi/portal/AdministrationService.html#getApplicationName\(\))

    not used

    [com.appiancorp.suiteapi.portal.AdministrationService.getMultiplePortletTypes(String\[\])](com/appiancorp/suiteapi/portal/AdministrationService.html#getMultiplePortletTypes\(java.lang.String%5B%5D\))

    use [`AdministrationService.findPortletTypesPaging(java.lang.String, java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/AdministrationService.html#findPortletTypesPaging\(java.lang.String,java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) or [`AdministrationService.getPortletTypesPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/AdministrationService.html#getPortletTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will throw [`InvalidPortletTypeDefinitionException`](com/appiancorp/suiteapi/portal/InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal").

    [com.appiancorp.suiteapi.portal.AdministrationService.getPortletType(String)](com/appiancorp/suiteapi/portal/AdministrationService.html#getPortletType\(java.lang.String\))

    JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will throw [`InvalidPortletTypeDefinitionException`](com/appiancorp/suiteapi/portal/InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal").

    [com.appiancorp.suiteapi.portal.AdministrationService.getPortletTypes()](com/appiancorp/suiteapi/portal/AdministrationService.html#getPortletTypes\(\))

    use [`AdministrationService.getPortletTypesPaging(int, int, Integer, Integer)`](com/appiancorp/suiteapi/portal/AdministrationService.html#getPortletTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead JSR-168 and WSRP Portlets have been deprecated, and no portlets of those types will be returned by this method

    [com.appiancorp.suiteapi.portal.AdministrationService.getPortletTypesPaging(int, int, Integer, Integer)](com/appiancorp/suiteapi/portal/AdministrationService.html#getPortletTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    JSR-168 and WSRP Portlets have been deprecated, and no portlets of those types will be returned by this method.

    [com.appiancorp.suiteapi.portal.AdministrationService.getWorkspace()](com/appiancorp/suiteapi/portal/AdministrationService.html#getWorkspace\(\))

    this information is no longer available

    [com.appiancorp.suiteapi.portal.AdministrationService.getWSRPProducer(Long)](com/appiancorp/suiteapi/portal/AdministrationService.html#getWSRPProducer\(java.lang.Long\))

    WSRP Producers have been removed in Appian 22.2. This method will be removed in a future release, and will now throw [`InvalidWSRPProducerException`](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

    [com.appiancorp.suiteapi.portal.AdministrationService.getWSRPProducerFromURL(String)](com/appiancorp/suiteapi/portal/AdministrationService.html#getWSRPProducerFromURL\(java.lang.String\))

    WSRP Producers have been removed in Appian 22.2. This method will be removed in a future release, and will now throw [`InvalidWSRPProducerURLException`](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

    [com.appiancorp.suiteapi.portal.AdministrationService.getWSRPProducers(Long\[\])](com/appiancorp/suiteapi/portal/AdministrationService.html#getWSRPProducers\(java.lang.Long%5B%5D\))

    WSRP Producers have been removed in Appian 22.2. This method will be removed in a future release, and will now throw [`InvalidWSRPProducerException`](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

    [com.appiancorp.suiteapi.portal.AdministrationService.getWSRPProducersPaging(int, int, Integer, Integer)](com/appiancorp/suiteapi/portal/AdministrationService.html#getWSRPProducersPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    WSRP Producers have been removed in Appian 22.2. This method will be removed in a future release, and will now return an empty ResultPage.

    [com.appiancorp.suiteapi.portal.AdministrationService.notifyUserCreation(String)](com/appiancorp/suiteapi/portal/AdministrationService.html#notifyUserCreation\(java.lang.String\))

    done automatically by UserService.createUser

    [com.appiancorp.suiteapi.portal.AdministrationService.registerPortletType(PortletType)](com/appiancorp/suiteapi/portal/AdministrationService.html#registerPortletType\(com.appiancorp.suiteapi.portal.PortletType\))

    JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will be ignored.

    [com.appiancorp.suiteapi.portal.AdministrationService.registerPortletTypes(PortletType\[\])](com/appiancorp/suiteapi/portal/AdministrationService.html#registerPortletTypes\(com.appiancorp.suiteapi.portal.PortletType%5B%5D\))

    JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will be ignored.

    [com.appiancorp.suiteapi.portal.AdministrationService.registerWSRPProducer(PersistedWSRPProducer)](com/appiancorp/suiteapi/portal/AdministrationService.html#registerWSRPProducer\(com.appiancorp.suiteapi.portal.portlets.wsrp.consumer.PersistedWSRPProducer\))

    WSRP Producers have been removed in Appian 22.2. This method will be removed in a future release, and will now throw [`InvalidWSRPProducerException`](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

    [com.appiancorp.suiteapi.portal.AdministrationService.reloadProperties()](com/appiancorp/suiteapi/portal/AdministrationService.html#reloadProperties\(\))

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    [com.appiancorp.suiteapi.portal.AdministrationService.rollbackUpdateUsernames()](com/appiancorp/suiteapi/portal/AdministrationService.html#rollbackUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.portal.AdministrationService.updatePortletTypesState(String\[\], String)](com/appiancorp/suiteapi/portal/AdministrationService.html#updatePortletTypesState\(java.lang.String%5B%5D,java.lang.String\))

    JSR-168 and WSRP Portlets have been deprecated, and calls for those PortletTypes will be ignored by this method

    [com.appiancorp.suiteapi.portal.AdministrationService.updatePortletTypeState(String, String)](com/appiancorp/suiteapi/portal/AdministrationService.html#updatePortletTypeState\(java.lang.String,java.lang.String\))

    JSR-168 and WSRP Portlets have been deprecated, and calls for those PortletTypes will be ignored by this method

    [com.appiancorp.suiteapi.portal.AdministrationService.updateUsernames(String\[\], String\[\], long)](com/appiancorp/suiteapi/portal/AdministrationService.html#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.portal.AdministrationService.validate()](com/appiancorp/suiteapi/portal/AdministrationService.html#validate\(\))

    use the `validate` diagnostic script instead

    [com.appiancorp.suiteapi.portal.AdministrationService.validateGroupMembership(Long\[\], Long\[\])](com/appiancorp/suiteapi/portal/AdministrationService.html#validateGroupMembership\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))

    No longer necessary with credential system

    [com.appiancorp.suiteapi.portal.GlobalizationService.getSiteCalendarSettings()](com/appiancorp/suiteapi/portal/GlobalizationService.html#getSiteCalendarSettings\(\))

    Retrieval of site calendar settings should be done via getSiteCalendarSettingsClone [`CalendarSetting`](com/appiancorp/suiteapi/portal/CalendarSetting.html "class in com.appiancorp.suiteapi.portal")

    [com.appiancorp.suiteapi.portal.GlobalizationService.getSiteLocaleSettings()](com/appiancorp/suiteapi/portal/GlobalizationService.html#getSiteLocaleSettings\(\))

    Retrieving site locale settings should be done via getSiteLocaleSettingsClone

    [com.appiancorp.suiteapi.portal.GlobalizationService.getSiteTimeZoneSettings()](com/appiancorp/suiteapi/portal/GlobalizationService.html#getSiteTimeZoneSettings\(\))

    Retrieval of site timezone settings should be done via getSiteTimeZoneSettingsClone

    [com.appiancorp.suiteapi.portal.NotificationService.getApplications()](com/appiancorp/suiteapi/portal/NotificationService.html#getApplications\(\))

    use [`NotificationService.getApplicationsPaging(int, int, Integer, Integer)`](com/appiancorp/suiteapi/portal/NotificationService.html#getApplicationsPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.NotificationService.getDefaultFormat(String)](com/appiancorp/suiteapi/portal/NotificationService.html#getDefaultFormat\(java.lang.String\))

    Since i18n, the notifications server no longer formats dates (the raw timestamps are sent to the JSPs), so no formats should be set on the server.

    [com.appiancorp.suiteapi.portal.NotificationService.getMedia()](com/appiancorp/suiteapi/portal/NotificationService.html#getMedia\(\))

    use [`NotificationService.getMediaPaging(int, int, Integer, Integer)`](com/appiancorp/suiteapi/portal/NotificationService.html#getMediaPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.NotificationService.getMediaForType(int)](com/appiancorp/suiteapi/portal/NotificationService.html#getMediaForType\(int\))

    use [`NotificationService.getMediaForTypePaging(int, int, int, Integer, Integer)`](com/appiancorp/suiteapi/portal/NotificationService.html#getMediaForTypePaging\(int,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.NotificationService.getNotificationCustomAttributes(int)](com/appiancorp/suiteapi/portal/NotificationService.html#getNotificationCustomAttributes\(int\))

    use [`NotificationService.getNotificationCustomAttributesPaging(int,int,int,Integer,Integer)`](com/appiancorp/suiteapi/portal/NotificationService.html#getNotificationCustomAttributesPaging\(int,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.NotificationService.getTypePrefsForUser(String, int, int)](com/appiancorp/suiteapi/portal/NotificationService.html#getTypePrefsForUser\(java.lang.String,int,int\))

    use [`NotificationService.getTypePrefsForUserPaging(String, int, int, int, int, Integer, Integer)`](com/appiancorp/suiteapi/portal/NotificationService.html#getTypePrefsForUserPaging\(java.lang.String,int,int,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.NotificationService.notify(String\[\], Long\[\], String, String, Map)](com/appiancorp/suiteapi/portal/NotificationService.html#notify\(java.lang.String%5B%5D,java.lang.Long%5B%5D,java.lang.String,java.lang.String,java.util.Map\))

    Use [`PortalNotificationService.notify(java.lang.String[], java.lang.Long[], java.lang.String, java.lang.String, java.util.Map)`](com/appiancorp/suiteapi/portal/PortalNotificationService.html#notify\(java.lang.String%5B%5D,java.lang.Long%5B%5D,java.lang.String,java.lang.String,java.util.Map\)) instead

    [com.appiancorp.suiteapi.portal.NotificationService.setDefaultFormat(String, String)](com/appiancorp/suiteapi/portal/NotificationService.html#setDefaultFormat\(java.lang.String,java.lang.String\))

    Since i18n, the notifications server no longer formats dates (the raw timestamps are sent to the JSPs), therefore this method no longer affects the formatting.

    [com.appiancorp.suiteapi.portal.PageNavigationService.findPages(String)](com/appiancorp/suiteapi/portal/PageNavigationService.html#findPages\(java.lang.String\))

    use [`PageNavigationService.findPagesPaging(java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#findPagesPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.PageNavigationService.getAllCategories()](com/appiancorp/suiteapi/portal/PageNavigationService.html#getAllCategories\(\))

    use [`PageNavigationService.getAllCategoriesPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#getAllCategoriesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.PageNavigationService.getBookmarks()](com/appiancorp/suiteapi/portal/PageNavigationService.html#getBookmarks\(\))

    use [`PageNavigationService.getBookmarksPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#getBookmarksPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.PageNavigationService.getEditablePagesNotCreatedByCurrentUser()](com/appiancorp/suiteapi/portal/PageNavigationService.html#getEditablePagesNotCreatedByCurrentUser\(\))

    use [`PageNavigationService.getEditablePagesNotCreatedByCurrentUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#getEditablePagesNotCreatedByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.portal.PageNavigationService.getHomePagesForGroups(Long\[\])](com/appiancorp/suiteapi/portal/PageNavigationService.html#getHomePagesForGroups\(java.lang.Long%5B%5D\))

    use [`PageNavigationService.getHomePagesForGroupsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#getHomePagesForGroupsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.PageNavigationService.getPagesCreatedByCurrentUser()](com/appiancorp/suiteapi/portal/PageNavigationService.html#getPagesCreatedByCurrentUser\(\))

    use [`PageNavigationService.getPagesCreatedByCurrentUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#getPagesCreatedByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.PageNavigationService.getPagesCreatedByUser(String)](com/appiancorp/suiteapi/portal/PageNavigationService.html#getPagesCreatedByUser\(java.lang.String\))

    use [`PageNavigationService.getPagesCreatedByUserPaging(java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#getPagesCreatedByUserPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.PageNavigationService.getPagesForGroup(Long)](com/appiancorp/suiteapi/portal/PageNavigationService.html#getPagesForGroup\(java.lang.Long\))

    use [`PageNavigationService.getPagesForGroupPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#getPagesForGroupPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.PageNavigationService.getPagesInCategory(Long)](com/appiancorp/suiteapi/portal/PageNavigationService.html#getPagesInCategory\(java.lang.Long\))

    use [`PageNavigationService.getPagesInCategoryPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#getPagesInCategoryPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.PageNavigationService.getPagesPendingApprovalByCurrentUser()](com/appiancorp/suiteapi/portal/PageNavigationService.html#getPagesPendingApprovalByCurrentUser\(\))

    use [`PageNavigationService.getPagesPendingApprovalByCurrentUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#getPagesPendingApprovalByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.PageNavigationService.getRootCategories(int)](com/appiancorp/suiteapi/portal/PageNavigationService.html#getRootCategories\(int\))

    use [`PageNavigationService.getRootCategoriesPaging(int, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#getRootCategoriesPaging\(int,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.PageNavigationService.renameCategory(Long, String)](com/appiancorp/suiteapi/portal/PageNavigationService.html#renameCategory\(java.lang.Long,java.lang.String\))

    use [`PageNavigationService.addCategory(java.lang.String, java.lang.Long)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#addCategory\(java.lang.String,java.lang.Long\)) and [`PageNavigationService.removeCategory(java.lang.Long)`](com/appiancorp/suiteapi/portal/PageNavigationService.html#removeCategory\(java.lang.Long\)) instead

    [com.appiancorp.suiteapi.portal.PageNavigationService.setHomePageForAnonymous(Long)](com/appiancorp/suiteapi/portal/PageNavigationService.html#setHomePageForAnonymous\(java.lang.Long\))

    anonymous user access was removed in 6.2

    [com.appiancorp.suiteapi.portal.PageService.addContribution(Contribution)](com/appiancorp/suiteapi/portal/PageService.html#addContribution\(com.appiancorp.suiteapi.portal.Contribution\))

    This functionality is no longer supported and will be removed in the next release.

    [com.appiancorp.suiteapi.portal.PageService.deleteContribution(Contribution)](com/appiancorp/suiteapi/portal/PageService.html#deleteContribution\(com.appiancorp.suiteapi.portal.Contribution\))

    This functionality is no longer supported and will be removed in the next release.

    [com.appiancorp.suiteapi.portal.PageService.getContributions()](com/appiancorp/suiteapi/portal/PageService.html#getContributions\(\))

    This functionality is no longer supported and will be removed in the next release.

    [com.appiancorp.suiteapi.portal.PageService.getContributionsForType(Contribution)](com/appiancorp/suiteapi/portal/PageService.html#getContributionsForType\(com.appiancorp.suiteapi.portal.Contribution\))

    This functionality is no longer supported and will be removed in the next release.

    [com.appiancorp.suiteapi.portal.PageService.getContributionsForTypePaging(Contribution, int, int, Integer, Integer)](com/appiancorp/suiteapi/portal/PageService.html#getContributionsForTypePaging\(com.appiancorp.suiteapi.portal.Contribution,int,int,java.lang.Integer,java.lang.Integer\))

    This functionality is no longer supported and will be removed in the next release.

    [com.appiancorp.suiteapi.portal.PageService.getMaximumContributions()](com/appiancorp/suiteapi/portal/PageService.html#getMaximumContributions\(\))

    This functionality is no longer supported and will be removed in the next release.

    [com.appiancorp.suiteapi.portal.PageService.getPages(Long\[\])](com/appiancorp/suiteapi/portal/PageService.html#getPages\(java.lang.Long%5B%5D\))

    use [`PageService.getPagesPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PageService.html#getPagesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.portal.PageService.setMaximumContributions(int)](com/appiancorp/suiteapi/portal/PageService.html#setMaximumContributions\(int\))

    This functionality is no longer supported and will be removed in the next release.

    [com.appiancorp.suiteapi.portal.PageService.updateContribution(Contribution)](com/appiancorp/suiteapi/portal/PageService.html#updateContribution\(com.appiancorp.suiteapi.portal.Contribution\))

    This functionality is no longer supported and will be removed in the next release.

    [com.appiancorp.suiteapi.portal.PortalNotificationService.commitUpdateUsernames()](com/appiancorp/suiteapi/portal/PortalNotificationService.html#commitUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.portal.PortalNotificationService.getNotifications(Integer, Integer, int, int)](com/appiancorp/suiteapi/portal/PortalNotificationService.html#getNotifications\(java.lang.Integer,java.lang.Integer,int,int\))

    use getNotificationsPaging instead

    [com.appiancorp.suiteapi.portal.PortalNotificationService.reloadProperties()](com/appiancorp/suiteapi/portal/PortalNotificationService.html#reloadProperties\(\))

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    [com.appiancorp.suiteapi.portal.PortalNotificationService.rollbackUpdateUsernames()](com/appiancorp/suiteapi/portal/PortalNotificationService.html#rollbackUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.portal.PortalNotificationService.updateUsernames(String\[\], String\[\], long)](com/appiancorp/suiteapi/portal/PortalNotificationService.html#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.portal.portlets.links.LinksService.commitUpdateUsernames()](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#commitUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.portal.portlets.links.LinksService.createLinkType(LinkType)](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#createLinkType\(com.appiancorp.suiteapi.portal.portlets.links.LinkType\))

    Create a [`LinkType`](com/appiancorp/suiteapi/portal/portlets/links/LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links"). There may be a maximum of 255 link types. Note that this method, unlike [`LinksService.registerLinkType(com.appiancorp.suiteapi.portal.portlets.links.LinkType)`](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#registerLinkType\(com.appiancorp.suiteapi.portal.portlets.links.LinkType\)) will create another link type even if there exists a link type with the same name. Minimum properties which must be populated on the `LinkType` are: none

    [com.appiancorp.suiteapi.portal.portlets.links.LinksService.reloadProperties()](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#reloadProperties\(\))

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    [com.appiancorp.suiteapi.portal.portlets.links.LinksService.rollbackUpdateUsernames()](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#rollbackUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.portal.portlets.links.LinksService.updateUsernames(String\[\], String\[\], long)](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.portal.PortletService.findPortlets(String, String, Long, Integer, Integer)](com/appiancorp/suiteapi/portal/PortletService.html#findPortlets\(java.lang.String,java.lang.String,java.lang.Long,java.lang.Integer,java.lang.Integer\))

    use [`PortletService.findPortletsPaging(java.lang.String, java.lang.String, java.lang.Long, java.lang.Integer, java.lang.Integer, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PortletService.html#findPortletsPaging\(java.lang.String,java.lang.String,java.lang.Long,java.lang.Integer,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.portal.PortletService.getPortlets(Long\[\])](com/appiancorp/suiteapi/portal/PortletService.html#getPortlets\(java.lang.Long%5B%5D\))

    use [`PortletService.getPortletsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/portal/PortletService.html#getPortletsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    [com.appiancorp.suiteapi.process.AbstractProcessModel.getAcSchemas()](com/appiancorp/suiteapi/process/AbstractProcessModel.html#getAcSchemas\(\))

    This is a legacy field; it will be removed in the next release.

    [com.appiancorp.suiteapi.process.AbstractProcessModel.getGroupOwnerId()](com/appiancorp/suiteapi/process/AbstractProcessModel.html#getGroupOwnerId\(\))

    groups do not own processModels anymore.

    [com.appiancorp.suiteapi.process.AbstractProcessModel.getState()](com/appiancorp/suiteapi/process/AbstractProcessModel.html#getState\(\))

    Use [`AbstractProcessModel.getVersionStatus()`](com/appiancorp/suiteapi/process/AbstractProcessModel.html#getVersionStatus\(\))

    [com.appiancorp.suiteapi.process.AbstractProcessModel.setAcSchemas(ActivityClassSchema\[\])](com/appiancorp/suiteapi/process/AbstractProcessModel.html#setAcSchemas\(com.appiancorp.suiteapi.process.ActivityClassSchema%5B%5D\))

    This is a legacy field; it will be removed in the next release.

    [com.appiancorp.suiteapi.process.AbstractProcessModel.setGroupOwnerId(Long)](com/appiancorp/suiteapi/process/AbstractProcessModel.html#setGroupOwnerId\(java.lang.Long\))

    groups do not own processModels anymore.

    [com.appiancorp.suiteapi.process.AbstractProcessModel.setState(Long)](com/appiancorp/suiteapi/process/AbstractProcessModel.html#setState\(java.lang.Long\))

    Use [`AbstractProcessModel.setVersionStatus(int)`](com/appiancorp/suiteapi/process/AbstractProcessModel.html#setVersionStatus\(int\))

    [com.appiancorp.suiteapi.process.AbstractProcessNode.getNotesWithContent(Note\[\])](com/appiancorp/suiteapi/process/AbstractProcessNode.html#getNotesWithContent\(com.appiancorp.suiteapi.process.Note%5B%5D\))

    use ProcessExecution.getNotesWithContent(Note\[\], ServiceContext)

    [com.appiancorp.suiteapi.process.AbstractSchedule.getAbsoluteTime()](com/appiancorp/suiteapi/process/AbstractSchedule.html#getAbsoluteTime\(\))

    use [`AbstractSchedule.getAbsoluteExpression()`](com/appiancorp/suiteapi/process/AbstractSchedule.html#getAbsoluteExpression\(\))

    [com.appiancorp.suiteapi.process.AbstractSchedule.setAbsoluteTime(Timestamp)](com/appiancorp/suiteapi/process/AbstractSchedule.html#setAbsoluteTime\(java.sql.Timestamp\))

    use {@link #setAbsoluteExpression(String))}

    [com.appiancorp.suiteapi.process.ActivityClassParameter.clearPasswordOnTransport(boolean)](com/appiancorp/suiteapi/process/ActivityClassParameter.html#clearPasswordOnTransport\(boolean\))

    This is an internal method that will be removed from the public API.

    [com.appiancorp.suiteapi.process.ActivityClassParameter.copy()](com/appiancorp/suiteapi/process/ActivityClassParameter.html#copy\(\))

    Can make copy externally.

    [com.appiancorp.suiteapi.process.ActivityClassParameter.setClearPassword(boolean)](com/appiancorp/suiteapi/process/ActivityClassParameter.html#setClearPassword\(boolean\))

    This is an internal method that will be removed from the public API.

    [com.appiancorp.suiteapi.process.ActivityClassParameterSchema.getRequired()](com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html#getRequired\(\))

    Use [`ActivityClassParameterSchema.isRequired()`](com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html#isRequired\(\))

    [com.appiancorp.suiteapi.process.ActivityClassParameterSchema.setRequired(Long)](com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html#setRequired\(java.lang.Long\))

    Use [`ActivityClassParameterSchema.setRequired(boolean)`](com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html#setRequired\(boolean\))

    [com.appiancorp.suiteapi.process.analytics2.PerformanceAttributes.getMasterOrder()](com/appiancorp/suiteapi/process/analytics2/PerformanceAttributes.html#getMasterOrder\(\))

    use [`PerformanceAttributes.getMainOrder()`](com/appiancorp/suiteapi/process/analytics2/PerformanceAttributes.html#getMainOrder\(\)) instead

    [com.appiancorp.suiteapi.process.analytics2.PerformanceAttributes.setMasterOrder(int)](com/appiancorp/suiteapi/process/analytics2/PerformanceAttributes.html#setMasterOrder\(int\))

    use [`PerformanceAttributes.setMainOrder(int)`](com/appiancorp/suiteapi/process/analytics2/PerformanceAttributes.html#setMainOrder\(int\)) instead

    [com.appiancorp.suiteapi.process.analytics2.PerformanceMetrics.getMaximumReportTimeMaster()](com/appiancorp/suiteapi/process/analytics2/PerformanceMetrics.html#getMaximumReportTimeMaster\(\))

    use [`PerformanceMetrics.getMaximumReportTimeMain()`](com/appiancorp/suiteapi/process/analytics2/PerformanceMetrics.html#getMaximumReportTimeMain\(\)) instead

    [com.appiancorp.suiteapi.process.analytics2.PerformanceMetrics.setMaximumReportTimeMaster(double)](com/appiancorp/suiteapi/process/analytics2/PerformanceMetrics.html#setMaximumReportTimeMaster\(double\))

    use [`PerformanceMetrics.setMaximumReportTimeMain(double)`](com/appiancorp/suiteapi/process/analytics2/PerformanceMetrics.html#setMaximumReportTimeMain\(double\)) instead

    [com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.commitUpdateUsernames()](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#commitUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getReportPage(ReportData)](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#getReportPage\(com.appiancorp.suiteapi.process.analytics2.ReportData\))

    use [`ProcessAnalyticsService.getReportPageWithTypedValues(ReportData)`](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#getReportPageWithTypedValues\(com.appiancorp.suiteapi.process.analytics2.ReportData\)) which returns the result data in the preferred [`TypedValue`](com/appiancorp/suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") form.

    [com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.getReportPage(ReportData, long)](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#getReportPage\(com.appiancorp.suiteapi.process.analytics2.ReportData,long\))

    use [`ProcessAnalyticsService.getReportPageWithTypedValues(ReportData)`](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#getReportPageWithTypedValues\(com.appiancorp.suiteapi.process.analytics2.ReportData\)), as the timeZoneOffset\_ parameter in this method is ignored.

    [com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.notifyUserCreation(String)](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#notifyUserCreation\(java.lang.String\))

    done automatically by UserService.createUser

    [com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.rollbackUpdateUsernames()](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#rollbackUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService.updateUsernames(String\[\], String\[\], long)](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.analytics2.ProcessReport.copy()](com/appiancorp/suiteapi/process/analytics2/ProcessReport.html#copy\(\))

    use [`ProcessReport.clone()`](com/appiancorp/suiteapi/process/analytics2/ProcessReport.html#clone\(\)) instead

    [com.appiancorp.suiteapi.process.Assignment.getAssignmentFunction()](com/appiancorp/suiteapi/process/Assignment.html#getAssignmentFunction\(\))

    Use `getAssignees` instead; see [`Assignment.setAssignmentFunction(com.appiancorp.suiteapi.process.ActivityClass)`](com/appiancorp/suiteapi/process/Assignment.html#setAssignmentFunction\(com.appiancorp.suiteapi.process.ActivityClass\)) for an alternative method of setting the assignment.

    [com.appiancorp.suiteapi.process.Assignment.getAssignmentPosition()](com/appiancorp/suiteapi/process/Assignment.html#getAssignmentPosition\(\))

    The value retrieved by this method is not used.

    [com.appiancorp.suiteapi.process.Assignment.setAssignmentFunction(ActivityClass)](com/appiancorp/suiteapi/process/Assignment.html#setAssignmentFunction\(com.appiancorp.suiteapi.process.ActivityClass\))

    Instead, set the assignment by calling [`Assignment.setAssignees(com.appiancorp.suiteapi.process.Assignment.Assignee[])`](com/appiancorp/suiteapi/process/Assignment.html#setAssignees\(com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\)) with an `Assignee` of type `ASSIGNEE_TYPE_EXPRESSIONS` with the `value` set to an expression.

    [com.appiancorp.suiteapi.process.Assignment.setAssignmentPosition(Long)](com/appiancorp/suiteapi/process/Assignment.html#setAssignmentPosition\(java.lang.Long\))

    The value set by this method is not used.

    [com.appiancorp.suiteapi.process.CalendarService.getDefaultCalendar()](com/appiancorp/suiteapi/process/CalendarService.html#getDefaultCalendar\(\))

    use [`CalendarService.getCalendar(java.lang.Long)`](com/appiancorp/suiteapi/process/CalendarService.html#getCalendar\(java.lang.Long\))

    [com.appiancorp.suiteapi.process.CalendarService.updateDefaultCalendar(SystemCalendar)](com/appiancorp/suiteapi/process/CalendarService.html#updateDefaultCalendar\(com.appiancorp.suiteapi.process.calendar.SystemCalendar\))

    use [`CalendarService.updateCalendar(com.appiancorp.suiteapi.process.calendar.WorkingCalendar)`](com/appiancorp/suiteapi/process/CalendarService.html#updateCalendar\(com.appiancorp.suiteapi.process.calendar.WorkingCalendar\))

    [com.appiancorp.suiteapi.process.forms.InternalFormProcessor.retrieveInputs(byte\[\])](com/appiancorp/suiteapi/process/forms/InternalFormProcessor.html#retrieveInputs\(byte%5B%5D\))

    Use retrieveInputs([`InputStream`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io")) version instead (deprecated in 6.2).

    [com.appiancorp.suiteapi.process.framework.AbstractActivity.execute(ActivityClassParameter\[\], SafeActivityReturnVariable\[\], Object, ServiceContext)](com/appiancorp/suiteapi/process/framework/AbstractActivity.html#execute\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,com.appiancorp.suiteapi.process.framework.SafeActivityReturnVariable%5B%5D,java.lang.Object,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3; override the other [`AbstractActivity.execute(ActivityClassParameter[], SafeActivityReturnVariable[], Object, ServiceContext)`](com/appiancorp/suiteapi/process/framework/AbstractActivity.html#execute\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,com.appiancorp.suiteapi.process.framework.SafeActivityReturnVariable%5B%5D,java.lang.Object,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    [com.appiancorp.suiteapi.process.framework.AbstractActivity.lookupInWebAppJndi(String)](com/appiancorp/suiteapi/process/framework/AbstractActivity.html#lookupInWebAppJndi\(java.lang.String\))

    The JNDI context "comp" should not be used. Use any context that does not begin with "comp", and retrieve the object using the standard JNDI syntax: `Context ctx = new InitialContext(); Object o = ctx.lookup(name);`

    [com.appiancorp.suiteapi.process.framework.AbstractActivity.run()](com/appiancorp/suiteapi/process/framework/AbstractActivity.html#run\(\))

    08-07-2006 Use perform() instead.

    [com.appiancorp.suiteapi.process.framework.AbstractActivity.run(ServiceContext)](com/appiancorp/suiteapi/process/framework/AbstractActivity.html#run\(com.appiancorp.services.ServiceContext\))

    08-07-2006 Use perform(ServiceContext) instead.

    [com.appiancorp.suiteapi.process.framework.ActivityExecutionMetadata.setAdditionalContext(Map<String, String>)](com/appiancorp/suiteapi/process/framework/ActivityExecutionMetadata.html#setAdditionalContext\(java.util.Map\))

    see addAdditionalContext to not displace existing context

    [com.appiancorp.suiteapi.process.framework.AppianSmartService.getDynamicOutputs()](com/appiancorp/suiteapi/process/framework/AppianSmartService.html#getDynamicOutputs\(\))

    It is not possible to create a node output dynamically at design time.

    [com.appiancorp.suiteapi.process.framework.EmptyActivityParameterHelper.validate(ActivityClassParameter\[\], Object, boolean, User)](com/appiancorp/suiteapi/process/framework/EmptyActivityParameterHelper.html#validate\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,java.lang.Object,boolean,com.appiancorp.suiteapi.personalization.User\))

    [com.appiancorp.suiteapi.process.framework.SafeActivityReturnVariable.getType()](com/appiancorp/suiteapi/process/framework/SafeActivityReturnVariable.html#getType\(\))

    use [`SafeActivityReturnVariable.getInstanceType()`](com/appiancorp/suiteapi/process/framework/SafeActivityReturnVariable.html#getInstanceType\(\))

    [com.appiancorp.suiteapi.process.Priority.isDefault()](com/appiancorp/suiteapi/process/Priority.html#isDefault\(\))

    use getDefault

    [com.appiancorp.suiteapi.process.ProcessAdministrationService.getJmsPassword()](com/appiancorp/suiteapi/process/ProcessAdministrationService.html#getJmsPassword\(\))

    See jms.properties createConnectionPassword. This method is no longer used.

    [com.appiancorp.suiteapi.process.ProcessAdministrationService.getJmsUsername()](com/appiancorp/suiteapi/process/ProcessAdministrationService.html#getJmsUsername\(\))

    See jms.properties createConnectionUsername. This method is no longer used.

    [com.appiancorp.suiteapi.process.ProcessAdministrationService.setJmsPassword(String)](com/appiancorp/suiteapi/process/ProcessAdministrationService.html#setJmsPassword\(java.lang.String\))

    See jms.properties createConnectionPassword. This method is no longer used.

    [com.appiancorp.suiteapi.process.ProcessAdministrationService.setJmsUsername(String)](com/appiancorp/suiteapi/process/ProcessAdministrationService.html#setJmsUsername\(java.lang.String\))

    See jms.properties createConnectionUsername. This method is no longer used.

    [com.appiancorp.suiteapi.process.ProcessDesignService.commitUpdateUsernames()](com/appiancorp/suiteapi/process/ProcessDesignService.html#commitUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessDesignService.getCurrentNotePaths()](com/appiancorp/suiteapi/process/ProcessDesignService.html#getCurrentNotePaths\(\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessDesignService.getLinkProcessModelDescriptorsForProcessModel(Long)](com/appiancorp/suiteapi/process/ProcessDesignService.html#getLinkProcessModelDescriptorsForProcessModel\(java.lang.Long\))

    Use [`ProcessDesignService.getAsynchronousSubProcessModelDescriptorsForProcessModel(java.lang.Long)`](com/appiancorp/suiteapi/process/ProcessDesignService.html#getAsynchronousSubProcessModelDescriptorsForProcessModel\(java.lang.Long\)) instead.

    [com.appiancorp.suiteapi.process.ProcessDesignService.getMaximumNumberOfNotes()](com/appiancorp/suiteapi/process/ProcessDesignService.html#getMaximumNumberOfNotes\(\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelDescriptorsContainingLinkProcessModel(Long)](com/appiancorp/suiteapi/process/ProcessDesignService.html#getProcessModelDescriptorsContainingLinkProcessModel\(java.lang.Long\))

    Use [`ProcessDesignService.getProcessModelDescriptorsContainingAsynchronousSubProcessModel(java.lang.Long)`](com/appiancorp/suiteapi/process/ProcessDesignService.html#getProcessModelDescriptorsContainingAsynchronousSubProcessModel\(java.lang.Long\)) instead.

    [com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelDescriptorsContainingSubProcessModel(Long)](com/appiancorp/suiteapi/process/ProcessDesignService.html#getProcessModelDescriptorsContainingSubProcessModel\(java.lang.Long\))

    use [`ProcessDesignService.getProcessModelDescriptorsContainingSynchronousSubProcessModel(java.lang.Long)`](com/appiancorp/suiteapi/process/ProcessDesignService.html#getProcessModelDescriptorsContainingSynchronousSubProcessModel\(java.lang.Long\)) instead

    [com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModels(Long\[\])](com/appiancorp/suiteapi/process/ProcessDesignService.html#getProcessModels\(java.lang.Long%5B%5D\))

    Use [`ProcessDesignService.getProcessModelDescriptors(Long[])`](com/appiancorp/suiteapi/process/ProcessDesignService.html#getProcessModelDescriptors\(java.lang.Long%5B%5D\)) or call [`ProcessDesignService.getProcessModel(Long)`](com/appiancorp/suiteapi/process/ProcessDesignService.html#getProcessModel\(java.lang.Long\)) iteratively instead.

    [com.appiancorp.suiteapi.process.ProcessDesignService.getProcessModelsForGroup(Long, int, int, Integer, Integer)](com/appiancorp/suiteapi/process/ProcessDesignService.html#getProcessModelsForGroup\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    Process models are no longer associated with groups, but rather are organized into folders. Use [`ProcessDesignService.getProcessModelsForFolder(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](com/appiancorp/suiteapi/process/ProcessDesignService.html#getProcessModelsForFolder\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.process.ProcessDesignService.getSubProcessModelDescriptorsForProcessModel(Long)](com/appiancorp/suiteapi/process/ProcessDesignService.html#getSubProcessModelDescriptorsForProcessModel\(java.lang.Long\))

    use [`ProcessDesignService.getSynchronousSubProcessModelDescriptorsForProcessModel(java.lang.Long)`](com/appiancorp/suiteapi/process/ProcessDesignService.html#getSynchronousSubProcessModelDescriptorsForProcessModel\(java.lang.Long\)) instead

    [com.appiancorp.suiteapi.process.ProcessDesignService.getTopLevelProcessModelDescriptorsForLinkProcessModel(Long)](com/appiancorp/suiteapi/process/ProcessDesignService.html#getTopLevelProcessModelDescriptorsForLinkProcessModel\(java.lang.Long\))

    use [`ProcessDesignService.getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel(java.lang.Long)`](com/appiancorp/suiteapi/process/ProcessDesignService.html#getTopLevelProcessModelDescriptorsForAsynchronousSubProcessModel\(java.lang.Long\)) instead

    [com.appiancorp.suiteapi.process.ProcessDesignService.getTopLevelProcessModelDescriptorsForSubProcessModel(Long)](com/appiancorp/suiteapi/process/ProcessDesignService.html#getTopLevelProcessModelDescriptorsForSubProcessModel\(java.lang.Long\))

    use [`ProcessDesignService.getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel(java.lang.Long)`](com/appiancorp/suiteapi/process/ProcessDesignService.html#getTopLevelProcessModelDescriptorsForSynchronousSubProcessModel\(java.lang.Long\)) instead

    [com.appiancorp.suiteapi.process.ProcessDesignService.listProcessModels()](com/appiancorp/suiteapi/process/ProcessDesignService.html#listProcessModels\(\))

    Use [`ProcessDesignService.getProcessModelDescriptors(Long[])`](com/appiancorp/suiteapi/process/ProcessDesignService.html#getProcessModelDescriptors\(java.lang.Long%5B%5D\)) instead. This method performs poorly and should not be called.

    [com.appiancorp.suiteapi.process.ProcessDesignService.notifyUserCreation(String)](com/appiancorp/suiteapi/process/ProcessDesignService.html#notifyUserCreation\(java.lang.String\))

    done automatically by UserService.createUser

    [com.appiancorp.suiteapi.process.ProcessDesignService.publishProcessModel(ProcessModel)](com/appiancorp/suiteapi/process/ProcessDesignService.html#publishProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\))

    use saveAndPublishProcessModel

    [com.appiancorp.suiteapi.process.ProcessDesignService.reloadProperties()](com/appiancorp/suiteapi/process/ProcessDesignService.html#reloadProperties\(\))

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    [com.appiancorp.suiteapi.process.ProcessDesignService.rollbackUpdateUsernames()](com/appiancorp/suiteapi/process/ProcessDesignService.html#rollbackUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessDesignService.setCurrentNotePaths(String\[\])](com/appiancorp/suiteapi/process/ProcessDesignService.html#setCurrentNotePaths\(java.lang.String%5B%5D\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessDesignService.startProcess(Long, ProcessVariable\[\])](com/appiancorp/suiteapi/process/ProcessDesignService.html#startProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariable%5B%5D\))

    Use [`ProcessDesignService.initiateProcess(Long, ProcessStartConfig)`](com/appiancorp/suiteapi/process/ProcessDesignService.html#initiateProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessStartConfig\)), which has better enforcement of required parameters (requires that their values not be null or empty)

    [com.appiancorp.suiteapi.process.ProcessDesignService.startProcessVersion(Long, ProcessVariable\[\], String, Long)](com/appiancorp/suiteapi/process/ProcessDesignService.html#startProcessVersion\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariable%5B%5D,java.lang.String,java.lang.Long\))

    Use [`ProcessDesignService.initiateProcess(Long, ProcessStartConfig)`](com/appiancorp/suiteapi/process/ProcessDesignService.html#initiateProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessStartConfig\)), which has better enforcement of required parameters (requires that their values not be null or empty)

    [com.appiancorp.suiteapi.process.ProcessDesignService.startProcessWithPriority(Long, ProcessVariable\[\], Long)](com/appiancorp/suiteapi/process/ProcessDesignService.html#startProcessWithPriority\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariable%5B%5D,java.lang.Long\))

    Use [`ProcessDesignService.initiateProcess(Long, ProcessStartConfig)`](com/appiancorp/suiteapi/process/ProcessDesignService.html#initiateProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessStartConfig\)), which has better enforcement of required parameters (requires that their values not be null or empty)

    [com.appiancorp.suiteapi.process.ProcessDesignService.updateUsernames(String\[\], String\[\], long)](com/appiancorp/suiteapi/process/ProcessDesignService.html#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessDetails.getGroupOwners()](com/appiancorp/suiteapi/process/ProcessDetails.html#getGroupOwners\(\))

    property is no longer used

    [com.appiancorp.suiteapi.process.ProcessDetails.getUserOwners()](com/appiancorp/suiteapi/process/ProcessDetails.html#getUserOwners\(\))

    property is no longer used

    [com.appiancorp.suiteapi.process.ProcessDetails.setGroupOwners(Long\[\])](com/appiancorp/suiteapi/process/ProcessDetails.html#setGroupOwners\(java.lang.Long%5B%5D\))

    property is no longer used

    [com.appiancorp.suiteapi.process.ProcessDetails.setUserOwners(String\[\])](com/appiancorp/suiteapi/process/ProcessDetails.html#setUserOwners\(java.lang.String%5B%5D\))

    property is no longer used

    [com.appiancorp.suiteapi.process.ProcessDiagram.getRuntimeProcessNodes()](com/appiancorp/suiteapi/process/ProcessDiagram.html#getRuntimeProcessNodes\(\))

    use getProcessNodes

    [com.appiancorp.suiteapi.process.ProcessDiagram.getVariableInstances()](com/appiancorp/suiteapi/process/ProcessDiagram.html#getVariableInstances\(\))

    use getVariables

    [com.appiancorp.suiteapi.process.ProcessDiagram.setVariableInstances(ProcessVariableInstance\[\])](com/appiancorp/suiteapi/process/ProcessDiagram.html#setVariableInstances\(com.appiancorp.suiteapi.process.ProcessVariableInstance%5B%5D\))

    use setVariables

    [com.appiancorp.suiteapi.process.ProcessExecutionService.acknowledgeActivity(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#acknowledgeActivity\(java.lang.Long\))

    no longer necessary

    [com.appiancorp.suiteapi.process.ProcessExecutionService.acknowledgeActivity(Long\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#acknowledgeActivity\(java.lang.Long%5B%5D\))

    no longer necessary

    [com.appiancorp.suiteapi.process.ProcessExecutionService.acknowledgeMessages(Long\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#acknowledgeMessages\(java.lang.Long%5B%5D\))

    replaced by work queue, no longer requires separate acknowledgement: call does nothing now

    [com.appiancorp.suiteapi.process.ProcessExecutionService.commitUpdateUsernames()](com/appiancorp/suiteapi/process/ProcessExecutionService.html#commitUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessExecutionService.containsLinkProcesses(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsLinkProcesses\(java.lang.Long\))

    Use [`ProcessExecutionService.containsAsynchronousSubProcesses(Long)`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsAsynchronousSubProcesses\(java.lang.Long\)) instead.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.containsLinkProcessesInheritingPriority(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsLinkProcessesInheritingPriority\(java.lang.Long\))

    Use [`ProcessExecutionService.containsSubProcessesInheritingPriority(Long)`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSubProcessesInheritingPriority\(java.lang.Long\)) instead.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.containsSubProcesses(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSubProcesses\(java.lang.Long\))

    Use [`ProcessExecutionService.containsSynchronousSubProcesses(Long)`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSynchronousSubProcesses\(java.lang.Long\)) instead.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadata(NoteMetadata)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadata\(com.appiancorp.suiteapi.process.NoteMetadata\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadataForProcess(Long, NoteMetadata)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForProcess\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadataForProcesses(Long\[\], NoteMetadata)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForProcesses\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.NoteMetadata\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadataForTask(Long, NoteMetadata)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForTask\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadataForTasks(Long\[\], NoteMetadata)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForTasks\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.NoteMetadata\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadatas(NoteMetadata\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadatas\(com.appiancorp.suiteapi.process.NoteMetadata%5B%5D\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadatasForProcess(Long, NoteMetadata\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadatasForProcess\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata%5B%5D\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.createNoteMetadatasForTask(Long, NoteMetadata\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadatasForTask\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata%5B%5D\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.deleteNoteMetadataForProcess(Long, Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#deleteNoteMetadataForProcess\(java.lang.Long,java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.deleteNoteMetadataForTask(Long, Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#deleteNoteMetadataForTask\(java.lang.Long,java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.deleteNoteMetadatasForProcess(Long\[\], Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#deleteNoteMetadatasForProcess\(java.lang.Long%5B%5D,java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.deleteNoteMetadatasForTask(Long\[\], Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#deleteNoteMetadatasForTask\(java.lang.Long%5B%5D,java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.executionFailure(int, Long\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#executionFailure\(int,java.lang.Long%5B%5D\))

    unattended activities now run from the work queue.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.executionFailureMessage(int, Long\[\], String)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#executionFailureMessage\(int,java.lang.Long%5B%5D,java.lang.String\))

    unattended activities now run from the work queue.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getAllExceptionNoteMetadatasForProcess(Long, int, int, Integer, Integer)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getAllExceptionNoteMetadatasForProcess\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getAttachmentsAndNotesForTask(Long, boolean, int, int, Integer, Integer)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getAttachmentsAndNotesForTask\(java.lang.Long,boolean,int,int,java.lang.Integer,java.lang.Integer\))

    since 23.2. Retrieving Notes is deprecated, please use [`ProcessExecutionService.getAttachmentsForTask(java.lang.Long)`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getAttachmentsForTask\(java.lang.Long\)) to retrieve attachments

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getAttachmentsForProcess(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getAttachmentsForProcess\(java.lang.Long\))

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getCurrentNotePaths()](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getCurrentNotePaths\(\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getExceptionNoteMetadataForTask(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getExceptionNoteMetadataForTask\(java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getExceptionNoteMetadatasForProcess(Long, int, int, Integer, Integer)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getExceptionNoteMetadatasForProcess\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getLinkProcessesForProcess(Long, int)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getLinkProcessesForProcess\(java.lang.Long,int\))

    Use [`ProcessExecutionService.getAsynchronousSubProcessesForProcess(Long, int)`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getAsynchronousSubProcessesForProcess\(java.lang.Long,int\)) instead.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getMaximumNumberOfNotes()](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getMaximumNumberOfNotes\(\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadataForProcess(Long, Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getNoteMetadataForProcess\(java.lang.Long,java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadataForTask(Long, Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getNoteMetadataForTask\(java.lang.Long,java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadatasForProcess(Long, boolean, int, int, Integer, Integer)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getNoteMetadatasForProcess\(java.lang.Long,boolean,int,int,java.lang.Integer,java.lang.Integer\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadatasForProcess(Long, int, int, Integer, Integer)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getNoteMetadatasForProcess\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadatasForProcesses(Long\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getNoteMetadatasForProcesses\(java.lang.Long%5B%5D\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadatasForTask(Long, boolean, int, int, Integer, Integer)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getNoteMetadatasForTask\(java.lang.Long,boolean,int,int,java.lang.Integer,java.lang.Integer\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadatasForTasks(Long\[\], boolean)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getNoteMetadatasForTasks\(java.lang.Long%5B%5D,boolean\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getNoteMetadatasInProcess(Long, Long\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getNoteMetadatasInProcess\(java.lang.Long,java.lang.Long%5B%5D\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getNotePath(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getNotePath\(java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getNotePaths(Long\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getNotePaths\(java.lang.Long%5B%5D\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getProcessVariables(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getProcessVariables\(java.lang.Long\))

    Use [`ProcessExecutionService.getRecursiveProcessVariables(Long, boolean)`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getRecursiveProcessVariables\(java.lang.Long,boolean\)) instead.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getSubProcessesForProcess(Long, int)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getSubProcessesForProcess\(java.lang.Long,int\))

    Use [`ProcessExecutionService.getSynchronousSubProcessesForProcess(Long, int)`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getSynchronousSubProcessesForProcess\(java.lang.Long,int\)) instead.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.getTasksForProcess(Long, int, int, Integer, Integer)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#getTasksForProcess\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    [com.appiancorp.suiteapi.process.ProcessExecutionService.isLinkProcess(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#isLinkProcess\(java.lang.Long\))

    Use [`ProcessExecutionService.isAsynchronousSubProcess(Long)`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#isAsynchronousSubProcess\(java.lang.Long\)) instead.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.isSubProcess(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#isSubProcess\(java.lang.Long\))

    Use `#isSynchronousSubProcesses(Long)` instead.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.notifyUsersCreationByJava(Long, String\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#notifyUsersCreationByJava\(java.lang.Long,java.lang.String%5B%5D\))

    This call should never be necessary.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.notifyUsersCreationByJava(String\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#notifyUsersCreationByJava\(java.lang.String%5B%5D\))

    done automatically by UserService.createUser

    [com.appiancorp.suiteapi.process.ProcessExecutionService.reassignTasksToAssigneePool(Long\[\], Assignment.Assignee\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#reassignTasksToAssigneePool\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\))

    Use [`ProcessExecutionService.reassignTask(java.lang.Long, com.appiancorp.suiteapi.process.Assignment.Assignee[])`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#reassignTask\(java.lang.Long,com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\)) instead

    [com.appiancorp.suiteapi.process.ProcessExecutionService.refreshTaskForm(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#refreshTaskForm\(java.lang.Long\))

    This method will cause a race condition between ACP refresh and form label refresh. Instead, use the "Refresh default values every time the task form is viewed" execution option in the task configuration in the model.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.reloadProperties()](com/appiancorp/suiteapi/process/ProcessExecutionService.html#reloadProperties\(\))

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.removeDashboardPageForProcesses(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#removeDashboardPageForProcesses\(java.lang.Long\))

    Use {@link ProcessDesignService.removeProcessDashboardPageForProcessModel(Long)} instead.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.rollbackUpdateUsernames()](com/appiancorp/suiteapi/process/ProcessExecutionService.html#rollbackUpdateUsernames\(\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessExecutionService.setCurrentNotePaths(String\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#setCurrentNotePaths\(java.lang.String%5B%5D\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.setDashboardPageForProcesses(Long, Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#setDashboardPageForProcesses\(java.lang.Long,java.lang.Long\))

    Use {@link ProcessDesignService.setProcessDashboardPageForProcessModel(Long, Long)} instead.

    [com.appiancorp.suiteapi.process.ProcessExecutionService.setTimeZoneSameAs(BackendTimeZoneSimple, String)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#setTimeZoneSameAs\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple,java.lang.String\))

    this method will be removed in a future release

    [com.appiancorp.suiteapi.process.ProcessExecutionService.updateNoteMetadataForProcess(NoteMetadata, Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#updateNoteMetadataForProcess\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.updateNoteMetadataForTask(NoteMetadata, Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#updateNoteMetadataForTask\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.updateNoteMetadatasForProcess(NoteMetadata\[\], Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#updateNoteMetadatasForProcess\(com.appiancorp.suiteapi.process.NoteMetadata%5B%5D,java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.updateNoteMetadatasForTask(NoteMetadata\[\], Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#updateNoteMetadatasForTask\(com.appiancorp.suiteapi.process.NoteMetadata%5B%5D,java.lang.Long\))

    since 23.2

    [com.appiancorp.suiteapi.process.ProcessExecutionService.updateProcessModelForProcess(Long, ProcessDiagram, ProcessModel\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#updateProcessModelForProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.suiteapi.process.ProcessModel%5B%5D\))

    Use [`ProcessExecutionService.upgradeProcesses(java.lang.Long, java.lang.String, java.lang.Long[])`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#upgradeProcesses\(java.lang.Long,java.lang.String,java.lang.Long%5B%5D\)) instead

    [com.appiancorp.suiteapi.process.ProcessExecutionService.updateUsernames(String\[\], String\[\], long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessFacade.loadProcessDiagram(Long, int, ServiceContext)](com/appiancorp/suiteapi/process/ProcessFacade.html#loadProcessDiagram\(java.lang.Long,int,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelDetails.getGroupOwners()](com/appiancorp/suiteapi/process/ProcessModelDetails.html#getGroupOwners\(\))

    property is no longer used

    [com.appiancorp.suiteapi.process.ProcessModelDetails.getUserOwners()](com/appiancorp/suiteapi/process/ProcessModelDetails.html#getUserOwners\(\))

    property is no longer used

    [com.appiancorp.suiteapi.process.ProcessModelDetails.setGroupOwners(Long\[\])](com/appiancorp/suiteapi/process/ProcessModelDetails.html#setGroupOwners\(java.lang.Long%5B%5D\))

    property is no longer used

    [com.appiancorp.suiteapi.process.ProcessModelDetails.setUserOwners(String\[\])](com/appiancorp/suiteapi/process/ProcessModelDetails.html#setUserOwners\(java.lang.String%5B%5D\))

    property is no longer used

    [com.appiancorp.suiteapi.process.ProcessModelFacade.createProcessModel(ProcessModel, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#createProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.fillInAssigneeDisplayNames(ProcessModel, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#fillInAssigneeDisplayNames\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    Assignee display names will be populated automatically by the [`AppianTypeCache`](com/appiancorp/suiteapi/process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

    [com.appiancorp.suiteapi.process.ProcessModelFacade.getErrorsForParentsOfProcessModel(Long, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#getErrorsForParentsOfProcessModel\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.getErrorsForParentsOfUnpublishedChildren(Long, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#getErrorsForParentsOfUnpublishedChildren\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.getErrorsForUnpublishedChildren(Long, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#getErrorsForUnpublishedChildren\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.getNotesWithContent(Note\[\], ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#getNotesWithContent\(com.appiancorp.suiteapi.process.Note%5B%5D,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.getProcessParameters(Long, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#getProcessParameters\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.getRecursiveRelationship(Long, Long, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#getRecursiveRelationship\(java.lang.Long,java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.getVisibleProcessVariables(Long, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#getVisibleProcessVariables\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.loadLatestPublishVersionOfProcessModel(Long, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#loadLatestPublishVersionOfProcessModel\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.loadProcessModel(Long, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#loadProcessModel\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.loadProcessModelVersion(Long, String, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#loadProcessModelVersion\(java.lang.Long,java.lang.String,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.lockProcessModel(Long, boolean, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#lockProcessModel\(java.lang.Long,boolean,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.saveProcessModel(ProcessModel, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#saveProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.saveProcessModelAndNodeNotes(Map, ProcessDiagram, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#saveProcessModelAndNodeNotes\(java.util.Map,com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.saveProcessModelAndNodeNotes(Map, ProcessModel, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#saveProcessModelAndNodeNotes\(java.util.Map,com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.unlockProcessModel(Long, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#unlockProcessModel\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.updateProcessModelWithNotesContent(ProcessDiagram)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#updateProcessModelWithNotesContent\(com.appiancorp.suiteapi.process.ProcessDiagram\))

    use updateProcessModelWithNotesContent(ProcessDiagram, ServiceContext)

    [com.appiancorp.suiteapi.process.ProcessModelFacade.updateProcessModelWithNotesContent(ProcessDiagram, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#updateProcessModelWithNotesContent\(com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.updateProcessModelWithNotesContent(ProcessModel)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#updateProcessModelWithNotesContent\(com.appiancorp.suiteapi.process.ProcessModel\))

    use updateProcessModelWithNotesContent(ProcessModel, ServiceContext)

    [com.appiancorp.suiteapi.process.ProcessModelFacade.updateProcessModelWithNotesContent(ProcessModel, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#updateProcessModelWithNotesContent\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.validateProcessModel(AbstractProcessModel, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.versionProcessModel(ProcessDiagram, ServiceContext, Map)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#versionProcessModel\(com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.asl3.servicefw.connect.ServiceContext,java.util.Map\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessModelFacade.versionProcessModel(ProcessModel, ServiceContext, Map)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#versionProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext,java.util.Map\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.ProcessRoleMap.addAnalystGroups(Long\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#addAnalystGroups\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.addAnalysts(String\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#addAnalysts\(java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.addPowerUserGroups(Long\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#addPowerUserGroups\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.addPowerUsers(String\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#addPowerUsers\(java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.getAnalystGroups()](com/appiancorp/suiteapi/process/ProcessRoleMap.html#getAnalystGroups\(\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.getAnalysts()](com/appiancorp/suiteapi/process/ProcessRoleMap.html#getAnalysts\(\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.getPowerUserGroups()](com/appiancorp/suiteapi/process/ProcessRoleMap.html#getPowerUserGroups\(\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.getPowerUsers()](com/appiancorp/suiteapi/process/ProcessRoleMap.html#getPowerUsers\(\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.removeAnalystGroups(Long\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#removeAnalystGroups\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.removeAnalysts(String\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#removeAnalysts\(java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.removePowerUserGroups(Long\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#removePowerUserGroups\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.removePowerUsers(String\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#removePowerUsers\(java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.setAnalystGroups(Long\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#setAnalystGroups\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.setAnalysts(String\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#setAnalysts\(java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.setPowerUserGroups(Long\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#setPowerUserGroups\(java.lang.Long%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessRoleMap.setPowerUsers(String\[\])](com/appiancorp/suiteapi/process/ProcessRoleMap.html#setPowerUsers\(java.lang.String%5B%5D\))

    [com.appiancorp.suiteapi.process.ProcessVariableInstance.getRunningType()](com/appiancorp/suiteapi/process/ProcessVariableInstance.html#getRunningType\(\))

    Use [`TypedValue.getInstanceType()`](com/appiancorp/suiteapi/type/TypedValue.html#getInstanceType\(\)) instead.

    [com.appiancorp.suiteapi.process.ProcessVariableInstance.setRunningType(Long)](com/appiancorp/suiteapi/process/ProcessVariableInstance.html#setRunningType\(java.lang.Long\))

    Use [`TypedVariable.setInstanceType(Long)`](com/appiancorp/suiteapi/process/TypedVariable.html#setInstanceType\(java.lang.Long\)) instead.

    [com.appiancorp.suiteapi.process.Recurrence.End.getEndDate()](com/appiancorp/suiteapi/process/Recurrence.End.html#getEndDate\(\))

    use [`Recurrence.End.getEndDateTimeExpr()`](com/appiancorp/suiteapi/process/Recurrence.End.html#getEndDateTimeExpr\(\))

    [com.appiancorp.suiteapi.process.Recurrence.End.getEndDateExpr()](com/appiancorp/suiteapi/process/Recurrence.End.html#getEndDateExpr\(\))

    use [`Recurrence.End.getEndDateTimeExpr()`](com/appiancorp/suiteapi/process/Recurrence.End.html#getEndDateTimeExpr\(\))

    [com.appiancorp.suiteapi.process.Recurrence.End.getEndTime()](com/appiancorp/suiteapi/process/Recurrence.End.html#getEndTime\(\))

    use [`Recurrence.End.getEndDateTimeExpr()`](com/appiancorp/suiteapi/process/Recurrence.End.html#getEndDateTimeExpr\(\))

    [com.appiancorp.suiteapi.process.Recurrence.End.getEndTimeExpr()](com/appiancorp/suiteapi/process/Recurrence.End.html#getEndTimeExpr\(\))

    use [`Recurrence.End.getEndDateTimeExpr()`](com/appiancorp/suiteapi/process/Recurrence.End.html#getEndDateTimeExpr\(\))

    [com.appiancorp.suiteapi.process.Recurrence.End.setEndDate(Date)](com/appiancorp/suiteapi/process/Recurrence.End.html#setEndDate\(java.sql.Date\))

    use {@link #setEndDateTimeExpr(String))}

    [com.appiancorp.suiteapi.process.Recurrence.End.setEndDate(Timestamp)](com/appiancorp/suiteapi/process/Recurrence.End.html#setEndDate\(java.sql.Timestamp\))

    use {@link #setEndDateTimeExpr(String))}

    [com.appiancorp.suiteapi.process.Recurrence.End.setEndDateExpr(String)](com/appiancorp/suiteapi/process/Recurrence.End.html#setEndDateExpr\(java.lang.String\))

    use {@link #setEndDateTimeExpr(String))}

    [com.appiancorp.suiteapi.process.Recurrence.End.setEndTime(Time)](com/appiancorp/suiteapi/process/Recurrence.End.html#setEndTime\(java.sql.Time\))

    use {@link #setEndDateTimeExpr(String))}

    [com.appiancorp.suiteapi.process.Recurrence.End.setEndTime(Timestamp)](com/appiancorp/suiteapi/process/Recurrence.End.html#setEndTime\(java.sql.Timestamp\))

    use {@link #setEndDateTimeExpr(String))}

    [com.appiancorp.suiteapi.process.Recurrence.End.setEndTimeExpr(String)](com/appiancorp/suiteapi/process/Recurrence.End.html#setEndTimeExpr\(java.lang.String\))

    use {@link #setEndDateTimeExpr(String))}

    [com.appiancorp.suiteapi.process.security.ProcessModelPermissions.isSimulate()](com/appiancorp/suiteapi/process/security/ProcessModelPermissions.html#isSimulate\(\))

    [com.appiancorp.suiteapi.process.security.ProcessModelPermissions.setSimulate(boolean)](com/appiancorp/suiteapi/process/security/ProcessModelPermissions.html#setSimulate\(boolean\))

    [com.appiancorp.suiteapi.process.TaskDetails.getAttachments()](com/appiancorp/suiteapi/process/TaskDetails.html#getAttachments\(\))

    Attachments and Notes are now loaded in a separate grid.

    [com.appiancorp.suiteapi.process.TaskDetails.getNotes()](com/appiancorp/suiteapi/process/TaskDetails.html#getNotes\(\))

    Attachments and Notes are now loaded in a separate grid.

    [com.appiancorp.suiteapi.process.TaskDetails.setAttachments(Attachment\[\])](com/appiancorp/suiteapi/process/TaskDetails.html#setAttachments\(com.appiancorp.suiteapi.process.Attachment%5B%5D\))

    Attachments and Notes are now loaded in a separate grid.

    [com.appiancorp.suiteapi.process.TaskDetails.setNotes(Note\[\])](com/appiancorp/suiteapi/process/TaskDetails.html#setNotes\(com.appiancorp.suiteapi.process.Note%5B%5D\))

    Attachments and Notes are now loaded in a separate grid.

    [com.appiancorp.suiteapi.process.TaskSummary.getElapsedMilliseconds()](com/appiancorp/suiteapi/process/TaskSummary.html#getElapsedMilliseconds\(\))

    Use [`TaskSummary.getElapsed()`](com/appiancorp/suiteapi/process/TaskSummary.html#getElapsed\(\)) instead.

    [com.appiancorp.suiteapi.process.TaskSummary.setElapsedMilliseconds(Long)](com/appiancorp/suiteapi/process/TaskSummary.html#setElapsedMilliseconds\(java.lang.Long\))

    Use `#setElapsed()` instead.

    [com.appiancorp.suiteapi.process.TypedVariable.computeDisplayString(ServiceContext)](com/appiancorp/suiteapi/process/TypedVariable.html#computeDisplayString\(com.appiancorp.services.ServiceContext\))

    Use either [`TypedVariable.computeValueString(ServiceContext)`](com/appiancorp/suiteapi/process/TypedVariable.html#computeValueString\(com.appiancorp.services.ServiceContext\)), or [`TypedVariable.computeValueStringForUiOutput(ServiceContext, boolean, boolean)`](com/appiancorp/suiteapi/process/TypedVariable.html#computeValueStringForUiOutput\(com.appiancorp.services.ServiceContext,boolean,boolean\)). This is the same as `#computeValueString()` except that if the type is a `String[]`, the CSV for the array does have quotes around the individual strings in the array; for example, an array of users whose usernames are payton.manning and brett.favre would result in the string ""payton.manning","brett.favre"".

    [com.appiancorp.suiteapi.process.TypedVariable.getKey()](com/appiancorp/suiteapi/process/TypedVariable.html#getKey\(\))

    use [`NamedTypedValue.getName()`](com/appiancorp/suiteapi/type/NamedTypedValue.html#getName\(\))

    [com.appiancorp.suiteapi.process.TypedVariable.getMultiple()](com/appiancorp/suiteapi/process/TypedVariable.html#getMultiple\(\))

    To determine if a type is multiple or not, retrieve its [`Datatype`](com/appiancorp/suiteapi/type/Datatype.html "class in com.appiancorp.suiteapi.type") or [`DatatypeProperties`](com/appiancorp/suiteapi/type/DatatypeProperties.html "class in com.appiancorp.suiteapi.type") bean via [`TypeService`](com/appiancorp/suiteapi/type/TypeService.html "interface in com.appiancorp.suiteapi.type") and use [`DatatypeProperties.isListType()`](com/appiancorp/suiteapi/type/DatatypeProperties.html#isListType\(\)).

    [com.appiancorp.suiteapi.process.TypedVariable.getScalarTypedObject(String, Long, Long, ServiceContext)](com/appiancorp/suiteapi/process/TypedVariable.html#getScalarTypedObject\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    since 6.0.3

    [com.appiancorp.suiteapi.process.TypedVariable.getType()](com/appiancorp/suiteapi/process/TypedVariable.html#getType\(\))

    use [`TypedValue.getInstanceType()`](com/appiancorp/suiteapi/type/TypedValue.html#getInstanceType\(\))

    [com.appiancorp.suiteapi.process.TypedVariable.getUnderlyingClass(Long, boolean)](com/appiancorp/suiteapi/process/TypedVariable.html#getUnderlyingClass\(java.lang.Long,boolean\))

    see `TypeClassResolver#getTypeClass(Long)`

    [com.appiancorp.suiteapi.process.TypedVariable.isValidType(int)](com/appiancorp/suiteapi/process/TypedVariable.html#isValidType\(int\))

    use TypeService

    [com.appiancorp.suiteapi.process.TypedVariable.renderArrayAsCsv(Object\[\], boolean, int, ServiceContext)](com/appiancorp/suiteapi/process/TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,int,com.appiancorp.services.ServiceContext\))

    Use either [`TypedVariable.renderArrayAsCsv(Object[], boolean, boolean, int, ServiceContext)`](com/appiancorp/suiteapi/process/TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext\)) or [`TypedVariable.renderArrayAsCsv(Object[], boolean, boolean, int, ServiceContext, char)`](com/appiancorp/suiteapi/process/TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext,int\)). Transforms the given aray into a single string containing a comma-separated list of the array values.

    [com.appiancorp.suiteapi.process.TypedVariable.setKey(String)](com/appiancorp/suiteapi/process/TypedVariable.html#setKey\(java.lang.String\))

    use `NamedTypedValue#setName()`

    [com.appiancorp.suiteapi.process.TypedVariable.setMultiple(int)](com/appiancorp/suiteapi/process/TypedVariable.html#setMultiple\(int\))

    Set the [`instance type`](com/appiancorp/suiteapi/process/TypedVariable.html#setInstanceType\(java.lang.Long\)) instead. The instance type contains the multiple information within it.

    [com.appiancorp.suiteapi.process.TypedVariable.setType(Long)](com/appiancorp/suiteapi/process/TypedVariable.html#setType\(java.lang.Long\))

    use `TypedValue#setInstanceType()`

    [com.appiancorp.suiteapi.process.TypedVariable.setTypeMultiple(Long, int)](com/appiancorp/suiteapi/process/TypedVariable.html#setTypeMultiple\(java.lang.Long,int\))

    Use [`TypedVariable.setInstanceType(Long)`](com/appiancorp/suiteapi/process/TypedVariable.html#setInstanceType\(java.lang.Long\)) instead.

    [com.appiancorp.suiteapi.process.Validatable.getType()](com/appiancorp/suiteapi/process/Validatable.html#getType\(\))

    Use getInstanceType()

    [com.appiancorp.suiteapi.rules.Constant.getValue()](com/appiancorp/suiteapi/rules/Constant.html#getValue\(\))

    use [`Constant.getTypedValue()`](com/appiancorp/suiteapi/rules/Constant.html#getTypedValue\(\))

    [com.appiancorp.suiteapi.rules.Constant.setValue(Object)](com/appiancorp/suiteapi/rules/Constant.html#setValue\(java.lang.Object\))

    use [`Constant.setTypedValue(TypedValue)`](com/appiancorp/suiteapi/rules/Constant.html#setTypedValue\(com.appiancorp.suiteapi.type.TypedValue\))

    [com.appiancorp.suiteapi.rules.FreeformRule.getParameters()](com/appiancorp/suiteapi/rules/FreeformRule.html#getParameters\(\))

    use [`FreeformRule.getParams()`](com/appiancorp/suiteapi/rules/FreeformRule.html#getParams\(\)) instead

    [com.appiancorp.suiteapi.rules.FreeformRule.isWhitelistedForK()](com/appiancorp/suiteapi/rules/FreeformRule.html#isWhitelistedForK\(\))

    This attribute is no longer used

    [com.appiancorp.suiteapi.rules.FreeformRule.setParameters(TypedVariable\[\])](com/appiancorp/suiteapi/rules/FreeformRule.html#setParameters\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D\))

    use [`FreeformRule.setParams(NamedTypedValue[])`](com/appiancorp/suiteapi/rules/FreeformRule.html#setParams\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\)) instead

    [com.appiancorp.suiteapi.rules.FreeformRule.setWhitelistedForK(Boolean)](com/appiancorp/suiteapi/rules/FreeformRule.html#setWhitelistedForK\(java.lang.Boolean\))

    This attribute is no longer used.

    [com.appiancorp.suiteapi.rules.Rule.getMultiple()](com/appiancorp/suiteapi/rules/Rule.html#getMultiple\(\))

    use [`Constant.getTypedValue()`](com/appiancorp/suiteapi/rules/Constant.html#getTypedValue\(\))

    [com.appiancorp.suiteapi.rules.Rule.getReturnType()](com/appiancorp/suiteapi/rules/Rule.html#getReturnType\(\))

    use [`Constant.getTypedValue()`](com/appiancorp/suiteapi/rules/Constant.html#getTypedValue\(\))

    [com.appiancorp.suiteapi.rules.Rule.setMultiple(boolean)](com/appiancorp/suiteapi/rules/Rule.html#setMultiple\(boolean\))

    use [`Constant.setTypedValue(com.appiancorp.suiteapi.type.TypedValue)`](com/appiancorp/suiteapi/rules/Constant.html#setTypedValue\(com.appiancorp.suiteapi.type.TypedValue\))

    [com.appiancorp.suiteapi.rules.Rule.setMultiple(int)](com/appiancorp/suiteapi/rules/Rule.html#setMultiple\(int\))

    use [`Constant.setTypedValue(com.appiancorp.suiteapi.type.TypedValue)`](com/appiancorp/suiteapi/rules/Constant.html#setTypedValue\(com.appiancorp.suiteapi.type.TypedValue\))

    [com.appiancorp.suiteapi.rules.Rule.setMultiple(Integer)](com/appiancorp/suiteapi/rules/Rule.html#setMultiple\(java.lang.Integer\))

    use [`Constant.setTypedValue(com.appiancorp.suiteapi.type.TypedValue)`](com/appiancorp/suiteapi/rules/Constant.html#setTypedValue\(com.appiancorp.suiteapi.type.TypedValue\))

    [com.appiancorp.suiteapi.rules.Rule.setReturnType(long)](com/appiancorp/suiteapi/rules/Rule.html#setReturnType\(long\))

    use [`Constant.setTypedValue(com.appiancorp.suiteapi.type.TypedValue)`](com/appiancorp/suiteapi/rules/Constant.html#setTypedValue\(com.appiancorp.suiteapi.type.TypedValue\))

    [com.appiancorp.suiteapi.rules.Rule.setReturnType(Long)](com/appiancorp/suiteapi/rules/Rule.html#setReturnType\(java.lang.Long\))

    use [`Constant.setTypedValue(com.appiancorp.suiteapi.type.TypedValue)`](com/appiancorp/suiteapi/rules/Constant.html#setTypedValue\(com.appiancorp.suiteapi.type.TypedValue\))

    [com.appiancorp.suiteapi.security.auth.AppianUserDetails.getCustomContext(Class, String)](com/appiancorp/suiteapi/security/auth/AppianUserDetails.html#getCustomContext\(java.lang.Class,java.lang.String\))

    this method should not be called by anybody other than the Appian platform. The behavior of this method is undocumented, and it may be removed or changed in future releases.

    [com.appiancorp.suiteapi.security.auth.AppianUserDetails.setAuthorities(Collection<GrantedAuthority>)](com/appiancorp/suiteapi/security/auth/AppianUserDetails.html#setAuthorities\(java.util.Collection\))

    The authorities are calculated from the user's group memebrship and it is no longer necessary to set authorities explicitly.

    [com.appiancorp.suiteapi.security.auth.AppianUserDetails.setCustomContext(Class, String, Object)](com/appiancorp/suiteapi/security/auth/AppianUserDetails.html#setCustomContext\(java.lang.Class,java.lang.String,java.lang.Object\))

    this method should not be called by anybody other than the Appian platform. The behavior of this method is undocumented, and it may be removed or changed in future releases.

    [com.appiancorp.suiteapi.security.auth.AppianUserDetailsService.getUserDetails(UserProfile, Set<String>)](com/appiancorp/suiteapi/security/auth/AppianUserDetailsService.html#getUserDetails\(com.appiancorp.suiteapi.personalization.UserProfile,java.util.Set\))

    Use [`AppianUserDetailsService.getUserDetails(UserProfile)`](com/appiancorp/suiteapi/security/auth/AppianUserDetailsService.html#getUserDetails\(com.appiancorp.suiteapi.personalization.UserProfile\)) instead.

    [com.appiancorp.suiteapi.security.auth.AppianUserDetailsService.isApplyPasswordManagement()](com/appiancorp/suiteapi/security/auth/AppianUserDetailsService.html#isApplyPasswordManagement\(\))

    use [`AppianUserDetailsService.isApplyPasswordManagement(String)`](com/appiancorp/suiteapi/security/auth/AppianUserDetailsService.html#isApplyPasswordManagement\(java.lang.String\))

    [com.appiancorp.suiteapi.type.DatatypeProperties.getDynamic()](com/appiancorp/suiteapi/type/DatatypeProperties.html#getDynamic\(\))

    For Appian internal use only.

    [com.appiancorp.suiteapi.type.DatatypeProperties.getStableVersionNumber()](com/appiancorp/suiteapi/type/DatatypeProperties.html#getStableVersionNumber\(\))

    Do not call this method.

    [com.appiancorp.suiteapi.type.DatatypeProperties.getVersionId()](com/appiancorp/suiteapi/type/DatatypeProperties.html#getVersionId\(\))

    Do not call this method. The return value of this method cannot be relied on because it can become out of date as further data types are created.

    [com.appiancorp.suiteapi.type.DatatypeProperties.getVersions()](com/appiancorp/suiteapi/type/DatatypeProperties.html#getVersions\(\))

    Do not call this method. The return value of this method cannot be relied on because it can become out of date as further data types are created.

    [com.appiancorp.suiteapi.type.DatatypeProperties.putAtCoupledKeys(CoupledElements, CoupledElements, ConcurrentMap)](com/appiancorp/suiteapi/type/DatatypeProperties.html#putAtCoupledKeys\(com.appiancorp.cache.CoupledElements,com.appiancorp.cache.CoupledElements,java.util.concurrent.ConcurrentMap\))

    [com.appiancorp.suiteapi.type.DatatypeProperties.setDynamic(Integer)](com/appiancorp/suiteapi/type/DatatypeProperties.html#setDynamic\(java.lang.Integer\))

    For Appian internal use only.

    [com.appiancorp.suiteapi.type.DatatypeProperties.setStableVersionNumber(Integer)](com/appiancorp/suiteapi/type/DatatypeProperties.html#setStableVersionNumber\(java.lang.Integer\))

    Do not call this method.

    [com.appiancorp.suiteapi.type.DatatypeProperties.setVersionId(Long)](com/appiancorp/suiteapi/type/DatatypeProperties.html#setVersionId\(java.lang.Long\))

    see [`DatatypeProperties.getVersionId()`](com/appiancorp/suiteapi/type/DatatypeProperties.html#getVersionId\(\))

    [com.appiancorp.suiteapi.type.DatatypeProperties.setVersions(Long\[\])](com/appiancorp/suiteapi/type/DatatypeProperties.html#setVersions\(java.lang.Long%5B%5D\))

    see `#setVersions()`

    [com.appiancorp.suiteapi.type.TypedValue.clearPasswordOnTransport()](com/appiancorp/suiteapi/type/TypedValue.html#clearPasswordOnTransport\(\))

    This is an internal method that will be removed from the public API.

    [com.appiancorp.suiteapi.type.TypeService.getSystemTypesByParent(TypedValue)](com/appiancorp/suiteapi/type/TypeService.html#getSystemTypesByParent\(com.appiancorp.suiteapi.type.TypedValue\))

    Use [`TypeService.getSystemTypes()`](com/appiancorp/suiteapi/type/TypeService.html#getSystemTypes\(\)).

    [com.appiancorp.suiteapi.type.TypeService.getTypeByExternalTypeId(String, TypedValue)](com/appiancorp/suiteapi/type/TypeService.html#getTypeByExternalTypeId\(java.lang.String,com.appiancorp.suiteapi.type.TypedValue\))

    Use [`TypeService.getTypeByExternalTypeId(String)`](com/appiancorp/suiteapi/type/TypeService.html#getTypeByExternalTypeId\(java.lang.String\)).

    [com.appiancorp.suiteapi.type.TypeService.getTypeByQualifiedName(QName, TypedValue)](com/appiancorp/suiteapi/type/TypeService.html#getTypeByQualifiedName\(javax.xml.namespace.QName,com.appiancorp.suiteapi.type.TypedValue\))

    Use [`TypeService.getTypeByQualifiedName(QName)`](com/appiancorp/suiteapi/type/TypeService.html#getTypeByQualifiedName\(javax.xml.namespace.QName\)).

    [com.appiancorp.suiteapi.type.TypeService.getTypeByQualifiedNames(QName\[\], TypedValue)](com/appiancorp/suiteapi/type/TypeService.html#getTypeByQualifiedNames\(javax.xml.namespace.QName%5B%5D,com.appiancorp.suiteapi.type.TypedValue\))

    Use [`TypeService.getTypeByQualifiedNames(QName[])`](com/appiancorp/suiteapi/type/TypeService.html#getTypeByQualifiedNames\(javax.xml.namespace.QName%5B%5D\)).

    [com.appiancorp.suiteapi.type.TypeService.getTypeSafe(Long)](com/appiancorp/suiteapi/type/TypeService.html#getTypeSafe\(java.lang.Long\))

    use [`TypeService.getType(Long)`](com/appiancorp/suiteapi/type/TypeService.html#getType\(java.lang.Long\)) instead.

    [com.appiancorp.suiteapi.type.TypeService.getTypesByNamespace(String, TypedValue)](com/appiancorp/suiteapi/type/TypeService.html#getTypesByNamespace\(java.lang.String,com.appiancorp.suiteapi.type.TypedValue\))

    Use [`TypeService.getTypesByNamespace(String)`](com/appiancorp/suiteapi/type/TypeService.html#getTypesByNamespace\(java.lang.String\)).

    [com.appiancorp.suiteapi.type.TypeService.getTypesByParentFilteredPaging(TypedValue, int, int, int, int, Integer, Integer)](com/appiancorp/suiteapi/type/TypeService.html#getTypesByParentFilteredPaging\(com.appiancorp.suiteapi.type.TypedValue,int,int,int,int,java.lang.Integer,java.lang.Integer\))

    Use [`TypeService.getTypesFilteredPaging(int, int, int, int, Integer, Integer)`](com/appiancorp/suiteapi/type/TypeService.html#getTypesFilteredPaging\(int,int,int,int,java.lang.Integer,java.lang.Integer\)).

    [com.appiancorp.suiteapi.type.TypeService.getTypesByParentPaging(TypedValue, int, int, Integer, Integer)](com/appiancorp/suiteapi/type/TypeService.html#getTypesByParentPaging\(com.appiancorp.suiteapi.type.TypedValue,int,int,java.lang.Integer,java.lang.Integer\))

    Use [`TypeService.getTypesPaging(int, int, Integer, Integer)`](com/appiancorp/suiteapi/type/TypeService.html#getTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\)).

-   Deprecated Constructors

    Constructor

    Description

    [com.appiancorp.exceptions.AppianException(ErrorCode, Object...)](com/appiancorp/exceptions/AppianException.html#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))

    [com.appiancorp.exceptions.AppianException(ErrorCode, Throwable)](com/appiancorp/exceptions/AppianException.html#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable\))

    [com.appiancorp.exceptions.AppianException(ErrorCode, Throwable, Object...)](com/appiancorp/exceptions/AppianException.html#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable,java.lang.Object...\))

    [com.appiancorp.exceptions.AppianException(String)](com/appiancorp/exceptions/AppianException.html#%3Cinit%3E\(java.lang.String\))

    this constructor will be removed in future releases, as all exception messages must be associated via an error code.

    [com.appiancorp.exceptions.AppianException(String, Throwable)](com/appiancorp/exceptions/AppianException.html#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))

    this constructor will be removed in future releases, as all exception messages must be associated via an error code.

    [com.appiancorp.exceptions.InsufficientPrivilegesException()](com/appiancorp/exceptions/InsufficientPrivilegesException.html#%3Cinit%3E\(\))

    [com.appiancorp.exceptions.InsufficientPrivilegesException(String)](com/appiancorp/exceptions/InsufficientPrivilegesException.html#%3Cinit%3E\(java.lang.String\))

    [com.appiancorp.exceptions.InsufficientPrivilegesException(String, Throwable)](com/appiancorp/exceptions/InsufficientPrivilegesException.html#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))

    [com.appiancorp.exceptions.InsufficientPrivilegesException(Throwable)](com/appiancorp/exceptions/InsufficientPrivilegesException.html#%3Cinit%3E\(java.lang.Throwable\))

    [com.appiancorp.suiteapi.common.exceptions.AppianException()](com/appiancorp/suiteapi/common/exceptions/AppianException.html#%3Cinit%3E\(\))

    [com.appiancorp.suiteapi.common.exceptions.AppianException(String)](com/appiancorp/suiteapi/common/exceptions/AppianException.html#%3Cinit%3E\(java.lang.String\))

    this constructor will be removed in future releases, as all exception messages must be associated via an error code.

    [com.appiancorp.suiteapi.common.exceptions.AppianException(String, Throwable)](com/appiancorp/suiteapi/common/exceptions/AppianException.html#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))

    this constructor will be removed in future releases, as all exception messages must be associated via an error code.

    [com.appiancorp.suiteapi.common.exceptions.DuplicateIdException()](com/appiancorp/suiteapi/common/exceptions/DuplicateIdException.html#%3Cinit%3E\(\))

    [com.appiancorp.suiteapi.common.exceptions.DuplicateIdException(String)](com/appiancorp/suiteapi/common/exceptions/DuplicateIdException.html#%3Cinit%3E\(java.lang.String\))

    [com.appiancorp.suiteapi.common.exceptions.DuplicateIdException(String, Throwable)](com/appiancorp/suiteapi/common/exceptions/DuplicateIdException.html#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))

    [com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ExportBinder(ExportBindingMap)](com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ExportBinder.html#%3Cinit%3E\(com.appiancorp.ix.binding.ExportBindingMap\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ExportBinder(ExportBindingMap, Long, String)](com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ExportBinder.html#%3Cinit%3E\(com.appiancorp.ix.binding.ExportBindingMap,java.lang.Long,java.lang.String\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ImportBinder(ImportBindingMap)](com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ImportBinder.html#%3Cinit%3E\(com.appiancorp.ix.binding.ImportBindingMap\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ImportBinder(ImportBindingMap, Long, String)](com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ImportBinder.html#%3Cinit%3E\(com.appiancorp.ix.binding.ImportBindingMap,java.lang.Long,java.lang.String\))

    This API is being phased out and will be removed in a future release.

    [com.appiancorp.suiteapi.ix.ImportResults(Long, List<ImportObject>, List<ImportObject>, List<ImportObject>)](com/appiancorp/suiteapi/ix/ImportResults.html#%3Cinit%3E\(java.lang.Long,java.util.List,java.util.List,java.util.List\))

    This constructor will be removed in a future release. Use [`ImportResults(Long, List, List, List, List, List)`](com/appiancorp/suiteapi/ix/ImportResults.html#%3Cinit%3E\(java.lang.Long,java.util.List,java.util.List,java.util.List,java.util.List,java.util.List\)) instead

    [com.appiancorp.suiteapi.process.ActivityClassParameter(String, Long, Object)](com/appiancorp/suiteapi/process/ActivityClassParameter.html#%3Cinit%3E\(java.lang.String,java.lang.Long,java.lang.Object\))

    [com.appiancorp.suiteapi.process.analytics2.SimpleColumnFilter(Integer, SimpleColumnFilter.ComparisonType, GenericTypedVariable, boolean)](com/appiancorp/suiteapi/process/analytics2/SimpleColumnFilter.html#%3Cinit%3E\(java.lang.Integer,com.appiancorp.suiteapi.process.analytics2.SimpleColumnFilter.ComparisonType,com.appiancorp.suiteapi.process.GenericTypedVariable,boolean\))

    since 6.1

    [com.appiancorp.suiteapi.process.exceptions.InvalidActivityClassSchemaException()](com/appiancorp/suiteapi/process/exceptions/InvalidActivityClassSchemaException.html#%3Cinit%3E\(\))

    [com.appiancorp.suiteapi.process.exceptions.InvalidActivityClassSchemaException(String)](com/appiancorp/suiteapi/process/exceptions/InvalidActivityClassSchemaException.html#%3Cinit%3E\(java.lang.String\))

    [com.appiancorp.suiteapi.process.exceptions.InvalidActivityClassSchemaException(String, Throwable)](com/appiancorp/suiteapi/process/exceptions/InvalidActivityClassSchemaException.html#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))

    [com.appiancorp.suiteapi.process.exceptions.InvalidActivityClassSchemaException(Throwable)](com/appiancorp/suiteapi/process/exceptions/InvalidActivityClassSchemaException.html#%3Cinit%3E\(java.lang.Throwable\))

    [com.appiancorp.suiteapi.process.framework.SafeActivityReturnVariable(ActivityReturnVariable)](com/appiancorp/suiteapi/process/framework/SafeActivityReturnVariable.html#%3Cinit%3E\(com.appiancorp.suiteapi.process.ActivityReturnVariable\))

    [com.appiancorp.suiteapi.process.GenericTypedVariable(Object)](com/appiancorp/suiteapi/process/GenericTypedVariable.html#%3Cinit%3E\(java.lang.Object\))

    after AE 5.1, use [`GenericTypedVariable(java.lang.Object,int)`](com/appiancorp/suiteapi/process/GenericTypedVariable.html#%3Cinit%3E\(java.lang.Object,int\))

    [com.appiancorp.suiteapi.process.GenericTypedVariable(Object, Class)](com/appiancorp/suiteapi/process/GenericTypedVariable.html#%3Cinit%3E\(java.lang.Object,java.lang.Class\))

    after AE 5.1, use [`GenericTypedVariable(java.lang.Object,int)`](com/appiancorp/suiteapi/process/GenericTypedVariable.html#%3Cinit%3E\(java.lang.Object,int\))

    [com.appiancorp.suiteapi.security.auth.AppianUserDetails(UserProfile, PasswordStatus, Set<String>)](com/appiancorp/suiteapi/security/auth/AppianUserDetails.html#%3Cinit%3E\(com.appiancorp.suiteapi.personalization.UserProfile,com.appiancorp.suiteapi.security.auth.PasswordStatus,java.util.Set\))

    Use [`AppianUserDetailsService`](com/appiancorp/suiteapi/security/auth/AppianUserDetailsService.html "class in com.appiancorp.suiteapi.security.auth").

-   Deprecated Enum Constants

    Enum Constant

    Description

    [com.appiancorp.common.query.AggregationFunction.INTERVAL\_DAY](com/appiancorp/common/query/AggregationFunction.html#INTERVAL_DAY)

    [com.appiancorp.common.query.AggregationFunction.INTERVAL\_HOUR](com/appiancorp/common/query/AggregationFunction.html#INTERVAL_HOUR)

    [com.appiancorp.common.query.AggregationFunction.INTERVAL\_MINUTE](com/appiancorp/common/query/AggregationFunction.html#INTERVAL_MINUTE)

    [com.appiancorp.common.query.AggregationFunction.INTERVAL\_WEEK](com/appiancorp/common/query/AggregationFunction.html#INTERVAL_WEEK)

    [com.appiancorp.suiteapi.process.history.AuditHistoryRowConstants.TASK\_PROPERTY\_STARTED\_AT](com/appiancorp/suiteapi/process/history/AuditHistoryRowConstants.html#TASK_PROPERTY_STARTED_AT)

    see tp!startedIn for newer data

-   Deprecated Annotation Interface Elements

    Annotation Interface Element

    Description

    [com.appiancorp.suiteapi.expression.annotations.Function.returnType()](com/appiancorp/suiteapi/expression/annotations/Function.html#returnType\(\))

    since 6.0.3. Use the @Type annotation instead.