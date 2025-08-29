---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/UserServiceContext.html
original_path: api/com/appiancorp/services/UserServiceContext.html
version: "25.3"
title: "Class UserServiceContext"
page_id: "api/com/appiancorp/services/UserServiceContext"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.services](package-summary.html)

# Class UserServiceContext

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.services.AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")

com.appiancorp.services.UserServiceContext

All Implemented Interfaces:

`com.appiancorp.asl3.servicefw.connect.ServiceContext`, `com.appiancorp.security.auth.SecurityContext`, `com.appiancorp.services.AuthorizationInterceptorProvider`, `[KougarServiceContext](KougarServiceContext.html "interface in com.appiancorp.services")`, `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`, `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`

Direct Known Subclasses:

`[EscalatedServiceContext](EscalatedServiceContext.html "class in com.appiancorp.services")`

* * *

public class UserServiceContext extends [AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")

UserServiceContext can be used to request services explicitly in standalone applications. Since the Appian Suite API methods are executed "subjectively" (i.e. the user who is executing the call is significant), a UserServiceContext must be created for the user who is the subject of the methods that will be invoked on the obtained service. In Web-based Appian applications, the appropriate context is provided automatically.

See Also:

-   [`ServiceContextFactory`](ServiceContextFactory.html "class in com.appiancorp.services")

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[UserServiceContext](#%3Cinit%3E\(com.appiancorp.services.ServiceContext,java.lang.String\))([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)`

    `protected`

    `[UserServiceContext](#%3Cinit%3E\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `com.appiancorp.asl3.servicefw.connect.ASLIdentity`

    `[getIdentity](#getIdentity\(\))()`

    Gets the Identity object that was used to initialize the `UserServiceContext`.

    `boolean`

    `[isDesignatedForMigration](#isDesignatedForMigration\(\))()`

    Whether this service context has been designated for migration of objects in the system.

    ### Methods inherited from class com.appiancorp.services.[AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")

    `[addService](AbstractServiceContext.html#addService\(java.lang.String,java.lang.Object\)), [getAppianLoginContext](AbstractServiceContext.html#getAppianLoginContext\(\)), [getAppianSession](AbstractServiceContext.html#getAppianSession\(\)), [getAttribute](AbstractServiceContext.html#getAttribute\(java.lang.String\)), [getAuthorizationInterceptor](AbstractServiceContext.html#getAuthorizationInterceptor\(java.lang.String,java.lang.Class\)), [getAuthorizationProvider](AbstractServiceContext.html#getAuthorizationProvider\(\)), [getCalendarID](AbstractServiceContext.html#getCalendarID\(\)), [getEngineCredentials](AbstractServiceContext.html#getEngineCredentials\(com.appiancorp.kougar.services.ServiceConnection\)), [getGrantorName](AbstractServiceContext.html#getGrantorName\(\)), [getGrantorRoles](AbstractServiceContext.html#getGrantorRoles\(\)), [getLocale](AbstractServiceContext.html#getLocale\(\)), [getMemberGroupRefs](AbstractServiceContext.html#getMemberGroupRefs\(\)), [getMemberGroupUuids](AbstractServiceContext.html#getMemberGroupUuids\(\)), [getName](AbstractServiceContext.html#getName\(\)), [getOverrideLocale](AbstractServiceContext.html#getOverrideLocale\(\)), [getRoles](AbstractServiceContext.html#getRoles\(\)), [getService](AbstractServiceContext.html#getService\(java.lang.String\)), [getTimeZone](AbstractServiceContext.html#getTimeZone\(\)), [getUserRef](AbstractServiceContext.html#getUserRef\(\)), [getUserUuid](AbstractServiceContext.html#getUserUuid\(\)), [isAdsSuperUser](AbstractServiceContext.html#isAdsSuperUser\(\)), [isAllowOverrideForDisabledLocale](AbstractServiceContext.html#isAllowOverrideForDisabledLocale\(\)), [isAuthenticatedByAppianInternalProvider](AbstractServiceContext.html#isAuthenticatedByAppianInternalProvider\(\)), [isLoggedInThroughSaml](AbstractServiceContext.html#isLoggedInThroughSaml\(\)), [isRtl](AbstractServiceContext.html#isRtl\(\)), [isSysAdmin](AbstractServiceContext.html#isSysAdmin\(\)), [isUserRefNull](AbstractServiceContext.html#isUserRefNull\(\)), [removeAttribute](AbstractServiceContext.html#removeAttribute\(java.lang.String\)), [removeService](AbstractServiceContext.html#removeService\(java.lang.String\)), [setAttribute](AbstractServiceContext.html#setAttribute\(java.lang.String,java.lang.Object\)), [setAuthorizationProvider](AbstractServiceContext.html#setAuthorizationProvider\(com.appiancorp.security.authz.AuthorizationProvider\)), [setCalendarID](AbstractServiceContext.html#setCalendarID\(java.lang.String\)), [setLocale](AbstractServiceContext.html#setLocale\(java.util.Locale\)), [setTimeZone](AbstractServiceContext.html#setTimeZone\(java.util.TimeZone\)), [toString](AbstractServiceContext.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.security.[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#equals\(java.lang.Object\) "class or interface in java.security"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#hashCode\(\) "class or interface in java.security"), [implies](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#implies\(javax.security.auth.Subject\) "class or interface in java.security")`

-   ## Constructor Details

    -   ### UserServiceContext

        protected UserServiceContext([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)

    -   ### UserServiceContext

        protected UserServiceContext([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)

-   ## Method Details

    -   ### getIdentity

        public com.appiancorp.asl3.servicefw.connect.ASLIdentity getIdentity()

        Gets the Identity object that was used to initialize the `UserServiceContext`.

        Returns:

        the `ASLIdentity`

    -   ### isDesignatedForMigration

        public boolean isDesignatedForMigration()

        Description copied from interface: `[ServiceContext](ServiceContext.html#isDesignatedForMigration\(\))`

        Whether this service context has been designated for migration of objects in the system.

        Returns:

        whether the service context is designated for migration