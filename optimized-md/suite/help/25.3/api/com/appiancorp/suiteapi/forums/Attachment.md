---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/Attachment.html
original_path: api/com/appiancorp/suiteapi/forums/Attachment.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Class Attachment

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.forums.Attachment

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Attachment extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

Represents the attachment of one first-class object to another object.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.forums.Attachment)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Attachment](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")`

    `[getAttached](#getAttached\(\))()`

    Deprecated.

    Get the `LocalObject` representing the attached object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAttacher](#getAttacher\(\))()`

    Deprecated.

    Get the `username` of the user [`User`](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") who attached the object.

    `void`

    `[setAttached](#setAttached\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") attached_)`

    Deprecated.

    Set the `LocalObject` representing the attached object.

    `void`

    `[setAttacher](#setAttacher\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attacher_)`

    Deprecated.

    Set the `username` of the user [`User`](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") who attached the object.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Attachment

        public Attachment()

        Deprecated.

-   ## Method Details

    -   ### getAttached

        public [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") getAttached()

        Deprecated.

        Get the `LocalObject` representing the attached object.

        Returns:

        The representation of the attached object.

        See Also:

        -   [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

    -   ### setAttached

        public void setAttached([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") attached\_)

        Deprecated.

        Set the `LocalObject` representing the attached object.

        Parameters:

        `attached_` - The representation of the attached object.

        See Also:

        -   [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

    -   ### getAttacher

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAttacher()

        Deprecated.

        Get the `username` of the user [`User`](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") who attached the object.

        Returns:

        The username.

    -   ### setAttacher

        public void setAttacher([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attacher\_)

        Deprecated.

        Set the `username` of the user [`User`](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") who attached the object.

        Parameters:

        `attacher_` - The user name