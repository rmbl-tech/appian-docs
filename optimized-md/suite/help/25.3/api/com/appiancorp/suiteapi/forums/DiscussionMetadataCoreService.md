---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html
original_path: api/com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html
version: "25.3"
title: "Interface DiscussionMetadataCoreService"
page_id: "api/com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Interface DiscussionMetadataCoreService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface DiscussionMetadataCoreService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

Defines the core methods for managing discussion forums. Forums contain topics (aka threads) which contain messages. Messages can have child messages, which are the replies to the message. A forum can be related to a `LocalObject`, such as a Document or Knowledge Center. Forums can be public or private. Anyone can view and post to a public forum, whereas only selected users can view and post to a private forum (as specified in the actors role map).

A user can subscribe to a topic/thread, in which case he/she will receive a notification whenever a new message is posted to the thread. If the user subscribes to a forum, he/she will receive a notification whenever a new message is posted to any of the topics in the forum.

Individual topics can be sponsored, which provides a way of flagging more important topics. Topics can then be retrieved or sorted based on the sponsored flag. Sponsoring is not connected to the user who marks the topic as sponsored (the topic is simply marked as "sponsored").

Individual messages can be rated by users.

Security for discussion forums is managed through the [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") class.

NOTE: This service only deals with discussion forums metadata, it does not write any content to disk. The [`DiscussionBodyService`](DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums") should be used to save content.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`DiscussionBodyService`](DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")
-   [`Forum`](Forum.html "class in com.appiancorp.suiteapi.forums")
-   [`ForumSummary`](ForumSummary.html "class in com.appiancorp.suiteapi.forums")
-   [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")
-   [`GlobalId`](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")
-   [`Attachment`](Attachment.html "class in com.appiancorp.suiteapi.forums")
-   [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[acceptThreadInvitation$UPDATES](#acceptThreadInvitation$UPDATES)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_FORUM_CREATE_THREAD](#ACTION_FORUM_CREATE_THREAD)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can create threads in the forum

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_FORUM_DELETE](#ACTION_FORUM_DELETE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can delete the forum

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_FORUM_SPONSOR_THREAD](#ACTION_FORUM_SPONSOR_THREAD)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can sponsor a thread in the forum

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_FORUM_SUBSCRIBE](#ACTION_FORUM_SUBSCRIBE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can subscribe to the forum

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_FORUM_UNSPONSOR_THREAD](#ACTION_FORUM_UNSPONSOR_THREAD)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can unsponsor a thread in the forum

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_FORUM_UNSUBSCRIBE](#ACTION_FORUM_UNSUBSCRIBE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can unsubscribe from the forum

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_FORUM_UPDATE](#ACTION_FORUM_UPDATE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can update the forum

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_FORUM_VIEW](#ACTION_FORUM_VIEW)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can view the forum

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_MESSAGE_ADD_RATING](#ACTION_MESSAGE_ADD_RATING)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can add a rating to the message

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_MESSAGE_DELETE](#ACTION_MESSAGE_DELETE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can delete the message

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_MESSAGE_DELETE_WITH_DESCENDANTS](#ACTION_MESSAGE_DELETE_WITH_DESCENDANTS)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can delete the message and its descendents

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_MESSAGE_SET_RATING](#ACTION_MESSAGE_SET_RATING)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can set the rating of the message

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_MESSAGE_UPDATE](#ACTION_MESSAGE_UPDATE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can update the message

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_MESSAGE_VIEW](#ACTION_MESSAGE_VIEW)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can view the message

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_MESSAGE_VIEW_ANONYMOUS](#ACTION_MESSAGE_VIEW_ANONYMOUS)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can anonymously view the message

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_ADD_RESOURCE](#ACTION_THREAD_ADD_RESOURCE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can add a resource to the thread

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_CREATE_MESSAGE](#ACTION_THREAD_CREATE_MESSAGE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can create a message in the thread

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_DELETE](#ACTION_THREAD_DELETE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can delete the thread

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_INVITE_OTHER_USERS](#ACTION_THREAD_INVITE_OTHER_USERS)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can invite other users to the thread

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_MOVE](#ACTION_THREAD_MOVE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can move the thread

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_REMOVE_RESOURCE](#ACTION_THREAD_REMOVE_RESOURCE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can remove a resource from the thread

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_SPONSOR](#ACTION_THREAD_SPONSOR)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can sponsor the thread

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_SUBSCRIBE](#ACTION_THREAD_SUBSCRIBE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can subscribe to the thread

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_UNSPONSOR](#ACTION_THREAD_UNSPONSOR)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can unsponsor the thread

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_UNSUBSCRIBE](#ACTION_THREAD_UNSUBSCRIBE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can unsubscribe from the thread

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_UPDATE](#ACTION_THREAD_UPDATE)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can update the thread

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_THREAD_VIEW](#ACTION_THREAD_VIEW)`

    Deprecated.

    The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can view the thread

    `static final boolean`

    `[activateUserSession$UPDATES](#activateUserSession$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addActorsToRolesInForums$UPDATES](#addActorsToRolesInForums$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addRating$UPDATES](#addRating$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addThreadResource$UPDATES](#addThreadResource$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addThreadResources$UPDATES](#addThreadResources$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[allowedAnonymousPosting$UPDATES](#allowedAnonymousPosting$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[changePartitionPaths$UPDATES](#changePartitionPaths$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[commitUpdateUsernames$UPDATES](#commitUpdateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createForum$UPDATES](#createForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createForums$UPDATES](#createForums$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createMessage$UPDATES](#createMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createMessages$UPDATES](#createMessages$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteForum$UPDATES](#deleteForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteMessage$UPDATES](#deleteMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteMessageAndDescendants$UPDATES](#deleteMessageAndDescendants$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteThread$UPDATES](#deleteThread$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[denyThreadInvitation$UPDATES](#denyThreadInvitation$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[disableForumAnonymousPosting$UPDATES](#disableForumAnonymousPosting$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[enableForumAnonymousPosting$UPDATES](#enableForumAnonymousPosting$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findForumsPaging$UPDATES](#findForumsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAllDeletedMessagesPaging$UPDATES](#getAllDeletedMessagesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAllForumsPaging$UPDATES](#getAllForumsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAllForumSummariesPaging$UPDATES](#getAllForumSummariesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getApplicationPermissions$UPDATES](#getApplicationPermissions$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getChildrenForMessagePaging$UPDATES](#getChildrenForMessagePaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getForum$UPDATES](#getForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getForumIdsByRelated$UPDATES](#getForumIdsByRelated$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getForumIdsByRelatedPaging$UPDATES](#getForumIdsByRelatedPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getForums$UPDATES](#getForums$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getForumsList$UPDATES](#getForumsList$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getForumsPaging$UPDATES](#getForumsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getForumSummariesPaging$UPDATES](#getForumSummariesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMessage$UPDATES](#getMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMessageCountByUsers$UPDATES](#getMessageCountByUsers$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMessageCountByUsersForForum$UPDATES](#getMessageCountByUsersForForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMessages$UPDATES](#getMessages$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMessagesByUserPaging$UPDATES](#getMessagesByUserPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMessagesForThread$UPDATES](#getMessagesForThread$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMessagesForThreadPaging$UPDATES](#getMessagesForThreadPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMessagesList$UPDATES](#getMessagesList$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMessagesPaging$UPDATES](#getMessagesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForMessageIdsForSessionUser$UPDATES](#getPermissionsForMessageIdsForSessionUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForMessageIdsForUser$UPDATES](#getPermissionsForMessageIdsForUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRoleMapForForum$UPDATES](#getRoleMapForForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRoleMapForThread$UPDATES](#getRoleMapForThread$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSponsoredThreadSummariesPaging$UPDATES](#getSponsoredThreadSummariesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSubscribedForumsPaging$UPDATES](#getSubscribedForumsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSubscribedThreadsPaging$UPDATES](#getSubscribedThreadsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSubscribersForForum$UPDATES](#getSubscribersForForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSubscribersForThread$UPDATES](#getSubscribersForThread$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThread$UPDATES](#getThread$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadedMessagesPaging$UPDATES](#getThreadedMessagesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreads$UPDATES](#getThreads$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadsForForum$UPDATES](#getThreadsForForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadsForForumPaging$UPDATES](#getThreadsForForumPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadsList$UPDATES](#getThreadsList$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadsPaging$UPDATES](#getThreadsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadSummariesForForumPaging$UPDATES](#getThreadSummariesForForumPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadSummariesPaging$UPDATES](#getThreadSummariesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getTopUsersForForum$UPDATES](#getTopUsersForForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getTopUsersForSite$UPDATES](#getTopUsersForSite$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getUsersToNotify$UPDATES](#getUsersToNotify$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getUsersToNotifyForForum$UPDATES](#getUsersToNotifyForForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getValidForumSummariesPaging$UPDATES](#getValidForumSummariesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[importMessages$UPDATES](#importMessages$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[inviteUsersToThread$UPDATES](#inviteUsersToThread$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[isForumPublic$UPDATES](#isForumPublic$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[isInvitedToThreads$UPDATES](#isInvitedToThreads$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[isSubscribedToForum$UPDATES](#isSubscribedToForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[isSubscribedToThread$UPDATES](#isSubscribedToThread$UPDATES)`

    Deprecated.

     

    `static final int`

    `[MESSAGE_PERMISSION_CAN_VIEW](#MESSAGE_PERMISSION_CAN_VIEW)`

    Deprecated.

    Indicates that the user is allowed to view the message

    `static final int`

    `[MESSAGE_PERMISSION_CANNOT_VIEW](#MESSAGE_PERMISSION_CANNOT_VIEW)`

    Deprecated.

    Indicates that the user is not allowed to view the message

    `static final int`

    `[MESSAGE_PERMISSION_INVALID](#MESSAGE_PERMISSION_INVALID)`

    Deprecated.

    Indicates that no permissions can be obtained for the message because the specified message was null or does not exist

    `static final boolean`

    `[moveThread$UPDATES](#moveThread$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notifyUserCreation$UPDATES](#notifyUserCreation$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notifyUsersCreation$UPDATES](#notifyUsersCreation$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[reloadProperties$UPDATES](#reloadProperties$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeThreadResource$UPDATES](#removeThreadResource$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeThreadResources$UPDATES](#removeThreadResources$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rollbackUpdateUsernames$UPDATES](#rollbackUpdateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setAdministratorGroup$UPDATES](#setAdministratorGroup$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setForumPrivate$UPDATES](#setForumPrivate$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setForumPublic$UPDATES](#setForumPublic$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setRating$UPDATES](#setRating$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setRoleMapForForum$UPDATES](#setRoleMapForForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setTimeZone$UPDATES](#setTimeZone$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setTimeZoneSameAs$UPDATES](#setTimeZoneSameAs$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[sponsor$UPDATES](#sponsor$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[sponsorForMessage$UPDATES](#sponsorForMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[subscribeToForum$UPDATES](#subscribeToForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[subscribeToThread$UPDATES](#subscribeToThread$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[subscribeUsersToThread$UPDATES](#subscribeUsersToThread$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[unsponsor$UPDATES](#unsponsor$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[unsponsorForMessage$UPDATES](#unsponsorForMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[unsubscribeFromForum$UPDATES](#unsubscribeFromForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[unsubscribeFromThread$UPDATES](#unsubscribeFromThread$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateForum$UPDATES](#updateForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateForums$UPDATES](#updateForums$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateMessage$UPDATES](#updateMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateMessages$UPDATES](#updateMessages$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateUsernames$UPDATES](#updateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validate$UPDATES](#validate$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validateGroupMembership$UPDATES](#validateGroupMembership$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validateTypedValues$UPDATES](#validateTypedValues$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[acceptThreadInvitation](#acceptThreadInvitation\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Called by the invitee to accept the invitation.

    `boolean[]`

    `[activateUserSession](#activateUserSession\(java.lang.Long%5B%5D,java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] memberGroups_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] adminGroups_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId_)`

    Deprecated. 

    `void`

    `[addActorsToRolesInForums](#addActorsToRolesInForums\(java.lang.Long,java.lang.String%5B%5D,java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role_)`

    Deprecated.

    Add users/groups to a given role in a forum.

    `void`

    `[addRating](#addRating\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId_, int rating_)`

    Deprecated.

    Average a new individual rating into the message's overall average rating.

    `void`

    `[addThreadResource](#addThreadResource\(java.lang.Long,com.appiancorp.suiteapi.forums.Attachment\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums") resource_)`

    Deprecated.

    Add an attachment to a thread.

    `void`

    `[addThreadResources](#addThreadResources\(java.lang.Long,com.appiancorp.suiteapi.forums.Attachment%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums")[] resources_)`

    Deprecated.

    Add multiple attachments to a thread.

    `boolean`

    `[allowedAnonymousPosting](#allowedAnonymousPosting\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Returns whether anonymous posting is allowed for a given forum.

    `void`

    `[changePartitionPaths](#changePartitionPaths\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") originalPath, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newPath)`

    Deprecated.

    Changes where message texts are stored from one path to another.

    `void`

    `[commitUpdateUsernames](#commitUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createForum](#createForum\(com.appiancorp.suiteapi.forums.Forum\))([Forum](Forum.html "class in com.appiancorp.suiteapi.forums") f_)`

    Deprecated.

    Create a discussion forum.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[createForums](#createForums\(com.appiancorp.suiteapi.forums.Forum%5B%5D\))([Forum](Forum.html "class in com.appiancorp.suiteapi.forums")[] forums_)`

    Deprecated.

    Create multiple discussion forums.

    `[Message](Message.html "class in com.appiancorp.suiteapi.forums")`

    `[createMessage](#createMessage\(java.lang.Long,com.appiancorp.suiteapi.forums.Message\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, [Message](Message.html "class in com.appiancorp.suiteapi.forums") m_)`

    Deprecated.

    Create a message.

    `[Message](Message.html "class in com.appiancorp.suiteapi.forums")[]`

    `[createMessages](#createMessages\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.forums.Message%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] forumIds_, [Message](Message.html "class in com.appiancorp.suiteapi.forums")[] msgs_)`

    Deprecated.

    Create multiple messages, one per forum.

    `void`

    `[deleteForum](#deleteForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Delete a forum (and all of its threads).

    `void`

    `[deleteMessage](#deleteMessage\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId_)`

    Deprecated.

    Delete a given message (connects any children of the given message to the parent of the message).

    `void`

    `[deleteMessageAndDescendants](#deleteMessageAndDescendants\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId_)`

    Deprecated.

    Delete a message and all its descendants.

    `void`

    `[deleteThread](#deleteThread\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Delete a thread (and all of its messages).

    `void`

    `[denyThreadInvitation](#denyThreadInvitation\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Called by the invitee to deny the invitation.

    `void`

    `[disableForumAnonymousPosting](#disableForumAnonymousPosting\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Disallows anonymous posting for a given forum (can only be set by a forums administrator or a user having equivalent/higher privileges).

    `void`

    `[enableForumAnonymousPosting](#enableForumAnonymousPosting\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Allow anonymous posting for a given forum

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findForumsPaging](#findForumsPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") nameSearchString_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Find forums by name (gets the forums whose name matches a given query string).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllDeletedMessagesPaging](#getAllDeletedMessagesPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get all the messages that have been deleted, paging.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllForumsPaging](#getAllForumsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get all forums, paging.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllForumSummariesPaging](#getAllForumSummariesPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get the summaries of all forums, paging.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Deprecated.

    Gets the name of the application on which this service is running.

    `boolean[]`

    `[getApplicationPermissions](#getApplicationPermissions\(\))()`

    Deprecated.

    Returns boolean\[3\] of system permissions which is set in session.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getChildrenForMessagePaging](#getChildrenForMessagePaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get all the child messages (ie replies) of a given message, paging.

    `[Forum](Forum.html "class in com.appiancorp.suiteapi.forums")`

    `[getForum](#getForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Get a forum.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getForumIdsByRelated](#getForumIdsByRelated\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") related_)`

    Deprecated.

    Use [`getForumIdsByRelatedPaging(com.appiancorp.suiteapi.common.LocalObject, int, int, java.lang.Integer)`](#getForumIdsByRelatedPaging\(com.appiancorp.suiteapi.common.LocalObject,int,int,java.lang.Integer\)).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getForumIdsByRelatedPaging](#getForumIdsByRelatedPaging\(com.appiancorp.suiteapi.common.LocalObject,int,int,java.lang.Integer\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") related_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get the ids of the forums related to a given Appian Type object (an Appian Type is any type that has a corresponding TYPE\_XXX constant defined in [`ObjectTypeMapping`](../common/ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")).

    `[Forum](Forum.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getForums](#getForums\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    Use [`getForumsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getForumsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getForumsList](#getForumsList\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] forumIds_)`

    Deprecated.

    Gets the specified forums, returning the valid results even if all the results cannot be retrieved (for instance, if some of the forums corresponding to the passed ids no longer exist).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getForumsPaging](#getForumsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] forumIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets multiple forums, paging.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getForumSummariesPaging](#getForumSummariesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] forumIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get the summaries of multiple forums, paging.

    `[Message](Message.html "class in com.appiancorp.suiteapi.forums")`

    `[getMessage](#getMessage\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId_)`

    Deprecated.

    Get a message.

    `[UserMessageCount](UserMessageCount.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getMessageCountByUsers](#getMessageCountByUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernameList)`

    Deprecated.

    Returns the number of message posts grouped by a list of users.

    `[UserMessageCount](UserMessageCount.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getMessageCountByUsers](#getMessageCountByUsers\(java.lang.String%5B%5D,java.sql.Date,java.sql.Date\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernameList, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") fromDate, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") toDate)`

    Deprecated.

    Returns the number of message posts grouped by a list of users from the fromDate to the toDate.

    `[UserMessageCount](UserMessageCount.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getMessageCountByUsersForForum](#getMessageCountByUsersForForum\(java.lang.String%5B%5D,java.sql.Date,java.sql.Date,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernameList, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") fromDate, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") toDate, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId)`

    Deprecated.

    Returns the number of message posts grouped by a list of users from the fromDate to the toDate.

    `[Message](Message.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getMessages](#getMessages\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] messageIds_)`

    Deprecated.

    Use [`getMessagesPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getMessagesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMessagesByUserPaging](#getMessagesByUserPaging\(java.lang.String,int,int,int,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, int startIndex, int batchSize, int sortProperty, int sortOrder)`

    Deprecated.

    This function gets all messages for a specific user.

    `[Message](Message.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getMessagesForThread](#getMessagesForThread\(java.lang.Long,java.lang.Integer,java.lang.Integer,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, int startIndex_, int count_)`

    Deprecated.

    Use [`getMessagesForThreadPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getMessagesForThreadPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMessagesForThreadPaging](#getMessagesForThreadPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get all the messages in a given thread, paging.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getMessagesList](#getMessagesList\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] messageIds_)`

    Deprecated.

    Gets the specified messages, returning the valid results even if all the results cannot be retrieved (for instance, if some of the messages corresponding to the passed ids no longer exist).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMessagesPaging](#getMessagesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] messageIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get multiple messages, paging.

    `int[]`

    `[getPermissionsForMessageIdsForSessionUser](#getPermissionsForMessageIdsForSessionUser\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] messageIds_)`

    Deprecated.

    Get the permissions that the current user has for the given messages.

    `int[]`

    `[getPermissionsForMessageIdsForUser](#getPermissionsForMessageIdsForUser\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] messageIds_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Deprecated.

    Get the permissions that a given user has for the given messages.

    `[ForumsRoleMap](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums")`

    `[getRoleMapForForum](#getRoleMapForForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Get the rolemap of a forum.

    `[ForumsRoleMap](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums")`

    `[getRoleMapForThread](#getRoleMapForThread\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Get the rolemap of a thread; currently a thread always inherits the rolemap from its parent forum.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getSponsoredThreadSummariesPaging](#getSponsoredThreadSummariesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] forumIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get the summaries of all the sponsored threads in multiple forums, paging.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getSponsoredThreadSummariesPaging](#getSponsoredThreadSummariesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get the summaries of all the sponsored threads in a forum, paging.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getSubscribedForumsPaging](#getSubscribedForumsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get all the forums to which the current user is subscribed, paging.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getSubscribedThreadsPaging](#getSubscribedThreadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get all the threads to which the current user is subscribed, paging.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getSubscribersForForum](#getSubscribersForForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Returns the usernames of the users subscribed to a given forum.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getSubscribersForThread](#getSubscribersForThread\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Get the usernames of the users subscribed to a thread.

    `[DiscussionThread](DiscussionThread.html "class in com.appiancorp.suiteapi.forums")`

    `[getThread](#getThread\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Get a thread.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getThreadedMessagesPaging](#getThreadedMessagesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get all the messages in a forum as `ThreadedMessage` objects.

    `[DiscussionThread](DiscussionThread.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getThreads](#getThreads\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] threadIds_)`

    Deprecated.

    Use [`getThreadsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getThreadsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    `[DiscussionThread](DiscussionThread.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getThreadsForForum](#getThreadsForForum\(java.lang.Long,java.lang.Integer,java.lang.Integer,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, int startIndex_, int count_)`

    Deprecated.

    Use [`getThreadsForForumPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getThreadsForForumPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getThreadsForForumPaging](#getThreadsForForumPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get all the threads in a given forum, paging.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getThreadsList](#getThreadsList\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] threadIds_)`

    Deprecated.

    Gets the specified threads, returning the valid results even if all the results cannot be retrieved (for instance, if some of the threads corresponding to the passed ids no longer exist).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getThreadsPaging](#getThreadsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] threadIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get multiple threads, paging.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getThreadSummariesForForumPaging](#getThreadSummariesForForumPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get the summaries of all the threads in a forum, paging.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getThreadSummariesPaging](#getThreadSummariesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] threadIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get the summaries of multiple threads, paging.

    `[UserMessageCount](UserMessageCount.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getTopUsersForForum](#getTopUsersForForum\(java.sql.Date,java.sql.Date,java.lang.Long,int\))([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") fromDate, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") toDate, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId, int topNUsers)`

    Deprecated.

    Returns which users are the most active when posting into a particular forum.

    `[UserMessageCount](UserMessageCount.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getTopUsersForSite](#getTopUsersForSite\(java.sql.Date,java.sql.Date,int\))([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") fromDate, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") toDate, int topNUsers)`

    Deprecated.

    Returns which users are the most active when posting into the entire site.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getUsersToNotify](#getUsersToNotify\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Get the usernames of the users who should receive notifications when updates are made to a given thread.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getUsersToNotifyForForum](#getUsersToNotifyForForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Get the usernames of the users who should receive notification when updates are made to a given forum or any of its threads.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getValidForumSummariesPaging](#getValidForumSummariesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] forumIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get the summaries of valid multiple forums, paging.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Deprecated.

    Gets the current memory profile for the workspace.

    `[Message](Message.html "class in com.appiancorp.suiteapi.forums")[]`

    `[importMessages](#importMessages\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.forums.Message%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] forumIds_, [Message](Message.html "class in com.appiancorp.suiteapi.forums")[] msgs_)`

    Deprecated.

    Import multiple messages, one per forum.

    `void`

    `[inviteUsersToThread](#inviteUsersToThread\(java.lang.String%5B%5D,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Add invitation for the given users to the given `thread`.

    `boolean`

    `[isForumPublic](#isForumPublic\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Returns whether a forum is public.

    `boolean[]`

    `[isInvitedToThreads](#isInvitedToThreads\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] threadIds_)`

    Deprecated.

    Called to check if the invitation to threads for current user are valid.

    `boolean`

    `[isSubscribedToForum](#isSubscribedToForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Get the current user's subscription status for a given forum.

    `boolean`

    `[isSubscribedToThread](#isSubscribedToThread\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Determine whether the current user is subscribed to a thread.

    `void`

    `[moveThread](#moveThread\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") toForumId_)`

    Deprecated.

    Move a thread to a different forum.

    `void`

    `[notifyUserCreation](#notifyUserCreation\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Deprecated.

    done automatically by UserService.createUser

    `void`

    `[notifyUsersCreation](#notifyUsersCreation\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

    Notifies this service that new users have been created (see [`notifyUserCreation(java.lang.String)`](#notifyUserCreation\(java.lang.String\))).

    `void`

    `[reloadProperties](#reloadProperties\(\))()`

    Deprecated.

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    `void`

    `[removeThreadResource](#removeThreadResource\(java.lang.Long,com.appiancorp.suiteapi.forums.Attachment\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums") resource_)`

    Deprecated.

    Remove an attachment from a thread.

    `void`

    `[removeThreadResources](#removeThreadResources\(java.lang.Long,com.appiancorp.suiteapi.forums.Attachment%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums")[] resources_)`

    Deprecated.

    Remove multiple resources from a thread.

    `void`

    `[rollbackUpdateUsernames](#rollbackUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `void`

    `[setAdministratorGroup](#setAdministratorGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    Sets the group to which a user must belong to be a forums administrator.

    `void`

    `[setForumPrivate](#setForumPrivate\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Set a forum to be private, ie allow only users/groups that are participants and administrators to see the forum and participate.

    `void`

    `[setForumPublic](#setForumPublic\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Set a forum to be public, ie allow all users to see the forum and participate.

    `void`

    `[setRating](#setRating\(java.lang.Long,double,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId_, double averageRating_, int ratingCount_)`

    Deprecated.

    Set the average rating for a message.

    `void`

    `[setRoleMapForForum](#setRoleMapForForum\(java.lang.Long,com.appiancorp.suiteapi.forums.ForumsRoleMap\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, [ForumsRoleMap](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") r_)`

    Deprecated.

    Set the rolemap of a forum.

    `void`

    `[setTimeZone](#setTimeZone\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple\))([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz)`

    Deprecated.

    Set a backend timezone.

    `void`

    `[setTimeZoneSameAs](#setTimeZoneSameAs\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple,java.lang.String\))([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sameAsId)`

    Deprecated.

    `void`

    `[sponsor](#sponsor\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Sponsor a thread (simply marks the thread as 'sponsored').

    `void`

    `[sponsorForMessage](#sponsorForMessage\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId_)`

    Deprecated.

    Sponsor a thread through a thread message (sponsors the thread that contains the message whose id is passed).

    `void`

    `[subscribeToForum](#subscribeToForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Subscribe the current user to a given forum.

    `void`

    `[subscribeToThread](#subscribeToThread\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Subscribe the current user to a thread.

    `void`

    `[subscribeUsersToThread](#subscribeUsersToThread\(java.lang.Long,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_)`

    Deprecated.

    the combination of [`inviteUsersToThread(java.lang.String[], java.lang.Long)`](#inviteUsersToThread\(java.lang.String%5B%5D,java.lang.Long\)) and [`acceptThreadInvitation(java.lang.Long)`](#acceptThreadInvitation\(java.lang.Long\)) is more secure, and should be used instead

    `void`

    `[unsponsor](#unsponsor\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Unsponsor a thread.

    `void`

    `[unsponsorForMessage](#unsponsorForMessage\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId_)`

    Deprecated.

    Unsponsor a thread through a thread message (unsponsors the thread that contains the message whose id is passed).

    `void`

    `[unsubscribeFromForum](#unsubscribeFromForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Unsubscribes the current user from a given forum.

    `void`

    `[unsubscribeFromThread](#unsubscribeFromThread\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Unsubscribe the current user from a thread.

    `void`

    `[updateForum](#updateForum\(com.appiancorp.suiteapi.forums.Forum\))([Forum](Forum.html "class in com.appiancorp.suiteapi.forums") f_)`

    Deprecated.

    Update the properties of a discussion forum.

    `void`

    `[updateForums](#updateForums\(com.appiancorp.suiteapi.forums.Forum%5B%5D\))([Forum](Forum.html "class in com.appiancorp.suiteapi.forums")[] forums_)`

    Deprecated.

    Update the properties of multiple discussion forums.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[updateMessage](#updateMessage\(com.appiancorp.suiteapi.forums.Message\))([Message](Message.html "class in com.appiancorp.suiteapi.forums") m_)`

    Deprecated.

    Update the properties of a message.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[updateMessages](#updateMessages\(com.appiancorp.suiteapi.forums.Message%5B%5D\))([Message](Message.html "class in com.appiancorp.suiteapi.forums")[] m_)`

    Deprecated.

    Update the properties of multiple messages.

    `void`

    `[updateUsernames](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] oldUsernames_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] newUsernames_, long maxExpirationTimeInSeconds_)`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[validate](#validate\(\))()`

    Deprecated.

    Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

    `boolean`

    `[validateGroupMembership](#validateGroupMembership\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] memGroupIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] admGroupIds_)`

    Deprecated.

    No longer necessary with credential system

    `boolean`

    `[validateTypedValues](#validateTypedValues\(com.appiancorp.suiteapi.type.TypedValue%5B%5D\))([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")[] typedValues)`

    Deprecated.

    Validates given TypedValues.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### MESSAGE\_PERMISSION\_INVALID

        static final int MESSAGE\_PERMISSION\_INVALID

        Deprecated.

        Indicates that no permissions can be obtained for the message because the specified message was null or does not exist

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.MESSAGE_PERMISSION_INVALID)

    -   ### MESSAGE\_PERMISSION\_CANNOT\_VIEW

        static final int MESSAGE\_PERMISSION\_CANNOT\_VIEW

        Deprecated.

        Indicates that the user is not allowed to view the message

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.MESSAGE_PERMISSION_CANNOT_VIEW)

    -   ### MESSAGE\_PERMISSION\_CAN\_VIEW

        static final int MESSAGE\_PERMISSION\_CAN\_VIEW

        Deprecated.

        Indicates that the user is allowed to view the message

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.MESSAGE_PERMISSION_CAN_VIEW)

    -   ### ACTION\_FORUM\_CREATE\_THREAD

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_FORUM\_CREATE\_THREAD

        Deprecated.

        The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can create threads in the forum

    -   ### ACTION\_FORUM\_UPDATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_FORUM\_UPDATE

        Deprecated.

        The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can update the forum

    -   ### ACTION\_FORUM\_DELETE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_FORUM\_DELETE

        Deprecated.

        The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can delete the forum

    -   ### ACTION\_FORUM\_VIEW

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_FORUM\_VIEW

        Deprecated.

        The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can view the forum

    -   ### ACTION\_FORUM\_SUBSCRIBE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_FORUM\_SUBSCRIBE

        Deprecated.

        The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can subscribe to the forum

    -   ### ACTION\_FORUM\_UNSUBSCRIBE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_FORUM\_UNSUBSCRIBE

        Deprecated.

        The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can unsubscribe from the forum

    -   ### ACTION\_FORUM\_SPONSOR\_THREAD

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_FORUM\_SPONSOR\_THREAD

        Deprecated.

        The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can sponsor a thread in the forum

    -   ### ACTION\_FORUM\_UNSPONSOR\_THREAD

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_FORUM\_UNSPONSOR\_THREAD

        Deprecated.

        The index of the element in the `allowedActions` field of the `Forum` bean that indicates whether the user can unsponsor a thread in the forum

    -   ### ACTION\_THREAD\_CREATE\_MESSAGE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_CREATE\_MESSAGE

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can create a message in the thread

    -   ### ACTION\_THREAD\_UPDATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_UPDATE

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can update the thread

    -   ### ACTION\_THREAD\_DELETE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_DELETE

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can delete the thread

    -   ### ACTION\_THREAD\_MOVE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_MOVE

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can move the thread

    -   ### ACTION\_THREAD\_VIEW

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_VIEW

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can view the thread

    -   ### ACTION\_THREAD\_ADD\_RESOURCE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_ADD\_RESOURCE

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can add a resource to the thread

    -   ### ACTION\_THREAD\_REMOVE\_RESOURCE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_REMOVE\_RESOURCE

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can remove a resource from the thread

    -   ### ACTION\_THREAD\_SUBSCRIBE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_SUBSCRIBE

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can subscribe to the thread

    -   ### ACTION\_THREAD\_UNSUBSCRIBE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_UNSUBSCRIBE

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can unsubscribe from the thread

    -   ### ACTION\_THREAD\_SPONSOR

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_SPONSOR

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can sponsor the thread

    -   ### ACTION\_THREAD\_UNSPONSOR

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_UNSPONSOR

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can unsponsor the thread

    -   ### ACTION\_THREAD\_INVITE\_OTHER\_USERS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_THREAD\_INVITE\_OTHER\_USERS

        Deprecated.

        The index of the element in the `allowedActions` field of the `ThreadSummary` bean that indicates whether the user can invite other users to the thread

    -   ### ACTION\_MESSAGE\_UPDATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_MESSAGE\_UPDATE

        Deprecated.

        The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can update the message

    -   ### ACTION\_MESSAGE\_DELETE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_MESSAGE\_DELETE

        Deprecated.

        The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can delete the message

    -   ### ACTION\_MESSAGE\_DELETE\_WITH\_DESCENDANTS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_MESSAGE\_DELETE\_WITH\_DESCENDANTS

        Deprecated.

        The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can delete the message and its descendents

    -   ### ACTION\_MESSAGE\_ADD\_RATING

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_MESSAGE\_ADD\_RATING

        Deprecated.

        The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can add a rating to the message

    -   ### ACTION\_MESSAGE\_SET\_RATING

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_MESSAGE\_SET\_RATING

        Deprecated.

        The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can set the rating of the message

    -   ### ACTION\_MESSAGE\_VIEW

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_MESSAGE\_VIEW

        Deprecated.

        The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can view the message

    -   ### ACTION\_MESSAGE\_VIEW\_ANONYMOUS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_MESSAGE\_VIEW\_ANONYMOUS

        Deprecated.

        The index of the element in the `allowedActions` field of the `Message` bean that indicates whether the user can anonymously view the message

    -   ### createForum$UPDATES

        static final boolean createForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.createForum$UPDATES)

    -   ### setAdministratorGroup$UPDATES

        static final boolean setAdministratorGroup$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.setAdministratorGroup$UPDATES)

    -   ### updateForum$UPDATES

        static final boolean updateForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.updateForum$UPDATES)

    -   ### updateForums$UPDATES

        static final boolean updateForums$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.updateForums$UPDATES)

    -   ### deleteForum$UPDATES

        static final boolean deleteForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.deleteForum$UPDATES)

    -   ### getForum$UPDATES

        static final boolean getForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getForum$UPDATES)

    -   ### getForums$UPDATES

        static final boolean getForums$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getForums$UPDATES)

    -   ### getForumIdsByRelated$UPDATES

        static final boolean getForumIdsByRelated$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getForumIdsByRelated$UPDATES)

    -   ### deleteThread$UPDATES

        static final boolean deleteThread$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.deleteThread$UPDATES)

    -   ### getThread$UPDATES

        static final boolean getThread$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getThread$UPDATES)

    -   ### getThreads$UPDATES

        static final boolean getThreads$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getThreads$UPDATES)

    -   ### getThreadsForForum$UPDATES

        static final boolean getThreadsForForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getThreadsForForum$UPDATES)

    -   ### getThreadsForForumPaging$UPDATES

        static final boolean getThreadsForForumPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getThreadsForForumPaging$UPDATES)

    -   ### moveThread$UPDATES

        static final boolean moveThread$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.moveThread$UPDATES)

    -   ### addThreadResource$UPDATES

        static final boolean addThreadResource$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.addThreadResource$UPDATES)

    -   ### addThreadResources$UPDATES

        static final boolean addThreadResources$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.addThreadResources$UPDATES)

    -   ### removeThreadResource$UPDATES

        static final boolean removeThreadResource$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.removeThreadResource$UPDATES)

    -   ### removeThreadResources$UPDATES

        static final boolean removeThreadResources$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.removeThreadResources$UPDATES)

    -   ### subscribeToThread$UPDATES

        static final boolean subscribeToThread$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.subscribeToThread$UPDATES)

    -   ### subscribeUsersToThread$UPDATES

        static final boolean subscribeUsersToThread$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.subscribeUsersToThread$UPDATES)

    -   ### unsubscribeFromThread$UPDATES

        static final boolean unsubscribeFromThread$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.unsubscribeFromThread$UPDATES)

    -   ### isSubscribedToThread$UPDATES

        static final boolean isSubscribedToThread$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.isSubscribedToThread$UPDATES)

    -   ### getSubscribersForThread$UPDATES

        static final boolean getSubscribersForThread$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getSubscribersForThread$UPDATES)

    -   ### sponsor$UPDATES

        static final boolean sponsor$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.sponsor$UPDATES)

    -   ### unsponsor$UPDATES

        static final boolean unsponsor$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.unsponsor$UPDATES)

    -   ### sponsorForMessage$UPDATES

        static final boolean sponsorForMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.sponsorForMessage$UPDATES)

    -   ### unsponsorForMessage$UPDATES

        static final boolean unsponsorForMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.unsponsorForMessage$UPDATES)

    -   ### createMessage$UPDATES

        static final boolean createMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.createMessage$UPDATES)

    -   ### updateMessage$UPDATES

        static final boolean updateMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.updateMessage$UPDATES)

    -   ### updateMessages$UPDATES

        static final boolean updateMessages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.updateMessages$UPDATES)

    -   ### getMessage$UPDATES

        static final boolean getMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getMessage$UPDATES)

    -   ### getMessages$UPDATES

        static final boolean getMessages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getMessages$UPDATES)

    -   ### getMessagesForThread$UPDATES

        static final boolean getMessagesForThread$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getMessagesForThread$UPDATES)

    -   ### addRating$UPDATES

        static final boolean addRating$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.addRating$UPDATES)

    -   ### setRating$UPDATES

        static final boolean setRating$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.setRating$UPDATES)

    -   ### deleteMessageAndDescendants$UPDATES

        static final boolean deleteMessageAndDescendants$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.deleteMessageAndDescendants$UPDATES)

    -   ### deleteMessage$UPDATES

        static final boolean deleteMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.deleteMessage$UPDATES)

    -   ### setRoleMapForForum$UPDATES

        static final boolean setRoleMapForForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.setRoleMapForForum$UPDATES)

    -   ### getRoleMapForForum$UPDATES

        static final boolean getRoleMapForForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getRoleMapForForum$UPDATES)

    -   ### getRoleMapForThread$UPDATES

        static final boolean getRoleMapForThread$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getRoleMapForThread$UPDATES)

    -   ### activateUserSession$UPDATES

        static final boolean activateUserSession$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.activateUserSession$UPDATES)

    -   ### getUsersToNotify$UPDATES

        static final boolean getUsersToNotify$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getUsersToNotify$UPDATES)

    -   ### getUsersToNotifyForForum$UPDATES

        static final boolean getUsersToNotifyForForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getUsersToNotifyForForum$UPDATES)

    -   ### isSubscribedToForum$UPDATES

        static final boolean isSubscribedToForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.isSubscribedToForum$UPDATES)

    -   ### subscribeToForum$UPDATES

        static final boolean subscribeToForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.subscribeToForum$UPDATES)

    -   ### unsubscribeFromForum$UPDATES

        static final boolean unsubscribeFromForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.unsubscribeFromForum$UPDATES)

    -   ### enableForumAnonymousPosting$UPDATES

        static final boolean enableForumAnonymousPosting$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.enableForumAnonymousPosting$UPDATES)

    -   ### disableForumAnonymousPosting$UPDATES

        static final boolean disableForumAnonymousPosting$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.disableForumAnonymousPosting$UPDATES)

    -   ### setForumPublic$UPDATES

        static final boolean setForumPublic$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.setForumPublic$UPDATES)

    -   ### setForumPrivate$UPDATES

        static final boolean setForumPrivate$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.setForumPrivate$UPDATES)

    -   ### getForumsPaging$UPDATES

        static final boolean getForumsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getForumsPaging$UPDATES)

    -   ### findForumsPaging$UPDATES

        static final boolean findForumsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.findForumsPaging$UPDATES)

    -   ### getAllForumsPaging$UPDATES

        static final boolean getAllForumsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getAllForumsPaging$UPDATES)

    -   ### getAllForumSummariesPaging$UPDATES

        static final boolean getAllForumSummariesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getAllForumSummariesPaging$UPDATES)

    -   ### getThreadsPaging$UPDATES

        static final boolean getThreadsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getThreadsPaging$UPDATES)

    -   ### getMessagesPaging$UPDATES

        static final boolean getMessagesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getMessagesPaging$UPDATES)

    -   ### getForumIdsByRelatedPaging$UPDATES

        static final boolean getForumIdsByRelatedPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getForumIdsByRelatedPaging$UPDATES)

    -   ### getMessagesForThreadPaging$UPDATES

        static final boolean getMessagesForThreadPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getMessagesForThreadPaging$UPDATES)

    -   ### getForumSummariesPaging$UPDATES

        static final boolean getForumSummariesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getForumSummariesPaging$UPDATES)

    -   ### getValidForumSummariesPaging$UPDATES

        static final boolean getValidForumSummariesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getValidForumSummariesPaging$UPDATES)

    -   ### getThreadSummariesPaging$UPDATES

        static final boolean getThreadSummariesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getThreadSummariesPaging$UPDATES)

    -   ### getSponsoredThreadSummariesPaging$UPDATES

        static final boolean getSponsoredThreadSummariesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getSponsoredThreadSummariesPaging$UPDATES)

    -   ### getThreadedMessagesPaging$UPDATES

        static final boolean getThreadedMessagesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getThreadedMessagesPaging$UPDATES)

    -   ### getThreadSummariesForForumPaging$UPDATES

        static final boolean getThreadSummariesForForumPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getThreadSummariesForForumPaging$UPDATES)

    -   ### addActorsToRolesInForums$UPDATES

        static final boolean addActorsToRolesInForums$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.addActorsToRolesInForums$UPDATES)

    -   ### allowedAnonymousPosting$UPDATES

        static final boolean allowedAnonymousPosting$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.allowedAnonymousPosting$UPDATES)

    -   ### getAllDeletedMessagesPaging$UPDATES

        static final boolean getAllDeletedMessagesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getAllDeletedMessagesPaging$UPDATES)

    -   ### getPermissionsForMessageIdsForSessionUser$UPDATES

        static final boolean getPermissionsForMessageIdsForSessionUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getPermissionsForMessageIdsForSessionUser$UPDATES)

    -   ### getPermissionsForMessageIdsForUser$UPDATES

        static final boolean getPermissionsForMessageIdsForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getPermissionsForMessageIdsForUser$UPDATES)

    -   ### getSubscribersForForum$UPDATES

        static final boolean getSubscribersForForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getSubscribersForForum$UPDATES)

    -   ### isForumPublic$UPDATES

        static final boolean isForumPublic$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.isForumPublic$UPDATES)

    -   ### notifyUserCreation$UPDATES

        static final boolean notifyUserCreation$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.notifyUserCreation$UPDATES)

    -   ### notifyUsersCreation$UPDATES

        static final boolean notifyUsersCreation$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.notifyUsersCreation$UPDATES)

    -   ### getSubscribedThreadsPaging$UPDATES

        static final boolean getSubscribedThreadsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getSubscribedThreadsPaging$UPDATES)

    -   ### getSubscribedForumsPaging$UPDATES

        static final boolean getSubscribedForumsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getSubscribedForumsPaging$UPDATES)

    -   ### getChildrenForMessagePaging$UPDATES

        static final boolean getChildrenForMessagePaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getChildrenForMessagePaging$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getApplicationName$UPDATES)

    -   ### getApplicationPermissions$UPDATES

        static final boolean getApplicationPermissions$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getApplicationPermissions$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getWorkspace$UPDATES)

    -   ### createMessages$UPDATES

        static final boolean createMessages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.createMessages$UPDATES)

    -   ### createForums$UPDATES

        static final boolean createForums$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.createForums$UPDATES)

    -   ### importMessages$UPDATES

        static final boolean importMessages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.importMessages$UPDATES)

    -   ### getThreadsList$UPDATES

        static final boolean getThreadsList$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getThreadsList$UPDATES)

    -   ### getForumsList$UPDATES

        static final boolean getForumsList$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getForumsList$UPDATES)

    -   ### getMessagesList$UPDATES

        static final boolean getMessagesList$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getMessagesList$UPDATES)

    -   ### validateGroupMembership$UPDATES

        static final boolean validateGroupMembership$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.validateGroupMembership$UPDATES)

    -   ### updateUsernames$UPDATES

        static final boolean updateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.updateUsernames$UPDATES)

    -   ### commitUpdateUsernames$UPDATES

        static final boolean commitUpdateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.commitUpdateUsernames$UPDATES)

    -   ### rollbackUpdateUsernames$UPDATES

        static final boolean rollbackUpdateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.rollbackUpdateUsernames$UPDATES)

    -   ### inviteUsersToThread$UPDATES

        static final boolean inviteUsersToThread$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.inviteUsersToThread$UPDATES)

    -   ### acceptThreadInvitation$UPDATES

        static final boolean acceptThreadInvitation$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.acceptThreadInvitation$UPDATES)

    -   ### denyThreadInvitation$UPDATES

        static final boolean denyThreadInvitation$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.denyThreadInvitation$UPDATES)

    -   ### isInvitedToThreads$UPDATES

        static final boolean isInvitedToThreads$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.isInvitedToThreads$UPDATES)

    -   ### changePartitionPaths$UPDATES

        static final boolean changePartitionPaths$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.changePartitionPaths$UPDATES)

    -   ### reloadProperties$UPDATES

        static final boolean reloadProperties$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.reloadProperties$UPDATES)

    -   ### validate$UPDATES

        static final boolean validate$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.validate$UPDATES)

    -   ### validateTypedValues$UPDATES

        static final boolean validateTypedValues$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.validateTypedValues$UPDATES)

    -   ### setTimeZone$UPDATES

        static final boolean setTimeZone$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.setTimeZone$UPDATES)

    -   ### setTimeZoneSameAs$UPDATES

        static final boolean setTimeZoneSameAs$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.setTimeZoneSameAs$UPDATES)

    -   ### getMessageCountByUsers$UPDATES

        static final boolean getMessageCountByUsers$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getMessageCountByUsers$UPDATES)

    -   ### getMessageCountByUsersForForum$UPDATES

        static final boolean getMessageCountByUsersForForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getMessageCountByUsersForForum$UPDATES)

    -   ### getTopUsersForForum$UPDATES

        static final boolean getTopUsersForForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getTopUsersForForum$UPDATES)

    -   ### getTopUsersForSite$UPDATES

        static final boolean getTopUsersForSite$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getTopUsersForSite$UPDATES)

    -   ### getMessagesByUserPaging$UPDATES

        static final boolean getMessagesByUserPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataCoreService.getMessagesByUserPaging$UPDATES)

