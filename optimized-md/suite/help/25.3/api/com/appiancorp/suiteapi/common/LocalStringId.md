---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/LocalStringId.html
original_path: api/com/appiancorp/suiteapi/common/LocalStringId.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface LocalStringId

All Known Subinterfaces:

`[GlobalStringId](GlobalStringId.html "interface in com.appiancorp.suiteapi.common")`, `[RemoteStringId](RemoteStringId.html "interface in com.appiancorp.suiteapi.common")`

All Known Implementing Classes:

`[Contribution](../portal/Contribution.html "class in com.appiancorp.suiteapi.portal")`, `[LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")`, `[User](../personalization/User.html "class in com.appiancorp.suiteapi.personalization")`, `[UserProfile](../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization")`, `[UserSearch](../personalization/UserSearch.html "class in com.appiancorp.suiteapi.personalization")`

* * *

public interface LocalStringId

This bean represents the local identifier of an object. The local identifier is used to identify an object within the scope of one application instance. This interface should be implemented by first-class objects which are identified by String Id's(only `User` is identified by String currently).

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStringId](#getStringId\(\))()`

    Returns this object's local identifier, `null` if the object was not identified locally using a `String` Id.

    `void`

    `[setStringId](#setStringId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_)`

    Sets this object's local identifier.

-   ## Method Details

    -   ### getStringId

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStringId()

        Returns this object's local identifier, `null` if the object was not identified locally using a `String` Id.

        Returns:

        Object's Id

        See Also:

        -   [`setStringId(String)`](#setStringId\(java.lang.String\))

    -   ### setStringId

        void setStringId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_)

        Sets this object's local identifier.

        Parameters:

        `id_` - ID to set

        See Also:

        -   [`getStringId()`](#getStringId\(\))