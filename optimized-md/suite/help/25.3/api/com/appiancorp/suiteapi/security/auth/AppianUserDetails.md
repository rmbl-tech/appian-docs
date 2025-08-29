---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/security/auth/AppianUserDetails.html
original_path: api/com/appiancorp/suiteapi/security/auth/AppianUserDetails.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.security.auth](package-summary.html)

# Class AppianUserDetails

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.security.auth.AppianUserDetails

All Implemented Interfaces:

`com.appiancorp.security.auth.AdsUserDetails`, `com.appiancorp.security.auth.SecurityContext`, `com.appiancorp.suiteapi.security.auth.UserDetailsAndSecurityContext`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`, `org.springframework.security.core.userdetails.UserDetails`

* * *

public class AppianUserDetails extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.suiteapi.security.auth.UserDetailsAndSecurityContext, com.appiancorp.security.auth.AdsUserDetails

Implements the Spring `UserDetails` interface and holds Appian-specific data about a user.

Use [`AppianUserDetailsService`](AppianUserDetailsService.html "class in com.appiancorp.suiteapi.security.auth") to get an instance of this class.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.security.auth.AppianUserDetails)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AppianUserDetails](#%3Cinit%3E\(com.appiancorp.suiteapi.personalization.UserProfile,com.appiancorp.security.auth.GroupMembershipInfoProvider,com.appiancorp.suiteapi.security.auth.PasswordStatus\))([UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") userProfile, com.appiancorp.security.auth.GroupMembershipInfoProvider groupMembershipInfoProvider, [PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth") passwordStatus)`

    `[AppianUserDetails](#%3Cinit%3E\(com.appiancorp.suiteapi.personalization.UserProfile,com.appiancorp.suiteapi.security.auth.PasswordStatus,java.util.Set\))([UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") userProfile, [PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth") passwordStatus, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> roles)`

    Deprecated.

    Use [`AppianUserDetailsService`](AppianUserDetailsService.html "class in com.appiancorp.suiteapi.security.auth").

    `[AppianUserDetails](#%3Cinit%3E\(java.lang.String,com.appiancorp.security.auth.GroupMembershipInfoProvider\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, com.appiancorp.security.auth.GroupMembershipInfoProvider groupMembershipInfoProvider)`

    Constructor to use when you only have the username since calling to retrieve a UserProfile object is comparatively expensive.

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[clearEncryptedSamlAssertion](#clearEncryptedSamlAssertion\(\))()`

    Clear cached saml assertion once we are done consuming it.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Returns `true` if the given object is an instance of [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") and has the same [`username`](#getUsername\(\)) as this object.

    `com.appiancorp.security.auth.AppianLoginContext`

    `[getAppianLoginContext](#getAppianLoginContext\(\))()`

    Returns SSO specific login context that is used internally.

    `[Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<org.springframework.security.core.GrantedAuthority>`

    `[getAuthorities](#getAuthorities\(\))()`

    Returns this user's roles.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getCustomContext](#getCustomContext\(java.lang.Class,java.lang.String\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") cls, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)`

    Deprecated.

    this method should not be called by anybody other than the Appian platform.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEncryptedSamlAssertion](#getEncryptedSamlAssertion\(\))()`

    Holds encrypted saml assertion used to authenticate user when they logged in via saml.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGrantorName](#getGrantorName\(\))()`

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getGrantorRoles](#getGrantorRoles\(\))()`

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<com.appiancorp.type.refs.GroupRef>`

    `[getMemberGroupRefs](#getMemberGroupRefs\(\))()`

    Returns the Appian data source `GroupRef`s for the groups where the user is a member.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getMemberGroupUuids](#getMemberGroupUuids\(\))()`

    Returns the UUIDs of the groups where the user is a member.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getOverrideLocale](#getOverrideLocale\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPassword](#getPassword\(\))()`

    `[PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth")`

    `[getPasswordStatus](#getPasswordStatus\(\))()`

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getRoles](#getRoles\(\))()`

    Returns the user's roles.

    `char[]`

    `[getScsKey](#getScsKey\(\))()`

    Returns the key used to encrypt and decrypt values stored in the secure credentials store for this user.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUsername](#getUsername\(\))()`

    `[UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization")`

    `[getUserProfile](#getUserProfile\(\))()`

    `com.appiancorp.type.refs.UserRef`

    `[getUserRef](#getUserRef\(\))()`

    Returns the Appian data source `UserRef` for the user of these Credentials.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUserUuid](#getUserUuid\(\))()`

    `void`

    `[hashAndSetScsKey](#hashAndSetScsKey\(char%5B%5D\))(char[] scsKeyPlainText)`

    Hashes and sets the key used to encrypt and decrypt values stored in the secure credentials store for this user.

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns the hash code of the [`username`](#getUsername\(\)).

    `boolean`

    `[isAccountNonExpired](#isAccountNonExpired\(\))()`

    Returns true.

    `boolean`

    `[isAccountNonLocked](#isAccountNonLocked\(\))()`

    Returns true.

    `boolean`

    `[isAdsSuperUser](#isAdsSuperUser\(\))()`

    `boolean`

    `[isAllowOverrideForDisabledLocale](#isAllowOverrideForDisabledLocale\(\))()`

    Returns boolean allowOverrideForDisabledLocale

    `boolean`

    `[isAuthenticatedByAppianInternalProvider](#isAuthenticatedByAppianInternalProvider\(\))()`

    `boolean`

    `[isCredentialsNonExpired](#isCredentialsNonExpired\(\))()`

    Returns true.

    `boolean`

    `[isEnabled](#isEnabled\(\))()`

    Returns true.

    `boolean`

    `[isLoggedInThroughSaml](#isLoggedInThroughSaml\(\))()`

    `boolean`

    `[isSysAdmin](#isSysAdmin\(\))()`

    `boolean`

    `[isUserRefNull](#isUserRefNull\(\))()`

    `void`

    `[setAllowOverrideForDisabledLocale](#setAllowOverrideForDisabledLocale\(boolean\))(boolean allowOverrideForDisabledLocale)`

    Sets allowOverrideForDisabledLocale to decide locale override when it's disabled

    `void`

    `[setAppianLoginContext](#setAppianLoginContext\(com.appiancorp.security.auth.AppianLoginContext\))(com.appiancorp.security.auth.AppianLoginContext appianLoginContext)`

    This is meant to be set only by the internal Appian authentication provider.

    `void`

    `[setAuthenticatedByAppianInternalProvider](#setAuthenticatedByAppianInternalProvider\(boolean\))(boolean value)`

    This is meant to be set only by the internal Appian authentication provider.

    `void`

    `[setAuthorities](#setAuthorities\(java.util.Collection\))([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<org.springframework.security.core.GrantedAuthority> authorities)`

    Deprecated.

    The authorities are calculated from the user's group memebrship and it is no longer necessary to set authorities explicitly.

    `[AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth")`

    `[setCustomContext](#setCustomContext\(java.lang.Class,java.lang.String,java.lang.Object\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") cls, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Deprecated.

    this method should not be called by anybody other than the Appian platform.

    `void`

    `[setEncryptedSamlAssertion](#setEncryptedSamlAssertion\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") encryptedAssertion)`

    This is meant to be set only by the SamlAuthenticationWrapper.

    `void`

    `[setIsAdsSuperUser](#setIsAdsSuperUser\(boolean\))(boolean isAdsSuperUser)`

    `void`

    `[setLoggedInThroughSaml](#setLoggedInThroughSaml\(boolean\))(boolean loggedInThroughSaml)`

    This is meant to be set only by the internal Appian authentication provider.

    `void`

    `[setOverrideLocale](#setOverrideLocale\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") overrideLocale)`

    `void`

    `[setPasswordStatus](#setPasswordStatus\(com.appiancorp.suiteapi.security.auth.PasswordStatus\))([PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth") passwordStatus)`

    `void`

    `[setScsKey](#setScsKey\(char%5B%5D\))(char[] scsKey)`

    Sets the key used to encrypt and decrypt values stored in the secure credentials store for this user.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.security.[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")

    `[implies](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#implies\(javax.security.auth.Subject\) "class or interface in java.security")`

-   ## Constructor Details

    -   ### AppianUserDetails

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public AppianUserDetails([UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") userProfile, [PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth") passwordStatus, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> roles)

        Deprecated.

        Use [`AppianUserDetailsService`](AppianUserDetailsService.html "class in com.appiancorp.suiteapi.security.auth").

    -   ### AppianUserDetails

        public AppianUserDetails([UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") userProfile, com.appiancorp.security.auth.GroupMembershipInfoProvider groupMembershipInfoProvider, [PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth") passwordStatus)

    -   ### AppianUserDetails

        public AppianUserDetails([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, com.appiancorp.security.auth.GroupMembershipInfoProvider groupMembershipInfoProvider)

        Constructor to use when you only have the username since calling to retrieve a UserProfile object is comparatively expensive.

-   ## Method Details

    -   ### getUserProfile

        public [UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") getUserProfile()

    -   ### getUserUuid

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUserUuid()

        Specified by:

        `getUserUuid` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### setOverrideLocale

        public void setOverrideLocale([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") overrideLocale)

    -   ### getOverrideLocale

        public [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getOverrideLocale()

        Specified by:

        `getOverrideLocale` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### setAllowOverrideForDisabledLocale

        public void setAllowOverrideForDisabledLocale(boolean allowOverrideForDisabledLocale)

        Sets allowOverrideForDisabledLocale to decide locale override when it's disabled

    -   ### isAllowOverrideForDisabledLocale

        public boolean isAllowOverrideForDisabledLocale()

        Returns boolean allowOverrideForDisabledLocale

        Specified by:

        `isAllowOverrideForDisabledLocale` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### setIsAdsSuperUser

        public void setIsAdsSuperUser(boolean isAdsSuperUser)

        Specified by:

        `setIsAdsSuperUser` in interface `com.appiancorp.security.auth.AdsUserDetails`

    -   ### isAdsSuperUser

        public boolean isAdsSuperUser()

        Specified by:

        `isAdsSuperUser` in interface `com.appiancorp.security.auth.AdsUserDetails`

        Specified by:

        `isAdsSuperUser` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getPasswordStatus

        public [PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth") getPasswordStatus()

    -   ### setPasswordStatus

        public void setPasswordStatus([PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth") passwordStatus)

    -   ### getScsKey

        public char\[\] getScsKey()

        Returns the key used to encrypt and decrypt values stored in the secure credentials store for this user. This key is used by the system automatically and should not be used for any other purposes.

        Returns:

        the key

    -   ### setScsKey

        public void setScsKey(char\[\] scsKey)

        Sets the key used to encrypt and decrypt values stored in the secure credentials store for this user. This key is set by the system automatically.

        Parameters:

        `scsKey` - the key that will be used to encrypt and decrypt values

    -   ### hashAndSetScsKey

        public void hashAndSetScsKey(char\[\] scsKeyPlainText)

        Hashes and sets the key used to encrypt and decrypt values stored in the secure credentials store for this user. This key is set by the system automatically.

        Parameters:

        `scsKeyPlainText` - the plain text of the key that will be used to encrypt and decrypt values

    -   ### getUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUsername()

        Specified by:

        `getUsername` in interface `org.springframework.security.core.userdetails.UserDetails`

    -   ### getPassword

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPassword()

        Specified by:

        `getPassword` in interface `org.springframework.security.core.userdetails.UserDetails`

    -   ### isAccountNonExpired

        public boolean isAccountNonExpired()

        Returns true.

        Specified by:

        `isAccountNonExpired` in interface `org.springframework.security.core.userdetails.UserDetails`

    -   ### isAccountNonLocked

        public boolean isAccountNonLocked()

        Returns true.

        Specified by:

        `isAccountNonLocked` in interface `org.springframework.security.core.userdetails.UserDetails`

    -   ### isCredentialsNonExpired

        public boolean isCredentialsNonExpired()

        Returns true.

        Specified by:

        `isCredentialsNonExpired` in interface `org.springframework.security.core.userdetails.UserDetails`

    -   ### isEnabled

        public boolean isEnabled()

        Returns true.

        Specified by:

        `isEnabled` in interface `org.springframework.security.core.userdetails.UserDetails`

    -   ### getAuthorities

        public [Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<org.springframework.security.core.GrantedAuthority> getAuthorities()

        Returns this user's roles.

        Specified by:

        `getAuthorities` in interface `org.springframework.security.core.userdetails.UserDetails`

    -   ### setAuthorities

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setAuthorities([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<org.springframework.security.core.GrantedAuthority> authorities)

        Deprecated.

        The authorities are calculated from the user's group memebrship and it is no longer necessary to set authorities explicitly.

        Parameters:

        `authorities` -

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Specified by:

        `[getName](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#getName\(\) "class or interface in java.security")` in interface `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`

    -   ### getUserRef

        public com.appiancorp.type.refs.UserRef getUserRef()

        Returns the Appian data source `UserRef` for the user of these Credentials.

        Specified by:

        `getUserRef` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### isUserRefNull

        public boolean isUserRefNull()

        Specified by:

        `isUserRefNull` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getMemberGroupUuids

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getMemberGroupUuids()

        Returns the UUIDs of the groups where the user is a member.

        Specified by:

        `getMemberGroupUuids` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getMemberGroupRefs

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<com.appiancorp.type.refs.GroupRef> getMemberGroupRefs()

        Returns the Appian data source `GroupRef`s for the groups where the user is a member.

        Specified by:

        `getMemberGroupRefs` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getRoles

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getRoles()

        Returns the user's roles.

        Specified by:

        `getRoles` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### isSysAdmin

        public boolean isSysAdmin()

        Specified by:

        `isSysAdmin` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getGrantorName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGrantorName()

        Specified by:

        `getGrantorName` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getGrantorRoles

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getGrantorRoles()

        Specified by:

        `getGrantorRoles` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### isAuthenticatedByAppianInternalProvider

        public boolean isAuthenticatedByAppianInternalProvider()

        Specified by:

        `isAuthenticatedByAppianInternalProvider` in interface `com.appiancorp.security.auth.SecurityContext`

        Returns:

        true if Appian's internal authentication provider authenticated the user. If multiple authentication providers are chained, this will return true if Appian's internal provider was reached and successfully authenticated the user, regardless of the response of other providers.

    -   ### setAuthenticatedByAppianInternalProvider

        public void setAuthenticatedByAppianInternalProvider(boolean value)

        This is meant to be set only by the internal Appian authentication provider.

    -   ### isLoggedInThroughSaml

        public boolean isLoggedInThroughSaml()

        Specified by:

        `isLoggedInThroughSaml` in interface `com.appiancorp.security.auth.SecurityContext`

        Returns:

        true if Appian's internal SAML authentication provider authenticated the user. If multiple authentication providers are chained, this will return true if Appian's internal provider was reached and successfully authenticated the user, regardless of the response of other providers.

    -   ### setLoggedInThroughSaml

        public void setLoggedInThroughSaml(boolean loggedInThroughSaml)

        This is meant to be set only by the internal Appian authentication provider.

    -   ### getAppianLoginContext

        public com.appiancorp.security.auth.AppianLoginContext getAppianLoginContext()

        Returns SSO specific login context that is used internally.

        Specified by:

        `getAppianLoginContext` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### setAppianLoginContext

        public void setAppianLoginContext(com.appiancorp.security.auth.AppianLoginContext appianLoginContext)

        This is meant to be set only by the internal Appian authentication provider.

    -   ### getEncryptedSamlAssertion

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEncryptedSamlAssertion()

        Holds encrypted saml assertion used to authenticate user when they logged in via saml. It is empty by default and will be cleared by OAuthSamlAuthGrantLoginSuccessListener once it has been consumed.

        Returns:

        encrypted saml assertion or empty string if not set

    -   ### setEncryptedSamlAssertion

        public void setEncryptedSamlAssertion([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") encryptedAssertion)

        This is meant to be set only by the SamlAuthenticationWrapper. Used by OAuth Saml based Auth type Http Connected Systems. If null input is provided it will normalized to an empty string.

        Parameters:

        `encryptedAssertion` -

    -   ### clearEncryptedSamlAssertion

        public void clearEncryptedSamlAssertion()

        Clear cached saml assertion once we are done consuming it. We should not hold on it for longer than required period.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Specified by:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#toString\(\) "class or interface in java.security")` in interface `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Returns the hash code of the [`username`](#getUsername\(\)).

        Specified by:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#hashCode\(\) "class or interface in java.security")` in interface `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Returns `true` if the given object is an instance of [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") and has the same [`username`](#getUsername\(\)) as this object.

        Specified by:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#equals\(java.lang.Object\) "class or interface in java.security")` in interface `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### setCustomContext

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") setCustomContext([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") cls, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Deprecated.

        this method should not be called by anybody other than the Appian platform. The behavior of this method is undocumented, and it may be removed or changed in future releases.

    -   ### getCustomContext

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getCustomContext([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") cls, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)

        Deprecated.

        this method should not be called by anybody other than the Appian platform. The behavior of this method is undocumented, and it may be removed or changed in future releases.