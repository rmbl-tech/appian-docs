---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/Approval.html
original_path: api/com/appiancorp/suiteapi/content/Approval.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class Approval

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.content.Approval

* * *

public class Approval extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

The approval bean contains the approval status for a list of content items.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Approval](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getApproverGroups](#getApproverGroups\(\))()`

    Get the explicit groups that could approve, not including implicit App Admins.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getApproverUsers](#getApproverUsers\(\))()`

    Get the explicit users that could approve, not including implicit App Admins.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getId](#getId\(\))()`

    Get the content ids that were acted upon (this is the full list of ids that were acted upon, while other methods such as [`getPendingId()`](#getPendingId\(\)) return the appropriate subsets of this list).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getPendingId](#getPendingId\(\))()`

    Get the ids that were not fully acted upon, and as such are in a pending state (pending creation approval, deletion approval, etc.).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getPendingLogId](#getPendingLogId\(\))()`

    Get the log ids of those pending (the log ids being KC ids where applicable).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getPendingName](#getPendingName\(\))()`

    Get the names of the pending content items.

    `void`

    `[setApproverGroups](#setApproverGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] approverGroups_)`

    Set the groups that can approve.

    `void`

    `[setApproverUsers](#setApproverUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] approverUsers_)`

    Set the users that can approve.

    `void`

    `[setId](#setId\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Set the content ids that were acted upon (created, deleted, etc).

    `void`

    `[setPendingId](#setPendingId\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pendingIds_)`

    Set the ids that were not fully acted upon, and as such are in a pending state (pending creation approval, deletion approval, etc.).

    `void`

    `[setPendingLogId](#setPendingLogId\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pendingLogIds_)`

    Get the log ids of those pending (the log ids being KC ids where applicable).

    `void`

    `[setPendingName](#setPendingName\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] pendingNames_)`

    Set the names of the pending content items.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Approval

        public Approval()

-   ## Method Details

    -   ### getApproverGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getApproverGroups()

        Get the explicit groups that could approve, not including implicit App Admins. This is most commonly used for notifications.

        Returns:

        the ids of the approver groups

        See Also:

        -   [`setApproverGroups(Long[])`](#setApproverGroups\(java.lang.Long%5B%5D\))

    -   ### setApproverGroups

        public void setApproverGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] approverGroups\_)

        Set the groups that can approve.

        Parameters:

        `approverGroups_` - ids of the approver groups

        See Also:

        -   [`getApproverGroups()`](#getApproverGroups\(\))

    -   ### getApproverUsers

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getApproverUsers()

        Get the explicit users that could approve, not including implicit App Admins. This is most commonly used for notifications.

        Returns:

        usernames of the approvers

        See Also:

        -   [`setApproverUsers(String[])`](#setApproverUsers\(java.lang.String%5B%5D\))

    -   ### setApproverUsers

        public void setApproverUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] approverUsers\_)

        Set the users that can approve.

        Parameters:

        `approverUsers_` - usernames of the approvers

        See Also:

        -   [`getApproverUsers()`](#getApproverUsers\(\))

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getId()

        Get the content ids that were acted upon (this is the full list of ids that were acted upon, while other methods such as [`getPendingId()`](#getPendingId\(\)) return the appropriate subsets of this list).

        Returns:

        list of content ids

        See Also:

        -   [`setId(Long[])`](#setId\(java.lang.Long%5B%5D\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_)

        Set the content ids that were acted upon (created, deleted, etc).

        Parameters:

        `ids_` - list of content ids

        See Also:

        -   [`getId()`](#getId\(\))

    -   ### getPendingId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getPendingId()

        Get the ids that were not fully acted upon, and as such are in a pending state (pending creation approval, deletion approval, etc.).

        Returns:

        list of pending content ids

        See Also:

        -   [`setPendingId(Long[])`](#setPendingId\(java.lang.Long%5B%5D\))

    -   ### setPendingId

        public void setPendingId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pendingIds\_)

        Set the ids that were not fully acted upon, and as such are in a pending state (pending creation approval, deletion approval, etc.).

        Parameters:

        `pendingIds_` - list of content ids

        See Also:

        -   [`getPendingId()`](#getPendingId\(\))

    -   ### getPendingLogId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getPendingLogId()

        Get the log ids of those pending (the log ids being KC ids where applicable).

        Returns:

        log ids

        See Also:

        -   [`setPendingLogId(Long[])`](#setPendingLogId\(java.lang.Long%5B%5D\))

    -   ### setPendingLogId

        public void setPendingLogId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pendingLogIds\_)

        Get the log ids of those pending (the log ids being KC ids where applicable).

        Parameters:

        `pendingLogIds_` - log ids

        See Also:

        -   [`getPendingLogId()`](#getPendingLogId\(\))

    -   ### getPendingName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getPendingName()

        Get the names of the pending content items.

        Returns:

        names of pending content items

        See Also:

        -   [`setPendingName(String[])`](#setPendingName\(java.lang.String%5B%5D\))

    -   ### setPendingName

        public void setPendingName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] pendingNames\_)

        Set the names of the pending content items.

        Parameters:

        `pendingNames_` - content names

        See Also:

        -   [`getPendingName()`](#getPendingName\(\))