---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessageService.html
original_path: api/com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessageService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal.portlets.leadermessage](package-summary.html)

# Interface LeaderMessageService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface LeaderMessageService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Leader Message channel and code will be removed in a future release.

Convenience methods for the leadership message portlet. A leadership message is contained within the leadership message porlet and contains a message to display to those with access to the portlet as well as an associated image.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../../../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../../../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../../../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../../../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../../../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[createLeaderMessage$UPDATES](#createLeaderMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteLeaderMessage$UPDATES](#deleteLeaderMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findLeaderMessagesInPortletPaging$UPDATES](#findLeaderMessagesInPortletPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findLeaderMessagesPaging$UPDATES](#findLeaderMessagesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getLeaderMessagesPage$UPDATES](#getLeaderMessagesPage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveLeaderMessage$UPDATES](#moveLeaderMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[shiftLeaderMessage$UPDATES](#shiftLeaderMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateLeaderMessage$UPDATES](#updateLeaderMessage$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createLeaderMessage](#createLeaderMessage\(java.lang.Long,com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessage\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [LeaderMessage](LeaderMessage.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage") lm_)`

    Deprecated.

    Create a leader message.

    `void`

    `[deleteLeaderMessage](#deleteLeaderMessage\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") leaderMessageId_)`

    Deprecated.

    Delete a leader message.

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findLeaderMessagesInPortletPaging](#findLeaderMessagesInPortletPaging\(com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessage,java.lang.Long,int,int\))([LeaderMessage](LeaderMessage.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage") message_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, int index_, int count_)`

    Deprecated.

    Searches through names of the leader messages the user can see, for a given portlet.

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findLeaderMessagesPaging](#findLeaderMessagesPaging\(com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessage,int,int\))([LeaderMessage](LeaderMessage.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage") message_, int index_, int count_)`

    Deprecated.

    Searches through names of leader messages that the current user can see.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Deprecated.

    Gets the name of the application on which this service is running.

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getLeaderMessagesPage](#getLeaderMessagesPage\(java.lang.Long,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, int startPosition_, int batchSize_)`

    Deprecated.

    Get a page of leader messages.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Deprecated.

    Gets the current memory profile for the workspace.

    `void`

    `[moveLeaderMessage](#moveLeaderMessage\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") leaderMessageId_, int newPosition_)`

    Deprecated.

    Move a leader message within the total list of messages for a portlet This method takes an absolute position.

    `[Void](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Void.html "class or interface in java.lang")`

    `[shiftLeaderMessage](#shiftLeaderMessage\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") leaderMessageId_, int numShift_)`

    Deprecated.

    Shift a leader message to a new specified position within the list of messages for a portlet.

    `void`

    `[updateLeaderMessage](#updateLeaderMessage\(com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessage\))([LeaderMessage](LeaderMessage.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage") lm_)`

    Deprecated.

    Update a leader message.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### createLeaderMessage$UPDATES

        static final boolean createLeaderMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageService.createLeaderMessage$UPDATES)

    -   ### updateLeaderMessage$UPDATES

        static final boolean updateLeaderMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageService.updateLeaderMessage$UPDATES)

    -   ### deleteLeaderMessage$UPDATES

        static final boolean deleteLeaderMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageService.deleteLeaderMessage$UPDATES)

    -   ### getLeaderMessagesPage$UPDATES

        static final boolean getLeaderMessagesPage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageService.getLeaderMessagesPage$UPDATES)

    -   ### moveLeaderMessage$UPDATES

        static final boolean moveLeaderMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageService.moveLeaderMessage$UPDATES)

    -   ### shiftLeaderMessage$UPDATES

        static final boolean shiftLeaderMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageService.shiftLeaderMessage$UPDATES)

    -   ### findLeaderMessagesPaging$UPDATES

        static final boolean findLeaderMessagesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageService.findLeaderMessagesPaging$UPDATES)

    -   ### findLeaderMessagesInPortletPaging$UPDATES

        static final boolean findLeaderMessagesInPortletPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageService.findLeaderMessagesInPortletPaging$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageService.getWorkspace$UPDATES)

