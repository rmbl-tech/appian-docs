---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/spring/security/package-summary.html
original_path: api/com/appiancorp/suiteapi/common/spring/security/package-summary.html
version: "25.3"
title: "Package com.appiancorp.suiteapi.common.spring.security"
page_id: "api/com/appiancorp/suiteapi/common/spring/security/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.suiteapi.common.spring.security

* * *

package com.appiancorp.suiteapi.common.spring.security

-   All Classes and InterfacesClassesExceptions

    Class

    Description

    [BasicUserDetailsContextMapper](BasicUserDetailsContextMapper.html "class in com.appiancorp.suiteapi.common.spring.security")

    This class implements very basic conversion from a Spring LDAP `DirContextOperations` bean to a `UserDetails` bean.

    [CompositeSessionAuthenticationStrategy](CompositeSessionAuthenticationStrategy.html "class in com.appiancorp.suiteapi.common.spring.security")

    Allows multiple `SessionAuthenticationStrategy` implementations to be executed as a single `SessionAuthenticationStrategy`.

    [RegexDelegatingUserDetailsService](RegexDelegatingUserDetailsService.html "class in com.appiancorp.suiteapi.common.spring.security")

    This class decorates another `UserDetailsService` implementation, allowing for a regular expression to be used to extract the username from the value passed into [`RegexDelegatingUserDetailsService.loadUserByUsername(String)`](RegexDelegatingUserDetailsService.html#loadUserByUsername\(java.lang.String\)).

    [TemporaryCredentialsExpiredException](TemporaryCredentialsExpiredException.html "class in com.appiancorp.suiteapi.common.spring.security")

    Thrown if an authentication request is rejected because the account's **temporary** credentials have expired.

    [TemporaryPasswordException](TemporaryPasswordException.html "class in com.appiancorp.suiteapi.common.spring.security")

    Thrown if an authentication request is rejected because it's using an account's **temporary** credentials but cannot be redirected to the interface that allows to enter a new password.