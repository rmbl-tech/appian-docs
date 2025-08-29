---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/UserStatistics.html
original_path: api/com/appiancorp/suiteapi/content/UserStatistics.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class UserStatistics

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.content.UserStatistics

* * *

public class UserStatistics extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is used for statistics on users in the AE system.

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

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfUsersWhoHaveEntered](#getNumberOfUsersWhoHaveEntered\(\))()`

    Gets the number of users who have logged into the application.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfUsersWhoHaveUploaded](#getNumberOfUsersWhoHaveUploaded\(\))()`

    Gets the users who have uploaded documents into the application.

    `void`

    `[setNumberOfUsersWhoHaveEntered](#setNumberOfUsersWhoHaveEntered\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsersWhoHaveEntered_)`

    Sets the users who have logged into the application.

    `void`

    `[setNumberOfUsersWhoHaveUploaded](#setNumberOfUsersWhoHaveUploaded\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsersWhoHaveUploaded_)`

    Sets the users who have uploaded documents into the application.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### UserStatistics

        public UserStatistics()

-   ## Method Details

    -   ### getNumberOfUsersWhoHaveEntered

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfUsersWhoHaveEntered()

        Gets the number of users who have logged into the application.

        Returns:

        a list of the unique IDs of the users

        See Also:

        -   [`setNumberOfUsersWhoHaveEntered(Long)`](#setNumberOfUsersWhoHaveEntered\(java.lang.Long\))

    -   ### getNumberOfUsersWhoHaveUploaded

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfUsersWhoHaveUploaded()

        Gets the users who have uploaded documents into the application.

        Returns:

        a list of the unique IDs of the users

        See Also:

        -   [`setNumberOfUsersWhoHaveUploaded(Long)`](#setNumberOfUsersWhoHaveUploaded\(java.lang.Long\))

    -   ### setNumberOfUsersWhoHaveEntered

        public void setNumberOfUsersWhoHaveEntered([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsersWhoHaveEntered\_)

        Sets the users who have logged into the application.

        Parameters:

        `numberOfUsersWhoHaveEntered_` - the number of users

        See Also:

        -   [`getNumberOfUsersWhoHaveEntered()`](#getNumberOfUsersWhoHaveEntered\(\))

    -   ### setNumberOfUsersWhoHaveUploaded

        public void setNumberOfUsersWhoHaveUploaded([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsersWhoHaveUploaded\_)

        Sets the users who have uploaded documents into the application.

        Parameters:

        `numberOfUsersWhoHaveUploaded_` - the number of users

        See Also:

        -   [`getNumberOfUsersWhoHaveUploaded()`](#getNumberOfUsersWhoHaveUploaded\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        String for debugging