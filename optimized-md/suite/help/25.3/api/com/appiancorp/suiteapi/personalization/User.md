---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/User.html
original_path: api/com/appiancorp/suiteapi/personalization/User.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class User

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.personalization.UserBase](UserBase.html "class in com.appiancorp.suiteapi.personalization")

com.appiancorp.suiteapi.personalization.User

All Implemented Interfaces:

`com.appiancorp.asl3.servicefw.connect.ASLIdentity`, `com.appiancorp.services.ASLIdentity`, `[LocalStringId](../common/LocalStringId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")`

* * *

[@UserDataType](UserDataType.html "annotation interface in com.appiancorp.suiteapi.personalization") public class User extends [UserBase](UserBase.html "class in com.appiancorp.suiteapi.personalization") implements [LocalStringId](../common/LocalStringId.html "interface in com.appiancorp.suiteapi.common")

This represents the common User object. Username needs to be unique when creating or updating.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.User)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Sort by the Id propety

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PASSWORD](#SORT_BY_PASSWORD)`

    Sort by password

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_USERNAME](#SORT_BY_USERNAME)`

    Sort by the Username property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[USER_ROLE_ADMINISTRATOR](#USER_ROLE_ADMINISTRATOR)`

    Administrator user role for a group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[USER_ROLE_CREATOR](#USER_ROLE_CREATOR)`

    Creator user role for a group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[USER_ROLE_MEMBER](#USER_ROLE_MEMBER)`

    Member user role for a group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[USER_ROLE_VIEWER](#USER_ROLE_VIEWER)`

    Viewer user role for a group

    ### Fields inherited from class com.appiancorp.suiteapi.personalization.[UserBase](UserBase.html "class in com.appiancorp.suiteapi.personalization")

    `[SORT_BY_DISPLAYNAME](UserBase.html#SORT_BY_DISPLAYNAME), [SORT_BY_EMAIL](UserBase.html#SORT_BY_EMAIL), [SORT_BY_FIRSTNAME](UserBase.html#SORT_BY_FIRSTNAME), [SORT_BY_LASTNAME](UserBase.html#SORT_BY_LASTNAME), [SORT_BY_MIDDLENAME](UserBase.html#SORT_BY_MIDDLENAME), [SORT_BY_SOCIALSECURITYNUMBER](UserBase.html#SORT_BY_SOCIALSECURITYNUMBER), [STATUS_ACTIVE](UserBase.html#STATUS_ACTIVE), [STATUS_DEACTIVATED](UserBase.html#STATUS_DEACTIVATED)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[User](#%3Cinit%3E\(\))()`

    Default constructor.

    `[User](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Contructs a User object with the given username.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getIdentifier](#getIdentifier\(\))()`

    Alias for the the User's uuid {[`getUuid()`](#getUuid\(\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getIdentity](#getIdentity\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPassword](#getPassword\(\))()`

    Deprecated.

    Since 6.0.2, use [`getUserPassword()`](#getUserPassword\(\))

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getPasswordModified](#getPasswordModified\(\))()`

    Returns the timestamp when the user's password was modified last.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStringId](#getStringId\(\))()`

    Returns this object's local identifier, `null` if the object was not identified locally using a `String` Id.

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getUsernames](#getUsernames\(com.appiancorp.suiteapi.personalization.User%5B%5D\))([User](User.html "class in com.appiancorp.suiteapi.personalization")[] users)`

    Get the usernames (as a String array) from an array of User objects.

    `byte[]`

    `[getUserPassword](#getUserPassword\(\))()`

    "UTF-8" [`Charset`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/nio/charset/Charset.html "class or interface in java.nio.charset") can be used to decode the byte\[\] password into a String or char\[\].

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    The User's Universal Unique Identifier

    `boolean`

    `[isTemporaryPassword](#isTemporaryPassword\(\))()`

    Returns true if the user's password is temporary else false; see `UserService#changeUserPassword(String, char[], boolean)`.

    `boolean`

    `[isUserLocked](#isUserLocked\(\))()`

    Returns true if the user is locked due to multiple unsuccessful login attempts else false; see [`UserService.loginAttempt(String,boolean)`](UserService.html#loginAttempt\(java.lang.String,boolean\)) and [`UserService.unlockUser(String)`](UserService.html#unlockUser\(java.lang.String\))

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    `void`

    `[setPassword](#setPassword\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") password)`

    Deprecated.

    Since 6.0.2, use [`setUserPassword(byte[])`](#setUserPassword\(byte%5B%5D\))

    `void`

    `[setPasswordModified](#setPasswordModified\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") passwordModified)`

    This field cannot be set explicitly using this setter.

    `void`

    `[setStringId](#setStringId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id)`

    Sets this object's local identifier.

    `void`

    `[setTemporaryPassword](#setTemporaryPassword\(boolean\))(boolean temporaryPassword)`

    This field cannot be set explicitly using this setter; see `UserService#changeUserPassword(String, char[], boolean)`.

    `void`

    `[setUserLocked](#setUserLocked\(boolean\))(boolean userLocked)`

    This field cannot be set explicitly using this setter; see [`UserService.loginAttempt(String,boolean)`](UserService.html#loginAttempt\(java.lang.String,boolean\)) and [`UserService.unlockUser(String)`](UserService.html#unlockUser\(java.lang.String\))

    `void`

    `[setUserPassword](#setUserPassword\(byte%5B%5D\))(byte[] password)`

    "UTF-8" [`Charset`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/nio/charset/Charset.html "class or interface in java.nio.charset") must be used to encode a String or char\[\] password into a byte\[\].

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Sets the User's uuid to the given uuid.

    ### Methods inherited from class com.appiancorp.suiteapi.personalization.[UserBase](UserBase.html "class in com.appiancorp.suiteapi.personalization")

    `[getDisplayName](UserBase.html#getDisplayName\(\)), [getEmail](UserBase.html#getEmail\(\)), [getFavorite](UserBase.html#getFavorite\(\)), [getFirstName](UserBase.html#getFirstName\(\)), [getLastName](UserBase.html#getLastName\(\)), [getMiddleName](UserBase.html#getMiddleName\(\)), [getSocialSecurityNumber](UserBase.html#getSocialSecurityNumber\(\)), [getStatus](UserBase.html#getStatus\(\)), [getUsername](UserBase.html#getUsername\(\)), [setDisplayName](UserBase.html#setDisplayName\(java.lang.String\)), [setEmail](UserBase.html#setEmail\(java.lang.String\)), [setFavorite](UserBase.html#setFavorite\(boolean\)), [setFirstName](UserBase.html#setFirstName\(java.lang.String\)), [setLastName](UserBase.html#setLastName\(java.lang.String\)), [setMiddleName](UserBase.html#setMiddleName\(java.lang.String\)), [setSocialSecurityNumber](UserBase.html#setSocialSecurityNumber\(java.lang.String\)), [setStatus](UserBase.html#setStatus\(int\)), [setUsername](UserBase.html#setUsername\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_USERNAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_USERNAME

        Sort by the Username property

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Sort by the Id propety

    -   ### SORT\_BY\_PASSWORD

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PASSWORD

        Sort by password

    -   ### USER\_ROLE\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") USER\_ROLE\_CREATOR

        Creator user role for a group

    -   ### USER\_ROLE\_ADMINISTRATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") USER\_ROLE\_ADMINISTRATOR

        Administrator user role for a group

    -   ### USER\_ROLE\_MEMBER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") USER\_ROLE\_MEMBER

        Member user role for a group

    -   ### USER\_ROLE\_VIEWER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") USER\_ROLE\_VIEWER

        Viewer user role for a group

-   ## Constructor Details

    -   ### User

        public User()

        Default constructor.

    -   ### User

        public User([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)

        Contructs a User object with the given username.

        Parameters:

        `username` - the username

-   ## Method Details

    -   ### getIdentity

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getIdentity()

        Specified by:

        `getIdentity` in interface `com.appiancorp.asl3.servicefw.connect.ASLIdentity`

        Specified by:

        `getIdentity` in interface `com.appiancorp.services.ASLIdentity`

        Overrides:

        `[getIdentity](UserBase.html#getIdentity\(\))` in class `[UserBase](UserBase.html "class in com.appiancorp.suiteapi.personalization")`

    -   ### setStringId

        public void setStringId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id)

        Description copied from interface: `[LocalStringId](../common/LocalStringId.html#setStringId\(java.lang.String\))`

        Sets this object's local identifier.

        Specified by:

        `[setStringId](../common/LocalStringId.html#setStringId\(java.lang.String\))` in interface `[LocalStringId](../common/LocalStringId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `id` - ID to set

        See Also:

        -   [`LocalStringId.getStringId()`](../common/LocalStringId.html#getStringId\(\))

    -   ### getStringId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStringId()

        Description copied from interface: `[LocalStringId](../common/LocalStringId.html#getStringId\(\))`

        Returns this object's local identifier, `null` if the object was not identified locally using a `String` Id.

        Specified by:

        `[getStringId](../common/LocalStringId.html#getStringId\(\))` in interface `[LocalStringId](../common/LocalStringId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        Object's Id

        See Also:

        -   [`LocalStringId.setStringId(String)`](../common/LocalStringId.html#setStringId\(java.lang.String\))

    -   ### setPassword

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setPassword([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") password)

        Deprecated.

        Since 6.0.2, use [`setUserPassword(byte[])`](#setUserPassword\(byte%5B%5D\))

    -   ### getPassword

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") @Transient public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPassword()

        Deprecated.

        Since 6.0.2, use [`getUserPassword()`](#getUserPassword\(\))

    -   ### setUserPassword

        public void setUserPassword(byte\[\] password)

        "UTF-8" [`Charset`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/nio/charset/Charset.html "class or interface in java.nio.charset") must be used to encode a String or char\[\] password into a byte\[\]. Note: it is recommended to use char\[\] to store password and flush the array after the use. See [this reference guide](http://java.sun.com/j2se/1.5.0/docs/guide/security/jce/JCERefGuide.html#PBEEx).

        Parameters:

        `password` - password as byte array

    -   ### getUserPassword

        public byte\[\] getUserPassword()

        "UTF-8" [`Charset`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/nio/charset/Charset.html "class or interface in java.nio.charset") can be used to decode the byte\[\] password into a String or char\[\]. Note: it is recommended to use char\[\] to store password and flush the array after the use. See [this reference guide](http://java.sun.com/j2se/1.5.0/docs/guide/security/jce/JCERefGuide.html#PBEEx). return password as byte array

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        The User's Universal Unique Identifier

        Returns:

        User's uuid

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Sets the User's uuid to the given uuid.

        Parameters:

        `uuid` - the

    -   ### getIdentifier

        @Transient @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getIdentifier()

        Alias for the the User's uuid {[`getUuid()`](#getUuid\(\))

        Returns:

        User's uuid

    -   ### getUsernames

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getUsernames([User](User.html "class in com.appiancorp.suiteapi.personalization")\[\] users)

        Get the usernames (as a String array) from an array of User objects.

        Parameters:

        `users` - an array of Users

        Returns:

        an array of the same size as the given array, containing the usernames of the given Users; if given array is null, returns null

    -   ### getPasswordModified

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getPasswordModified()

        Returns the timestamp when the user's password was modified last.

    -   ### setPasswordModified

        public void setPasswordModified([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") passwordModified)

        This field cannot be set explicitly using this setter.

    -   ### isTemporaryPassword

        public boolean isTemporaryPassword()

        Returns true if the user's password is temporary else false; see `UserService#changeUserPassword(String, char[], boolean)`.

    -   ### setTemporaryPassword

        public void setTemporaryPassword(boolean temporaryPassword)

        This field cannot be set explicitly using this setter; see `UserService#changeUserPassword(String, char[], boolean)`.

    -   ### isUserLocked

        public boolean isUserLocked()

        Returns true if the user is locked due to multiple unsuccessful login attempts else false; see [`UserService.loginAttempt(String,boolean)`](UserService.html#loginAttempt\(java.lang.String,boolean\)) and [`UserService.unlockUser(String)`](UserService.html#unlockUser\(java.lang.String\))

    -   ### setUserLocked

        public void setUserLocked(boolean userLocked)

        This field cannot be set explicitly using this setter; see [`UserService.loginAttempt(String,boolean)`](UserService.html#loginAttempt\(java.lang.String,boolean\)) and [`UserService.unlockUser(String)`](UserService.html#unlockUser\(java.lang.String\))