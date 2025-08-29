---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/spring/security/CompositeSessionAuthenticationStrategy.html
original_path: api/com/appiancorp/suiteapi/common/spring/security/CompositeSessionAuthenticationStrategy.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common.spring.security](package-summary.html)

# Class CompositeSessionAuthenticationStrategy

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.spring.security.CompositeSessionAuthenticationStrategy

All Implemented Interfaces:

`org.springframework.security.web.authentication.session.SessionAuthenticationStrategy`

* * *

public class CompositeSessionAuthenticationStrategy extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements org.springframework.security.web.authentication.session.SessionAuthenticationStrategy

Allows multiple `SessionAuthenticationStrategy` implementations to be executed as a single `SessionAuthenticationStrategy`. The delegate strategies are invoked sequentially in the order that they were given; if an exception is thrown by one of the delegate classes, execution stops and the exception is propagated.

Sample XML configuration:

```

<bean id="sessionAuthStrategy" class="com.appiancorp.suiteapi.common.spring.security.CompositeSessionAuthenticationStrategy">
  <constructor-arg>
    <list><ref bean="sessionFixationProtectionStrategy"/><ref bean="myCustomSessionStrategy"/></list>
  </constructor-arg>
</bean>
<bean id="sessionFixationProtectionStrategy" class="org.springframework.security.web.authentication.session.SessionFixationProtectionStrategy"/>
<bean id="myCustomSessionStrategy" class="com.example.security.auth.MyCustomSessionStrategy"/>

```

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[CompositeSessionAuthenticationStrategy](#%3Cinit%3E\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<org.springframework.security.web.authentication.session.SessionAuthenticationStrategy> delegateStrategies)`

    Creates a new instance with the given delegate strategies which will be invoked when this strategy is executed.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<org.springframework.security.web.authentication.session.SessionAuthenticationStrategy>`

    `[getDelegateStrategies](#getDelegateStrategies\(\))()`

    `void`

    `[onAuthentication](#onAuthentication\(org.springframework.security.core.Authentication,jakarta.servlet.http.HttpServletRequest,jakarta.servlet.http.HttpServletResponse\))(org.springframework.security.core.Authentication authentication, jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### CompositeSessionAuthenticationStrategy

        public CompositeSessionAuthenticationStrategy([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<org.springframework.security.web.authentication.session.SessionAuthenticationStrategy> delegateStrategies)

        Creates a new instance with the given delegate strategies which will be invoked when this strategy is executed.

-   ## Method Details

    -   ### onAuthentication

        public void onAuthentication(org.springframework.security.core.Authentication authentication, jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws org.springframework.security.web.authentication.session.SessionAuthenticationException

        Specified by:

        `onAuthentication` in interface `org.springframework.security.web.authentication.session.SessionAuthenticationStrategy`

        Throws:

        `org.springframework.security.web.authentication.session.SessionAuthenticationException`

    -   ### getDelegateStrategies

        protected [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<org.springframework.security.web.authentication.session.SessionAuthenticationStrategy> getDelegateStrategies()

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`