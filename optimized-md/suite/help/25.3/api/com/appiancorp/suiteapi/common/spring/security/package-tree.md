---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/spring/security/package-tree.html
original_path: api/com/appiancorp/suiteapi/common/spring/security/package-tree.html
version: "25.3"
---

# Hierarchy For Package com.appiancorp.suiteapi.common.spring.security

Package Hierarchies:

-   [All Packages](../../../../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   com.appiancorp.suiteapi.common.spring.security.[BasicUserDetailsContextMapper](BasicUserDetailsContextMapper.html "class in com.appiancorp.suiteapi.common.spring.security") (implements org.springframework.security.ldap.userdetails.UserDetailsContextMapper)
    -   com.appiancorp.suiteapi.common.spring.security.[CompositeSessionAuthenticationStrategy](CompositeSessionAuthenticationStrategy.html "class in com.appiancorp.suiteapi.common.spring.security") (implements org.springframework.security.web.authentication.session.SessionAuthenticationStrategy)
    -   com.appiancorp.suiteapi.common.spring.security.[RegexDelegatingUserDetailsService](RegexDelegatingUserDetailsService.html "class in com.appiancorp.suiteapi.common.spring.security") (implements org.springframework.security.core.userdetails.UserDetailsService)
    -   java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   java.lang.[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")
            -   java.lang.[RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")
                -   org.springframework.security.core.AuthenticationException
                    -   org.springframework.security.authentication.AccountStatusException
                        -   com.appiancorp.suiteapi.common.spring.security.[TemporaryCredentialsExpiredException](TemporaryCredentialsExpiredException.html "class in com.appiancorp.suiteapi.common.spring.security")
                        -   com.appiancorp.suiteapi.common.spring.security.[TemporaryPasswordException](TemporaryPasswordException.html "class in com.appiancorp.suiteapi.common.spring.security")