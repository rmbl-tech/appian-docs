---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/portlets/discussionthreads/DiscussionPortletService.html
original_path: api/com/appiancorp/suiteapi/portal/portlets/discussionthreads/DiscussionPortletService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal.portlets.discussionthreads](package-summary.html)

# Interface DiscussionPortletService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface DiscussionPortletService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Defines the convenience methods available for the discussion portlet.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../../../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../../../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../../../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../../../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../../../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[addForumForDiscussionPortlet$UPDATES](#addForumForDiscussionPortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getForumsForDiscussionPortlet$UPDATES](#getForumsForDiscussionPortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPublicForums$UPDATES](#getPublicForums$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeForumForDiscussionPortlet$UPDATES](#removeForumForDiscussionPortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setForumsForDiscussionPortlet$UPDATES](#setForumsForDiscussionPortlet$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addForumForDiscussionPortlet](#addForumForDiscussionPortlet\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Add a discussion forum to a portlet

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Deprecated.

    Gets the name of the application

    `[Forum](../../../forums/Forum.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getForumsForDiscussionPortlet](#getForumsForDiscussionPortlet\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_)`

    Deprecated.

    Retrieve the forums attached to a portlet

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getPublicForums](#getPublicForums\(\))()`

    Deprecated.

    Gets forums in public portlets in public pages

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Deprecated.

    Gets the current memory profile for the workspace.

    `void`

    `[removeForumForDiscussionPortlet](#removeForumForDiscussionPortlet\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Remove a forum from a portlet

    `void`

    `[setForumsForDiscussionPortlet](#setForumsForDiscussionPortlet\(java.lang.Long,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] forumIds_)`

    Deprecated.

    Set the forums to be attached to a portlet

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### addForumForDiscussionPortlet$UPDATES

        static final boolean addForumForDiscussionPortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.discussionthreads.DiscussionPortletService.addForumForDiscussionPortlet$UPDATES)

    -   ### getForumsForDiscussionPortlet$UPDATES

        static final boolean getForumsForDiscussionPortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.discussionthreads.DiscussionPortletService.getForumsForDiscussionPortlet$UPDATES)

    -   ### setForumsForDiscussionPortlet$UPDATES

        static final boolean setForumsForDiscussionPortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.discussionthreads.DiscussionPortletService.setForumsForDiscussionPortlet$UPDATES)

    -   ### removeForumForDiscussionPortlet$UPDATES

        static final boolean removeForumForDiscussionPortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.discussionthreads.DiscussionPortletService.removeForumForDiscussionPortlet$UPDATES)

    -   ### getPublicForums$UPDATES

        static final boolean getPublicForums$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.discussionthreads.DiscussionPortletService.getPublicForums$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.discussionthreads.DiscussionPortletService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.discussionthreads.DiscussionPortletService.getWorkspace$UPDATES)

-   ## Method Details

    -   ### addForumForDiscussionPortlet

        void addForumForDiscussionPortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Add a discussion forum to a portlet

        Parameters:

        `portletId_` - the portlet ID

        `forumId_` - the forum ID of the forum to add to the portlet

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID does not correspond to a discussion forum portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the given ID exists

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getForumsForDiscussionPortlet

        [Forum](../../../forums/Forum.html "class in com.appiancorp.suiteapi.forums")\[\] getForumsForDiscussionPortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieve the forums attached to a portlet

        Parameters:

        `portletId_` - the portlet ID

        Returns:

        an array of `Forum` objects attached to the portlet

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID does not correspond to a discussion forum portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the given ID exists

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setForumsForDiscussionPortlet

        void setForumsForDiscussionPortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] forumIds\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Set the forums to be attached to a portlet

        Parameters:

        `portletId_` - the portlet ID

        `forumIds_` - the IDs of the forums to attach to the portlet

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID does not correspond to a discussion forum portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the given ID exists

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeForumForDiscussionPortlet

        void removeForumForDiscussionPortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Remove a forum from a portlet

        Parameters:

        `portletId_` - the portlet ID

        `forumId_` - the forum ID of the forum to be removed

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID does not correspond to a discussion forum portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the given ID exists

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPublicForums

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getPublicForums()

        Deprecated.

        Gets forums in public portlets in public pages

        Returns:

        the forum IDs of the forums in public portlets in public pages

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Deprecated.

        Gets the name of the application

        Returns:

        the name of the application

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