-   ## Method Details

    -   ### createLeaderMessage

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createLeaderMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [LeaderMessage](LeaderMessage.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage") lm\_) throws [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Create a leader message. The last leader message created will be first in the list of returned messages for a portlet. The minimum required fields are `link`

        Parameters:

        `portletId_` - the ID of the portlet in which this leader message is being created.

        `lm_` - the leader message to create. ID will be ignored.

        Returns:

        the ID of the new leader message.

        Throws:

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet exists with the given ID

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateLeaderMessage

        void updateLeaderMessage([LeaderMessage](LeaderMessage.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage") lm\_) throws [InvalidLeaderMessageException](InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

        Deprecated.

        Update a leader message.

        Parameters:

        `lm_` - the new values for the leader message.

        Throws:

        `[InvalidLeaderMessageException](InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")` - if the ID of the leader message does not correspond to a valid leader message

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteLeaderMessage

        void deleteLeaderMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") leaderMessageId\_) throws [InvalidLeaderMessageException](InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

        Deprecated.

        Delete a leader message.

        Parameters:

        `leaderMessageId_` - the ID of the leader message to delete.

        Throws:

        `[InvalidLeaderMessageException](InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")` - if the ID does not correspond to a valid leader message

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getLeaderMessagesPage

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getLeaderMessagesPage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, int startPosition\_, int batchSize\_) throws [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a page of leader messages.

        Parameters:

        `portletId_` - the ID of the portlet whose leader messages are to be retrieved.

        `startPosition_` - the 0-based index into the collection of total results at which to start. Negative numbers are treated as zeros

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        Returns:

        a `ResultPage` containing a list of `LeaderMessage` objects

        Throws:

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet exists with the given ID

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### moveLeaderMessage

        void moveLeaderMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") leaderMessageId\_, int newPosition\_) throws [InvalidLeaderMessageException](InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

        Deprecated.

        Move a leader message within the total list of messages for a portlet This method takes an absolute position.

        Parameters:

        `leaderMessageId_` - the ID of the leader message to move.

        `newPosition_` - the leader message's new position. Position is 0-based. If the position index is equal to or greater than the number of leader messages the message is moved to the end.

        Throws:

        `[InvalidLeaderMessageException](InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")` - if the ID does not correspond to a valid leader message

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### shiftLeaderMessage

        [Void](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Void.html "class or interface in java.lang") shiftLeaderMessage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") leaderMessageId\_, int numShift\_) throws [InvalidLeaderMessageException](InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

        Deprecated.

        Shift a leader message to a new specified position within the list of messages for a portlet. The position shifted is relative.

        Parameters:

        `leaderMessageId_` - the ID of the leader message to move.

        `numShift_` - the number of spaces to shift the leadership message. If the number is equal to or greater than the number of leader messages the message is moved to the end.

        Throws:

        `[InvalidLeaderMessageException](InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")` - if the ID does not correspond to a valid leader message

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### findLeaderMessagesPaging

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findLeaderMessagesPaging([LeaderMessage](LeaderMessage.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage") message\_, int index\_, int count\_)

        Deprecated.

        Searches through names of leader messages that the current user can see. The search bean contains nulls for match-all wildcards. `java.lang.String` items are matched using regular expressions (e.g., "ab\*" matches those items beginning with "ab")

        Parameters:

        `message_` - the `LeaderMessage` used in the search. If `null`, `null` will be returned.

        `index_` - the index of the first `LeaderMessage` that will be returned

        `count_` - the number of leader messages to be returned in the `ResultPage`

        Returns:

        a `ResultPage` containing the list of `LeaderMessage` objects matching the search terms

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### findLeaderMessagesInPortletPaging

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findLeaderMessagesInPortletPaging([LeaderMessage](LeaderMessage.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage") message\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, int index\_, int count\_)

        Deprecated.

        Searches through names of the leader messages the user can see, for a given portlet. The search bean contains nulls for match-all wildcards. `java.lang.String` items are matched using regular expressions (e.g., "ab\*" matches those items beginning with "ab")

        Parameters:

        `message_` - the `LeaderMessage` used in the search. If `null`, `null` will be returned.

        `portletId_` - the ID of the portlet in which to search

        `index_` - the index of the first `LeaderMessage` that will be returned

        `count_` - the number of leader messages to be returned in the `ResultPage`

        Returns:

        a `ResultPage` containing the list of `LeaderMessage` objects matching the search terms

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Deprecated.

        Gets the name of the application on which this service is running.

        Returns:

        The name of the application

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

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

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs