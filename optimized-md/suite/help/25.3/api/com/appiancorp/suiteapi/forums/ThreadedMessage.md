---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/ThreadedMessage.html
original_path: api/com/appiancorp/suiteapi/forums/ThreadedMessage.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Class ThreadedMessage

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.forums.ThreadedMessage

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class ThreadedMessage extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

A convenience class that gathers the information required by clients to display a list of threads and their contained messages.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ANONYMOUS_AUTHOR](#SORT_BY_ANONYMOUS_AUTHOR)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_AUTHOR](#SORT_BY_AUTHOR)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_AVERAGE_RATING](#SORT_BY_AVERAGE_RATING)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_BODY_LOCATION](#SORT_BY_BODY_LOCATION)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_POSTED](#SORT_BY_DATE_POSTED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DEPTH](#SORT_BY_DEPTH)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_RATING_COUNT](#SORT_BY_RATING_COUNT)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SPONSORED](#SORT_BY_SPONSORED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SUBJECT](#SORT_BY_SUBJECT)`

    Deprecated.

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ThreadedMessage](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getAllowedForumActions](#getAllowedForumActions\(\))()`

    Deprecated.

    Get the actions that the user can do on this forum.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getAllowedMessageActions](#getAllowedMessageActions\(\))()`

    Deprecated.

    Get the actions that the user can do on this message.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getAllowedThreadActions](#getAllowedThreadActions\(\))()`

    Deprecated.

    Get the actions that the user can do on this thread.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAuthor](#getAuthor\(\))()`

    Deprecated.

    Get the user name of the message's author.

    `double`

    `[getAverageRating](#getAverageRating\(\))()`

    Deprecated.

    Get the rating of this message.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getBody](#getBody\(\))()`

    Deprecated.

    Get the body for this message.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getBodyLocation](#getBodyLocation\(\))()`

    Deprecated.

    Set the location of this body.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDatePosted](#getDatePosted\(\))()`

    Deprecated.

    Get the date-time this message was posted.

    `int`

    `[getDepth](#getDepth\(\))()`

    Deprecated.

    Get the depth of the message.

    `[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`

    `[getForumId](#getForumId\(\))()`

    Deprecated.

    Get the `GlobalId` for the forum containing the message.

    `[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`

    `[getMessageId](#getMessageId\(\))()`

    Deprecated.

    Get the `GlobalId` of the message.

    `[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`

    `[getParentId](#getParentId\(\))()`

    Deprecated.

    Get the `GlobalId` of the message's parent message.

    `int`

    `[getRatingCount](#getRatingCount\(\))()`

    Deprecated.

    Get the count of ratings for this message.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getSubject](#getSubject\(\))()`

    Deprecated.

    Get the subject of this message.

    `[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`

    `[getThreadId](#getThreadId\(\))()`

    Deprecated.

    Get the `GlobalId` for the thread containing this message.

    `boolean`

    `[isAnonymousAuthor](#isAnonymousAuthor\(\))()`

    Deprecated.

    Determine if the author of the message is anonymous.

    `boolean`

    `[isSponsored](#isSponsored\(\))()`

    Deprecated.

    Determine whether this thread is sponsored.

    `void`

    `[setAllowedForumActions](#setAllowedForumActions\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] allowedForumActions_)`

    Deprecated.

    Set the actions that the user can do on this forum.

    `void`

    `[setAllowedMessageActions](#setAllowedMessageActions\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] allowedMessageActions_)`

    Deprecated.

    Set the actions that the user can do on this message.

    `void`

    `[setAllowedThreadActions](#setAllowedThreadActions\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] allowedThreadActions_)`

    Deprecated.

    Set the actions that the user can do on this thread.

    `void`

    `[setAnonymousAuthor](#setAnonymousAuthor\(boolean\))(boolean anonymous_)`

    Deprecated.

    Set whether the author of this message is anonymous.

    `void`

    `[setAuthor](#setAuthor\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_)`

    Deprecated.

    Set the user name of the message's author.

    `void`

    `[setAverageRating](#setAverageRating\(double\))(double rating_)`

    Deprecated.

    Set the rating of this message.

    `void`

    `[setBody](#setBody\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") body_)`

    Deprecated.

    Set the body for this message.

    `void`

    `[setBodyLocation](#setBodyLocation\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filename_)`

    Deprecated.

    Get the location of this body.

    `void`

    `[setDatePosted](#setDatePosted\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    Deprecated.

    Set the date-time this message was posted.

    `void`

    `[setDepth](#setDepth\(int\))(int depth_)`

    Deprecated.

    Set the depth of the message.

    `void`

    `[setForumId](#setForumId\(com.appiancorp.suiteapi.common.GlobalId\))([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") forumId_)`

    Deprecated.

    Set the `GlobalId` for the forum containing the message.

    `void`

    `[setMessageId](#setMessageId\(com.appiancorp.suiteapi.common.GlobalId\))([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") messageId_)`

    Deprecated.

    Set the `GlobalId` of the message.

    `void`

    `[setParentId](#setParentId\(com.appiancorp.suiteapi.common.GlobalId\))([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") parentId_)`

    Deprecated.

    Set the `GlobalId` of the message's parent message.

    `void`

    `[setRatingCount](#setRatingCount\(int\))(int ratingCount_)`

    Deprecated.

    Set the count of ratings for this message.

    `void`

    `[setSponsored](#setSponsored\(boolean\))(boolean sponsored_)`

    Deprecated.

    Set whether this thread is sponsored.

    `void`

    `[setSubject](#setSubject\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") subject_)`

    Deprecated.

    Set the subject of this message.

    `void`

    `[setThreadId](#setThreadId\(com.appiancorp.suiteapi.common.GlobalId\))([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") threadId_)`

    Deprecated.

    Set the `GlobalId` for the thread containing this message.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_DEPTH

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DEPTH

        Deprecated.

    -   ### SORT\_BY\_AUTHOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_AUTHOR

        Deprecated.

    -   ### SORT\_BY\_ANONYMOUS\_AUTHOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ANONYMOUS\_AUTHOR

        Deprecated.

    -   ### SORT\_BY\_DATE\_POSTED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_POSTED

        Deprecated.

    -   ### SORT\_BY\_SUBJECT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SUBJECT

        Deprecated.

    -   ### SORT\_BY\_AVERAGE\_RATING

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_AVERAGE\_RATING

        Deprecated.

    -   ### SORT\_BY\_RATING\_COUNT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_RATING\_COUNT

        Deprecated.

    -   ### SORT\_BY\_BODY\_LOCATION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_BODY\_LOCATION

        Deprecated.

    -   ### SORT\_BY\_SPONSORED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SPONSORED

        Deprecated.

-   ## Constructor Details

    -   ### ThreadedMessage

        public ThreadedMessage()

        Deprecated.

-   ## Method Details

    -   ### getMessageId

        public [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") getMessageId()

        Deprecated.

        Get the `GlobalId` of the message.

        Returns:

        The `GlobalId`.

    -   ### setMessageId

        public void setMessageId([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") messageId\_)

        Deprecated.

        Set the `GlobalId` of the message.

        Parameters:

        `messageId_` -

    -   ### getParentId

        public [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") getParentId()

        Deprecated.

        Get the `GlobalId` of the message's parent message.

        Returns:

        The parent's `GlobalId`.

    -   ### setParentId

        public void setParentId([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") parentId\_)

        Deprecated.

        Set the `GlobalId` of the message's parent message.

        Parameters:

        `parentId_` -

    -   ### getDepth

        public int getDepth()

        Deprecated.

        Get the depth of the message. See `Message` for a definition of depth.

        Returns:

        The depth.

    -   ### setDepth

        public void setDepth(int depth\_)

        Deprecated.

        Set the depth of the message. See `Message` for a definition of depth.

        Parameters:

        `depth_` -

    -   ### getAuthor

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAuthor()

        Deprecated.

        Get the user name of the message's author.

        Returns:

        The author's user name.

    -   ### setAuthor

        public void setAuthor([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_)

        Deprecated.

        Set the user name of the message's author.

        Parameters:

        `author_` - the author to set

    -   ### isAnonymousAuthor

        public boolean isAnonymousAuthor()

        Deprecated.

        Determine if the author of the message is anonymous.

        Returns:

        `true` if the author is anonymous; `false` otherwise.

    -   ### setAnonymousAuthor

        public void setAnonymousAuthor(boolean anonymous\_)

        Deprecated.

        Set whether the author of this message is anonymous.

        Parameters:

        `anonymous_` -

    -   ### getDatePosted

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDatePosted()

        Deprecated.

        Get the date-time this message was posted.

        Returns:

        The date-time.

    -   ### setDatePosted

        public void setDatePosted([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        Deprecated.

        Set the date-time this message was posted.

        Parameters:

        `time_` -

    -   ### getSubject

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getSubject()

        Deprecated.

        Get the subject of this message.

        Returns:

        The subject.

    -   ### setSubject

        public void setSubject([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") subject\_)

        Deprecated.

        Set the subject of this message.

        Parameters:

        `subject_` -

    -   ### getBody

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getBody()

        Deprecated.

        Get the body for this message.

        Returns:

        The body.

    -   ### setBody

        public void setBody([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") body\_)

        Deprecated.

        Set the body for this message.

        Parameters:

        `body_` -

    -   ### getAverageRating

        public double getAverageRating()

        Deprecated.

        Get the rating of this message.

        Returns:

        The rating.

    -   ### setAverageRating

        public void setAverageRating(double rating\_)

        Deprecated.

        Set the rating of this message.

        Parameters:

        `rating_` -

    -   ### getRatingCount

        public int getRatingCount()

        Deprecated.

        Get the count of ratings for this message.

        Returns:

        The number of ratings.

    -   ### setRatingCount

        public void setRatingCount(int ratingCount\_)

        Deprecated.

        Set the count of ratings for this message.

        Parameters:

        `ratingCount_` -

    -   ### getBodyLocation

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getBodyLocation()

        Deprecated.

        Set the location of this body. See `Message`.

        Returns:

        The body's location.

    -   ### setBodyLocation

        public void setBodyLocation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filename\_)

        Deprecated.

        Get the location of this body. See `Message`.

        Parameters:

        `filename_` -

    -   ### getThreadId

        public [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") getThreadId()

        Deprecated.

        Get the `GlobalId` for the thread containing this message.

        Returns:

        The thread's `GlobalId`.

    -   ### setThreadId

        public void setThreadId([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") threadId\_)

        Deprecated.

        Set the `GlobalId` for the thread containing this message.

        Parameters:

        `threadId_` -

    -   ### isSponsored

        public boolean isSponsored()

        Deprecated.

        Determine whether this thread is sponsored.

        Returns:

        `true` if this thread is sponsored; `false` otherwise.

    -   ### setSponsored

        public void setSponsored(boolean sponsored\_)

        Deprecated.

        Set whether this thread is sponsored.

        Parameters:

        `sponsored_` -

    -   ### getForumId

        public [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") getForumId()

        Deprecated.

        Get the `GlobalId` for the forum containing the message.

        Returns:

        The forum `GlobalId`.

    -   ### setForumId

        public void setForumId([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") forumId\_)

        Deprecated.

        Set the `GlobalId` for the forum containing the message.

        Parameters:

        `forumId_` -

    -   ### getAllowedForumActions

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getAllowedForumActions()

        Deprecated.

        Get the actions that the user can do on this forum.

        Returns:

        An array of the actions.

    -   ### setAllowedForumActions

        public void setAllowedForumActions([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] allowedForumActions\_)

        Deprecated.

        Set the actions that the user can do on this forum.

        Parameters:

        `allowedForumActions_` - An array of the actions.

    -   ### getAllowedMessageActions

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getAllowedMessageActions()

        Deprecated.

        Get the actions that the user can do on this message.

        Returns:

        An array of the actions.

    -   ### setAllowedMessageActions

        public void setAllowedMessageActions([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] allowedMessageActions\_)

        Deprecated.

        Set the actions that the user can do on this message.

        Parameters:

        `allowedMessageActions_` - An array of the actions.

    -   ### getAllowedThreadActions

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getAllowedThreadActions()

        Deprecated.

        Get the actions that the user can do on this thread.

        Returns:

        An array of the actions.

    -   ### setAllowedThreadActions

        public void setAllowedThreadActions([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] allowedThreadActions\_)

        Deprecated.

        Set the actions that the user can do on this thread.

        Parameters:

        `allowedThreadActions_` - An array of the actions.