---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/spring/security/RegexDelegatingUserDetailsService.html
original_path: api/com/appiancorp/suiteapi/common/spring/security/RegexDelegatingUserDetailsService.html
version: "25.3"
title: "Class RegexDelegatingUserDetailsService"
page_id: "api/com/appiancorp/suiteapi/common/spring/security/RegexDelegatingUserDetailsService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common.spring.security](package-summary.html)

# Class RegexDelegatingUserDetailsService

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.spring.security.RegexDelegatingUserDetailsService

All Implemented Interfaces:

`org.springframework.security.core.userdetails.UserDetailsService`

* * *

public class RegexDelegatingUserDetailsService extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements org.springframework.security.core.userdetails.UserDetailsService

This class decorates another `UserDetailsService` implementation, allowing for a regular expression to be used to extract the username from the value passed into [`loadUserByUsername(String)`](#loadUserByUsername\(java.lang.String\)).

For example, if the usernames provided for authentication have the format "john.smith@example.com", but the usernames stored in the system are without the domain ("john.smith"), this class can be used to extract the username without the domain and pass it to the delegate `UserDetailsService`.

Sample XML configuration:

```

<bean id="userDetailsService" class="com.appiancorp.suiteapi.common.spring.security.RegexDelegatingUserDetailsService">
  <constructor-arg ref="myUserDetailsService"/>
  <constructor-arg value="(.+)@(.+)"/>
  <constructor-arg value="1"/>
</bean>
<bean id="myUserDetailsService" class="com.example.security.auth.MyUserDetailsService"/>
```

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[RegexDelegatingUserDetailsService](#%3Cinit%3E\(org.springframework.security.core.userdetails.UserDetailsService,java.lang.String,int\))(org.springframework.security.core.userdetails.UserDetailsService delegateService, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex, int targetGroup)`

    Creates a new instance with the given properties.

    `[RegexDelegatingUserDetailsService](#%3Cinit%3E\(org.springframework.security.core.userdetails.UserDetailsService,java.lang.String,int,int\))(org.springframework.security.core.userdetails.UserDetailsService delegateService, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex, int regexFlags, int targetGroup)`

    Creates a new instance with the given properties.

    `[RegexDelegatingUserDetailsService](#%3Cinit%3E\(org.springframework.security.core.userdetails.UserDetailsService,java.util.regex.Pattern,int\))(org.springframework.security.core.userdetails.UserDetailsService delegateService, [Pattern](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html "class or interface in java.util.regex") pattern, int targetGroup)`

    Creates a new instance with the given properties.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected org.springframework.security.core.userdetails.UserDetailsService`

    `[getDelegateService](#getDelegateService\(\))()`

    `protected [Pattern](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html "class or interface in java.util.regex")`

    `[getPattern](#getPattern\(\))()`

    `protected int`

    `[getTargetGroup](#getTargetGroup\(\))()`

    `org.springframework.security.core.userdetails.UserDetails`

    `[loadUserByUsername](#loadUserByUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Loads the user data for the given username, using the following logic: Attempts to match the given username against the configured regular expression.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### RegexDelegatingUserDetailsService

        public RegexDelegatingUserDetailsService(org.springframework.security.core.userdetails.UserDetailsService delegateService, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex, int targetGroup)

        Creates a new instance with the given properties.

        Parameters:

        `delegateService` - The delegate `UserDetailsService` which will be invoked to get the user data.

        `regex` - The regular expression which will used to extract the username. A [`Pattern`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html "class or interface in java.util.regex") object is created from the expression using [`Pattern.compile(String)`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html#compile\(java.lang.String\) "class or interface in java.util.regex").

        `targetGroup` - The [`group`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Matcher.html#group\(int\) "class or interface in java.util.regex") within the regular expression that should be used to extract the username.

    -   ### RegexDelegatingUserDetailsService

        public RegexDelegatingUserDetailsService(org.springframework.security.core.userdetails.UserDetailsService delegateService, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex, int regexFlags, int targetGroup)

        Creates a new instance with the given properties. This constructor is the same as [`RegexDelegatingUserDetailsService(UserDetailsService, String, int)`](#%3Cinit%3E\(org.springframework.security.core.userdetails.UserDetailsService,java.lang.String,int\)) with the additional `regexFlags` parameter, which is used to create the [`Pattern`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html "class or interface in java.util.regex") object from the regular expression using [`Pattern.compile(String, int)`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html#compile\(java.lang.String,int\) "class or interface in java.util.regex").

    -   ### RegexDelegatingUserDetailsService

        public RegexDelegatingUserDetailsService(org.springframework.security.core.userdetails.UserDetailsService delegateService, [Pattern](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html "class or interface in java.util.regex") pattern, int targetGroup)

        Creates a new instance with the given properties.

        Parameters:

        `delegateService` - The delegate `UserDetailsService` which will be invoked to get the user data.

        `pattern` - The compiled representation of a regular expression which will used to extract the username.

        `targetGroup` - The [`group`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Matcher.html#group\(int\) "class or interface in java.util.regex") within the regular expression that should be used to extract the username.

-   ## Method Details

    -   ### loadUserByUsername

        public org.springframework.security.core.userdetails.UserDetails loadUserByUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws org.springframework.security.core.userdetails.UsernameNotFoundException

        Loads the user data for the given username, using the following logic:

        -   Attempts to match the given username against the configured regular expression.
        -   If the username matches the regular expression, retrieves the portion of the given username captured by the configured [`group`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Matcher.html#group\(int\) "class or interface in java.util.regex"). This value is passed as to the configured delegate `UserDetailsService` to actually load the user data.
        -   If the given username doesn't match the regular expression, or if it doesn't contain the specified group, the given username is passed to the delegate `UserDetailsService` as is.

        Specified by:

        `loadUserByUsername` in interface `org.springframework.security.core.userdetails.UserDetailsService`

        Throws:

        `org.springframework.security.core.userdetails.UsernameNotFoundException`

    -   ### getDelegateService

        protected org.springframework.security.core.userdetails.UserDetailsService getDelegateService()

    -   ### getPattern

        protected [Pattern](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html "class or interface in java.util.regex") getPattern()

    -   ### getTargetGroup

        protected int getTargetGroup()

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`