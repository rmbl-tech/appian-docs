---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/security/auth/package-tree.html
original_path: api/com/appiancorp/suiteapi/security/auth/package-tree.html
version: "25.3"
title: "Hierarchy For Package com.appiancorp.suiteapi.security.auth"
page_id: "api/com/appiancorp/suiteapi/security/auth/package-tree"
section: "Class Hierarchy"
tags: ["appian","docs","v25.3"]
---


# Hierarchy For Package com.appiancorp.suiteapi.security.auth

Package Hierarchies:

-   [All Packages](../../../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   com.appiancorp.suiteapi.security.auth.[AppianUserDetails](AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth") (implements com.appiancorp.security.auth.AdsUserDetails, com.appiancorp.suiteapi.security.auth.UserDetailsAndSecurityContext)
    -   com.appiancorp.suiteapi.security.auth.[AppianUserDetailsService](AppianUserDetailsService.html "class in com.appiancorp.suiteapi.security.auth") (implements org.springframework.security.core.userdetails.UserDetailsService)
    -   com.appiancorp.suiteapi.security.auth.[AuthenticationProviderWrapper](AuthenticationProviderWrapper.html "class in com.appiancorp.suiteapi.security.auth") (implements org.springframework.security.authentication.AuthenticationProvider)
    -   java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   java.lang.[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")
            -   java.lang.[RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")
                -   org.springframework.security.core.AuthenticationException
                    -   org.springframework.security.authentication.AccountStatusException
                        -   com.appiancorp.suiteapi.security.auth.[TerminateAuthenticationChainException](TerminateAuthenticationChainException.html "class in com.appiancorp.suiteapi.security.auth")

## Enum Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<E> (implements java.lang.[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<T>, java.lang.constant.[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant"), java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.security.auth.[PasswordStatus](PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth")