---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/security/auth/package-summary.html
original_path: api/com/appiancorp/suiteapi/security/auth/package-summary.html
version: "25.3"
title: "Package com.appiancorp.suiteapi.security.auth"
page_id: "api/com/appiancorp/suiteapi/security/auth/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.suiteapi.security.auth

* * *

package com.appiancorp.suiteapi.security.auth

-   All Classes and InterfacesClassesEnum ClassesExceptions

    Class

    Description

    [AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth")

    Implements the Spring `UserDetails` interface and holds Appian-specific data about a user.

    [AppianUserDetailsService](AppianUserDetailsService.html "class in com.appiancorp.suiteapi.security.auth")

    Retrieves the user data from [`UserProfileService`](../../personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization") and returns an instance of [`AppianUserDetails`](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth").

    [AuthenticationProviderWrapper](AuthenticationProviderWrapper.html "class in com.appiancorp.suiteapi.security.auth")

    The AuthenticationProviderWrapper contains an AuthenticationProvider to which it delegates the actual authentication of an AuthenticationToken.

    [PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth")

    This enumeration specifies the different states that a user's password can have in Appian.

    [TerminateAuthenticationChainException](TerminateAuthenticationChainException.html "class in com.appiancorp.suiteapi.security.auth")

    This exception could be thrown by an `AuthenticationProvider` to stop authenticating against other available `AuthenticationProvider`s and immediately fail authentication.