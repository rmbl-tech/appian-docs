---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessageService.html
original_path: api/com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessageService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal.portlets.groupmessage](package-summary.html)

# Interface GroupMessageService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface GroupMessageService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Group Message channel and code will be removed in a future release.

Provides methods that relate to the group message channel. The group message channel contains a list of various internal and external links, and each link has a message associated with it. When a message is created it is given a number of days before it will expire. Once the number of days has passed the message is no longer displayed in the channel.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../../../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../../../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../../../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../../../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../../../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[createGroupMessage$UPDATES](#createGroupMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteGroupMessage$UPDATES](#deleteGroupMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findGroupMessagesInPortletPaging$UPDATES](#findGroupMessagesInPortletPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findGroupMessagesPaging$UPDATES](#findGroupMessagesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getCurrentGroupMessagesPage$UPDATES](#getCurrentGroupMessagesPage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getExpiredGroupMessagesPage$UPDATES](#getExpiredGroupMessagesPage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getGroupMessagesPage$UPDATES](#getGroupMessagesPage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveGroupMessage$UPDATES](#moveGroupMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[shiftGroupMessage$UPDATES](#shiftGroupMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateGroupMessage$UPDATES](#updateGroupMessage$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createGroupMessage](#createGroupMessage\(java.lang.Long,com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessage\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [GroupMessage](GroupMessage.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage") gm_)`

    Deprecated.

    Create a group message in the given portlet.

    `void`

    `[deleteGroupMessage](#deleteGroupMessage\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupMessageId_)`

    Deprecated.

    Delete a group message

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findGroupMessagesInPortletPaging](#findGroupMessagesInPortletPaging\(com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessage,java.lang.Long,int,int\))([GroupMessage](GroupMessage.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage") message_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, int index_, int count_)`

    Deprecated.

    Searches through names of the group messages the user can see, for a given portlet.

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findGroupMessagesPaging](#findGroupMessagesPaging\(com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessage,int,int\))([GroupMessage](GroupMessage.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage") message_, int index_, int count_)`

    Deprecated.

    Searches through names of the group messages the user can see.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Deprecated.

    Gets the name of the application on which this service is running.

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCurrentGroupMessagesPage](#getCurrentGroupMessagesPage\(java.lang.Long,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, int startIndex_, int batchSize_)`

    Deprecated.

    Retrieves the current (that is, not expired) group messages in the given portlet

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getExpiredGroupMessagesPage](#getExpiredGroupMessagesPage\(java.lang.Long,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, int startIndex_, int batchSize_)`

    Deprecated.

    Retrieves the expired group messages in the given portlet

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getGroupMessagesPage](#getGroupMessagesPage\(java.lang.Long,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, int startIndex_, int batchSize_)`

    Deprecated.

    Retrieves all group messages (both current and expired) in the given portlet

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Deprecated.

    Gets the current memory profile for the workspace.

    `void`

    `[moveGroupMessage](#moveGroupMessage\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupMessageId_, int newPosition_)`

    Deprecated.

    Move a group within the total list of messages (current and expired) for a portlet.

    `void`

    `[shiftGroupMessage](#shiftGroupMessage\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupMessageId_, int newPosition_)`

    Deprecated.

    Shift a group message within its category (current or expired) for a portlet.

    `void`

    `[updateGroupMessage](#updateGroupMessage\(com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessage\))([GroupMessage](GroupMessage.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage") gm_)`

    Deprecated.

    Update a group message.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### createGroupMessage$UPDATES

        static final boolean createGroupMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.createGroupMessage$UPDATES)

    -   ### updateGroupMessage$UPDATES

        static final boolean updateGroupMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.updateGroupMessage$UPDATES)

    -   ### deleteGroupMessage$UPDATES

        static final boolean deleteGroupMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.deleteGroupMessage$UPDATES)

    -   ### getCurrentGroupMessagesPage$UPDATES

        static final boolean getCurrentGroupMessagesPage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.getCurrentGroupMessagesPage$UPDATES)

    -   ### getExpiredGroupMessagesPage$UPDATES

        static final boolean getExpiredGroupMessagesPage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.getExpiredGroupMessagesPage$UPDATES)

    -   ### getGroupMessagesPage$UPDATES

        static final boolean getGroupMessagesPage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.getGroupMessagesPage$UPDATES)

    -   ### moveGroupMessage$UPDATES

        static final boolean moveGroupMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.moveGroupMessage$UPDATES)

    -   ### shiftGroupMessage$UPDATES

        static final boolean shiftGroupMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.shiftGroupMessage$UPDATES)

    -   ### findGroupMessagesPaging$UPDATES

        static final boolean findGroupMessagesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.findGroupMessagesPaging$UPDATES)

    -   ### findGroupMessagesInPortletPaging$UPDATES

        static final boolean findGroupMessagesInPortletPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.findGroupMessagesInPortletPaging$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageService.getWorkspace$UPDATES)

