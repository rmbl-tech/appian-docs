---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/PortalNotificationService.html
original_path: api/com/appiancorp/suiteapi/portal/PortalNotificationService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Interface PortalNotificationService

All Superinterfaces:

`[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface PortalNotificationService extends [ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

Deprecated.

The Notification functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Defines service methods used to access notifications received through the Portal. Portal registers itself with the Notification framework as one of the possible output media. Notifications sent to the Portal medium because of default settings or explicit rules can be retrieved through this service.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`AdministrationService`](AdministrationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`NotificationService`](NotificationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PageNavigationService`](PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PageService`](PageService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PortalSearchService`](PortalSearchService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PortletService`](PortletService.html "interface in com.appiancorp.suiteapi.portal")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_ACCESS_APPROVED_NOTIFICATION_TYPE](#COLLABORATION_ACCESS_APPROVED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration access approved notification type This is used to send a notification of access approved for a knowledge center in collaboration

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_ACCESS_DENIED_NOTIFICATION_TYPE](#COLLABORATION_ACCESS_DENIED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration access denied notification type This is used to send a notification of access denied to a a knowledge center in collaboration

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_ACCESS_REQUEST_NOTIFICATION_TYPE](#COLLABORATION_ACCESS_REQUEST_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration access requested notification type This is used to send a notification of requested access to a knowledge center in collaboration

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_APPROVED_CHANGES_NOTIFICATION_TYPE](#COLLABORATION_APPROVED_CHANGES_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration changes approved notification type This is used to send a notification of changes to a document approved in collaboration.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_DENIED_CHANGES_NOTIFICATION_TYPE](#COLLABORATION_DENIED_CHANGES_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration changes denied notification type This is used to send a notification of denial of changes to a document in collaboration.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_EXPIRING_FILES_NOTIFICATION_TYPE](#COLLABORATION_EXPIRING_FILES_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration file expiration notification type This is used to send a notification of expiring files in collaboration

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_EXPORT_COMPLETED_NOTIFICATION_TYPE](#COLLABORATION_EXPORT_COMPLETED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration export completed notification type This is used to send a notification when an export operation has completed

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_IMPORT_COMPLETED_NOTIFICATION_TYPE](#COLLABORATION_IMPORT_COMPLETED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration import completed notification type This is used to send a notification when an import operation has completed

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_INVITATION_ACCEPTED_NOTIFICATION_TYPE](#COLLABORATION_INVITATION_ACCEPTED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration invitation accepted notification type This is used to send a notification of acceptance of an invitation to a knowledge center in collaboration

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_INVITATION_DECLINED_NOTIFICATION_TYPE](#COLLABORATION_INVITATION_DECLINED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration invitation declined notification type This is used to send a notification of declination of an invitation to a knowledge center in collaboration

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_INVITATION_NOTIFICATION_TYPE](#COLLABORATION_INVITATION_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration invitation notification type This is used to send a notification of an invitation to a knowledge center in collaboration

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_NOTIFICATION_APPLICATION](#COLLABORATION_NOTIFICATION_APPLICATION)`

    Deprecated.

    A constant for the Collaboration application This is used to send notifications within collaboration

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_REQUEST_CHANGES_NOTIFICATION_TYPE](#COLLABORATION_REQUEST_CHANGES_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration request changes notification type This is used to send a notification to request approval of changes to a document in collaboration

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[COLLABORATION_SEND_LINK_NOTIFICATION_TYPE](#COLLABORATION_SEND_LINK_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the collaboration send link notification type This is used to send a notification for links to documents in collaboration

    `static final boolean`

    `[commitUpdateUsernames$UPDATES](#commitUpdateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteExpiredNotifications$UPDATES](#deleteExpiredNotifications$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteNotification$UPDATES](#deleteNotification$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteNotifications$UPDATES](#deleteNotifications$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteNotificationsBeforeTimestamp$UPDATES](#deleteNotificationsBeforeTimestamp$UPDATES)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FEED_NOTIFICATION_APPLICATION](#FEED_NOTIFICATION_APPLICATION)`

    Deprecated.

    A constant for the Feeds application

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORUM_NOTIFICATION_APPLICATION](#FORUM_NOTIFICATION_APPLICATION)`

    Deprecated.

    A constant for the Forums application

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORUM_THREAD_ACCEPT_INVITE_NOTIFICATION_TYPE](#FORUM_THREAD_ACCEPT_INVITE_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the forum and thread invitation acceptance notification type This is used to send acceptances of forum and thread invitations

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORUM_THREAD_DECLINE_INVITE_NOTIFICATION_TYPE](#FORUM_THREAD_DECLINE_INVITE_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the forum and thread invitation declination notification type This is used to send declinations of forum and thread invitation

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORUM_THREAD_INVITE_NOTIFICATION_TYPE](#FORUM_THREAD_INVITE_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the forum and thread invitation notification type This is used to send forum and thread inivitation notification

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORUM_THREAD_SENT_LINK_NOTIFICATION_TYPE](#FORUM_THREAD_SENT_LINK_NOTIFICATION_TYPE)`

    Deprecated.

    A constants corresponding to the forum and thread send link notification type This is used to send send a link to a forum or thread

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORUM_THREAD_SUBSCRIBE_NOTIFICATION_TYPE](#FORUM_THREAD_SUBSCRIBE_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the forum and thread subscribe notification type This is used to send forum subscription notification

    `static final boolean`

    `[getNotification$UPDATES](#getNotification$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getNotifications$UPDATES](#getNotifications$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getNotificationsByApplication$UPDATES](#getNotificationsByApplication$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getNotificationsByApplicationAndType$UPDATES](#getNotificationsByApplicationAndType$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getNotificationsPaging$UPDATES](#getNotificationsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getNotificationsSummary$UPDATES](#getNotificationsSummary$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getUnreadNotificationsCount$UPDATES](#getUnreadNotificationsCount$UPDATES)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[GROUP_INVITATION_ACCEPTED_NOTIFICATION_TYPE](#GROUP_INVITATION_ACCEPTED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the group invitation acceptance notification type This is used to send a notification of acceptance to a group invitation

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[GROUP_INVITATION_DECLINED_NOTIFICATION_TYPE](#GROUP_INVITATION_DECLINED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the group invitation declination notification type This is used to send a notification of a declination to a group invitation

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[GROUP_INVITATION_NOTIFICATION_TYPE](#GROUP_INVITATION_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the group invitation notification type This is used to send a group invitation notification

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[GROUP_MEMBERSHIP_APPROVED_NOTIFICATION_TYPE](#GROUP_MEMBERSHIP_APPROVED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the group membership approved notification type This is used to send an invitation of an approved group membership

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[GROUP_MEMBERSHIP_DENIED_NOTIFICATION_TYPE](#GROUP_MEMBERSHIP_DENIED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the group membership denied notification type This is used to send a notification of a denial of group membership

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[GROUP_MEMBERSHIP_REMOVED_NOTIFICATION_TYPE](#GROUP_MEMBERSHIP_REMOVED_NOTIFICATION_TYPE)`

    Deprecated.

    A constants corresponding to the group membership removal notification type This is used to send a group removal notification

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[GROUP_MEMBERSHIP_REQUESTED_NOTIFICATION_TYPE](#GROUP_MEMBERSHIP_REQUESTED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the group membership request notification type This is used to send a notification of a group membership request

    `static final boolean`

    `[markNotificationAsRead$UPDATES](#markNotificationAsRead$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[markNotificationsAsRead$UPDATES](#markNotificationsAsRead$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notify$UPDATES](#notify$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notifyWithExcludedUsers$UPDATES](#notifyWithExcludedUsers$UPDATES)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PERSONALIZATION_NOTIFICATION_APPLICATION](#PERSONALIZATION_NOTIFICATION_APPLICATION)`

    Deprecated.

    A constant for the Personalization application This is used to send personalization notification

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PORTAL_NOTIFICATION_APPLICATION](#PORTAL_NOTIFICATION_APPLICATION)`

    Deprecated.

    A constant for the Portal application This is used to send portal notifications

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PORTAL_PAGE_ACCESS_REMOVAL_NOTIFICATION_TYPE](#PORTAL_PAGE_ACCESS_REMOVAL_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the portal page membership removal notification type This is used to send a notification for page membership removal

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PORTAL_PAGE_APPROVAL_NOTIFICATION_TYPE](#PORTAL_PAGE_APPROVAL_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the portal page approval notification type This is used to send a notification for page approvals

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PORTAL_PAGE_APPROVAL_REQUEST_NOTIFICATION_TYPE](#PORTAL_PAGE_APPROVAL_REQUEST_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the portal page approval request notification type This is used to send a notification for page approval requests

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PORTAL_SEND_FEEDBACK_NOTIFICATION_TYPE](#PORTAL_SEND_FEEDBACK_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the portal send feedback notification type This is used to send a feedback notification

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PORTAL_SEND_LINK_NOTIFICATION_TYPE](#PORTAL_SEND_LINK_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the portal send link notification type This is used to send a link within portal

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PORTAL_SYSTEM_NOTIFICATION_TYPE](#PORTAL_SYSTEM_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the portal system notification type This is used to send a portal system notification

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_EXCEPTION_NOTIFICATION_TYPE](#PROCESS_EXCEPTION_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the process exception notification type This is used to send a notification when an exception has occurred in a process

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_MODEL_EXCEPTION_NOTIFICATION_TYPE](#PROCESS_MODEL_EXCEPTION_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the process model exception notification type This is used to send a notification when an exception has occurred in a process model

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_NEW_TASK_ME_NOTIFICATION_TYPE](#PROCESS_NEW_TASK_ME_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the "New Task Assigned to Me" notification type This is used to send a notification when a user has a new task assigned to them

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_NEW_TASK_OTHERS_NOTIFICATION_TYPE](#PROCESS_NEW_TASK_OTHERS_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the "New Task Assigned to Others" notification type This is used to send a notification to a user when a task has been assigned to the user and to others

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_NOTIFICATION_APPLICATION](#PROCESS_NOTIFICATION_APPLICATION)`

    Deprecated.

    A constant for the Process application This is used to send process notification

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_PARENT_CAUSES_PUBLISH_NOTIFICATION_TYPE](#PROCESS_PARENT_CAUSES_PUBLISH_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the "parent process causes sub process to be published" notification type This is used to send a notification when the publishing of a parent process model causes its sub- or linked process models to be published

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_SUB_LINK_CANNOT_DELETE_CANCEL_NOTIFICATION_TYPE](#PROCESS_SUB_LINK_CANNOT_DELETE_CANCEL_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the "Cannot delete or Cancel sub or linked process" notification type This is used to send a notification when a user tries to delete or cancel a parent process containing sub- or linked processes that he cannot cancel due to permissions

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_SUB_LINK_DISABLED_DELETED_NOTIFICATION_TYPE](#PROCESS_SUB_LINK_DISABLED_DELETED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the "sub or link process model disabled" notification type This is used to send a notification when a sub or linked process is disabled or deleted

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_SUB_LINK_REPUBLISHED_NOTIFICATION_TYPE](#PROCESS_SUB_LINK_REPUBLISHED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the "sub or linked process republished" notification type This is sent when to the parent process model owners when a sub- or linked process model is published

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_TASK_ESCALATED_NOTIFICATION_TYPE](#PROCESS_TASK_ESCALATED_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the process task escalated notification type This is sent when to when a task has been escalated

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_TASK_EXCEPTION_NOTIFICATION_TYPE](#PROCESS_TASK_EXCEPTION_NOTIFICATION_TYPE)`

    Deprecated.

    A constant corresponding to the task exception notification type This is used to send a notification when an exception has occurred in a task

    `static final boolean`

    `[reloadProperties$UPDATES](#reloadProperties$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rollbackUpdateUsernames$UPDATES](#rollbackUpdateUsernames$UPDATES)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_NOTIFICATION_ORDER_ASCENDING](#SORT_NOTIFICATION_ORDER_ASCENDING)`

    Deprecated.

    A constant sort order for notification - sort in ascending order

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_NOTIFICATION_ORDER_DESCENDING](#SORT_NOTIFICATION_ORDER_DESCENDING)`

    Deprecated.

    A constant sort order for notification - sort in descending order

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TASKS_COMMENT_ON_SOCIAL_TASK_SENT_BY_YOU](#TASKS_COMMENT_ON_SOCIAL_TASK_SENT_BY_YOU)`

    Deprecated.

    A constant corresponding to the "New comment on a social task that was sent by you" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TASKS_COMMENT_ON_SOCIAL_TASK_SENT_TO_YOU](#TASKS_COMMENT_ON_SOCIAL_TASK_SENT_TO_YOU)`

    Deprecated.

    A constant corresponding to the "New comment on a social task that was sent to you" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TASKS_NOTIFICATION_APPLICATION](#TASKS_NOTIFICATION_APPLICATION)`

    Deprecated.

    A constant for the Tasks application

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TASKS_SOCIAL_TASK_SENT_BY_YOU_CLOSED](#TASKS_SOCIAL_TASK_SENT_BY_YOU_CLOSED)`

    Deprecated.

    A constant corresponding to the "A social task that was sent by you was closed" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TASKS_SOCIAL_TASK_SENT_TO_YOU_CLOSED](#TASKS_SOCIAL_TASK_SENT_TO_YOU_CLOSED)`

    Deprecated.

    A constant corresponding to the "A social task that was sent to you was closed" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_COMMENT_ON_GIVEN_KUDOS](#TEMPO_COMMENT_ON_GIVEN_KUDOS)`

    Deprecated.

    A constant corresponding to the "New comment on a kudos that you gave" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_COMMENT_ON_KUDOS_COMMENTED_ON](#TEMPO_COMMENT_ON_KUDOS_COMMENTED_ON)`

    Deprecated.

    A constant corresponding to the "New comment on a kudos that you have commented on or starred" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_COMMENT_ON_MESSAGE](#TEMPO_COMMENT_ON_MESSAGE)`

    Deprecated.

    [`TEMPO_COMMENT_ON_MESSAGE_TO_GROUP`](#TEMPO_COMMENT_ON_MESSAGE_TO_GROUP) is now used for messages to users, groups and everyone

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_COMMENT_ON_MESSAGE_COMMENTED_ON](#TEMPO_COMMENT_ON_MESSAGE_COMMENTED_ON)`

    Deprecated.

    A constant corresponding to the "New comment on a post or message that you have commented on" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_COMMENT_ON_MESSAGE_TO_GROUP](#TEMPO_COMMENT_ON_MESSAGE_TO_GROUP)`

    Deprecated.

    A constant corresponding to the "New comment on your message" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_COMMENT_ON_POST](#TEMPO_COMMENT_ON_POST)`

    Deprecated.

    A constant corresponding to the "New comment on an event attributed to you" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_COMMENT_ON_POST_COMMENTED_ON](#TEMPO_COMMENT_ON_POST_COMMENTED_ON)`

    Deprecated.

    A constant corresponding to the "New comment on an event that you have commented on" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_COMMENT_ON_POST_TO_FOLLOWERS](#TEMPO_COMMENT_ON_POST_TO_FOLLOWERS)`

    Deprecated.

    A constant corresponding to the "New comment on your post" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_COMMENT_ON_RECEIVED_KUDOS](#TEMPO_COMMENT_ON_RECEIVED_KUDOS)`

    Deprecated.

    A constant corresponding to the "New comment on a kudos that you received" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_COMMENT_ON_SYSTEM_POST_COMMENTED_ON](#TEMPO_COMMENT_ON_SYSTEM_POST_COMMENTED_ON)`

    Deprecated.

    A constant corresponding to the "New comment on a system event that you have commented on" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_GROUP_MESSAGE_POSTED](#TEMPO_GROUP_MESSAGE_POSTED)`

    Deprecated.

    A constant corresponding to the "New group message posted" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_GROUP_PARTICIPANT_ADDED](#TEMPO_GROUP_PARTICIPANT_ADDED)`

    Deprecated.

    Group has been added as a participant

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_HAZARD_ON_POST](#TEMPO_HAZARD_ON_POST)`

    Deprecated.

    A constant corresponding to the "New hazard on an event attributed to you" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_HAZARD_ON_POST_COMMENTED_ON](#TEMPO_HAZARD_ON_POST_COMMENTED_ON)`

    Deprecated.

    A constant corresponding to the "New hazard on an event that you have commented on" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_HAZARD_ON_SYSTEM_POST_COMMENTED_ON](#TEMPO_HAZARD_ON_SYSTEM_POST_COMMENTED_ON)`

    Deprecated.

    A constant corresponding to the "New hazard on a system event that you have commented on" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_MESSAGE_POSTED](#TEMPO_MESSAGE_POSTED)`

    Deprecated.

    A constant corresponding to the "New message sent to you" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_NOTIFICATION_APPLICATION](#TEMPO_NOTIFICATION_APPLICATION)`

    Deprecated.

    A constant for the Tempo application

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_PARTICIPANT_ADDED](#TEMPO_PARTICIPANT_ADDED)`

    Deprecated.

    You have been added as a participant

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_PARTICIPANT_ADDED_TO_YOUR_ENTRY](#TEMPO_PARTICIPANT_ADDED_TO_YOUR_ENTRY)`

    Deprecated.

    Participants added to your feed entry

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_POST_ATTRIBUTED_TO_YOU](#TEMPO_POST_ATTRIBUTED_TO_YOU)`

    Deprecated.

    A constant corresponding to the "New event attributed to you" notification type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TEMPO_RECEIVED_KUDOS](#TEMPO_RECEIVED_KUDOS)`

    Deprecated.

    A constant corresponding to the "New kudos given to you" notification type.

    `static final boolean`

    `[updateUsernames$UPDATES](#updateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validate$UPDATES](#validate$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validateDatabase$UPDATES](#validateDatabase$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[CONFIGURE_METHOD_NAME](../../services/ContextSensitiveSingletonService.html#CONFIGURE_METHOD_NAME)`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[commitUpdateUsernames](#commitUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `void`

    `[deleteExpiredNotifications](#deleteExpiredNotifications\(\))()`

    Deprecated.

    Deletes all expired notifications for the current user

    `void`

    `[deleteNotification](#deleteNotification\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") notificationId_)`

    Deprecated.

    Delete a notification

    `void`

    `[deleteNotifications](#deleteNotifications\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] notificationIds_)`

    Deprecated.

    Delete a list of notifications

    `void`

    `[deleteNotificationsBeforeTimestamp](#deleteNotificationsBeforeTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)`

    Deprecated.

    Deletes all notifications for the current user before the given timestamp.

    `[Notification](Notification.html "class in com.appiancorp.suiteapi.portal")`

    `[getNotification](#getNotification\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") notifId_)`

    Deprecated.

    Gets a notification

    `[Notification](Notification.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getNotifications](#getNotifications\(java.lang.Integer,java.lang.Integer,int,int\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortType_, int startIndex_, int count_)`

    Deprecated.

    use getNotificationsPaging instead

    `[Notification](Notification.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getNotificationsByApplication](#getNotificationsByApplication\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") appName_)`

    Deprecated.

    Gets a list of notifications matching Application name

    `[Notification](Notification.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getNotificationsByApplicationAndType](#getNotificationsByApplicationAndType\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") appName_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notificationType_)`

    Deprecated.

    Gets the list of notifications matching the specified Application and Notification Type

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getNotificationsPaging](#getNotificationsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a the notifications that the current user has received in the portal medium.

    `[NotificationsSummary](NotificationsSummary.html "class in com.appiancorp.suiteapi.portal")`

    `[getNotificationsSummary](#getNotificationsSummary\(\))()`

    Deprecated.

    Gets a [`NotificationsSummary`](NotificationsSummary.html "class in com.appiancorp.suiteapi.portal") which lists the number of unread and expired notifications for the current user

    `int`

    `[getUnreadNotificationsCount](#getUnreadNotificationsCount\(\))()`

    Deprecated.

    Gets the the number of notifications for the user that have not been marked as read.

    `void`

    `[markNotificationAsRead](#markNotificationAsRead\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") notificationId_)`

    Deprecated.

    Marks a notification as read.

    `void`

    `[markNotificationsAsRead](#markNotificationsAsRead\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] notificationIds_)`

    Deprecated.

    Marks a list of notifications as read.

    `void`

    `[notify](#notify\(java.lang.String%5B%5D,java.lang.Long%5B%5D,java.lang.String,java.lang.String,java.util.Map\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") appName_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ntfType_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") attributes_)`

    Deprecated.

    Sends a notification.

    `void`

    `[notifyWithExcludedUsers](#notifyWithExcludedUsers\(java.lang.String%5B%5D,java.lang.Long%5B%5D,java.lang.String%5B%5D,java.lang.String,java.lang.String,java.util.Map\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] excludedUsers_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") appName_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ntfType_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") attributes_)`

    Deprecated.

    Sends a notification, allowing certain users to be excluded from receiving the notification.

    `void`

    `[reloadProperties](#reloadProperties\(\))()`

    Deprecated.

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    `void`

    `[rollbackUpdateUsernames](#rollbackUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `void`

    `[updateUsernames](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] oldUsernames_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] newUsernames_, long maxExpirationTimeInSeconds_)`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[validate](#validate\(\))()`

    Deprecated.

    Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

    `[DatabaseStatus](DatabaseStatus.html "class in com.appiancorp.suiteapi.portal")`

    `[validateDatabase](#validateDatabase\(int\))(int thoroughness_)`

    Deprecated.

    Performs validation on the database(s) associated with this service.

    ### Methods inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[configureContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html#configureContextSensitiveSingletonService\(com.appiancorp.services.spring.ServiceContextProvider,com.appiancorp.services.AuthorizationInterceptorProvider\))`

-   ## Field Details

    -   ### SORT\_NOTIFICATION\_ORDER\_ASCENDING

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_NOTIFICATION\_ORDER\_ASCENDING

        Deprecated.

        A constant sort order for notification - sort in ascending order

    -   ### SORT\_NOTIFICATION\_ORDER\_DESCENDING

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_NOTIFICATION\_ORDER\_DESCENDING

        Deprecated.

        A constant sort order for notification - sort in descending order

    -   ### PORTAL\_NOTIFICATION\_APPLICATION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PORTAL\_NOTIFICATION\_APPLICATION

        Deprecated.

        A constant for the Portal application This is used to send portal notifications

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PORTAL_NOTIFICATION_APPLICATION)

    -   ### PERSONALIZATION\_NOTIFICATION\_APPLICATION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PERSONALIZATION\_NOTIFICATION\_APPLICATION

        Deprecated.

        A constant for the Personalization application This is used to send personalization notification

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PERSONALIZATION_NOTIFICATION_APPLICATION)

    -   ### COLLABORATION\_NOTIFICATION\_APPLICATION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_NOTIFICATION\_APPLICATION

        Deprecated.

        A constant for the Collaboration application This is used to send notifications within collaboration

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_NOTIFICATION_APPLICATION)

    -   ### FORUM\_NOTIFICATION\_APPLICATION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORUM\_NOTIFICATION\_APPLICATION

        Deprecated.

        A constant for the Forums application

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.FORUM_NOTIFICATION_APPLICATION)

    -   ### PROCESS\_NOTIFICATION\_APPLICATION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_NOTIFICATION\_APPLICATION

        Deprecated.

        A constant for the Process application This is used to send process notification

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PROCESS_NOTIFICATION_APPLICATION)

    -   ### TEMPO\_NOTIFICATION\_APPLICATION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_NOTIFICATION\_APPLICATION

        Deprecated.

        A constant for the Tempo application

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_NOTIFICATION_APPLICATION)

    -   ### TASKS\_NOTIFICATION\_APPLICATION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TASKS\_NOTIFICATION\_APPLICATION

        Deprecated.

        A constant for the Tasks application

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TASKS_NOTIFICATION_APPLICATION)

    -   ### FEED\_NOTIFICATION\_APPLICATION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FEED\_NOTIFICATION\_APPLICATION

        Deprecated.

        A constant for the Feeds application

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.FEED_NOTIFICATION_APPLICATION)

    -   ### FORUM\_THREAD\_SUBSCRIBE\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORUM\_THREAD\_SUBSCRIBE\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the forum and thread subscribe notification type This is used to send forum subscription notification

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.FORUM_THREAD_SUBSCRIBE_NOTIFICATION_TYPE)

    -   ### FORUM\_THREAD\_INVITE\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORUM\_THREAD\_INVITE\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the forum and thread invitation notification type This is used to send forum and thread inivitation notification

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.FORUM_THREAD_INVITE_NOTIFICATION_TYPE)

    -   ### FORUM\_THREAD\_ACCEPT\_INVITE\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORUM\_THREAD\_ACCEPT\_INVITE\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the forum and thread invitation acceptance notification type This is used to send acceptances of forum and thread invitations

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.FORUM_THREAD_ACCEPT_INVITE_NOTIFICATION_TYPE)

    -   ### FORUM\_THREAD\_DECLINE\_INVITE\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORUM\_THREAD\_DECLINE\_INVITE\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the forum and thread invitation declination notification type This is used to send declinations of forum and thread invitation

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.FORUM_THREAD_DECLINE_INVITE_NOTIFICATION_TYPE)

    -   ### FORUM\_THREAD\_SENT\_LINK\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORUM\_THREAD\_SENT\_LINK\_NOTIFICATION\_TYPE

        Deprecated.

        A constants corresponding to the forum and thread send link notification type This is used to send send a link to a forum or thread

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.FORUM_THREAD_SENT_LINK_NOTIFICATION_TYPE)

    -   ### GROUP\_MEMBERSHIP\_REQUESTED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") GROUP\_MEMBERSHIP\_REQUESTED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the group membership request notification type This is used to send a notification of a group membership request

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.GROUP_MEMBERSHIP_REQUESTED_NOTIFICATION_TYPE)

    -   ### GROUP\_MEMBERSHIP\_REMOVED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") GROUP\_MEMBERSHIP\_REMOVED\_NOTIFICATION\_TYPE

        Deprecated.

        A constants corresponding to the group membership removal notification type This is used to send a group removal notification

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.GROUP_MEMBERSHIP_REMOVED_NOTIFICATION_TYPE)

    -   ### GROUP\_INVITATION\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") GROUP\_INVITATION\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the group invitation notification type This is used to send a group invitation notification

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.GROUP_INVITATION_NOTIFICATION_TYPE)

    -   ### GROUP\_MEMBERSHIP\_APPROVED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") GROUP\_MEMBERSHIP\_APPROVED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the group membership approved notification type This is used to send an invitation of an approved group membership

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.GROUP_MEMBERSHIP_APPROVED_NOTIFICATION_TYPE)

    -   ### GROUP\_MEMBERSHIP\_DENIED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") GROUP\_MEMBERSHIP\_DENIED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the group membership denied notification type This is used to send a notification of a denial of group membership

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.GROUP_MEMBERSHIP_DENIED_NOTIFICATION_TYPE)

    -   ### GROUP\_INVITATION\_ACCEPTED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") GROUP\_INVITATION\_ACCEPTED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the group invitation acceptance notification type This is used to send a notification of acceptance to a group invitation

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.GROUP_INVITATION_ACCEPTED_NOTIFICATION_TYPE)

    -   ### GROUP\_INVITATION\_DECLINED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") GROUP\_INVITATION\_DECLINED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the group invitation declination notification type This is used to send a notification of a declination to a group invitation

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.GROUP_INVITATION_DECLINED_NOTIFICATION_TYPE)

    -   ### PORTAL\_SEND\_LINK\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PORTAL\_SEND\_LINK\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the portal send link notification type This is used to send a link within portal

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PORTAL_SEND_LINK_NOTIFICATION_TYPE)

    -   ### PORTAL\_SEND\_FEEDBACK\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PORTAL\_SEND\_FEEDBACK\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the portal send feedback notification type This is used to send a feedback notification

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PORTAL_SEND_FEEDBACK_NOTIFICATION_TYPE)

    -   ### PORTAL\_SYSTEM\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PORTAL\_SYSTEM\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the portal system notification type This is used to send a portal system notification

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PORTAL_SYSTEM_NOTIFICATION_TYPE)

    -   ### PORTAL\_PAGE\_APPROVAL\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PORTAL\_PAGE\_APPROVAL\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the portal page approval notification type This is used to send a notification for page approvals

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PORTAL_PAGE_APPROVAL_NOTIFICATION_TYPE)

    -   ### PORTAL\_PAGE\_APPROVAL\_REQUEST\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PORTAL\_PAGE\_APPROVAL\_REQUEST\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the portal page approval request notification type This is used to send a notification for page approval requests

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PORTAL_PAGE_APPROVAL_REQUEST_NOTIFICATION_TYPE)

    -   ### PORTAL\_PAGE\_ACCESS\_REMOVAL\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PORTAL\_PAGE\_ACCESS\_REMOVAL\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the portal page membership removal notification type This is used to send a notification for page membership removal

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PORTAL_PAGE_ACCESS_REMOVAL_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_SEND\_LINK\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_SEND\_LINK\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration send link notification type This is used to send a notification for links to documents in collaboration

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_SEND_LINK_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_ACCESS\_APPROVED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_ACCESS\_APPROVED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration access approved notification type This is used to send a notification of access approved for a knowledge center in collaboration

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_ACCESS_APPROVED_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_ACCESS\_DENIED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_ACCESS\_DENIED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration access denied notification type This is used to send a notification of access denied to a a knowledge center in collaboration

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_ACCESS_DENIED_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_ACCESS\_REQUEST\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_ACCESS\_REQUEST\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration access requested notification type This is used to send a notification of requested access to a knowledge center in collaboration

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_ACCESS_REQUEST_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_APPROVED\_CHANGES\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_APPROVED\_CHANGES\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration changes approved notification type This is used to send a notification of changes to a document approved in collaboration. When possible, use [`ContentService.notifyApproved(com.appiancorp.suiteapi.content.Approved...)`](../content/ContentService.html#notifyApproved\(com.appiancorp.suiteapi.content.Approved...\)) instead.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_APPROVED_CHANGES_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_DENIED\_CHANGES\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_DENIED\_CHANGES\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration changes denied notification type This is used to send a notification of denial of changes to a document in collaboration. When possible, use [`ContentService.notifyApproved(com.appiancorp.suiteapi.content.Approved...)`](../content/ContentService.html#notifyApproved\(com.appiancorp.suiteapi.content.Approved...\)) instead.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_DENIED_CHANGES_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_REQUEST\_CHANGES\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_REQUEST\_CHANGES\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration request changes notification type This is used to send a notification to request approval of changes to a document in collaboration

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_REQUEST_CHANGES_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_EXPIRING\_FILES\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_EXPIRING\_FILES\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration file expiration notification type This is used to send a notification of expiring files in collaboration

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_EXPIRING_FILES_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_INVITATION\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_INVITATION\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration invitation notification type This is used to send a notification of an invitation to a knowledge center in collaboration

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_INVITATION_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_INVITATION\_ACCEPTED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_INVITATION\_ACCEPTED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration invitation accepted notification type This is used to send a notification of acceptance of an invitation to a knowledge center in collaboration

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_INVITATION_ACCEPTED_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_INVITATION\_DECLINED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_INVITATION\_DECLINED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration invitation declined notification type This is used to send a notification of declination of an invitation to a knowledge center in collaboration

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_INVITATION_DECLINED_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_EXPORT\_COMPLETED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_EXPORT\_COMPLETED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration export completed notification type This is used to send a notification when an export operation has completed

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_EXPORT_COMPLETED_NOTIFICATION_TYPE)

    -   ### COLLABORATION\_IMPORT\_COMPLETED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") COLLABORATION\_IMPORT\_COMPLETED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the collaboration import completed notification type This is used to send a notification when an import operation has completed

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.COLLABORATION_IMPORT_COMPLETED_NOTIFICATION_TYPE)

    -   ### PROCESS\_TASK\_ESCALATED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_TASK\_ESCALATED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the process task escalated notification type This is sent when to when a task has been escalated

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PROCESS_TASK_ESCALATED_NOTIFICATION_TYPE)

    -   ### PROCESS\_SUB\_LINK\_REPUBLISHED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_SUB\_LINK\_REPUBLISHED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the "sub or linked process republished" notification type This is sent when to the parent process model owners when a sub- or linked process model is published

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PROCESS_SUB_LINK_REPUBLISHED_NOTIFICATION_TYPE)

    -   ### PROCESS\_PARENT\_CAUSES\_PUBLISH\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_PARENT\_CAUSES\_PUBLISH\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the "parent process causes sub process to be published" notification type This is used to send a notification when the publishing of a parent process model causes its sub- or linked process models to be published

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PROCESS_PARENT_CAUSES_PUBLISH_NOTIFICATION_TYPE)

    -   ### PROCESS\_SUB\_LINK\_DISABLED\_DELETED\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_SUB\_LINK\_DISABLED\_DELETED\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the "sub or link process model disabled" notification type This is used to send a notification when a sub or linked process is disabled or deleted

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PROCESS_SUB_LINK_DISABLED_DELETED_NOTIFICATION_TYPE)

    -   ### PROCESS\_NEW\_TASK\_ME\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_NEW\_TASK\_ME\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the "New Task Assigned to Me" notification type This is used to send a notification when a user has a new task assigned to them

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PROCESS_NEW_TASK_ME_NOTIFICATION_TYPE)

    -   ### PROCESS\_NEW\_TASK\_OTHERS\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_NEW\_TASK\_OTHERS\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the "New Task Assigned to Others" notification type This is used to send a notification to a user when a task has been assigned to the user and to others

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PROCESS_NEW_TASK_OTHERS_NOTIFICATION_TYPE)

    -   ### PROCESS\_EXCEPTION\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_EXCEPTION\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the process exception notification type This is used to send a notification when an exception has occurred in a process

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PROCESS_EXCEPTION_NOTIFICATION_TYPE)

    -   ### PROCESS\_MODEL\_EXCEPTION\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_MODEL\_EXCEPTION\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the process model exception notification type This is used to send a notification when an exception has occurred in a process model

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PROCESS_MODEL_EXCEPTION_NOTIFICATION_TYPE)

    -   ### PROCESS\_TASK\_EXCEPTION\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_TASK\_EXCEPTION\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the task exception notification type This is used to send a notification when an exception has occurred in a task

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PROCESS_TASK_EXCEPTION_NOTIFICATION_TYPE)

    -   ### PROCESS\_SUB\_LINK\_CANNOT\_DELETE\_CANCEL\_NOTIFICATION\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_SUB\_LINK\_CANNOT\_DELETE\_CANCEL\_NOTIFICATION\_TYPE

        Deprecated.

        A constant corresponding to the "Cannot delete or Cancel sub or linked process" notification type This is used to send a notification when a user tries to delete or cancel a parent process containing sub- or linked processes that he cannot cancel due to permissions

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.PROCESS_SUB_LINK_CANNOT_DELETE_CANCEL_NOTIFICATION_TYPE)

    -   ### TEMPO\_MESSAGE\_POSTED

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_MESSAGE\_POSTED

        Deprecated.

        A constant corresponding to the "New message sent to you" notification type. This is used to send a notification when someone posts a message targeted to a user explicitly (but not necessarily exclusively).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_MESSAGE_POSTED)

    -   ### TEMPO\_GROUP\_MESSAGE\_POSTED

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_GROUP\_MESSAGE\_POSTED

        Deprecated.

        A constant corresponding to the "New group message posted" notification type. This is used to send a notification when someone posts a message targeted to a group that the recipient is a member of.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_GROUP_MESSAGE_POSTED)

    -   ### TEMPO\_COMMENT\_ON\_MESSAGE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_COMMENT\_ON\_MESSAGE

        Deprecated.

        [`TEMPO_COMMENT_ON_MESSAGE_TO_GROUP`](#TEMPO_COMMENT_ON_MESSAGE_TO_GROUP) is now used for messages to users, groups and everyone

        A constant corresponding to the "New comment on your message to everyone" notification type. This is used to send a notification when someone other than the recipient writes a comment on a message that the recipient posted.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_COMMENT_ON_MESSAGE)

    -   ### TEMPO\_COMMENT\_ON\_MESSAGE\_TO\_GROUP

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_COMMENT\_ON\_MESSAGE\_TO\_GROUP

        Deprecated.

        A constant corresponding to the "New comment on your message" notification type. This is used to send a notification when when someone other than the recipient writes a comment on a message that the recipient posted to a group.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_COMMENT_ON_MESSAGE_TO_GROUP)

    -   ### TEMPO\_COMMENT\_ON\_POST\_TO\_FOLLOWERS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_COMMENT\_ON\_POST\_TO\_FOLLOWERS

        Deprecated.

        A constant corresponding to the "New comment on your post" notification type. This is used to send a notification when someone other than the recipient writes a comment on a post that the recipient made.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_COMMENT_ON_POST_TO_FOLLOWERS)

    -   ### TEMPO\_COMMENT\_ON\_MESSAGE\_COMMENTED\_ON

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_COMMENT\_ON\_MESSAGE\_COMMENTED\_ON

        Deprecated.

        A constant corresponding to the "New comment on a post or message that you have commented on" notification type. This is used to send a notification when someone other than the recipient writes a comment on a message that the recipient had previously also commented on or starred.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_COMMENT_ON_MESSAGE_COMMENTED_ON)

    -   ### TEMPO\_POST\_ATTRIBUTED\_TO\_YOU

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_POST\_ATTRIBUTED\_TO\_YOU

        Deprecated.

        A constant corresponding to the "New event attributed to you" notification type. This is used to send a notification when the recipient is listed as the actor for a Tempo event.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_POST_ATTRIBUTED_TO_YOU)

    -   ### TEMPO\_COMMENT\_ON\_POST

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_COMMENT\_ON\_POST

        Deprecated.

        A constant corresponding to the "New comment on an event attributed to you" notification type. This is used to send a notification when the recipient is listed as the actor for a Tempo event and another user posts a comment to the feed entry.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_COMMENT_ON_POST)

    -   ### TEMPO\_HAZARD\_ON\_POST

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_HAZARD\_ON\_POST

        Deprecated.

        A constant corresponding to the "New hazard on an event attributed to you" notification type. This is used to send a notification when the recipient is listed as the actor for a Tempo event and a hazard is posted to the feed entry.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_HAZARD_ON_POST)

    -   ### TEMPO\_COMMENT\_ON\_POST\_COMMENTED\_ON

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_COMMENT\_ON\_POST\_COMMENTED\_ON

        Deprecated.

        A constant corresponding to the "New comment on an event that you have commented on" notification type. This is used to send a notification when someone other than the recipient writes a comment on a feed entry that the recipient had previously also commented on or starred.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_COMMENT_ON_POST_COMMENTED_ON)

    -   ### TEMPO\_HAZARD\_ON\_POST\_COMMENTED\_ON

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_HAZARD\_ON\_POST\_COMMENTED\_ON

        Deprecated.

        A constant corresponding to the "New hazard on an event that you have commented on" notification type. This is used to send a notification when a hazard is posted to a feed entry that the recipient has commented on or starred.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_HAZARD_ON_POST_COMMENTED_ON)

    -   ### TEMPO\_COMMENT\_ON\_SYSTEM\_POST\_COMMENTED\_ON

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_COMMENT\_ON\_SYSTEM\_POST\_COMMENTED\_ON

        Deprecated.

        A constant corresponding to the "New comment on a system event that you have commented on" notification type. This is used to send a notification when someone other than the recipient writes a comment on a system event feed entry that the recipient had previously also commented on or starred.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_COMMENT_ON_SYSTEM_POST_COMMENTED_ON)

    -   ### TEMPO\_HAZARD\_ON\_SYSTEM\_POST\_COMMENTED\_ON

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_HAZARD\_ON\_SYSTEM\_POST\_COMMENTED\_ON

        Deprecated.

        A constant corresponding to the "New hazard on a system event that you have commented on" notification type. This is used to send a notification when a hazard is posted to a system event feed entry that the recipient has commented on or starred.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_HAZARD_ON_SYSTEM_POST_COMMENTED_ON)

    -   ### TEMPO\_RECEIVED\_KUDOS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_RECEIVED\_KUDOS

        Deprecated.

        A constant corresponding to the "New kudos given to you" notification type. This is used to send a notification when the recipient gets a kudos

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_RECEIVED_KUDOS)

    -   ### TEMPO\_COMMENT\_ON\_GIVEN\_KUDOS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_COMMENT\_ON\_GIVEN\_KUDOS

        Deprecated.

        A constant corresponding to the "New comment on a kudos that you gave" notification type. This is used to send a notification when someone other than the author writes a comment on a kudos.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_COMMENT_ON_GIVEN_KUDOS)

    -   ### TEMPO\_COMMENT\_ON\_RECEIVED\_KUDOS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_COMMENT\_ON\_RECEIVED\_KUDOS

        Deprecated.

        A constant corresponding to the "New comment on a kudos that you received" notification type. This is used to send a notification when someone other than the recipient writes a comment on a kudos.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_COMMENT_ON_RECEIVED_KUDOS)

    -   ### TEMPO\_COMMENT\_ON\_KUDOS\_COMMENTED\_ON

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_COMMENT\_ON\_KUDOS\_COMMENTED\_ON

        Deprecated.

        A constant corresponding to the "New comment on a kudos that you have commented on or starred" notification type. This is used to send a notification when someone other than the author or recipient writes a comment on a kudos that the recipient commented on or starred.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_COMMENT_ON_KUDOS_COMMENTED_ON)

    -   ### TEMPO\_PARTICIPANT\_ADDED

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_PARTICIPANT\_ADDED

        Deprecated.

        You have been added as a participant

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_PARTICIPANT_ADDED)

    -   ### TEMPO\_GROUP\_PARTICIPANT\_ADDED

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_GROUP\_PARTICIPANT\_ADDED

        Deprecated.

        Group has been added as a participant

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_GROUP_PARTICIPANT_ADDED)

    -   ### TEMPO\_PARTICIPANT\_ADDED\_TO\_YOUR\_ENTRY

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TEMPO\_PARTICIPANT\_ADDED\_TO\_YOUR\_ENTRY

        Deprecated.

        Participants added to your feed entry

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TEMPO_PARTICIPANT_ADDED_TO_YOUR_ENTRY)

    -   ### TASKS\_COMMENT\_ON\_SOCIAL\_TASK\_SENT\_TO\_YOU

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TASKS\_COMMENT\_ON\_SOCIAL\_TASK\_SENT\_TO\_YOU

        Deprecated.

        A constant corresponding to the "New comment on a social task that was sent to you" notification type. This is used to send a notification when there is a new comment on a social task.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TASKS_COMMENT_ON_SOCIAL_TASK_SENT_TO_YOU)

    -   ### TASKS\_COMMENT\_ON\_SOCIAL\_TASK\_SENT\_BY\_YOU

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TASKS\_COMMENT\_ON\_SOCIAL\_TASK\_SENT\_BY\_YOU

        Deprecated.

        A constant corresponding to the "New comment on a social task that was sent by you" notification type. This is used to send a notification when there is a new comment on a social task.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TASKS_COMMENT_ON_SOCIAL_TASK_SENT_BY_YOU)

    -   ### TASKS\_SOCIAL\_TASK\_SENT\_TO\_YOU\_CLOSED

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TASKS\_SOCIAL\_TASK\_SENT\_TO\_YOU\_CLOSED

        Deprecated.

        A constant corresponding to the "A social task that was sent to you was closed" notification type. This is used to send a notification when a social task is closed.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TASKS_SOCIAL_TASK_SENT_TO_YOU_CLOSED)

    -   ### TASKS\_SOCIAL\_TASK\_SENT\_BY\_YOU\_CLOSED

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TASKS\_SOCIAL\_TASK\_SENT\_BY\_YOU\_CLOSED

        Deprecated.

        A constant corresponding to the "A social task that was sent by you was closed" notification type. This is used to send a notification when a social task is closed.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.TASKS_SOCIAL_TASK_SENT_BY_YOU_CLOSED)

    -   ### getNotifications$UPDATES

        static final boolean getNotifications$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.getNotifications$UPDATES)

    -   ### getNotificationsByApplicationAndType$UPDATES

        static final boolean getNotificationsByApplicationAndType$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.getNotificationsByApplicationAndType$UPDATES)

    -   ### getNotificationsByApplication$UPDATES

        static final boolean getNotificationsByApplication$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.getNotificationsByApplication$UPDATES)

    -   ### deleteNotification$UPDATES

        static final boolean deleteNotification$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.deleteNotification$UPDATES)

    -   ### deleteNotifications$UPDATES

        static final boolean deleteNotifications$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.deleteNotifications$UPDATES)

    -   ### deleteNotificationsBeforeTimestamp$UPDATES

        static final boolean deleteNotificationsBeforeTimestamp$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.deleteNotificationsBeforeTimestamp$UPDATES)

    -   ### getUnreadNotificationsCount$UPDATES

        static final boolean getUnreadNotificationsCount$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.getUnreadNotificationsCount$UPDATES)

    -   ### getNotificationsSummary$UPDATES

        static final boolean getNotificationsSummary$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.getNotificationsSummary$UPDATES)

    -   ### deleteExpiredNotifications$UPDATES

        static final boolean deleteExpiredNotifications$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.deleteExpiredNotifications$UPDATES)

    -   ### markNotificationAsRead$UPDATES

        static final boolean markNotificationAsRead$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.markNotificationAsRead$UPDATES)

    -   ### markNotificationsAsRead$UPDATES

        static final boolean markNotificationsAsRead$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.markNotificationsAsRead$UPDATES)

    -   ### notify$UPDATES

        static final boolean notify$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.notify$UPDATES)

    -   ### notifyWithExcludedUsers$UPDATES

        static final boolean notifyWithExcludedUsers$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.notifyWithExcludedUsers$UPDATES)

    -   ### getNotificationsPaging$UPDATES

        static final boolean getNotificationsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.getNotificationsPaging$UPDATES)

    -   ### getNotification$UPDATES

        static final boolean getNotification$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.getNotification$UPDATES)

    -   ### updateUsernames$UPDATES

        static final boolean updateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.updateUsernames$UPDATES)

    -   ### commitUpdateUsernames$UPDATES

        static final boolean commitUpdateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.commitUpdateUsernames$UPDATES)

    -   ### rollbackUpdateUsernames$UPDATES

        static final boolean rollbackUpdateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.rollbackUpdateUsernames$UPDATES)

    -   ### reloadProperties$UPDATES

        static final boolean reloadProperties$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.reloadProperties$UPDATES)

    -   ### validate$UPDATES

        static final boolean validate$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.validate$UPDATES)

    -   ### validateDatabase$UPDATES

        static final boolean validateDatabase$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalNotificationService.validateDatabase$UPDATES)

