---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/spring/security/BasicUserDetailsContextMapper.html
original_path: api/com/appiancorp/suiteapi/common/spring/security/BasicUserDetailsContextMapper.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common.spring.security](package-summary.html)

# Class BasicUserDetailsContextMapper

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.spring.security.BasicUserDetailsContextMapper

All Implemented Interfaces:

`org.springframework.security.ldap.userdetails.UserDetailsContextMapper`

* * *

public class BasicUserDetailsContextMapper extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements org.springframework.security.ldap.userdetails.UserDetailsContextMapper

This class implements very basic conversion from a Spring LDAP `DirContextOperations` bean to a `UserDetails` bean. The user data is simply retrieved by invoking the configured `UserDetailsService` with the given username. Conversion from `UserDetails` to a `DirContextAdapter` is not supported.

Sample XML configuration:

```

<bean id="userDetailsContextMapper" class="com.appiancorp.suiteapi.common.spring.security.BasicUserDetailsContextMapper">
  <constructor-arg ref="myUserDetailsService"/>
</bean>
<bean id="myUserDetailsService" class="com.example.security.auth.MyUserDetailsService"/>
```

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[BasicUserDetailsContextMapper](#%3Cinit%3E\(org.springframework.security.core.userdetails.UserDetailsService\))(org.springframework.security.core.userdetails.UserDetailsService userDetailsService)`

    Creates a new instance with the given `UserDetailsService` which will be used to retrieve the user data when [`mapUserFromContext(DirContextOperations, String, Collection)`](#mapUserFromContext\(org.springframework.ldap.core.DirContextOperations,java.lang.String,java.util.Collection\)) is invoked.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected org.springframework.security.core.userdetails.UserDetailsService`

    `[getUserDetailsService](#getUserDetailsService\(\))()`

    `org.springframework.security.core.userdetails.UserDetails`

    `[mapUserFromContext](#mapUserFromContext\(org.springframework.ldap.core.DirContextOperations,java.lang.String,java.util.Collection\))(org.springframework.ldap.core.DirContextOperations ctx, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<? extends org.springframework.security.core.GrantedAuthority> authority)`

    Invokes the `configured userDetailsService` with the given username.

    `void`

    `[mapUserToContext](#mapUserToContext\(org.springframework.security.core.userdetails.UserDetails,org.springframework.ldap.core.DirContextAdapter\))(org.springframework.security.core.userdetails.UserDetails user, org.springframework.ldap.core.DirContextAdapter ctx)`

    Throws [`UnsupportedOperationException`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/UnsupportedOperationException.html "class or interface in java.lang").

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### BasicUserDetailsContextMapper

        public BasicUserDetailsContextMapper(org.springframework.security.core.userdetails.UserDetailsService userDetailsService)

        Creates a new instance with the given `UserDetailsService` which will be used to retrieve the user data when [`mapUserFromContext(DirContextOperations, String, Collection)`](#mapUserFromContext\(org.springframework.ldap.core.DirContextOperations,java.lang.String,java.util.Collection\)) is invoked.

-   ## Method Details

    -   ### mapUserFromContext

        public org.springframework.security.core.userdetails.UserDetails mapUserFromContext(org.springframework.ldap.core.DirContextOperations ctx, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<? extends org.springframework.security.core.GrantedAuthority> authority)

        Invokes the `configured userDetailsService` with the given username. The passed-in granted authorities are ignored and the ones set by `UserDetailsService` are used instead.

        Specified by:

        `mapUserFromContext` in interface `org.springframework.security.ldap.userdetails.UserDetailsContextMapper`

    -   ### mapUserToContext

        public void mapUserToContext(org.springframework.security.core.userdetails.UserDetails user, org.springframework.ldap.core.DirContextAdapter ctx)

        Throws [`UnsupportedOperationException`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/UnsupportedOperationException.html "class or interface in java.lang").

        Specified by:

        `mapUserToContext` in interface `org.springframework.security.ldap.userdetails.UserDetailsContextMapper`

    -   ### getUserDetailsService

        protected org.springframework.security.core.userdetails.UserDetailsService getUserDetailsService()

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`