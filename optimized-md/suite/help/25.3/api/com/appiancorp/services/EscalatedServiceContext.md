---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/EscalatedServiceContext.html
original_path: api/com/appiancorp/services/EscalatedServiceContext.html
version: "25.3"
title: "Class EscalatedServiceContext"
page_id: "api/com/appiancorp/services/EscalatedServiceContext"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.services](package-summary.html)

# Class EscalatedServiceContext

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.services.AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")

[com.appiancorp.services.UserServiceContext](UserServiceContext.html "class in com.appiancorp.services")

com.appiancorp.services.EscalatedServiceContext

All Implemented Interfaces:

`com.appiancorp.asl3.servicefw.connect.ServiceContext`, `com.appiancorp.security.auth.SecurityContext`, `com.appiancorp.services.AuthorizationInterceptorProvider`, `[KougarServiceContext](KougarServiceContext.html "interface in com.appiancorp.services")`, `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`, `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`

* * *

public final class EscalatedServiceContext extends [UserServiceContext](UserServiceContext.html "class in com.appiancorp.services")

An EscalatedServiceContext is used to strongly-type mark methods that require privilege escalation.

Privilege Escalation means the actor will use the grantor's roles to execute a service or DAO call.

Note that this privilege escalation is only to grant access to execute the API method; the actual user's credentials are still used internally when checking access to a backend object.

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.services.[UserServiceContext](UserServiceContext.html "class in com.appiancorp.services")

    `[getIdentity](UserServiceContext.html#getIdentity\(\)), [isDesignatedForMigration](UserServiceContext.html#isDesignatedForMigration\(\))`

    ### Methods inherited from class com.appiancorp.services.[AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")

    `[addService](AbstractServiceContext.html#addService\(java.lang.String,java.lang.Object\)), [getAppianLoginContext](AbstractServiceContext.html#getAppianLoginContext\(\)), [getAppianSession](AbstractServiceContext.html#getAppianSession\(\)), [getAttribute](AbstractServiceContext.html#getAttribute\(java.lang.String\)), [getAuthorizationInterceptor](AbstractServiceContext.html#getAuthorizationInterceptor\(java.lang.String,java.lang.Class\)), [getAuthorizationProvider](AbstractServiceContext.html#getAuthorizationProvider\(\)), [getCalendarID](AbstractServiceContext.html#getCalendarID\(\)), [getEngineCredentials](AbstractServiceContext.html#getEngineCredentials\(com.appiancorp.kougar.services.ServiceConnection\)), [getGrantorName](AbstractServiceContext.html#getGrantorName\(\)), [getGrantorRoles](AbstractServiceContext.html#getGrantorRoles\(\)), [getLocale](AbstractServiceContext.html#getLocale\(\)), [getMemberGroupRefs](AbstractServiceContext.html#getMemberGroupRefs\(\)), [getMemberGroupUuids](AbstractServiceContext.html#getMemberGroupUuids\(\)), [getName](AbstractServiceContext.html#getName\(\)), [getOverrideLocale](AbstractServiceContext.html#getOverrideLocale\(\)), [getRoles](AbstractServiceContext.html#getRoles\(\)), [getService](AbstractServiceContext.html#getService\(java.lang.String\)), [getTimeZone](AbstractServiceContext.html#getTimeZone\(\)), [getUserRef](AbstractServiceContext.html#getUserRef\(\)), [getUserUuid](AbstractServiceContext.html#getUserUuid\(\)), [isAdsSuperUser](AbstractServiceContext.html#isAdsSuperUser\(\)), [isAllowOverrideForDisabledLocale](AbstractServiceContext.html#isAllowOverrideForDisabledLocale\(\)), [isAuthenticatedByAppianInternalProvider](AbstractServiceContext.html#isAuthenticatedByAppianInternalProvider\(\)), [isLoggedInThroughSaml](AbstractServiceContext.html#isLoggedInThroughSaml\(\)), [isRtl](AbstractServiceContext.html#isRtl\(\)), [isSysAdmin](AbstractServiceContext.html#isSysAdmin\(\)), [isUserRefNull](AbstractServiceContext.html#isUserRefNull\(\)), [removeAttribute](AbstractServiceContext.html#removeAttribute\(java.lang.String\)), [removeService](AbstractServiceContext.html#removeService\(java.lang.String\)), [setAttribute](AbstractServiceContext.html#setAttribute\(java.lang.String,java.lang.Object\)), [setAuthorizationProvider](AbstractServiceContext.html#setAuthorizationProvider\(com.appiancorp.security.authz.AuthorizationProvider\)), [setCalendarID](AbstractServiceContext.html#setCalendarID\(java.lang.String\)), [setLocale](AbstractServiceContext.html#setLocale\(java.util.Locale\)), [setTimeZone](AbstractServiceContext.html#setTimeZone\(java.util.TimeZone\)), [toString](AbstractServiceContext.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.security.[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#equals\(java.lang.Object\) "class or interface in java.security"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#hashCode\(\) "class or interface in java.security"), [implies](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#implies\(javax.security.auth.Subject\) "class or interface in java.security")`