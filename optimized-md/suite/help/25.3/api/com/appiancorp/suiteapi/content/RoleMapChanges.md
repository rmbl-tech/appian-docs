---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/RoleMapChanges.html
original_path: api/com/appiancorp/suiteapi/content/RoleMapChanges.html
version: "25.3"
title: "Class RoleMapChanges"
page_id: "api/com/appiancorp/suiteapi/content/RoleMapChanges"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class RoleMapChanges

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.content.RoleMapChanges

* * *

public class RoleMapChanges extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class returns information about which users/groups were approved/rejected when modifying the roleMap for a content item. Note: This is typically used for notifications

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[RoleMapChanges](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getApprovedGroups](#getApprovedGroups\(\))()`

    Returns the ids of the groups that were approved.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getApprovedUser](#getApprovedUser\(\))()`

    Returns the usernames of the users that were approved.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getRejectedGroups](#getRejectedGroups\(\))()`

    Returns the ids of the groups that were rejected.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getRejectedUser](#getRejectedUser\(\))()`

    Returns the usernames of the users that were rejected.

    `void`

    `[setApprovedGroups](#setApprovedGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] approvedGroups_)`

    Set the ids of the groups that were approved.

    `void`

    `[setApprovedUser](#setApprovedUser\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] approvedUsers_)`

    Set the usernames of the users that were approved.

    `void`

    `[setRejectedGroups](#setRejectedGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] rejectedGroups_)`

    Set the ids of the groups that were rejected.

    `void`

    `[setRejectedUser](#setRejectedUser\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] rejectedUsers_)`

    Set the usernames of the users that were rejected.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### RoleMapChanges

        public RoleMapChanges()

-   ## Method Details

    -   ### getApprovedGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getApprovedGroups()

        Returns the ids of the groups that were approved.

        Returns:

        group ids

        See Also:

        -   [`setApprovedGroups(Long[])`](#setApprovedGroups\(java.lang.Long%5B%5D\))

    -   ### setApprovedGroups

        public void setApprovedGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] approvedGroups\_)

        Set the ids of the groups that were approved.

        Parameters:

        `approvedGroups_` - group ids

        See Also:

        -   [`getApprovedGroups()`](#getApprovedGroups\(\))

    -   ### getApprovedUser

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getApprovedUser()

        Returns the usernames of the users that were approved.

        Returns:

        usernames

        See Also:

        -   [`setApprovedUser(String[])`](#setApprovedUser\(java.lang.String%5B%5D\))

    -   ### setApprovedUser

        public void setApprovedUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] approvedUsers\_)

        Set the usernames of the users that were approved.

        Parameters:

        `approvedUsers_` - usernames

        See Also:

        -   [`getApprovedUser()`](#getApprovedUser\(\))

    -   ### getRejectedGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getRejectedGroups()

        Returns the ids of the groups that were rejected.

        Returns:

        group ids

        See Also:

        -   [`setRejectedGroups(Long[])`](#setRejectedGroups\(java.lang.Long%5B%5D\))

    -   ### setRejectedGroups

        public void setRejectedGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] rejectedGroups\_)

        Set the ids of the groups that were rejected.

        Parameters:

        `rejectedGroups_` - group ids

        See Also:

        -   [`getRejectedGroups()`](#getRejectedGroups\(\))

    -   ### getRejectedUser

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getRejectedUser()

        Returns the usernames of the users that were rejected.

        Returns:

        usernames

        See Also:

        -   [`setRejectedUser(String[])`](#setRejectedUser\(java.lang.String%5B%5D\))

    -   ### setRejectedUser

        public void setRejectedUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] rejectedUsers\_)

        Set the usernames of the users that were rejected.

        Parameters:

        `rejectedUsers_` - usernames

        See Also:

        -   [`getRejectedUser()`](#getRejectedUser\(\))