-   ## Method Details

    -   ### createForum

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createForum([Forum](Forum.html "class in com.appiancorp.suiteapi.forums") f\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Create a discussion forum.

        Parameters:

        `f_` - The forum to be created. The following fields of the passed object must be set: `name`, `creator` and `dateCreated`. The value of the `id` field is ignored (can be `null`), since it will be assigned by the server.

        Returns:

        The server-assigned forum id (local id).

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to create a forum. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, READER, and USER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may create forums.

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the UUID of the forum already exists

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setAdministratorGroup

        void setAdministratorGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Sets the group to which a user must belong to be a forums administrator. A forums administrator has additional privileges providing access to restricted functionality, such as viewing the deleted messages, etc.

        Parameters:

        `groupId_` - The id of the group to be set as the forums administrator group.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `groupId_` is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateForum

        void updateForum([Forum](Forum.html "class in com.appiancorp.suiteapi.forums") f\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Update the properties of a discussion forum. The fields `id` and `remoteId` are not changed.

        Parameters:

        `f_` - The `Forum` object whose properties should be used to update the existing forum. The `id` field of the passed object should be set to the id of the forum to update. The existing forum's properties are overwritten with the corresponding values contained in the passed object.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to update the forum. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may update forums.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateForums

        void updateForums([Forum](Forum.html "class in com.appiancorp.suiteapi.forums")\[\] forums\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Update the properties of multiple discussion forums. The fields `id` and `remoteId` are not changed.

        Parameters:

        `forums_` - An array of `Forum` objects containing the properties that should be used to update the corresponding exisitng forums. The `id` field of each object should be set to the id of the forum to update. Each existing forum's properties are overwritten with the corresponding values contained in the passed object.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to update at least one of the forums. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may update forums.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the forum ids is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteForum

        void deleteForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Delete a forum (and all of its threads).

        Parameters:

        `forumId_` - The local id of the forum to be deleted (ie the `id` field of a `Forum` object).

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to delete the forum. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may delete forums.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getForum

        [Forum](Forum.html "class in com.appiancorp.suiteapi.forums") getForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a forum.

        Parameters:

        `id_` - The local id of the forum to be retrieved (ie the `id` field of a `Forum` object).

        Returns:

        The desired forum.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to view this forum. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view forums.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getForums

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Forum](Forum.html "class in com.appiancorp.suiteapi.forums")\[\] getForums([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getForumsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getForumsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

        Get multiple forums.

        Parameters:

        `ids_` - The local ids of the forums to be returned.

        Returns:

        The desired forums.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to view any one of the forums. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view forums.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the forum ids is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getForumIdsByRelated

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getForumIdsByRelated([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") related\_)

        Deprecated.

        Use [`getForumIdsByRelatedPaging(com.appiancorp.suiteapi.common.LocalObject, int, int, java.lang.Integer)`](#getForumIdsByRelatedPaging\(com.appiancorp.suiteapi.common.LocalObject,int,int,java.lang.Integer\)).

        Get the ids of the forums related to a given Appian Type object (an Appian Type is any type that has a corresponding TYPE\_XXX constant defined in [`ObjectTypeMapping`](../common/ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")).

        Parameters:

        `related_` - The identifier specifiying the object for which related forums are to be returned.

        Returns:

        The ids of the forums that are related to the passed object.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteThread

        void deleteThread([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Delete a thread (and all of its messages).

        Parameters:

        `threadId_` - The id of the thread to delete.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to delete the thread. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may delete threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getThread

        [DiscussionThread](DiscussionThread.html "class in com.appiancorp.suiteapi.forums") getThread([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a thread.

        Parameters:

        `threadId_` - The id of the thread to be returned.

        Returns:

        The desired thread.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to view this thread. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getThreads

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DiscussionThread](DiscussionThread.html "class in com.appiancorp.suiteapi.forums")\[\] getThreads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] threadIds\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getThreadsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getThreadsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

        Get multiple threads.

        Parameters:

        `threadIds_` - The ids of the threads to be returned.

        Returns:

        The desired threads.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any one of the passed ids is `null`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to view any of the threads. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the threads is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getThreadsForForum

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DiscussionThread](DiscussionThread.html "class in com.appiancorp.suiteapi.forums")\[\] getThreadsForForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, int startIndex\_, int count\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getThreadsForForumPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getThreadsForForumPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)).

        Get a set of threads from a forum.

        Parameters:

        `forumId_` - The local id of the forum from which to get the threads.

        `sortProperty_` - the property by which the results will be sorted. Use a `SORT_PROPERTY_THREAD_XXX` constant.

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `count_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        Returns:

        The desired threads.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getThreadsForForumPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getThreadsForForumPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get all the threads in a given forum, paging.

        Parameters:

        `forumId_` - The id (local id) of the forum from which to get the threads.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`DiscussionThread`](DiscussionThread.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `DiscussionThread` objects.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### moveThread

        void moveThread([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") toForumId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Move a thread to a different forum.

        Parameters:

        `threadId_` - The id of the thread to move.

        `toForumId_` - The id of the forum to which to move the thread.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to move the thread. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may move threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addThreadResource

        void addThreadResource([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums") resource\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Add an attachment to a thread.

        Parameters:

        `threadId_` - The id of the thread to which to add the attachment.

        `resource_` - The resource attachment to add. The `attached` field of the object must be set. If the same attachment was already added by another user, the attachement will not be readded.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to attach the resource to the thread. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, and WRITER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may add resources to threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addThreadResources

        void addThreadResources([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums")\[\] resources\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Add multiple attachments to a thread.

        Parameters:

        `threadId_` - The id of the thread to which to add the attachments.

        `resources_` - The resource attachments to add. The `attached` field of each object must be set. If the same attachment was already added by another user, the attachement will not be readded.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to attach any one of the resources. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, and WRITER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may add resources to threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeThreadResource

        void removeThreadResource([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums") resource\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Remove an attachment from a thread.

        Parameters:

        `threadId_` - The id of the thread from which to remove the attachment.

        `resource_` - The resource attachment to remove. The `attached` field of the object must be set.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to remove the resource from the thread. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may remove resources from threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeThreadResources

        void removeThreadResources([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_, [Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums")\[\] resources\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Remove multiple resources from a thread.

        Parameters:

        `threadId_` - The id of the thread from which to remove the attachments.

        `resources_` - The resource attachments to remove. The `attached` field of each object must be set.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to remove the resource. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may remove resources from threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### subscribeToThread

        void subscribeToThread([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Subscribe the current user to a thread.

        Parameters:

        `threadId_` - The id of the thread to subscribe to.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to subscribe to the thread. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may subscribe to threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### subscribeUsersToThread

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void subscribeUsersToThread([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        the combination of [`inviteUsersToThread(java.lang.String[], java.lang.Long)`](#inviteUsersToThread\(java.lang.String%5B%5D,java.lang.Long\)) and [`acceptThreadInvitation(java.lang.Long)`](#acceptThreadInvitation\(java.lang.Long\)) is more secure, and should be used instead

        Subscribe a set of users to a thread.

        Parameters:

        `threadId_` - The id of the thread to subscribe to.

        `users_` - The logins (usernames) of the users to subscribe to the thread.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the passed usernames is invalid

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to subscirbe the passed users to the thread. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may remove resources from threads.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unsubscribeFromThread

        void unsubscribeFromThread([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Unsubscribe the current user from a thread.

        Parameters:

        `threadId_` - The id of the thread to unsubscribe from.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to unsubscribe from the thread. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may unsubscribe from threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### isSubscribedToThread

        boolean isSubscribedToThread([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Determine whether the current user is subscribed to a thread.

        Parameters:

        `threadId_` - The id of a thread.

        Returns:

        `true` if the current user is subscribed to the passed, thread, and `false` otherwise

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

    -   ### getSubscribersForThread

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getSubscribersForThread([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the usernames of the users subscribed to a thread.

        Parameters:

        `threadId_` - The id of a thread.

        Returns:

        The usernames of the users subscribed to the thread.

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### sponsor

        void sponsor([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Sponsor a thread (simply marks the thread as 'sponsored').

        Parameters:

        `threadId_` - The id of the thread to sponsor.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to sponsor the thread. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may sponsor threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unsponsor

        void unsponsor([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Unsponsor a thread.

        Parameters:

        `threadId_` - The id of the thread to unsponsor.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to unsponsor the thread. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may unsponsor threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### sponsorForMessage

        void sponsorForMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Sponsor a thread through a thread message (sponsors the thread that contains the message whose id is passed).

        Parameters:

        `messageId_` - The id of a message in the thread that will be sponsored.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to sponsor the thread. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may sponsor threads.

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed message id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unsponsorForMessage

        void unsponsorForMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Unsponsor a thread through a thread message (unsponsors the thread that contains the message whose id is passed).

        Parameters:

        `messageId_` - The id of a message in the thread to unsponsor.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to unsponsor the thread. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may unsponsor threads.

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed message id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createMessage

        [Message](Message.html "class in com.appiancorp.suiteapi.forums") createMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, [Message](Message.html "class in com.appiancorp.suiteapi.forums") m\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Create a message. NOTE: To physically store the message to disk, this call must be followed by a call to [`DiscussionBodyService.createMessage(com.appiancorp.suiteapi.forums.Message)`](DiscussionBodyService.html#createMessage\(com.appiancorp.suiteapi.forums.Message\)), using the `filename` returned by this method.

        Parameters:

        `forumId_` - The id of the forum in which to create the new message.

        `m_` - The `Message` object from which to create the message. The minimum required fields that must be set in the object are: `threadId`, `parentId`, `subject`, and `anonymousAuthor`. When creating a new thread, the `threadId` and `parentId` fields should be set to 0 or null. The `id`, `remoteId`, and `filename` will be assigned by the server.

        Returns:

        The new message, with the `id`, `remoteId`, and `filename` fields properly populated.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to create the message. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, and WRITER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may create messages.

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `parentId` of the passed message is invalid

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the user attempts to post the message anonymously but the Forum does not accept anonymous posts

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the `m_` message is null

    -   ### updateMessage

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") updateMessage([Message](Message.html "class in com.appiancorp.suiteapi.forums") m\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Update the properties of a message. The `id`, `remoteId`, and `filename` fields are not changed.

        Parameters:

        `m_` - The `Message` object whose properties should be used to update the existing message. The `id` field of the passed object should be set to the id of the message to update. The existing message's properties are overwritten with the corresponding values contained in the passed object (with the exception of `id`, `remoteId`, and `filename` which are not changed).

        Returns:

        The `filename` for the body of the message.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to update the message. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may update messages.

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the user attempts to post the message anonymously but the Forum does not accept anonymous posts

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no message exists with the same id as the message passed in

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateMessages

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] updateMessages([Message](Message.html "class in com.appiancorp.suiteapi.forums")\[\] m\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Update the properties of multiple messages. The `id`, `remoteId`, and `filename` fields are not changed.

        Parameters:

        `m_` - An array of `Message` objects containing the properties that should be used to update the corresponding existing messages. The `id` field of each passed object should be set to the id of the message to update. Each existing message's properties are overwritten with the corresponding values contained in the passed object (with the exception of `id`, `remoteId`, and `filename` which are not changed).

        Returns:

        An array of filenames for the message bodies.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to update at least one of the messages. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may uupdate messages.

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no message exists with the same id as the message passed in

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getMessage

        [Message](Message.html "class in com.appiancorp.suiteapi.forums") getMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a message.

        Parameters:

        `messageId_` - The id of the message to be returned.

        Returns:

        The desired message.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to view this message. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view messages.

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the message does not exist or has been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getMessages

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Message](Message.html "class in com.appiancorp.suiteapi.forums")\[\] getMessages([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] messageIds\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getMessagesPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getMessagesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

        Get multiple messages.

        Parameters:

        `messageIds_` - The ids of the messages to be returned.

        Returns:

        The desired messages.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the passed `messageIds` array contains a `null` element

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to view any one of the messages. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view messages.

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the messages does not exist or has been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getMessagesForThread

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Message](Message.html "class in com.appiancorp.suiteapi.forums")\[\] getMessagesForThread([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, int startIndex\_, int count\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getMessagesForThreadPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getMessagesForThreadPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)).

        Get a set of messages in a thread.

        Parameters:

        `threadId_` - The local id of the thread from which to get the messages.

        `sortProperty_` - The column by which to sort. Use a `SORT_PROPERTY_MESSAGE` constant.

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `count_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        Returns:

        The desired messages.

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - of the thread is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addRating

        void addRating([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId\_, int rating\_) throws [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Average a new individual rating into the message's overall average rating.

        Parameters:

        `messageId_` - The id of the message being rated.

        `rating_` - The new individual rating.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to add the rating. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may add ratings to messages.

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed message id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setRating

        void setRating([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId\_, double averageRating\_, int ratingCount\_) throws [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Set the average rating for a message.

        Parameters:

        `messageId_` - The id of a message.

        `averageRating_` - The new average rating.

        `ratingCount_` - The new number of individual ratings that were used to determine the passed average rating.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to set the rating. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may set ratings of messages.

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the message is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`addRating(java.lang.Long, int)`](#addRating\(java.lang.Long,int\))

    -   ### deleteMessageAndDescendants

        void deleteMessageAndDescendants([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId\_) throws [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Delete a message and all its descendants.

        Parameters:

        `messageId_` - The id of a message.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to delete the message. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may delete messages.

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed message id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteMessage

        void deleteMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId\_) throws [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Delete a given message (connects any children of the given message to the parent of the message).

        Parameters:

        `messageId_` - The id of the message to delete.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to delete the message. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may delete messages.

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed message id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setRoleMapForForum

        void setRoleMapForForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, [ForumsRoleMap](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") r\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Set the rolemap of a forum. Users and Groups can be either forum participants or administrators.

        Parameters:

        `forumId_` - The id of a forum

        `r_` - The role map to set.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getRoleMapForForum

        [ForumsRoleMap](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") getRoleMapForForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the rolemap of a forum. Users and Groups can be either forum participants or administrators.

        Parameters:

        `forumId_` - The id of a forum.

        Returns:

        The role map for the given forum.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getRoleMapForThread

        [ForumsRoleMap](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") getRoleMapForThread([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the rolemap of a thread; currently a thread always inherits the rolemap from its parent forum.

        Parameters:

        `threadId_` - The id of a thread.

        Returns:

        The role map for the given thread.

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### activateUserSession

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") boolean\[\] activateUserSession([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] memberGroups\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] adminGroups\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Initializes the group permissions for the current user's session. This method should be called every time the group membership role of the current user is changed (eg: from member to admin, etc), or when a new group is created, or when the current user was newly created.

        Parameters:

        `memberGroups_` - Groups of which the current user is a member.

        `adminGroups_` - Groups of which the current user is an admin.

        `userTypeId_` - this is one of [`UserProfile.USER_TYPE_BASIC`](../personalization/UserProfile.html#USER_TYPE_BASIC) or [`UserProfile.USER_TYPE_SYS_ADMIN`](../personalization/UserProfile.html#USER_TYPE_SYS_ADMIN)

        Returns:

        A `boolean` array of three system permissions. Element \[0\] of the returned array indicates whether the current user can `createForum`; element \[1\] of the array indicates whether the current user can `getAllDeletedMessagesPaging`; and \[2\] indicates whether the current user can `importMessages`. See the forums security map description in the overall service description.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getUsersToNotify

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getUsersToNotify([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the usernames of the users who should receive notifications when updates are made to a given thread. This set of users is the union of the users subscribed to the thread and the users subscribed to the parent forum of the thread.

        Parameters:

        `threadId_` - The id of a thread.

        Returns:

        The usernames of the users to notify of updates to the thread.

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getUsersToNotifyForForum

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getUsersToNotifyForForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the usernames of the users who should receive notification when updates are made to a given forum or any of its threads. This is the list of users that are subscribed to the forum.

        Parameters:

        `forumId_` - The id of a forum.

        Returns:

        The usernames of users to notify of updates to the forum or any of its threads.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### isSubscribedToForum

        boolean isSubscribedToForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the current user's subscription status for a given forum.

        Parameters:

        `forumId_` - The id of a forum.

        Returns:

        `true` if the current user is subscribed to the forum, and `false` otherwise

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### subscribeToForum

        void subscribeToForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Subscribe the current user to a given forum.

        Parameters:

        `forumId_` - The id of the forum to subscribe to.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to subscribe to the forum. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, READER, and WRITER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may subscribe to forums.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unsubscribeFromForum

        void unsubscribeFromForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Unsubscribes the current user from a given forum.

        Parameters:

        `forumId_` - The id of the forum to unsubscribe from.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to unsubscribe from the forum. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, READER, and WRITER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may unsubscribe from forums.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### enableForumAnonymousPosting

        void enableForumAnonymousPosting([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Allow anonymous posting for a given forum

        Parameters:

        `forumId_` - The id of a forum.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may enable anonymous posting on forums.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### disableForumAnonymousPosting

        void disableForumAnonymousPosting([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Disallows anonymous posting for a given forum (can only be set by a forums administrator or a user having equivalent/higher privileges).

        Parameters:

        `forumId_` - The id of a forum.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may disable anonymous posting on forums.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setForumPublic

        void setForumPublic([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Set a forum to be public, ie allow all users to see the forum and participate.

        Parameters:

        `forumId_` - The id of a forum.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to set forums as public. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may set forums as public.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setForumPrivate

        void setForumPrivate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Set a forum to be private, ie allow only users/groups that are participants and administrators to see the forum and participate.

        Parameters:

        `forumId_` - The id of a forum.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to set forums as private. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may set forums as private.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getForumsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getForumsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] forumIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets multiple forums, paging.

        Parameters:

        `forumIds_` - The ids (local ids) of the forums to retrieve.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Forum`](Forum.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `Forum` objects.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to view any of the forums. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view forums.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the passed forum ids is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### findForumsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findForumsPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") nameSearchString\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Find forums by name (gets the forums whose name matches a given query string).

        Parameters:

        `nameSearchString_` - The query string to use to search for forums by name. The query string is interpreted as a regular expression but ignoring case. `null` is a wildcard, meaning any value of the name field.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Forum`](Forum.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `Forum` objects.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAllForumsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllForumsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Get all forums, paging.

        Parameters:

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Forum`](Forum.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `Forum` objects.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAllForumSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllForumSummariesPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Get the summaries of all forums, paging.

        Parameters:

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`ForumSummary`](ForumSummary.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `ForumSummary` objects.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getThreadsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getThreadsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] threadIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get multiple threads, paging.

        Parameters:

        `threadIds_` - The ids of the threads to retrieve.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`DiscussionThread`](DiscussionThread.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `DiscussionThread` objects.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to view any of the threads. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view threads.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the passed thread ids is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getMessagesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMessagesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] messageIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get multiple messages, paging.

        Parameters:

        `messageIds_` - The ids of the messages to retrieve.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Message`](Message.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `Message` objects.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to view any of the messages. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view messages.

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the passed message ids is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getForumIdsByRelatedPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getForumIdsByRelatedPaging([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") related\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Get the ids of the forums related to a given Appian Type object (an Appian Type is any type that has a corresponding TYPE\_XXX constant defined in [`ObjectTypeMapping`](../common/ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")).

        Parameters:

        `related_` - The identifier specifiying the object for which related forums are to be returned (the `type`, and either `id` or `stringId` fileds of the passed object must be set).

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `Long` objects.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getMessagesForThreadPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMessagesForThreadPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get all the messages in a given thread, paging.

        Parameters:

        `threadId_` - The thread ID

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Message`](Message.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `Message` objects.

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed thread id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getForumSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getForumSummariesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] forumIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the summaries of multiple forums, paging.

        Parameters:

        `forumIds_` - The ids of the forums to retrieve.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`ForumSummary`](ForumSummary.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `ForumSummary` objects.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to view any of the forums. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view forums.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the passed forum ids is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getValidForumSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getValidForumSummariesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] forumIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Get the summaries of valid multiple forums, paging. This function will return every forum that is valid and visible to the user.

        Parameters:

        `forumIds_` - The ids of the forums to retrieve.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`ForumSummary`](ForumSummary.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `ForumSummary` objects.

    -   ### getThreadSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getThreadSummariesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] threadIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the summaries of multiple threads, paging.

        Parameters:

        `threadIds_` - The ids of the threads to retrieve.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `ThreadSummary` objects.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may get thread summaries.

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the passed thread ids is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSponsoredThreadSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getSponsoredThreadSummariesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the summaries of all the sponsored threads in a forum, paging.

        Parameters:

        `forumId_` - The id of a forum.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `ThreadSummary` objects.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to sponsor threads. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may sponsor threads.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSponsoredThreadSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getSponsoredThreadSummariesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] forumIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the summaries of all the sponsored threads in multiple forums, paging.

        Parameters:

        `forumIds_` - The ids of the forums.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `ThreadSummary` objects.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to sponsor threads in any of the forums. Only SYSADMIN, APPADMIN, OWNER, and ADMINISTRATOR roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may sponsor threads.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the passed forum ids is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getThreadedMessagesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getThreadedMessagesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get all the messages in a forum as `ThreadedMessage` objects.

        Parameters:

        `forumId_` - The id of a forum.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`ThreadedMessage`](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `ThreadedMessage` objects.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getThreadSummariesForForumPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getThreadSummariesForForumPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the summaries of all the threads in a forum, paging.

        Parameters:

        `forumId_` - The id of a forum.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `ThreadSummary` objects.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to view any of the threads. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view threads.

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addActorsToRolesInForums

        void addActorsToRolesInForums([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Add users/groups to a given role in a forum.

        Parameters:

        `forumId_` - The id of a forum.

        `usernames_` - The users to add to the role.

        `groupIds_` - The groups to add to the role.

        `role_` - The role, which should be one of the `ROLE_XXX` constants defined in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums").

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### allowedAnonymousPosting

        boolean allowedAnonymousPosting([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns whether anonymous posting is allowed for a given forum.

        Parameters:

        `forumId_` - The id of a forum.

        Returns:

        `true` if anonymous posting is allowed in the forum, and `false` otherwise

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAllDeletedMessagesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllDeletedMessagesPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get all the messages that have been deleted, paging.

        Parameters:

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Message`](Message.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `Message` objects.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to view deleted messages. Only SYSADMIN and APPADMIN roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view deleted messages.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForMessageIdsForSessionUser

        int\[\] getPermissionsForMessageIdsForSessionUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] messageIds\_)

        Deprecated.

        Get the permissions that the current user has for the given messages.

        Parameters:

        `messageIds_` - The ids of messages.

        Returns:

        An array of `int`s, each of which represents the current user's permission level for the corresponding message. This is one of the `MESSAGE_PERMISSION_XXX` constants defined by this class.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForMessageIdsForUser

        int\[\] getPermissionsForMessageIdsForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] messageIds\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_)

        Deprecated.

        Get the permissions that a given user has for the given messages.

        Parameters:

        `messageIds_` - The ids of messages.

        `username_` - The username (ie login) of a user. If the username is invalid, the method will execute as if for an anonymous user.

        Returns:

        An array of `int`s, each of which represents the passed user's permission level for the corresponding message. This is one of the `MESSAGE_PERMISSION_XXX` constants defined by this class.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSubscribersForForum

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getSubscribersForForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns the usernames of the users subscribed to a given forum.

        Parameters:

        `forumId_` - The id of the forum whose subscribers should be retrieved.

        Returns:

        The usernames of the forum subscribers.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### isForumPublic

        boolean isForumPublic([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns whether a forum is public.

        Parameters:

        `forumId_` - The id of a forum.

        Returns:

        `true` if the given forum is public, and `false` otherwise

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed forum id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyUserCreation

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void notifyUserCreation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_)

        Deprecated.

        done automatically by UserService.createUser

        Notifies this service that a new user has been created. This call is used when a user has has been created in the Personalization server, but has not logged in to forums yet (ie `activateUserSession` has not been called) and the administrator wants to add the user to a rolemap, etc. In that case, the Forums server will not know the user exists unless this call is made first.

        Parameters:

        `username_` - The username (ie login) of the new user.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyUsersCreation

        void notifyUsersCreation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_)

        Deprecated.

        Notifies this service that new users have been created (see [`notifyUserCreation(java.lang.String)`](#notifyUserCreation\(java.lang.String\))).

        Parameters:

        `usernames_` - The usernames (ie logins) of the new users.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSubscribedThreadsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getSubscribedThreadsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Get all the threads to which the current user is subscribed, paging.

        Parameters:

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`DiscussionThread`](DiscussionThread.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `DiscussionThread` objects.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSubscribedForumsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getSubscribedForumsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Get all the forums to which the current user is subscribed, paging.

        Parameters:

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Forum`](Forum.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `Forum` objects.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getChildrenForMessagePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getChildrenForMessagePaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") messageId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get all the child messages (ie replies) of a given message, paging.

        Parameters:

        `messageId_` - The id of a message.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all results from `startIndex_` to the end, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Message`](Message.html "class in com.appiancorp.suiteapi.forums").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `Resultpage` containing an array of `Message` objects.

        Throws:

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed message id is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient permissios to view messages. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, and READER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may view messages.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Deprecated.

        Gets the name of the application on which this service is running.

        Returns:

        the name of the application

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getApplicationPermissions

        boolean\[\] getApplicationPermissions()

        Deprecated.

        Returns boolean\[3\] of system permissions which is set in session.

        Returns:

        A `boolean` array of three system permissions. Element \[0\] of the returned array indicates whether the current user can `createForum`; element \[1\] of the array indicates whether the current user can `getAllDeletedMessagesPaging`; and \[2\] indicates whether the current user can `importMessages`. See the forums security map description in the overall service description.

    -   ### getWorkspace

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getWorkspace()

        Deprecated.

        Gets the current memory profile for the workspace.

        Returns:

        array of Strings of length 4 describing memory usage:

        -   \[0\]Used - Memory Used by the Server so far for storage
        -   \[1\]Allocated - Memory allocated for use. Often if a large data item was allocated by a server and subsequently freed, this value will be large compared to "Used". If nearly all memory allocated is in use, this value will be close to (but always higher than) "Used"
        -   \[2\]Mapped - is the space used by memory-mapped files
        -   \[3\]Available - is the total available memory for the Server process

        Note: All usage statistics are in Bytes.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createMessages

        [Message](Message.html "class in com.appiancorp.suiteapi.forums")\[\] createMessages([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] forumIds\_, [Message](Message.html "class in com.appiancorp.suiteapi.forums")\[\] msgs\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Create multiple messages, one per forum. NOTE: To physically store the messages to disk, this call must be followed by a call to [`DiscussionBodyService.createMessages(com.appiancorp.suiteapi.forums.Message[])`](DiscussionBodyService.html#createMessages\(com.appiancorp.suiteapi.forums.Message%5B%5D\)), using the `filename`s returned by this method.

        Parameters:

        `forumIds_` - The ids of the forums in which to create the new messages.

        `msgs_` - The `Message` objects from which to create the messages. The minimum required fields that must be set in each object are: `threadId`, `parentId`, `subject`, and `anonymousAuthor`. When creating a new thread, the `threadId` and `parentId` fields should be set to `0`. The `id`, `remoteId`, and `filename` fields will be assigned by the server.

        Returns:

        The new messages, with the `id`, `remoteId`, and `filename` fields properly populated.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the passed forum ids is invalid

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `parentId` of any one of the passed messages does not exist

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the `forumIds_` array is not the same length as the `msgs_` array

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to create messages. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, and WRITER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may create messages.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the `msgs_` array or one or more elements in the the array is null.

    -   ### createForums

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] createForums([Forum](Forum.html "class in com.appiancorp.suiteapi.forums")\[\] forums\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Create multiple discussion forums. Forums contain threads which contain messages.

        Parameters:

        `forums_` - The forums to be created. The following fields of the passed objects must be set: `name`, `creator` and `dateCreated`. The value of the `id` field is ignored (can be `null`), since it will be assigned by the server.

        Returns:

        The server-assigned forum ids (local ids).

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, WRITER, READER, and USER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may create forums.

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the UUID of any of the forums already exists or if the same UUID is passed in for several forums

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### importMessages

        [Message](Message.html "class in com.appiancorp.suiteapi.forums")\[\] importMessages([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] forumIds\_, [Message](Message.html "class in com.appiancorp.suiteapi.forums")\[\] msgs\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Import multiple messages, one per forum. This method will use the `datePosted` and `author` values specified in the passed `Message` objects instead of assigning them on the server. NOTE: To physically store the messages to disk, this call must be followed by a call to [`DiscussionBodyService.createMessages(com.appiancorp.suiteapi.forums.Message[])`](DiscussionBodyService.html#createMessages\(com.appiancorp.suiteapi.forums.Message%5B%5D\)), using the `filename`s returned by this method.

        Parameters:

        `forumIds_` - The ids of the forums in which to create the messages.

        `msgs_` - The `Message` objects from which to create the messages. The minimum required fields that must be set in each object are: `threadId`, `parentId`, `subject`, `anonymousAuthor`, `datePosted`, and `author`. When creating a new thread, the `threadId` and `parentId` fields should be set to `0`. The `id`, `remoteId`, and `filename` fields will be assigned by the server.

        Returns:

        The imported messages, with the `id`, `remoteId`, and `filename` fields properly populated.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the passed forum ids is invalid

        `[InvalidMessageException](../common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `parentId` of any one of the passed messages is invalid

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the `forumIds_` array is not the same length as the `msgs_` array

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to create messages. Only SYSADMIN, APPADMIN, OWNER, ADMINISTRATOR, and WRITER roles in [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") may create messages.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getThreadsList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getThreadsList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] threadIds\_)

        Deprecated.

        Gets the specified threads, returning the valid results even if all the results cannot be retrieved (for instance, if some of the threads corresponding to the passed ids no longer exist).

        Parameters:

        `threadIds_` - The ids of the threads to retrieve.

        Returns:

        A `ResultList` containing threads and result codes. the [`Result.getResults()`](../common/Result.html#getResults\(\)) method should be used to get all the threads that were successfully retrieved. In addition [`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\)) can be used to get the list of result codes corresponding to each of the passed thread ids. Each code represents the successful retrieval of a thread, or, if the thread could not be retrieved, the reason for the failure. Possible result codes: `ResultList.CODE_INVALID` = the thread specified does not exist, `ResultList.CODE_NO_PERMISSION` = the user can't see the thread, and `ResultList.CODE_VALID` = the user can see the thread

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getForumsList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getForumsList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] forumIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the specified forums, returning the valid results even if all the results cannot be retrieved (for instance, if some of the forums corresponding to the passed ids no longer exist).

        Parameters:

        `forumIds_` - The ids of the threads to retrieve.

        Returns:

        A `ResultList` containing forums and result codes. the [`Result.getResults()`](../common/Result.html#getResults\(\)) method should be used to get all the forums that were successfully retrieved. In addition [`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\)) can be used to get the list of result codes corresponding to each of the passed forum ids. Each code represents the successful retrieval of a forum, or, if the forum could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getMessagesList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getMessagesList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] messageIds\_)

        Deprecated.

        Gets the specified messages, returning the valid results even if all the results cannot be retrieved (for instance, if some of the messages corresponding to the passed ids no longer exist).

        Parameters:

        `messageIds_` - The ids of the messages to retrieve.

        Returns:

        A `ResultList` containing messages and result codes. the [`Result.getResults()`](../common/Result.html#getResults\(\)) method should be used to get all the messages that were successfully retrieved. In addition [`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\)) can be used to get the list of result codes corresponding to each of the passed message ids. Each code represents the successful retrieval of a message, or, if the message could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validateGroupMembership

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") boolean validateGroupMembership([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] memGroupIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] admGroupIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        No longer necessary with credential system

        Validates if the association of a user as 'Member' and as an 'Administrator has changed or not.

        Parameters:

        `memGroupIds_` - Groups for which the User is a member

        `admGroupIds_` - Groups for which the User is an administrator

        Returns:

        true if there is not change in the membership of the user

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateUsernames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] oldUsernames\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] newUsernames\_, long maxExpirationTimeInSeconds\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

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

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not a system administrator

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any `oldUsernames_` or `newUsernames_` contain any duplicates, or if an old username is being updated to a username that already exists

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

    -   ### inviteUsersToThread

        void inviteUsersToThread([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Add invitation for the given users to the given `thread`. Later, the invitee can accept the invitation by `acceptThreadInvitation` or deny the invitation by `denyThreadInvitation`, after which the invitation becomes void.

        Parameters:

        `usernames_` - the users to invite

        `threadId_` - the thread to which they are invites

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the thread does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the requesting user cannot subscribe other users to thread. Only SYSADMIN, APPADMIN, ADMINISTRATOR, and OWNER can subscribe other users.

    -   ### acceptThreadInvitation

        void acceptThreadInvitation([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Called by the invitee to accept the invitation.

        Parameters:

        `threadId_` - the thread to which the user wants to subscribe

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the thread does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user wasn't invited

    -   ### denyThreadInvitation

        void denyThreadInvitation([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Called by the invitee to deny the invitation. If the user wasn't invited, this method does effectively nothing.

        Parameters:

        `threadId_` - the thread to which the user does not want to subscribe

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the thread does not exist

    -   ### isInvitedToThreads

        boolean\[\] isInvitedToThreads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] threadIds\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Called to check if the invitation to threads for current user are valid.

        Parameters:

        `threadIds_` - the threads for which to check the user's invitation.

        Returns:

        array of boolean's, true if the user's invitation to the thread is valid, otherwise false.

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the threads does not exist

    -   ### changePartitionPaths

        void changePartitionPaths([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") originalPath, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newPath)

        Deprecated.

        Changes where message texts are stored from one path to another. This is method is useful when switching server environments. For example, if switching from Windows to Linux this method could change the partition path from c:\\forums to /home/usr/forums.

        Parameters:

        `originalPath` - The path where forum texts were previously stored.

        `newPath` - The path where forum texts will now be stored.

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

    -   ### validateTypedValues

        boolean validateTypedValues([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\[\] typedValues)

        Deprecated.

        Validates given TypedValues. This method is free to throw an exception or to return false if any TypedValue passed is invalid for this engine. This engine supports: AppianType.FORUM AppianType.DISCUSSION\_THREAD AppianType.MESSAGE

        Parameters:

        `typedValues` -

        Returns:

        true if valid, false if invalid

    -   ### setTimeZone

        void setTimeZone([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz)

        Deprecated.

        Set a backend timezone.

        Parameters:

        `tz` -

    -   ### setTimeZoneSameAs

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setTimeZoneSameAs([BackendTimeZoneSimple](../portal/BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sameAsId)

        Deprecated.

        Set the time zone information using the format used by the engines to encapsulate time zone information. This method sets the time zone for the forums engine only. NOTE: Using this method could lead to data inconsistency, use [`GlobalizationService.setTimeZone(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple)`](../portal/GlobalizationService.html#setTimeZone\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple\)) to set the time zone across all engines (rarely required).

        Parameters:

        `tz` - The specially formatted time zone object used by the engines

    -   ### getMessageCountByUsers

        [UserMessageCount](UserMessageCount.html "class in com.appiancorp.suiteapi.forums")\[\] getMessageCountByUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernameList) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns the number of message posts grouped by a list of users. Duplicated and invalid usernames are skipped. The order of the usernames is preserved. They are returned as they appeared in the input array.

        Parameters:

        `usernameList` - The list of usernames that the service is going to search for

        Returns:

        Returns an array of UserMessageCount objects: Each object has the username and the corresponding number (as an integer) of messages posted. If username is invalid, return zero. It does not return results with invalid users

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown if user does not have admin privileges

    -   ### getMessageCountByUsers

        [UserMessageCount](UserMessageCount.html "class in com.appiancorp.suiteapi.forums")\[\] getMessageCountByUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernameList, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") fromDate, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") toDate) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns the number of message posts grouped by a list of users from the fromDate to the toDate. Dates are inclusive and times are GMT. Duplicated and invalid usernames are skipped. The order of the usernames is preserved. They are returned as they appeared in the input array.

        Parameters:

        `usernameList` - The list of usernames that the service is going to search for

        `fromDate` - The initial date for the query

        `toDate` - The end date for the query

        Returns:

        Returns an array of UserMessageCount objects: Each object has the username and the corresponding number (as an integer) of messages posted. If username is invalid, return zero. It does not return results with invalid users

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown if user does not have admin privileges

    -   ### getMessageCountByUsersForForum

        [UserMessageCount](UserMessageCount.html "class in com.appiancorp.suiteapi.forums")\[\] getMessageCountByUsersForForum([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernameList, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") fromDate, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") toDate, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns the number of message posts grouped by a list of users from the fromDate to the toDate. Messages are filtered with a specific forum. Dates are inclusive and times are GMT. Duplicated and invalid usernames are skipped. The order of the usernames is preserved. They are returned as they appeared in the input array.

        Parameters:

        `usernameList` - The list of usernames that the service is going to search for

        `fromDate` - The initial date for the query

        `toDate` - The end date for the query

        `forumId` - Identifier of the forum to get statistics from

        Returns:

        Returns an array of UserMessageCount objects: Each object has the username and the corresponding number (as an integer) of messages posted. If the username is invalid, it will return a message count of zero for that user.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown if user does not have admin privileges

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getTopUsersForForum

        [UserMessageCount](UserMessageCount.html "class in com.appiancorp.suiteapi.forums")\[\] getTopUsersForForum([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") fromDate, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") toDate, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId, int topNUsers) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns which users are the most active when posting into a particular forum. The length of the returned array can be difined by changing the value of the parameter topNUsers.

        Parameters:

        `fromDate` - The initial date for the query

        `toDate` - The end date for the query

        `forumId` - Identifier of the forum to get statistics from

        `topNUsers` - The number of users you expect as an output of the function

        Returns:

        Returns the Top N Active Users in descending order by number of posts

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown if Forum Id is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown if user does not have admin privileges

    -   ### getTopUsersForSite

        [UserMessageCount](UserMessageCount.html "class in com.appiancorp.suiteapi.forums")\[\] getTopUsersForSite([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") fromDate, [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") toDate, int topNUsers) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns which users are the most active when posting into the entire site. The length of the returned array can be defined by changing the value of the parameter topNUsers. Starting a topic or replying to a topic counts as a post.

        Parameters:

        `fromDate` - The initial date for the query

        `toDate` - The end date for the query

        `topNUsers` - The number of users you expect as an output of the function

        Returns:

        Returns the Top N Active Users in descending order by number of posts

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown if user does not have admin privileges

    -   ### getMessagesByUserPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMessagesByUserPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, int startIndex, int batchSize, int sortProperty, int sortOrder) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        This function gets all messages for a specific user.

        Parameters:

        `username` - User whose messages are going to be retreived

        `startIndex` - The index into the collection of total results at which to start

        `batchSize` - The number of results to return

        `sortProperty` - The property by which the results should be sorted This should be one of the SORT\_BY\_XXX constants defined in {com.appiancorp.suiteapi.forums.DiscussionThread}

        `sortOrder` - The order in which results are going to be sorted {com.appiancorp.suiteapi.common.Constants#SORT\_ORDER\_ASCENDING} or {com.appiancorp.suiteapi.common.Constants#SORT\_ORDER\_DESCENDING}

        Returns:

        Returns all messages for the user

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown if user does not have admin privileges