-   ## Method Details

    -   ### createGroupMessage

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createGroupMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [GroupMessage](GroupMessage.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage") gm\_) throws [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Create a group message in the given portlet. The latest group message added to a portlet will be the first one in the retrieved list of group messages for that portlet. Minimum fields that must be populated on a group message for successful creation: `link` (the fields on this `Link` object that must be populated are given by [`LinksService.updateLink(com.appiancorp.suiteapi.portal.portlets.links.Link)`](../links/LinksService.html#updateLink\(com.appiancorp.suiteapi.portal.portlets.links.Link\)))

        Parameters:

        `portletId_` - the ID of the portlet in which this group messages is being created.

        `gm_` - the group message to create. The `id` field will be ignored, and the `Link` field is required.

        Returns:

        the ID of the created group message

        Throws:

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the portlet ID does not correspond to a valid portlet

        `ServiceException` - if any system-level error occurs

    -   ### updateGroupMessage

        void updateGroupMessage([GroupMessage](GroupMessage.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage") gm\_) throws [InvalidGroupMessageException](InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

        Deprecated.

        Update a group message. Minimum fields necessary for updating a group message: `id`. If the `link` field is not `null`, the link ID of the link is NOT updated, and the minimum fields that must be populated on this `Link` object are given by [`LinksService.updateLink(com.appiancorp.suiteapi.portal.portlets.links.Link)`](../links/LinksService.html#updateLink\(com.appiancorp.suiteapi.portal.portlets.links.Link\))

        Parameters:

        `gm_` - a group message with the updated values. The `Link` field is required

        Throws:

        `[InvalidGroupMessageException](InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")` - if the ID of the group message does not correspond to a valid group message

        `ServiceException` - if any system-level error occurs

    -   ### deleteGroupMessage

        void deleteGroupMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupMessageId\_) throws [InvalidGroupMessageException](InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

        Deprecated.

        Delete a group message

        Parameters:

        `groupMessageId_` - the ID of the group message to delete

        Throws:

        `[InvalidGroupMessageException](InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")` - if the ID does not correspond to a valid group message

        `ServiceException` - if any system-level error occurs

    -   ### getCurrentGroupMessagesPage

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCurrentGroupMessagesPage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, int startIndex\_, int batchSize\_) throws [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the current (that is, not expired) group messages in the given portlet

        Parameters:

        `portletId_` - the ID of the portlet whose group messages are to be retrieved

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        Returns:

        a `ResultPage` which contains an array of `GroupMessage` objects, representing the current group messages for the given portlet

        Throws:

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid portlet

        `ServiceException` - if any system-level error occurs

    -   ### getExpiredGroupMessagesPage

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getExpiredGroupMessagesPage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, int startIndex\_, int batchSize\_) throws [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the expired group messages in the given portlet

        Parameters:

        `portletId_` - the ID of the portlet whose group messages are to be retrieved

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        Returns:

        a `ResultPage` which contains an array of `GroupMessage` objects, representing the expired group messages for the given portlet

        Throws:

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid portlet

        `ServiceException` - if any system-level error occurs

    -   ### getGroupMessagesPage

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getGroupMessagesPage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, int startIndex\_, int batchSize\_) throws [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves all group messages (both current and expired) in the given portlet

        Parameters:

        `portletId_` - the ID of the portlet whose group messages are to be retrieved

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros

        `batchSize_` - the number of results to return Use [`Constants.COUNT_ALL`](../../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged

        Returns:

        a `ResultPage` which contains an array of `GroupMessage` objects, representing all the group messages for the given portlet

        Throws:

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid portlet

        `ServiceException` - if any system-level error occurs

    -   ### moveGroupMessage

        void moveGroupMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupMessageId\_, int newPosition\_) throws [InvalidGroupMessageException](InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

        Deprecated.

        Move a group within the total list of messages (current and expired) for a portlet.

        Parameters:

        `groupMessageId_` - the ID of the group message to move

        `newPosition_` - the group message's new position. Position is 0-based. If the position index is equal to or greater than the number of group messages in the portlet then the message is moved to the end of the list. If the position index is negative then the message is moved to the beginning of the list.

        Throws:

        `[InvalidGroupMessageException](InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")` - if the ID does not correspond to a valid group message

        `ServiceException` - if any system-level error occurs

    -   ### shiftGroupMessage

        void shiftGroupMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupMessageId\_, int newPosition\_) throws [InvalidGroupMessageException](InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

        Deprecated.

        Shift a group message within its category (current or expired) for a portlet.

        Parameters:

        `groupMessageId_` - the ID of the group message to move

        `newPosition_` - the group message's new position within its category. Position is 0-based. If the position index is equal to or greater than the number of group messages in the category, the message is moved to the end of the category's list. If the position index is negative then the message is moved to the beginning of the category list.

        Throws:

        `[InvalidGroupMessageException](InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")` - if the ID does not correspond to a valid group message

        `ServiceException` - if any system-level error occurs

    -   ### findGroupMessagesPaging

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findGroupMessagesPaging([GroupMessage](GroupMessage.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage") message\_, int index\_, int count\_)

        Deprecated.

        Searches through names of the group messages the user can see. The search bean contains nulls for match-all wildcards. `java.lang.String` items are matched using regular expressions (e.g., "ab\*" matches those items beginning with "ab")

        Parameters:

        `message_` - the group message used in the search. If `null`, `null` will be returned.

        `index_` - the index of the first group message that will be returned

        `count_` - the number of group messages to be returned in the `ResultPage`

        Returns:

        a `ResultPage` containing the list of `GroupMessage` objects matching the search terms

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### findGroupMessagesInPortletPaging

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findGroupMessagesInPortletPaging([GroupMessage](GroupMessage.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage") message\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, int index\_, int count\_)

        Deprecated.

        Searches through names of the group messages the user can see, for a given portlet. The search bean contains nulls for match-all wildcards. `java.lang.String` items are matched using regular expressions (e.g., "ab\*" matches those items beginning with "ab")

        Parameters:

        `message_` - the group message used in the search. If `null`, `null` will be returned.

        `portletId_` - the ID of the portlet in which to search

        `index_` - the index of the first group message that will be returned

        `count_` - the number of group messages to be returned in the `ResultPage`

        Returns:

        a `ResultPage` containing the list of `GroupMessage` objects matching the search terms

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Deprecated.

        Gets the name of the application on which this service is running.

        Returns:

        the name of the application

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getWorkspace

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getWorkspace()

        Deprecated.

        Gets the current memory profile for the workspace.

        Returns:

        array of strings of length 4 describing memory usage:

        -   \[0\]Used - Memory Used by the Server so far for storage
        -   \[1\]Allocated - Memory allocated for use. Often if a large data item was allocated by a server and subsequently freed, this value will be large compared to "Used". If nearly all memory allocated is in use, this value will be close to (but always higher than) "Used"
        -   \[2\]Mapped - is the space used by memory-mapped files
        -   \[3\]Available - is the total available memory for the Server process

        Note: All usage statistics are in Bytes.

        Throws:

        `ServiceException` - if any system-level error occurs