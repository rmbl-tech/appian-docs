---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/UserStatistics.html
original_path: api/com/appiancorp/suiteapi/collaboration/UserStatistics.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Class UserStatistics

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.collaboration.UserStatistics

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class UserStatistics extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")

This class encapsulates the user/usage statistics of the collaboration application.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.collaboration.UserStatistics)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UserStatistics](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Gets the ID of this `UserStatistics` object.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfUsersWhoHaveDownloaded](#getNumberOfUsersWhoHaveDownloaded\(\))()`

    Gets the number of users who have downloaded at least one document from the application

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfUsersWhoHaveEntered](#getNumberOfUsersWhoHaveEntered\(\))()`

    Gets the number of users who have logged into the application

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfUsersWhoHaveUploaded](#getNumberOfUsersWhoHaveUploaded\(\))()`

    Gets the users who have uploaded documents into the application

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the ID of this `UserStatistics` object.

    `void`

    `[setNumberOfUsersWhoHaveDownloaded](#setNumberOfUsersWhoHaveDownloaded\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsersWhoHaveDownloaded_)`

    Sets the users who have downloaded documents from the application

    `void`

    `[setNumberOfUsersWhoHaveEntered](#setNumberOfUsersWhoHaveEntered\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsersWhoHaveEntered_)`

    Sets the users who have logged into the application

    `void`

    `[setNumberOfUsersWhoHaveUploaded](#setNumberOfUsersWhoHaveUploaded\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsersWhoHaveUploaded_)`

    Sets the users who have uploaded documents into the application

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### UserStatistics

        public UserStatistics()

-   ## Method Details

    -   ### getNumberOfUsersWhoHaveDownloaded

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfUsersWhoHaveDownloaded()

        Gets the number of users who have downloaded at least one document from the application

        Returns:

        the number of users who have downloaded at least one document from the application

    -   ### getNumberOfUsersWhoHaveEntered

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfUsersWhoHaveEntered()

        Gets the number of users who have logged into the application

        Returns:

        a list of the unique IDs of the users

    -   ### getNumberOfUsersWhoHaveUploaded

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfUsersWhoHaveUploaded()

        Gets the users who have uploaded documents into the application

        Returns:

        a list of the unique IDs of the users

    -   ### setNumberOfUsersWhoHaveDownloaded

        public void setNumberOfUsersWhoHaveDownloaded([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsersWhoHaveDownloaded\_)

        Sets the users who have downloaded documents from the application

        Parameters:

        `numberOfUsersWhoHaveDownloaded_` - the number of users

    -   ### setNumberOfUsersWhoHaveEntered

        public void setNumberOfUsersWhoHaveEntered([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsersWhoHaveEntered\_)

        Sets the users who have logged into the application

        Parameters:

        `numberOfUsersWhoHaveEntered_` - the number of users

    -   ### setNumberOfUsersWhoHaveUploaded

        public void setNumberOfUsersWhoHaveUploaded([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsersWhoHaveUploaded\_)

        Sets the users who have uploaded documents into the application

        Parameters:

        `numberOfUsersWhoHaveUploaded_` - the number of users

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Gets the ID of this `UserStatistics` object.

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the ID of this `UserStatistics` object.

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the ID of this `UserStatistics` object.

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `id_` - the ID of this `UserStatistics` object

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone() throws [CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Throws:

        `[CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")`