---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/CollaborationUserService.html
original_path: api/com/appiancorp/suiteapi/collaboration/CollaborationUserService.html
version: "25.3"
title: "Interface CollaborationUserService"
page_id: "api/com/appiancorp/suiteapi/collaboration/CollaborationUserService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Interface CollaborationUserService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface CollaborationUserService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

Defines methods to manage `User`s in the Collaboration database.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[insertUser$UPDATES](#insertUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[insertUsersBulk$UPDATES](#insertUsersBulk$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Void](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Void.html "class or interface in java.lang")`

    `[insertUser](#insertUser\(java.lang.String,java.sql.Timestamp\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") currentTime)`

    Deprecated.

    This method inserts a single user into collaboration's database and creates a private knowledge center and a private folder for that user.

    `[Void](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Void.html "class or interface in java.lang")`

    `[insertUsersBulk](#insertUsersBulk\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames)`

    Deprecated.

    This method inserts one or multiple users and ensures that each username is unique.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### insertUser$UPDATES

        static final boolean insertUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationUserService.insertUser$UPDATES)

    -   ### insertUsersBulk$UPDATES

        static final boolean insertUsersBulk$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationUserService.insertUsersBulk$UPDATES)

-   ## Method Details

    -   ### insertUser

        [Void](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Void.html "class or interface in java.lang") insertUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") currentTime)

        Deprecated.

        This method inserts a single user into collaboration's database and creates a private knowledge center and a private folder for that user.

        Parameters:

        `username` - The username of the user

        `currentTime` - The date and time (combined as a `Timestamp`) that the private knowledge center and a private folder was created for the user

    -   ### insertUsersBulk

        [Void](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Void.html "class or interface in java.lang") insertUsersBulk([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames)

        Deprecated.

        This method inserts one or multiple users and ensures that each username is unique. It also creates a private knowledge center and a private folder for each user.

        Parameters:

        `usernames` - An array of usernames for users