-   ## Method Details

    -   ### getNotifications

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Notification](Notification.html "class in com.appiancorp.suiteapi.portal")\[\] getNotifications([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortType\_, int startIndex\_, int count\_)

        Deprecated.

        use getNotificationsPaging instead

        Gets a list of notifications that the current user has received in the portal medium. To get the complete list use getNotifications(...,...,0,-1);

        Parameters:

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        `sortType_` - notification type used for sorting (see SORT\_NOTIFICATION\_PROPERTY constants in this class)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `count_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        Returns:

        An array of `Notification` objects

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getNotificationsByApplicationAndType

        [Notification](Notification.html "class in com.appiancorp.suiteapi.portal")\[\] getNotificationsByApplicationAndType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") appName\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notificationType\_)

        Deprecated.

        Gets the list of notifications matching the specified Application and Notification Type

        Parameters:

        `appName_` - application name used for matching. see `XXX_NOTIFICATION_APPLICATION` constants in this class for options.

        `notificationType_` - notification type used for matching. see `XXX_NOTIFICATION_TYPE` in this class for options.

        Returns:

        an array of `Notification` objects matching the specified types and application

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getNotificationsByApplication

        [Notification](Notification.html "class in com.appiancorp.suiteapi.portal")\[\] getNotificationsByApplication([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") appName\_)

        Deprecated.

        Gets a list of notifications matching Application name

        Parameters:

        `appName_` - application name used for matching see `XXX_NOTIFICATION_APPLICATION` constants in this class for options.

        Returns:

        an array of `Notification` objects matching the specified application

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteNotification

        void deleteNotification([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") notificationId\_) throws [InvalidNotificationException](../common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Delete a notification

        Parameters:

        `notificationId_` - the id of the notification to delete

        Throws:

        `[InvalidNotificationException](../common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the notification id does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteNotifications

        void deleteNotifications([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] notificationIds\_) throws [InvalidNotificationException](../common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Delete a list of notifications

        Parameters:

        `notificationIds_` - the ids of the notifications to delete

        Throws:

        `[InvalidNotificationException](../common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the notification IDs do not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteNotificationsBeforeTimestamp

        void deleteNotificationsBeforeTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)

        Deprecated.

        Deletes all notifications for the current user before the given timestamp.

        Parameters:

        `timestamp` - The time up to when all the notifications will be deleted.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getUnreadNotificationsCount

        int getUnreadNotificationsCount()

        Deprecated.

        Gets the the number of notifications for the user that have not been marked as read.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`markNotificationAsRead(java.lang.Long)`](#markNotificationAsRead\(java.lang.Long\))

    -   ### getNotificationsSummary

        [NotificationsSummary](NotificationsSummary.html "class in com.appiancorp.suiteapi.portal") getNotificationsSummary()

        Deprecated.

        Gets a [`NotificationsSummary`](NotificationsSummary.html "class in com.appiancorp.suiteapi.portal") which lists the number of unread and expired notifications for the current user

        Returns:

        the [`NotificationsSummary`](NotificationsSummary.html "class in com.appiancorp.suiteapi.portal") listing the number of unread and expired notifications for the current user

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`markNotificationAsRead(java.lang.Long)`](#markNotificationAsRead\(java.lang.Long\))

    -   ### deleteExpiredNotifications

        void deleteExpiredNotifications()

        Deprecated.

        Deletes all expired notifications for the current user

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### markNotificationAsRead

        void markNotificationAsRead([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") notificationId\_) throws [InvalidNotificationException](../common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Marks a notification as read. This affects the value returned by [`getUnreadNotificationsCount()`](#getUnreadNotificationsCount\(\))

        Parameters:

        `notificationId_` - the ids of the notifications to mark as read

        Throws:

        `[InvalidNotificationException](../common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the notification id does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`getUnreadNotificationsCount()`](#getUnreadNotificationsCount\(\))

    -   ### markNotificationsAsRead

        void markNotificationsAsRead([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] notificationIds\_) throws [InvalidNotificationException](../common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Marks a list of notifications as read. This affects the value returned by [`getUnreadNotificationsCount()`](#getUnreadNotificationsCount\(\))

        Parameters:

        `notificationIds_` - the ids of the notifications to mark as read

        Throws:

        `[InvalidNotificationException](../common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the notification IDs do not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`getUnreadNotificationsCount()`](#getUnreadNotificationsCount\(\))

    -   ### notify

        void notify([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") appName\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ntfType\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") attributes\_) throws [InvalidNotificationTypeException](../common/exceptions/InvalidNotificationTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Deprecated.

        Sends a notification. Below all the custom attributes for each notification type are listed by application.

         Discussion Topics Application -
         1. [`FORUM_THREAD_SUBSCRIBE_NOTIFICATION_TYPE`](#FORUM_THREAD_SUBSCRIBE_NOTIFICATION_TYPE)
         has attributes: "url", "message subject", "thread message count",
         "last Modified time of thread" and "thread creator"
         2. [`FORUM_THREAD_INVITE_NOTIFICATION_TYPE`](#FORUM_THREAD_INVITE_NOTIFICATION_TYPE)
         has attributes: "sender", "threadId", "threadName" and "message"
         3. [`FORUM_THREAD_ACCEPT_INVITE_NOTIFICATION_TYPE`](#FORUM_THREAD_ACCEPT_INVITE_NOTIFICATION_TYPE)
         has attributes: "sender", "threadId", "threadName" and "message"
         4. [`FORUM_THREAD_DECLINE_INVITE_NOTIFICATION_TYPE`](#FORUM_THREAD_DECLINE_INVITE_NOTIFICATION_TYPE)
         has attributes: "sender", "threadId", "threadName" and "message"
         5. [`FORUM_THREAD_SENT_LINK_NOTIFICATION_TYPE`](#FORUM_THREAD_SENT_LINK_NOTIFICATION_TYPE)
         has attributes: "sender", "threadId", "threadName", and "message"

         Personalization Application-
         1. [`GROUP_MEMBERSHIP_REQUESTED_NOTIFICATION_TYPE`](#GROUP_MEMBERSHIP_REQUESTED_NOTIFICATION_TYPE)
         has attributes: "senderName", "groupName", "groupId", "status"
         and "message".
         2. [`GROUP_MEMBERSHIP_REMOVED_NOTIFICATION_TYPE`](#GROUP_MEMBERSHIP_REMOVED_NOTIFICATION_TYPE)
         has attributes: "senderName", "senderId", "groupName", "groupId", "status",
         and "message".
         3. [`GROUP_INVITATION_NOTIFICATION_TYPE`](#GROUP_INVITATION_NOTIFICATION_TYPE)
         has attributes: "senderName", "groupName", "groupId", "status", and
         "message".
         4. [`GROUP_MEMBERSHIP_APPROVED_NOTIFICATION_TYPE`](#GROUP_MEMBERSHIP_APPROVED_NOTIFICATION_TYPE)
         has attributes: "senderName", "groupName", "groupId", "status", and
         "message".
         5. [`GROUP_MEMBERSHIP_DENIED_NOTIFICATION_TYPE`](#GROUP_MEMBERSHIP_DENIED_NOTIFICATION_TYPE)
         has attributes: "senderName", "groupName", "groupId", "status", and
         "message".
         6. [`GROUP_MEMBERSHIP_DENIED_NOTIFICATION_TYPE`](#GROUP_MEMBERSHIP_DENIED_NOTIFICATION_TYPE)
         has attributes: "senderName", "groupName", "groupId", "status", and
         "message".
         7. [`GROUP_INVITATION_DECLINED_NOTIFICATION_TYPE`](#GROUP_INVITATION_DECLINED_NOTIFICATION_TYPE)
         has attributes: "senderName", "groupName", "groupId", "status", and
         "message".

         Portal Application -
         1. [`PORTAL_SEND_LINK_NOTIFICATION_TYPE`](#PORTAL_SEND_LINK_NOTIFICATION_TYPE) has
         attributes: "sender", "url", "message" and "page name"
         2. [`PORTAL_SEND_FEEDBACK_NOTIFICATION_TYPE`](#PORTAL_SEND_FEEDBACK_NOTIFICATION_TYPE)
         has attributes: "sender", "url", "message" and "page name"
         3. [`PORTAL_PAGE_APPROVAL_NOTIFICATION_TYPE`](#PORTAL_PAGE_APPROVAL_NOTIFICATION_TYPE)
         has attributes: "sender", "url", "message", "page name" and "subType"
         4. [`PORTAL_SYSTEM_NOTIFICATION_TYPE`](#PORTAL_SYSTEM_NOTIFICATION_TYPE) has
         attributes: "sender" and "message"
         5. [`PORTAL_PAGE_APPROVAL_REQUEST_NOTIFICATION_TYPE`](#PORTAL_PAGE_APPROVAL_REQUEST_NOTIFICATION_TYPE)
         has attributes: "sender" and "page name" and "page id"
         6. `PortalNotifcationService#PORTAL_PAGE_ACCESS_REMOVAL_NOTIFICATION_TYPE`
         has attributes: "sender" and "page name"

         Collaboration Application -
         1. [`COLLABORATION_SEND_LINK_NOTIFICATION_TYPE`](#COLLABORATION_SEND_LINK_NOTIFICATION_TYPE)
         has attributes: "sender", "document id", "document extension",
         "knowledgecenter name" and "message"
         2. [`COLLABORATION_ACCESS_APPROVED_NOTIFICATION_TYPE`](#COLLABORATION_ACCESS_APPROVED_NOTIFICATION_TYPE)
         has attributes: "sender", "community name", "knowledgecenter name",
         "knowledgecenter id" and "time sent"
         3. [`COLLABORATION_ACCESS_DENIED_NOTIFICATION_TYPE`](#COLLABORATION_ACCESS_DENIED_NOTIFICATION_TYPE)
         has attributes: "sender", "community name", "knowledgecenter name",
         "knowledgecenter id" and "time sent"
         4. [`COLLABORATION_ACCESS_REQUEST_NOTIFICATION_TYPE`](#COLLABORATION_ACCESS_REQUEST_NOTIFICATION_TYPE)
         has attributes: "sender", "community name", "knowledgecenter name",
         "type", "knowledgecenter id", and "number"
         5. [`COLLABORATION_APPROVED_CHANGES_NOTIFICATION_TYPE`](#COLLABORATION_APPROVED_CHANGES_NOTIFICATION_TYPE)
         has attributes: "sender", "community name", "knowledgecenter name",
         "document name" and "knowledgecenter id"
         6. [`COLLABORATION_DENIED_CHANGES_NOTIFICATION_TYPE`](#COLLABORATION_DENIED_CHANGES_NOTIFICATION_TYPE)
         has attributes: "sender", "community name", "knowledgecenter name",
         "document name" and "knowledgecenter id"
         7. [`COLLABORATION_REQUEST_CHANGES_NOTIFICATION_TYPE`](#COLLABORATION_REQUEST_CHANGES_NOTIFICATION_TYPE)
         has attributes: "sender", "community name", "knowledgecenter name", "type",
         "id", "name" and "number"
         8. [`COLLABORATION_EXPIRING_FILES_NOTIFICATION_TYPE`](#COLLABORATION_EXPIRING_FILES_NOTIFICATION_TYPE)
         has attributes: "community name", "knowledgecenter name", "type", "id" and
         "number"
         9. [`COLLABORATION_INVITATION_NOTIFICATION_TYPE`](#COLLABORATION_INVITATION_NOTIFICATION_TYPE)
         has attributes: "sender", "knowledgecenter name", "knowledgecenter id", and
         "message"
         10. [`COLLABORATION_INVITATION_ACCEPTED_NOTIFICATION_TYPE`](#COLLABORATION_INVITATION_ACCEPTED_NOTIFICATION_TYPE)
         has attributes: "sender", "knowledgecenter name", "knowledgecenter id", and
         "message"
         11. [`COLLABORATION_INVITATION_DECLINED_NOTIFICATION_TYPE`](#COLLABORATION_INVITATION_DECLINED_NOTIFICATION_TYPE)
         has attributes: "sender", "knowledgecenter name", "knowledgecenter id", and
         "message"
         12. [`COLLABORATION_EXPORT_COMPLETED_NOTIFICATION_TYPE`](#COLLABORATION_EXPORT_COMPLETED_NOTIFICATION_TYPE)
         has attributes: "docId", "docName", "folderId", "folderName", "exportedCount",
         "expectedCount" and "failedCount
         13. [`COLLABORATION_IMPORT_COMPLETED_NOTIFICATION_TYPE`](#COLLABORATION_IMPORT_COMPLETED_NOTIFICATION_TYPE)
         has attributes: "docName", "importedCount", "expectedCount" and "failedCount"

         Process Application -
         1. [`PROCESS_TASK_ESCALATED_NOTIFICATION_TYPE`](#PROCESS_TASK_ESCALATED_NOTIFICATION_TYPE) has
         attributes: "task name", "task id", "process name", "process id", "server
         id", and "message"
         2. [`PROCESS_SUB_LINK_REPUBLISHED_NOTIFICATION_TYPE`](#PROCESS_SUB_LINK_REPUBLISHED_NOTIFICATION_TYPE) has
         attributes: "processModelName", "processModelId", "user", "affectedProcessModelName",
         and "affectedProcessModelId"
         3. [`PROCESS_PARENT_CAUSES_PUBLISH_NOTIFICATION_TYPE`](#PROCESS_PARENT_CAUSES_PUBLISH_NOTIFICATION_TYPE) has
         attributes: "processModelName", "processModelId", "user", "affectedProcessModelName",
         "affectedProcessModelId"
         4. [`PROCESS_SUB_LINK_DISABLED_DELETED_NOTIFICATION_TYPE`](#PROCESS_SUB_LINK_DISABLED_DELETED_NOTIFICATION_TYPE) has
         attributes: "action", "processModelName", "processModelId", "user", "affectedProcessModelName",
         "affectedProcessModelId"
         5. [`PROCESS_NEW_TASK_ME_NOTIFICATION_TYPE`](#PROCESS_NEW_TASK_ME_NOTIFICATION_TYPE) has
         attributes: "taskName", "taskId", "processName", "processId", "priority", "dateAssigned",
         "status"
         6. [`PROCESS_NEW_TASK_OTHERS_NOTIFICATION_TYPE`](#PROCESS_NEW_TASK_OTHERS_NOTIFICATION_TYPE) has
         attributes: "taskName", "taskId", "processName", "processId", "priority", "dateAssigned",
         "status"
         7. [`PROCESS_EXCEPTION_NOTIFICATION_TYPE`](#PROCESS_EXCEPTION_NOTIFICATION_TYPE) has
         attributes: "serverId", "processName", "processId", "priority", "dateOccurred",
         "problemDescription", "recommendedAction", "message", "subject"
         8. [`PROCESS_TASK_EXCEPTION_NOTIFICATION_TYPE`](#PROCESS_TASK_EXCEPTION_NOTIFICATION_TYPE) has
         attributes: "serverId", "taskName", "taskId", "processName", "processId", "priority",
         "dateOccurred", "problemDescription", "recommendedAction", "message"
         9. [`PROCESS_SUB_LINK_CANNOT_DELETE_CANCEL_NOTIFICATION_TYPE`](#PROCESS_SUB_LINK_CANNOT_DELETE_CANCEL_NOTIFICATION_TYPE) has
         attributes: "action", "processName", "processId", "user", "subProcessNames",
         "subProcessIds"

        Parameters:

        `users_` - the users to send the notification to

        `groups_` - the groups to send the notification to

        `appName_` - application sending the notification. see `XXX_NOTIFICATION_APPLICATION` constants in this class for options.

        `ntfType_` - notification type to send. see `XXX_NOTIFICATION_TYPE` in this class for options.

        `attributes_` - The map keys correspond to attributes (such as sender) which will be used to render the notification. The values of the keys are the values to be displayed in the notification (eg. the sender's username). See above for necessary items.

        Throws:

        `[InvalidNotificationTypeException](../common/exceptions/InvalidNotificationTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if ntfType\_ is invalid

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if appName\_ is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyWithExcludedUsers

        void notifyWithExcludedUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] excludedUsers\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") appName\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ntfType\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") attributes\_) throws [InvalidNotificationTypeException](../common/exceptions/InvalidNotificationTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Deprecated.

        Sends a notification, allowing certain users to be excluded from receiving the notification. This makes it possible to send a notification to all users in a group except for certain users.

        Parameters:

        `users_` - the users to send the notification to

        `groups_` - the groups to send the notification to

        `excludedUsers_` - the users to which the notification should not be sent

        `appName_` - application sending the notification. see `XXX_NOTIFICATION_APPLICATION` constants in this class for options.

        `ntfType_` - notification type to send. see `XXX_NOTIFICATION_TYPE` in this class for options.

        `attributes_` - The map keys correspond to attributes (such as sender) which will be used to render the notification. The values of the keys are the values to be displayed in the notification (eg. the sender's username). See [`notify(String[] users_, Long[] groups_, String appName_, String ntfType_, Map attributes_)`](#notify\(java.lang.String%5B%5D,java.lang.Long%5B%5D,java.lang.String,java.lang.String,java.util.Map\)) for necessary items.

        Throws:

        `[InvalidNotificationTypeException](../common/exceptions/InvalidNotificationTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if ntfType\_ is invalid

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if appName\_ is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getNotificationsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getNotificationsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets a the notifications that the current user has received in the portal medium.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal"). Those useable are: SORT\_BY\_READ, SORT\_BY\_APPLICATION, SORT\_BY\_TIMESTAMP

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing the list of `Notification` objectss that the current user has received in the portal medium.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getNotification

        [Notification](Notification.html "class in com.appiancorp.suiteapi.portal") getNotification([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") notifId\_)

        Deprecated.

        Gets a notification

        Parameters:

        `notifId_` - the id of the notification to retrieve

        Returns:

        the `Notification` with the id specificed returns null if the notification does not exist

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateUsernames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] oldUsernames\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] newUsernames\_, long maxExpirationTimeInSeconds\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Updates a list of old usernames to new usernames.

        If successful, this method must be followed by [`commitUpdateUsernames()`](#commitUpdateUsernames\(\)). After `commitUpdateUsernames` has been called, the old usernames will still be active, but will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `updateUsernames` is successful but `commitUpdateUsernames` is not called, the new usernames will not become active.

        If unsuccessful, this method should be followed by [`rollbackUpdateUsernames()`](#rollbackUpdateUsernames\(\)). This will simply free memory dedicated to mapping old usernames to new usernames.

        Parameters:

        `oldUsernames_` - the usernames to be updated

        `newUsernames_` - the usernames to which the old usernames will be updated

        `maxExpirationTimeInSeconds_` - the interval, in seconds, after `commitUpdateUsernames` has been called, after which the old usernames will expire. If this parameter is zero or a negative value the old usernames will expire instantly. After expiration, the old usernames will no longer be valid.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the length of `oldUsernames_` is not the same as the length of `newUsernames_`.

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any `oldUsernames_` or `newUsernames_` contain any duplicates.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### commitUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void commitUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Commits an update of usernames.

        This method should be preceded by a call to [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)). After the commit, the old usernames will be temporarily active, and will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `commitUpdateUsernames` is not called, the new usernames will not become active.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rollbackUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void rollbackUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Rolls back an update of usernames.

        This method should be called if [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)) is unsuccessful. The rollback will simply free memory dedicated to mapping old usernames to new usernames.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### reloadProperties

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void reloadProperties()

        Deprecated.

        reloading properties is now automatic, so this call is now unnecessary and does nothing.

        Reloads all database-level properties files (\*.xml, \*.properties) without interrupting API services

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validate

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") validate()

        Deprecated.

        Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

        Returns:

        the validation results

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validateDatabase

        [DatabaseStatus](DatabaseStatus.html "class in com.appiancorp.suiteapi.portal") validateDatabase(int thoroughness\_)

        Deprecated.

        Performs validation on the database(s) associated with this service.

        Parameters:

        `thoroughness_` - indicates the level of thoroughness of the query. Values are [`DatabaseStatus.QUICK`](DatabaseStatus.html#QUICK) and [`DatabaseStatus.SLOW`](DatabaseStatus.html#SLOW)

        Returns:

        a `DatabaseStatus` object encapsulating the results of the validation query.