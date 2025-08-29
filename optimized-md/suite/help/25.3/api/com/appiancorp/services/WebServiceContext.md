---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/WebServiceContext.html
original_path: api/com/appiancorp/services/WebServiceContext.html
version: "25.3"
---

Package [com.appiancorp.services](package-summary.html)

# Class WebServiceContext

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.services.AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")

com.appiancorp.services.WebServiceContext

All Implemented Interfaces:

`com.appiancorp.asl3.servicefw.connect.ServiceContext`, `com.appiancorp.security.auth.SecurityContext`, `com.appiancorp.services.AuthorizationInterceptorProvider`, `[KougarServiceContext](KougarServiceContext.html "interface in com.appiancorp.services")`, `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`, `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`

* * *

public final class WebServiceContext extends [AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")

Represents a service context that was obtained from the [`WebServiceContextFactory`](WebServiceContextFactory.html "class in com.appiancorp.services") by sending it a session or request.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getAttribute](#getAttribute\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)`

    Gets the attribute at the specified key.

    `com.appiancorp.asl3.servicefw.connect.ASLIdentity`

    `[getIdentity](#getIdentity\(\))()`

    Gets the identity.

    `javax.servlet.http.HttpSession`

    `[getSession](#getSession\(\))()`

    Gets the session.

    `boolean`

    `[isDesignatedForMigration](#isDesignatedForMigration\(\))()`

    Whether this service context has been designated for migration of objects in the system.

    `void`

    `[setAttribute](#setAttribute\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)`

    Sets the attribute at the specified key to the specified value.

    ### Methods inherited from class com.appiancorp.services.[AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")

    `[addService](AbstractServiceContext.html#addService\(java.lang.String,java.lang.Object\)), [getAppianLoginContext](AbstractServiceContext.html#getAppianLoginContext\(\)), [getAppianSession](AbstractServiceContext.html#getAppianSession\(\)), [getAuthorizationInterceptor](AbstractServiceContext.html#getAuthorizationInterceptor\(java.lang.String,java.lang.Class\)), [getAuthorizationProvider](AbstractServiceContext.html#getAuthorizationProvider\(\)), [getCalendarID](AbstractServiceContext.html#getCalendarID\(\)), [getEngineCredentials](AbstractServiceContext.html#getEngineCredentials\(com.appiancorp.kougar.services.ServiceConnection\)), [getGrantorName](AbstractServiceContext.html#getGrantorName\(\)), [getGrantorRoles](AbstractServiceContext.html#getGrantorRoles\(\)), [getLocale](AbstractServiceContext.html#getLocale\(\)), [getMemberGroupRefs](AbstractServiceContext.html#getMemberGroupRefs\(\)), [getMemberGroupUuids](AbstractServiceContext.html#getMemberGroupUuids\(\)), [getName](AbstractServiceContext.html#getName\(\)), [getOverrideLocale](AbstractServiceContext.html#getOverrideLocale\(\)), [getRoles](AbstractServiceContext.html#getRoles\(\)), [getService](AbstractServiceContext.html#getService\(java.lang.String\)), [getTimeZone](AbstractServiceContext.html#getTimeZone\(\)), [getUserRef](AbstractServiceContext.html#getUserRef\(\)), [getUserUuid](AbstractServiceContext.html#getUserUuid\(\)), [isAdsSuperUser](AbstractServiceContext.html#isAdsSuperUser\(\)), [isAllowOverrideForDisabledLocale](AbstractServiceContext.html#isAllowOverrideForDisabledLocale\(\)), [isAuthenticatedByAppianInternalProvider](AbstractServiceContext.html#isAuthenticatedByAppianInternalProvider\(\)), [isLoggedInThroughSaml](AbstractServiceContext.html#isLoggedInThroughSaml\(\)), [isRtl](AbstractServiceContext.html#isRtl\(\)), [isSysAdmin](AbstractServiceContext.html#isSysAdmin\(\)), [isUserRefNull](AbstractServiceContext.html#isUserRefNull\(\)), [removeAttribute](AbstractServiceContext.html#removeAttribute\(java.lang.String\)), [removeService](AbstractServiceContext.html#removeService\(java.lang.String\)), [setAuthorizationProvider](AbstractServiceContext.html#setAuthorizationProvider\(com.appiancorp.security.authz.AuthorizationProvider\)), [setCalendarID](AbstractServiceContext.html#setCalendarID\(java.lang.String\)), [setLocale](AbstractServiceContext.html#setLocale\(java.util.Locale\)), [setTimeZone](AbstractServiceContext.html#setTimeZone\(java.util.TimeZone\)), [toString](AbstractServiceContext.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.security.[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#equals\(java.lang.Object\) "class or interface in java.security"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#hashCode\(\) "class or interface in java.security"), [implies](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#implies\(javax.security.auth.Subject\) "class or interface in java.security")`

-   ## Method Details

    -   ### getSession

        public javax.servlet.http.HttpSession getSession()

        Gets the session.

        Returns:

        the session

    -   ### getIdentity

        public com.appiancorp.asl3.servicefw.connect.ASLIdentity getIdentity()

        Gets the identity.

        Returns:

        the `ASLIdentity` used to create the `ServiceContext`

    -   ### isDesignatedForMigration

        public boolean isDesignatedForMigration()

        Description copied from interface: `[ServiceContext](ServiceContext.html#isDesignatedForMigration\(\))`

        Whether this service context has been designated for migration of objects in the system.

        Returns:

        whether the service context is designated for migration

    -   ### getAttribute

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getAttribute([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)

        Description copied from interface: `[ServiceContext](ServiceContext.html#getAttribute\(java.lang.String\))`

        Gets the attribute at the specified key.

        Specified by:

        `getAttribute` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[getAttribute](ServiceContext.html#getAttribute\(java.lang.String\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Overrides:

        `[getAttribute](AbstractServiceContext.html#getAttribute\(java.lang.String\))` in class `[AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")`

        Parameters:

        `key` - the key

        Returns:

        the attribute value

        See Also:

        -   [`ServiceContext.setAttribute(String, Object)`](ServiceContext.html#setAttribute\(java.lang.String,java.lang.Object\))

    -   ### setAttribute

        public void setAttribute([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)

        Description copied from interface: `[ServiceContext](ServiceContext.html#setAttribute\(java.lang.String,java.lang.Object\))`

        Sets the attribute at the specified key to the specified value.

        Specified by:

        `setAttribute` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[setAttribute](ServiceContext.html#setAttribute\(java.lang.String,java.lang.Object\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Overrides:

        `[setAttribute](AbstractServiceContext.html#setAttribute\(java.lang.String,java.lang.Object\))` in class `[AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")`

        Parameters:

        `key` - the key

        `o` - the value

        See Also:

        -   [`ServiceContext.getAttribute(String)`](ServiceContext.html#getAttribute\(java.lang.String\))