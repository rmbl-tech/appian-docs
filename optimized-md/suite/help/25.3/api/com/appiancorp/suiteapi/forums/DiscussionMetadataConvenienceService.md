---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html
original_path: api/com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService.html
version: "25.3"
title: "Interface DiscussionMetadataConvenienceService"
page_id: "api/com/appiancorp/suiteapi/forums/DiscussionMetadataConvenienceService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Interface DiscussionMetadataConvenienceService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface DiscussionMetadataConvenienceService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

Defines the convenience methods available from the discussion forum server.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`DiscussionBodyService`](DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")
-   [`DiscussionMetadataCoreService`](DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")
-   [`ForumsSearchService`](ForumsSearchService.html "interface in com.appiancorp.suiteapi.forums")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[getForumSummaries$UPDATES](#getForumSummaries$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getForumSummariesPaging$UPDATES](#getForumSummariesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getForumSummary$UPDATES](#getForumSummary$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSponsoredThreadSummaries$UPDATES](#getSponsoredThreadSummaries$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSponsoredThreadSummariesPaging$UPDATES](#getSponsoredThreadSummariesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSubscribedForumSummaries$UPDATES](#getSubscribedForumSummaries$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSubscribedForumSummariesPaging$UPDATES](#getSubscribedForumSummariesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSubscribedThreadSummaries$UPDATES](#getSubscribedThreadSummaries$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSubscribedThreadSummariesPaging$UPDATES](#getSubscribedThreadSummariesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadedMessages$UPDATES](#getThreadedMessages$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadedMessagesPaging$UPDATES](#getThreadedMessagesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadSummaries$UPDATES](#getThreadSummaries$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadSummariesForForum$UPDATES](#getThreadSummariesForForum$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadSummariesForForumPaging$UPDATES](#getThreadSummariesForForumPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadSummariesPaging$UPDATES](#getThreadSummariesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getThreadSummary$UPDATES](#getThreadSummary$UPDATES)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PROPERTY_THREAD_SUMMARY_DATE_MODIFIED](#SORT_PROPERTY_THREAD_SUMMARY_DATE_MODIFIED)`

    Deprecated.

    A constant sort property for ThreadSummary

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PROPERTY_THREAD_SUMMARY_MESSAGE_COUNT](#SORT_PROPERTY_THREAD_SUMMARY_MESSAGE_COUNT)`

    Deprecated.

    A constant sort property for ThreadSummary

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PROPERTY_THREAD_SUMMARY_ROOT_SUBJECT](#SORT_PROPERTY_THREAD_SUMMARY_ROOT_SUBJECT)`

    Deprecated.

    A constant sort property for ThreadSummary

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[ForumSummary](ForumSummary.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getForumSummaries](#getForumSummaries\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    use getForumSummariesPaging instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getForumSummariesPaging](#getForumSummariesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get the summaries that the current user can access for a set of forums

    `[ForumSummary](ForumSummary.html "class in com.appiancorp.suiteapi.forums")`

    `[getForumSummary](#getForumSummary\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Get the summary for a forum.

    `[ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getSponsoredThreadSummaries](#getSponsoredThreadSummaries\(java.lang.Long%5B%5D,java.lang.Integer,java.lang.Integer,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] forumIds_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, int startIndex_, int batchSize_)`

    Deprecated.

    use getSponsoredThreadSummariesPaging instead

    `[ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getSponsoredThreadSummaries](#getSponsoredThreadSummaries\(java.lang.Long,java.lang.Integer,java.lang.Integer,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, int startIndex_, int batchSize_)`

    Deprecated.

    use getSponsoredThreadSummariesPaging instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getSponsoredThreadSummariesPaging](#getSponsoredThreadSummariesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] forumIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get a set of summaries for the sponsored threads in a set of forums.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getSponsoredThreadSummariesPaging](#getSponsoredThreadSummariesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get a set of summaries for the sponsored threads in a forum.

    `[ForumSummary](ForumSummary.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getSubscribedForumSummaries](#getSubscribedForumSummaries\(java.lang.Integer,java.lang.Integer,int,int\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, int startIndex_, int batchSize_)`

    Deprecated.

    use getSubscribedForumSummariesPaging instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getSubscribedForumSummariesPaging](#getSubscribedForumSummariesPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets the forums to which the user is subscribed as ResultPage.

    `[ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getSubscribedThreadSummaries](#getSubscribedThreadSummaries\(java.lang.Integer,java.lang.Integer,int,int\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, int startIndex_, int batchSize_)`

    Deprecated.

    use getSubscribedThreadSummariesPaging instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getSubscribedThreadSummariesPaging](#getSubscribedThreadSummariesPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets the summaries of threads to which the user is subscribed as ResultPages.

    `[ThreadedMessage](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getThreadedMessages](#getThreadedMessages\(java.lang.Long,java.lang.Integer,java.lang.Integer,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, int startIndex_, int count_)`

    Deprecated.

    use getThreadedMessagesPaging instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getThreadedMessagesPaging](#getThreadedMessagesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get messages that the current user can access for a forum.

    `[ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getThreadSummaries](#getThreadSummaries\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] threadIds_)`

    Deprecated.

    use getThreadSummariesPaging instead

    `[ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getThreadSummariesForForum](#getThreadSummariesForForum\(java.lang.Long,java.lang.Integer,java.lang.Integer,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, int startIndex_, int batchSize_)`

    Deprecated.

    use getThreadSummariesForForumPaging instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getThreadSummariesForForumPaging](#getThreadSummariesForForumPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets the summaries of threads in the forum as ResultPage.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getThreadSummariesPaging](#getThreadSummariesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] threadIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get the summaries for threads.

    `[ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")`

    `[getThreadSummary](#getThreadSummary\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Get the summary for a thread.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### SORT\_PROPERTY\_THREAD\_SUMMARY\_DATE\_MODIFIED

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PROPERTY\_THREAD\_SUMMARY\_DATE\_MODIFIED

        Deprecated.

        A constant sort property for ThreadSummary

    -   ### SORT\_PROPERTY\_THREAD\_SUMMARY\_ROOT\_SUBJECT

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PROPERTY\_THREAD\_SUMMARY\_ROOT\_SUBJECT

        Deprecated.

        A constant sort property for ThreadSummary

    -   ### SORT\_PROPERTY\_THREAD\_SUMMARY\_MESSAGE\_COUNT

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PROPERTY\_THREAD\_SUMMARY\_MESSAGE\_COUNT

        Deprecated.

        A constant sort property for ThreadSummary

    -   ### getForumSummary$UPDATES

        static final boolean getForumSummary$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getForumSummary$UPDATES)

    -   ### getForumSummaries$UPDATES

        static final boolean getForumSummaries$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getForumSummaries$UPDATES)

    -   ### getForumSummariesPaging$UPDATES

        static final boolean getForumSummariesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getForumSummariesPaging$UPDATES)

    -   ### getThreadSummary$UPDATES

        static final boolean getThreadSummary$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getThreadSummary$UPDATES)

    -   ### getThreadSummaries$UPDATES

        static final boolean getThreadSummaries$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getThreadSummaries$UPDATES)

    -   ### getThreadSummariesPaging$UPDATES

        static final boolean getThreadSummariesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getThreadSummariesPaging$UPDATES)

    -   ### getSponsoredThreadSummaries$UPDATES

        static final boolean getSponsoredThreadSummaries$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getSponsoredThreadSummaries$UPDATES)

    -   ### getSponsoredThreadSummariesPaging$UPDATES

        static final boolean getSponsoredThreadSummariesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getSponsoredThreadSummariesPaging$UPDATES)

    -   ### getThreadedMessages$UPDATES

        static final boolean getThreadedMessages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getThreadedMessages$UPDATES)

    -   ### getThreadedMessagesPaging$UPDATES

        static final boolean getThreadedMessagesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getThreadedMessagesPaging$UPDATES)

    -   ### getSubscribedForumSummaries$UPDATES

        static final boolean getSubscribedForumSummaries$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getSubscribedForumSummaries$UPDATES)

    -   ### getSubscribedForumSummariesPaging$UPDATES

        static final boolean getSubscribedForumSummariesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getSubscribedForumSummariesPaging$UPDATES)

    -   ### getSubscribedThreadSummaries$UPDATES

        static final boolean getSubscribedThreadSummaries$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getSubscribedThreadSummaries$UPDATES)

    -   ### getSubscribedThreadSummariesPaging$UPDATES

        static final boolean getSubscribedThreadSummariesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getSubscribedThreadSummariesPaging$UPDATES)

    -   ### getThreadSummariesForForum$UPDATES

        static final boolean getThreadSummariesForForum$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getThreadSummariesForForum$UPDATES)

    -   ### getThreadSummariesForForumPaging$UPDATES

        static final boolean getThreadSummariesForForumPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionMetadataConvenienceService.getThreadSummariesForForumPaging$UPDATES)

-   ## Method Details

    -   ### getForumSummary

        [ForumSummary](ForumSummary.html "class in com.appiancorp.suiteapi.forums") getForumSummary([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the summary for a forum.

        Parameters:

        `id_` - The local id of the forum to be summarized.

        Returns:

        A `ForumSummary` object relating to the given id.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the forum is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not contained in the list of participants within [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") for the given forum.

        `ServiceException` - if any system-level error occurs

    -   ### getForumSummaries

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ForumSummary](ForumSummary.html "class in com.appiancorp.suiteapi.forums")\[\] getForumSummaries([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getForumSummariesPaging instead

        Get the summaries that the current user can access for a set of forums.

        Parameters:

        `ids_` - The local ids of the forums to be summarized.

        Returns:

        An array of `ForumSummary` objects in the same order as the incoming ids. Forums which the user does not have access to will simply not be returned with the results.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the forums is invalid

        `ServiceException` - if any system-level error occurs

    -   ### getForumSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getForumSummariesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the summaries that the current user can access for a set of forums

        Parameters:

        `ids_` - The local ids of the forums to be summarized.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_FORUM_XXX` constants in [`ForumSummary`](ForumSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing the list of the `ForumSummary` objects for forums in the same order as the incoming ids.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the forums is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not contained in the list of participants within [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") for the given forum.

        `ServiceException` - if any system-level error occurs

    -   ### getThreadSummary

        [ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums") getThreadSummary([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the summary for a thread.

        Parameters:

        `threadId_` - The id of the thread.

        Returns:

        A `ThreadSummary` object corresponding to the given thread id.

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the thread does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not contained in the list of participants within [`ThreadRoleMap`](ThreadRoleMap.html "class in com.appiancorp.suiteapi.forums") for the given thread.

        `ServiceException` - if any system-level error occurs

    -   ### getThreadSummaries

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")\[\] getThreadSummaries([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] threadIds\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getThreadSummariesPaging instead

        Get the summaries for threads.

        Parameters:

        `threadIds_` - The ids of the threads.

        Returns:

        An array of `ThreadSummary` objects in the order of the given thread ids.

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the threads does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not contained in the list of participants within [`ThreadRoleMap`](ThreadRoleMap.html "class in com.appiancorp.suiteapi.forums") for any of the given threads.

        `ServiceException` - if any system-level error occurs

    -   ### getThreadSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getThreadSummariesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] threadIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the summaries for threads.

        Parameters:

        `threadIds_` - The ids of the threads.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_THREAD_SUMMARY_XXX` constants in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a ResultPage containing the list of `ThreadSummary` objects representing the thread summaries for `threadIds_`

        Throws:

        `[InvalidThreadException](../common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the threads does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not contained in the list of participants within [`ThreadRoleMap`](ThreadRoleMap.html "class in com.appiancorp.suiteapi.forums") for any of the given threads.

        `ServiceException` - if any system-level error occurs

    -   ### getSponsoredThreadSummaries

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")\[\] getSponsoredThreadSummaries([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, int startIndex\_, int batchSize\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getSponsoredThreadSummariesPaging instead

        Get a set of summaries for the sponsored threads in a forum.

        Parameters:

        `forumId_` - The local id of the forum containing the sponsored threads.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_THREAD_SUMMARY_XXX` constants in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        Returns:

        An array of `ThreadSummary` objects corresponding to the sponsored threads within the given forum

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the forum is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not contained in the list of participants within [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") the given forum.

        `ServiceException` - if any system-level error occurs

    -   ### getSponsoredThreadSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getSponsoredThreadSummariesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a set of summaries for the sponsored threads in a forum.

        Parameters:

        `forumId_` - The local id of the forum containing the sponsored threads.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_THREAD_SUMMARY_XXX` constants in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing the list of `ThreadSummary` objects for each sponsored thread within the given forum.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the forum is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not contained in the list of participants within [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") the given forum.

        `ServiceException` - if any system-level error occurs

    -   ### getSponsoredThreadSummaries

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")\[\] getSponsoredThreadSummaries([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] forumIds\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, int startIndex\_, int batchSize\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getSponsoredThreadSummariesPaging instead

        Get a set of summaries for the sponsored threads in a set of forums.

        Parameters:

        `forumIds_` - The local ids of the forums containing the sponsored threads.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_THREAD_SUMMARY_XXX` constants in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        Returns:

        An array of `ThreadSummary` objects corresponding to the sponsored sponsored threads within the given forums

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the forums is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not contained in the list of participants within [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") for any of the given forums.

        `ServiceException` - if any system-level error occurs

    -   ### getSponsoredThreadSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getSponsoredThreadSummariesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] forumIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a set of summaries for the sponsored threads in a set of forums.

        Parameters:

        `forumIds_` - The local ids of the forums containing the sponsored threads.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_THREAD_SUMMARY_XXX` constants in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing the list of `ThreadSummary` objects for each sponsored thread within the given forums.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the forums is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not contained in the list of participants within [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") for any of the given forums.

        `ServiceException` - if any system-level error occurs

    -   ### getThreadedMessages

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ThreadedMessage](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums")\[\] getThreadedMessages([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, int startIndex\_, int count\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getThreadedMessagesPaging instead

        Get messages that the current user can access for a forum

        Parameters:

        `forumId_` - The id of the forum containing the messages.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`ThreadedMessage`](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        `count_` - [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        Returns:

        The array of `ThreadedMessage` objects. A zero-length array if there are no messages.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the forum is invalid

        `ServiceException` - if any system-level error occurs

    -   ### getThreadedMessagesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getThreadedMessagesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get messages that the current user can access for a forum.

        Parameters:

        `forumId_` - The id of the forum containing the messages.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY__XXX` constants in [`ThreadedMessage`](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a ResultPage containing the list of `ThreadedMessage` objects representing the messages in the forum

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the forum is invalid

        `ServiceException` - if any system-level error occurs

    -   ### getSubscribedForumSummaries

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ForumSummary](ForumSummary.html "class in com.appiancorp.suiteapi.forums")\[\] getSubscribedForumSummaries([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, int startIndex\_, int batchSize\_)

        Deprecated.

        use getSubscribedForumSummariesPaging instead

        Gets the forums to which the user is subscribed.

        Parameters:

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_FORUM_XXX` constants in [`ForumSummary`](ForumSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        Returns:

        An array of `ForumSummary` objects corresponding to the forums to which the user is subscribed.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getSubscribedForumSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getSubscribedForumSummariesPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets the forums to which the user is subscribed as ResultPage.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_FORUM_XXX` constants in [`ForumSummary`](ForumSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of the `ForumSummary` objects representing the forums to which the user is subscribed.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getSubscribedThreadSummaries

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")\[\] getSubscribedThreadSummaries([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, int startIndex\_, int batchSize\_)

        Deprecated.

        use getSubscribedThreadSummariesPaging instead

        Gets the threads to which the user is subscribed.

        Parameters:

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_THREAD_SUMMARY_XXX` constants in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        Returns:

        an array of `ThreadSummary` corresponding to the threads to which the user is subscribed.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getSubscribedThreadSummariesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getSubscribedThreadSummariesPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets the summaries of threads to which the user is subscribed as ResultPages.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_THREAD_SUMMARY_XXX` constants in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing the list of `ThreadSummary` objects representing the threads to which the user is subscribed

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getThreadSummariesForForum

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")\[\] getThreadSummariesForForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, int startIndex\_, int batchSize\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getThreadSummariesForForumPaging instead

        Gets the summaries of threads in the forum.

        Parameters:

        `forumId_` - The forum id.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_THREAD_SUMMARY_XXX` constants in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        an array of `ThreadSummary` objects containing the summaries of threads in the given forum.

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the forum does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not contained in the list of participants within [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") for the given forum.

        `ServiceException` - if any system-level error occurs

    -   ### getThreadSummariesForForumPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getThreadSummariesForForumPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the summaries of threads in the forum as ResultPage.

        Parameters:

        `forumId_` - The forum id.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_PROPERTY_THREAD_SUMMARY_XXX` constants in [`ThreadSummary`](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing the list of `ThreadSummary` objects representing the thread summaries for the forum

        Throws:

        `[InvalidForumException](../common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the forum does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not contained in the list of participants within [`ForumsRoleMap`](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums") for the given forum.

        `ServiceException` - if any system-level error occurs