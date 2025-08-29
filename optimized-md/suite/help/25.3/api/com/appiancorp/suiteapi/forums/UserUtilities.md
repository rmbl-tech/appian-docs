---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/UserUtilities.html
original_path: api/com/appiancorp/suiteapi/forums/UserUtilities.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Class UserUtilities

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.forums.UserUtilities

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class UserUtilities extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

Contains utility methods related to users as relevant to discussions.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UNAVAILABLE](#UNAVAILABLE)`

    Deprecated.

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UserUtilities](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `static void`

    `[populateUserName](#populateUserName\(com.appiancorp.suiteapi.forums.DiscussionThread,com.appiancorp.suiteapi.personalization.UserService\))([DiscussionThread](DiscussionThread.html "class in com.appiancorp.suiteapi.forums") dt, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)`

    Deprecated.

    Populate the creator based on the creatorId.

    `static void`

    `[populateUserName](#populateUserName\(com.appiancorp.suiteapi.forums.Message,com.appiancorp.suiteapi.personalization.UserService\))([Message](Message.html "class in com.appiancorp.suiteapi.forums") m, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)`

    Deprecated.

    Populate the author based on the authorId.

    `static void`

    `[populateUserName](#populateUserName\(com.appiancorp.suiteapi.forums.ThreadedMessage,com.appiancorp.suiteapi.personalization.UserService\))([ThreadedMessage](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums") tm, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)`

    Deprecated.

    Populate the author based on the authorId.

    `static void`

    `[populateUserName](#populateUserName\(com.appiancorp.suiteapi.forums.ThreadSummary,com.appiancorp.suiteapi.personalization.UserService\))([ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums") ts, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)`

    Deprecated.

    Populate the creator based on the creatorId.

    `static void`

    `[populateUserNames](#populateUserNames\(com.appiancorp.suiteapi.forums.DiscussionThread%5B%5D,com.appiancorp.suiteapi.personalization.UserService\))([DiscussionThread](DiscussionThread.html "class in com.appiancorp.suiteapi.forums")[] dts, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)`

    Deprecated.

    Populate the authors based on the authorIds and authors.

    `static void`

    `[populateUserNames](#populateUserNames\(com.appiancorp.suiteapi.forums.Message%5B%5D,com.appiancorp.suiteapi.personalization.UserService\))([Message](Message.html "class in com.appiancorp.suiteapi.forums")[] ms, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)`

    Deprecated.

    Populate the creators based on the creatorIds and creators.

    `static void`

    `[populateUserNames](#populateUserNames\(com.appiancorp.suiteapi.forums.ThreadedMessage%5B%5D,com.appiancorp.suiteapi.personalization.UserService\))([ThreadedMessage](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums")[] tms, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)`

    Deprecated.

    Populate the creators based on the creatorIds and craetors.

    `static void`

    `[populateUserNames](#populateUserNames\(com.appiancorp.suiteapi.forums.ThreadSummary%5B%5D,com.appiancorp.suiteapi.personalization.UserService\))([ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")[] tss, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)`

    Deprecated.

    Populate the authors based on the authorIds and authors.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### UNAVAILABLE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UNAVAILABLE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.UserUtilities.UNAVAILABLE)

-   ## Constructor Details

    -   ### UserUtilities

        public UserUtilities()

        Deprecated.

-   ## Method Details

    -   ### populateUserName

        public static void populateUserName([DiscussionThread](DiscussionThread.html "class in com.appiancorp.suiteapi.forums") dt, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)

        Deprecated.

        Populate the creator based on the creatorId. If creatorId is null, will use creator. Sets creator to UNAVAILABLE if creatorId is not found or both creatorId and creator are null.

        Parameters:

        `dt` -

        `us` - The service that translates a user id to a user name.

    -   ### populateUserName

        public static void populateUserName([ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums") ts, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)

        Deprecated.

        Populate the creator based on the creatorId. If creatorId is null, will use creator. Sets creator to UNAVAILABLE if creatorId is not found or both creatorId and creator are null.

        Parameters:

        `ts` -

        `us` - The service that translates a user id to a user name.

    -   ### populateUserName

        public static void populateUserName([Message](Message.html "class in com.appiancorp.suiteapi.forums") m, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)

        Deprecated.

        Populate the author based on the authorId. If authorId is null, will use author. Sets author to UNAVAILABLE if authorId is not found or both authorId and author are null.

        Parameters:

        `m` -

        `us` - The service that translates a user id to a user name.

    -   ### populateUserName

        public static void populateUserName([ThreadedMessage](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums") tm, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)

        Deprecated.

        Populate the author based on the authorId. If authorId is null, will use author. Sets author to UNAVAILABLE if authorId is not found or both authorId and author are null.

        Parameters:

        `tm` -

        `us` - The service that translates a user id to a user name.

    -   ### populateUserNames

        public static void populateUserNames([DiscussionThread](DiscussionThread.html "class in com.appiancorp.suiteapi.forums")\[\] dts, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)

        Deprecated.

        Populate the authors based on the authorIds and authors. Sets author to UNAVAILABLE if authorId is not found or both authorId and author are null.

        Parameters:

        `dts` -

        `us` - The service that translates a user id to a user name.

        Throws:

        `InvalidUserException`

    -   ### populateUserNames

        public static void populateUserNames([ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums")\[\] tss, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)

        Deprecated.

        Populate the authors based on the authorIds and authors. Sets author to UNAVAILABLE if authorId is not found or both authorId and author are null.

        Parameters:

        `tss` -

        `us` - The service that translates a user id to a user name.

        Throws:

        `InvalidUserException`

    -   ### populateUserNames

        public static void populateUserNames([Message](Message.html "class in com.appiancorp.suiteapi.forums")\[\] ms, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)

        Deprecated.

        Populate the creators based on the creatorIds and creators. Sets creator to UNAVAILABLE if creatorId is not found or both creatorId and creator are null.

        Parameters:

        `ms` -

        `us` - The service that translates a user id to a user name.

        Throws:

        `InvalidUserException`

    -   ### populateUserNames

        public static void populateUserNames([ThreadedMessage](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums")\[\] tms, [UserService](../personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization") us)

        Deprecated.

        Populate the creators based on the creatorIds and craetors. Sets creator to UNAVAILABLE if creatorId is not found or both creatorId and creator are null.

        Parameters:

        `tms` -

        `us` - The service that translates a user id to a user name.

        Throws:

        `InvalidUserException`