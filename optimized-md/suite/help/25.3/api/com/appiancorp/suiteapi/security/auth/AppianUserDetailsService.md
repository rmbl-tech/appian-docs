---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/security/auth/AppianUserDetailsService.html
original_path: api/com/appiancorp/suiteapi/security/auth/AppianUserDetailsService.html
version: "25.3"
title: "Class AppianUserDetailsService"
page_id: "api/com/appiancorp/suiteapi/security/auth/AppianUserDetailsService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.security.auth](package-summary.html)

# Class AppianUserDetailsService

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.security.auth.AppianUserDetailsService

All Implemented Interfaces:

`org.springframework.security.core.userdetails.UserDetailsService`

* * *

public class AppianUserDetailsService extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements org.springframework.security.core.userdetails.UserDetailsService

Retrieves the user data from [`UserProfileService`](../../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization") and returns an instance of [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth").

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AppianUserDetailsService](#%3Cinit%3E\(\))()`

    Creates a new configured instance by calling [`AppianUserDetailsService(boolean)`](#%3Cinit%3E\(boolean\)) and passing `true`.

    `[AppianUserDetailsService](#%3Cinit%3E\(boolean\))(boolean applyPasswordManagement)`

    Creates a new configured instance.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `static [PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth")`

    `[calculatePasswordStatus](#calculatePasswordStatus\(com.appiancorp.suiteapi.personalization.UserProfile\))([UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") user)`

    Calculates the password status using the Password Management feature configurations and the user metadata [`User.isTemporaryPassword()`](../../personalization/User.html#isTemporaryPassword\(\)) and [`User.getPasswordModified()`](../../personalization/User.html#getPasswordModified\(\)).

    `[AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth")`

    `[getUserDetails](#getUserDetails\(com.appiancorp.suiteapi.personalization.UserProfile\))([UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") user)`

    Creates a new [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") instance populated using the given Appian user metadata.

    `[AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth")`

    `[getUserDetails](#getUserDetails\(com.appiancorp.suiteapi.personalization.UserProfile,java.util.Set\))([UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") user, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> userRoles)`

    Deprecated.

    Use [`getUserDetails(UserProfile)`](#getUserDetails\(com.appiancorp.suiteapi.personalization.UserProfile\)) instead.

    `[AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth")`

    `[getUserDetailsLazy](#getUserDetailsLazy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Creates a new [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") instance populated using the given username.

    `boolean`

    `[isApplyPasswordManagement](#isApplyPasswordManagement\(\))()`

    Deprecated.

    use [`isApplyPasswordManagement(String)`](#isApplyPasswordManagement\(java.lang.String\))

    `protected boolean`

    `[isApplyPasswordManagement](#isApplyPasswordManagement\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Override this method to dynamically specify whether password management should be applied for a given user.

    `[AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth")`

    `[loadUserByUsername](#loadUserByUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Retrieves the Appian user metadata using [`UserProfileService`](../../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization") and creates a new [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") instance using [`getUserDetails(UserProfile)`](#getUserDetails\(com.appiancorp.suiteapi.personalization.UserProfile\)).

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AppianUserDetailsService

        public AppianUserDetailsService()

        Creates a new configured instance by calling [`AppianUserDetailsService(boolean)`](#%3Cinit%3E\(boolean\)) and passing `true`.

    -   ### AppianUserDetailsService

        public AppianUserDetailsService(boolean applyPasswordManagement)

        Creates a new configured instance.

        Parameters:

        `applyPasswordManagement` - If set to `true`, the password status of the [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") bean returned by [`loadUserByUsername(String)`](#loadUserByUsername\(java.lang.String\)) will be calculated using [`calculatePasswordStatus(UserProfile)`](#calculatePasswordStatus\(com.appiancorp.suiteapi.personalization.UserProfile\)). If set to `false`, the password status will always be set to [`PasswordStatus.NORMAL`](PasswordStatus.html#NORMAL).

-   ## Method Details

    -   ### isApplyPasswordManagement

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public boolean isApplyPasswordManagement()

        Deprecated.

        use [`isApplyPasswordManagement(String)`](#isApplyPasswordManagement\(java.lang.String\))

    -   ### isApplyPasswordManagement

        protected boolean isApplyPasswordManagement([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)

        Override this method to dynamically specify whether password management should be applied for a given user. For example, a user could have password management enabled/disabled, depending on their group membership.

        Parameters:

        `username` - The user for which to return whether password management should be applied.

        Returns:

        `true` if password management should be applied for the given user.

    -   ### loadUserByUsername

        public [AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") loadUserByUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws org.springframework.security.core.userdetails.UsernameNotFoundException

        Retrieves the Appian user metadata using [`UserProfileService`](../../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization") and creates a new [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") instance using [`getUserDetails(UserProfile)`](#getUserDetails\(com.appiancorp.suiteapi.personalization.UserProfile\)).

        Specified by:

        `loadUserByUsername` in interface `org.springframework.security.core.userdetails.UserDetailsService`

        Throws:

        `org.springframework.security.core.userdetails.UsernameNotFoundException`

    -   ### getUserDetails

        public [AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") getUserDetails([UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") user)

        Creates a new [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") instance populated using the given Appian user metadata. If [`isApplyPasswordManagement()`](#isApplyPasswordManagement\(\)) is set to `true`, sets the [`password status`](AppianUserDetails.html#getPasswordStatus\(\)) using [`calculatePasswordStatus(UserProfile)`](#calculatePasswordStatus\(com.appiancorp.suiteapi.personalization.UserProfile\)). Otherwise, sets the password status to [`PasswordStatus.NORMAL`](PasswordStatus.html#NORMAL).

        Parameters:

        `user` - The Appian user metadata.

        Returns:

        The user details.

    -   ### getUserDetailsLazy

        public [AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") getUserDetailsLazy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)

        Creates a new [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") instance populated using the given username. The returned user details bean is "lazy" -- the [`Appian user metadata`](AppianUserDetails.html#getUserProfile\(\)) and the [`password status`](AppianUserDetails.html#getPasswordStatus\(\)) for the user are not loaded until the first call to these getters. Use this method when you only have a username since retrieving a UserProfile object is comparatively expensive.

        Parameters:

        `username` - The username.

        Returns:

        The user details.

    -   ### getUserDetails

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") getUserDetails([UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") user, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> userRoles)

        Deprecated.

        Use [`getUserDetails(UserProfile)`](#getUserDetails\(com.appiancorp.suiteapi.personalization.UserProfile\)) instead.

        Creates a new [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") instance populated using the given Appian user metadata. If [`isApplyPasswordManagement()`](#isApplyPasswordManagement\(\)) is set to `true`, sets the [`password status`](AppianUserDetails.html#getPasswordStatus\(\)) using [`calculatePasswordStatus(UserProfile)`](#calculatePasswordStatus\(com.appiancorp.suiteapi.personalization.UserProfile\)). Otherwise, sets the password status to [`PasswordStatus.NORMAL`](PasswordStatus.html#NORMAL).

        Parameters:

        `user` - The Appian user metadata.

        `userRoles` - The roles of the user.

        Returns:

        The user details.

    -   ### calculatePasswordStatus

        public static [PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth") calculatePasswordStatus([UserProfile](../../personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") user)

        Calculates the password status using the Password Management feature configurations and the user metadata [`User.isTemporaryPassword()`](../../personalization/User.html#isTemporaryPassword\(\)) and [`User.getPasswordModified()`](../../personalization/User.html#getPasswordModified\(\)).

        Parameters:

        `user` - The Appian user metadata.

        Returns:

        The password status for the given user.