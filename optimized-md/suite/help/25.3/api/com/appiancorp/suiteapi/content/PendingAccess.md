---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/PendingAccess.html
original_path: api/com/appiancorp/suiteapi/content/PendingAccess.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class PendingAccess

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.content.PendingAccess

* * *

public class PendingAccess extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Holds information on which content is pending access for making it a favorite. Returned from [`ContentService.addFavorite(Long)`](ContentService.html#addFavorite\(java.lang.Long\)) and [`ContentService.addFavorites(Long[])`](ContentService.html#addFavorites\(java.lang.Long%5B%5D\)).

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PendingAccess](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getId](#getId\(\))()`

    Gets the IDs of the content pending access.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getNotify](#getNotify\(\))()`

    Gets the list of users to notify.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getNotifyGroup](#getNotifyGroup\(\))()`

    Gets the list of groups to notify.

    `void`

    `[setId](#setId\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Sets the IDs of the content pending access.

    `void`

    `[setNotify](#setNotify\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] notify_)`

    Sets the list of users to notify.

    `void`

    `[setNotifyGroup](#setNotifyGroup\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] notifyGroup_)`

    Sets the list of groups to notify.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### PendingAccess

        public PendingAccess()

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getId()

        Gets the IDs of the content pending access.

        Returns:

        the content IDs

        See Also:

        -   [`setId(Long[])`](#setId\(java.lang.Long%5B%5D\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Sets the IDs of the content pending access.

        Parameters:

        `id_` - the content IDs

        See Also:

        -   [`getId()`](#getId\(\))

    -   ### getNotify

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getNotify()

        Gets the list of users to notify.

        Returns:

        the list of users to notify

        See Also:

        -   [`setNotify(String[])`](#setNotify\(java.lang.String%5B%5D\))

    -   ### setNotify

        public void setNotify([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] notify\_)

        Sets the list of users to notify.

        Parameters:

        `notify_` - the list of users to notify

        See Also:

        -   [`getNotify()`](#getNotify\(\))

    -   ### getNotifyGroup

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getNotifyGroup()

        Gets the list of groups to notify.

        Returns:

        the list of groups to notify

        See Also:

        -   [`setNotifyGroup(Long[])`](#setNotifyGroup\(java.lang.Long%5B%5D\))

    -   ### setNotifyGroup

        public void setNotifyGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] notifyGroup\_)

        Sets the list of groups to notify.

        Parameters:

        `notifyGroup_` - the list of groups to notify

        See Also:

        -   [`getNotifyGroup()`](#getNotifyGroup\(\))