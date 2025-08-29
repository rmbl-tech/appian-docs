---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/AbstractServiceContext.html
original_path: api/com/appiancorp/services/AbstractServiceContext.html
version: "25.3"
title: "Class AbstractServiceContext"
page_id: "api/com/appiancorp/services/AbstractServiceContext"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.services](package-summary.html)

# Class AbstractServiceContext

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.services.AbstractServiceContext

All Implemented Interfaces:

`com.appiancorp.asl3.servicefw.connect.ServiceContext`, `com.appiancorp.security.auth.SecurityContext`, `com.appiancorp.services.AuthorizationInterceptorProvider`, `[KougarServiceContext](KougarServiceContext.html "interface in com.appiancorp.services")`, `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`, `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`

Direct Known Subclasses:

`[UserServiceContext](UserServiceContext.html "class in com.appiancorp.services")`, `[WebServiceContext](WebServiceContext.html "class in com.appiancorp.services")`

* * *

public abstract class AbstractServiceContext extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [KougarServiceContext](KougarServiceContext.html "interface in com.appiancorp.services"), com.appiancorp.security.auth.SecurityContext, com.appiancorp.services.AuthorizationInterceptorProvider

Represents a service context for use with the service framework. This class defines the common methods that all service contexts would otherwise have to implement, but that don't vary much from service context to service context.

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[AbstractServiceContext](#%3Cinit%3E\(\))()`

    `protected`

    `[AbstractServiceContext](#%3Cinit%3E\(com.appiancorp.services.ServiceContext,java.lang.String\))([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)`

    `protected`

    `[AbstractServiceContext](#%3Cinit%3E\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addService](#addService\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") service)`

    Adds the specified `Service` to the service cache under the `serviceName_` key specified.

    `com.appiancorp.security.auth.AppianLoginContext`

    `[getAppianLoginContext](#getAppianLoginContext\(\))()`

    `com.appiancorp.core.expr.portable.common.Session`

    `[getAppianSession](#getAppianSession\(\))()`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getAttribute](#getAttribute\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)`

    Gets the attribute at the specified key.

    `org.aopalliance.intercept.MethodInterceptor`

    `[getAuthorizationInterceptor](#getAuthorizationInterceptor\(java.lang.String,java.lang.Class\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") actionTargetName, [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> targetInterface)`

    `com.appiancorp.security.authz.AuthorizationProvider`

    `[getAuthorizationProvider](#getAuthorizationProvider\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCalendarID](#getCalendarID\(\))()`

    Gets the calendar ID, which is used to calculate date in that calendar.

    `com.appian.komodo.api.EngineCredentials`

    `[getEngineCredentials](#getEngineCredentials\(com.appiancorp.kougar.services.ServiceConnection\))(com.appiancorp.kougar.services.ServiceConnection svcConn)`

    Returns the credentials to be used for calls with the specified `KougarConnection`.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGrantorName](#getGrantorName\(\))()`

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getGrantorRoles](#getGrantorRoles\(\))()`

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getLocale](#getLocale\(\))()`

    Gets the locale, which affects which language the database will return for multilingual strings.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<com.appiancorp.type.refs.GroupRef>`

    `[getMemberGroupRefs](#getMemberGroupRefs\(\))()`

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getMemberGroupUuids](#getMemberGroupUuids\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Returns the username of the user represented by this context.

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getOverrideLocale](#getOverrideLocale\(\))()`

    Necessary since this class implements `SecurityContext`.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getRoles](#getRoles\(\))()`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getService](#getService\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName)`

    Retrieves `Service` specified by the given service name from cache.

    `[TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util")`

    `[getTimeZone](#getTimeZone\(\))()`

    Gets the timezone, which the database uses for time conversions to and from GMT.

    `com.appiancorp.type.refs.UserRef`

    `[getUserRef](#getUserRef\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUserUuid](#getUserUuid\(\))()`

    `boolean`

    `[isAdsSuperUser](#isAdsSuperUser\(\))()`

    `boolean`

    `[isAllowOverrideForDisabledLocale](#isAllowOverrideForDisabledLocale\(\))()`

    `boolean`

    `[isAuthenticatedByAppianInternalProvider](#isAuthenticatedByAppianInternalProvider\(\))()`

    `boolean`

    `[isLoggedInThroughSaml](#isLoggedInThroughSaml\(\))()`

    `boolean`

    `[isRtl](#isRtl\(\))()`

    `boolean`

    `[isSysAdmin](#isSysAdmin\(\))()`

    `boolean`

    `[isUserRefNull](#isUserRefNull\(\))()`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[removeAttribute](#removeAttribute\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)`

    Removes the attribute at the specified key from the attribute map.

    `void`

    `[removeService](#removeService\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName)`

    Removes the specified service from the service cache.

    `void`

    `[setAttribute](#setAttribute\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)`

    Sets the attribute at the specified key to the specified value.

    `void`

    `[setAuthorizationProvider](#setAuthorizationProvider\(com.appiancorp.security.authz.AuthorizationProvider\))(com.appiancorp.security.authz.AuthorizationProvider authzProvider)`

    `void`

    `[setCalendarID](#setCalendarID\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") calendarID)`

    Sets the ID of the calendar, which is used to calculate date in that calendar.

    `void`

    `[setLocale](#setLocale\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    Sets the locale, which affects which language the database will return for multilingual strings.

    `void`

    `[setTimeZone](#setTimeZone\(java.util.TimeZone\))([TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") timeZone)`

    Sets the timezone, which the database uses for time conversions to and from GMT.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.security.[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#equals\(java.lang.Object\) "class or interface in java.security"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#hashCode\(\) "class or interface in java.security"), [implies](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#implies\(javax.security.auth.Subject\) "class or interface in java.security")`

    ### Methods inherited from interface com.appiancorp.services.[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")

    `[getIdentity](ServiceContext.html#getIdentity\(\)), [isDesignatedForMigration](ServiceContext.html#isDesignatedForMigration\(\))`

-   ## Constructor Details

    -   ### AbstractServiceContext

        protected AbstractServiceContext()

    -   ### AbstractServiceContext

        protected AbstractServiceContext([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)

    -   ### AbstractServiceContext

        protected AbstractServiceContext([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)

-   ## Method Details

    -   ### getAuthorizationProvider

        public com.appiancorp.security.authz.AuthorizationProvider getAuthorizationProvider()

    -   ### setAuthorizationProvider

        public void setAuthorizationProvider(com.appiancorp.security.authz.AuthorizationProvider authzProvider)

    -   ### getAuthorizationInterceptor

        public org.aopalliance.intercept.MethodInterceptor getAuthorizationInterceptor([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") actionTargetName, [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> targetInterface)

        Specified by:

        `getAuthorizationInterceptor` in interface `com.appiancorp.services.AuthorizationInterceptorProvider`

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Description copied from interface: `[ServiceContext](ServiceContext.html#getName\(\))`

        Returns the username of the user represented by this context.

        Specified by:

        `[getName](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#getName\(\) "class or interface in java.security")` in interface `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`

        Specified by:

        `[getName](ServiceContext.html#getName\(\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Returns:

        the username for this context

    -   ### getUserRef

        public com.appiancorp.type.refs.UserRef getUserRef()

        Specified by:

        `getUserRef` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### isUserRefNull

        public boolean isUserRefNull()

        Specified by:

        `isUserRefNull` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getUserUuid

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUserUuid()

        Specified by:

        `getUserUuid` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getMemberGroupUuids

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getMemberGroupUuids()

        Specified by:

        `getMemberGroupUuids` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getMemberGroupRefs

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<com.appiancorp.type.refs.GroupRef> getMemberGroupRefs()

        Specified by:

        `getMemberGroupRefs` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getRoles

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getRoles()

        Specified by:

        `getRoles` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### isAuthenticatedByAppianInternalProvider

        public boolean isAuthenticatedByAppianInternalProvider()

        Specified by:

        `isAuthenticatedByAppianInternalProvider` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### isLoggedInThroughSaml

        public boolean isLoggedInThroughSaml()

        Specified by:

        `isLoggedInThroughSaml` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getAppianLoginContext

        public com.appiancorp.security.auth.AppianLoginContext getAppianLoginContext()

        Specified by:

        `getAppianLoginContext` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### isSysAdmin

        public boolean isSysAdmin()

        Specified by:

        `isSysAdmin` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getGrantorName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGrantorName()

        Specified by:

        `getGrantorName` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getGrantorRoles

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getGrantorRoles()

        Specified by:

        `getGrantorRoles` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### addService

        public void addService([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") service)

        Description copied from interface: `[ServiceContext](ServiceContext.html#addService\(java.lang.String,java.lang.Object\))`

        Adds the specified `Service` to the service cache under the `serviceName_` key specified. If the key already exists, then it is overwritten with the new value.

        Specified by:

        `addService` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[addService](ServiceContext.html#addService\(java.lang.String,java.lang.Object\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Parameters:

        `serviceName` - the name of the service

        `service` - the service

        See Also:

        -   [`ServiceContext.getService(String)`](ServiceContext.html#getService\(java.lang.String\))
        -   [`ServiceContext.removeService(String)`](ServiceContext.html#removeService\(java.lang.String\))

    -   ### getService

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getService([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName)

        Description copied from interface: `[ServiceContext](ServiceContext.html#getService\(java.lang.String\))`

        Retrieves `Service` specified by the given service name from cache.

        Specified by:

        `getService` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[getService](ServiceContext.html#getService\(java.lang.String\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Parameters:

        `serviceName` - the service name

        Returns:

        the service

        See Also:

        -   [`ServiceContext.addService(String, Object)`](ServiceContext.html#addService\(java.lang.String,java.lang.Object\))
        -   [`ServiceContext.removeService(String)`](ServiceContext.html#removeService\(java.lang.String\))

    -   ### removeService

        public void removeService([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName)

        Description copied from interface: `[ServiceContext](ServiceContext.html#removeService\(java.lang.String\))`

        Removes the specified service from the service cache.

        Specified by:

        `removeService` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[removeService](ServiceContext.html#removeService\(java.lang.String\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Parameters:

        `serviceName` - the name of the service

        See Also:

        -   [`ServiceContext.getService(String)`](ServiceContext.html#getService\(java.lang.String\))
        -   [`ServiceContext.addService(String, Object)`](ServiceContext.html#addService\(java.lang.String,java.lang.Object\))

    -   ### setAttribute

        public void setAttribute([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)

        Description copied from interface: `[ServiceContext](ServiceContext.html#setAttribute\(java.lang.String,java.lang.Object\))`

        Sets the attribute at the specified key to the specified value.

        Specified by:

        `setAttribute` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[setAttribute](ServiceContext.html#setAttribute\(java.lang.String,java.lang.Object\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Parameters:

        `key` - the key

        `o` - the value

        See Also:

        -   [`ServiceContext.getAttribute(String)`](ServiceContext.html#getAttribute\(java.lang.String\))

    -   ### getAttribute

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getAttribute([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)

        Description copied from interface: `[ServiceContext](ServiceContext.html#getAttribute\(java.lang.String\))`

        Gets the attribute at the specified key.

        Specified by:

        `getAttribute` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[getAttribute](ServiceContext.html#getAttribute\(java.lang.String\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Parameters:

        `key` - the key

        Returns:

        the attribute value

        See Also:

        -   [`ServiceContext.setAttribute(String, Object)`](ServiceContext.html#setAttribute\(java.lang.String,java.lang.Object\))

    -   ### removeAttribute

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") removeAttribute([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)

        Description copied from interface: `[ServiceContext](ServiceContext.html#removeAttribute\(java.lang.String\))`

        Removes the attribute at the specified key from the attribute map.

        Specified by:

        `removeAttribute` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[removeAttribute](ServiceContext.html#removeAttribute\(java.lang.String\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Parameters:

        `key` - the key

        Returns:

        the attribute value before it was removed

        See Also:

        -   [`ServiceContext.setAttribute(String, Object)`](ServiceContext.html#setAttribute\(java.lang.String,java.lang.Object\))
        -   [`ServiceContext.getAttribute(String)`](ServiceContext.html#getAttribute\(java.lang.String\))

    -   ### getLocale

        public [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getLocale()

        Description copied from interface: `[ServiceContext](ServiceContext.html#getLocale\(\))`

        Gets the locale, which affects which language the database will return for multilingual strings.

        Specified by:

        `getLocale` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[getLocale](ServiceContext.html#getLocale\(\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Returns:

        the locale

        See Also:

        -   [`ServiceContext.setLocale(Locale)`](ServiceContext.html#setLocale\(java.util.Locale\))

    -   ### setLocale

        public void setLocale([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Description copied from interface: `[ServiceContext](ServiceContext.html#setLocale\(java.util.Locale\))`

        Sets the locale, which affects which language the database will return for multilingual strings.

        Specified by:

        `setLocale` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[setLocale](ServiceContext.html#setLocale\(java.util.Locale\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Parameters:

        `locale` - the locale

        See Also:

        -   [`ServiceContext.getLocale()`](ServiceContext.html#getLocale\(\))

    -   ### isRtl

        public boolean isRtl()

        Specified by:

        `[isRtl](ServiceContext.html#isRtl\(\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    -   ### getOverrideLocale

        public [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getOverrideLocale()

        Necessary since this class implements `SecurityContext`. In this case, since this is derived from the original `SecurityContext`, just return the same locale as [`getLocale()`](#getLocale\(\))

        Specified by:

        `getOverrideLocale` in interface `com.appiancorp.security.auth.SecurityContext`

        Returns:

        the locale already stored in this class derived from the original `SecurityContext`

    -   ### isAllowOverrideForDisabledLocale

        public boolean isAllowOverrideForDisabledLocale()

        Specified by:

        `isAllowOverrideForDisabledLocale` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### isAdsSuperUser

        public boolean isAdsSuperUser()

        Specified by:

        `isAdsSuperUser` in interface `com.appiancorp.security.auth.SecurityContext`

    -   ### getTimeZone

        public [TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") getTimeZone()

        Description copied from interface: `[ServiceContext](ServiceContext.html#getTimeZone\(\))`

        Gets the timezone, which the database uses for time conversions to and from GMT.

        Specified by:

        `getTimeZone` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[getTimeZone](ServiceContext.html#getTimeZone\(\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Returns:

        the timezone

        See Also:

        -   [`ServiceContext.setTimeZone(TimeZone)`](ServiceContext.html#setTimeZone\(java.util.TimeZone\))

    -   ### setTimeZone

        public void setTimeZone([TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") timeZone)

        Description copied from interface: `[ServiceContext](ServiceContext.html#setTimeZone\(java.util.TimeZone\))`

        Sets the timezone, which the database uses for time conversions to and from GMT.

        Specified by:

        `setTimeZone` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Specified by:

        `[setTimeZone](ServiceContext.html#setTimeZone\(java.util.TimeZone\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Parameters:

        `timeZone` - the timezone

        See Also:

        -   [`ServiceContext.getTimeZone()`](ServiceContext.html#getTimeZone\(\))

    -   ### getCalendarID

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCalendarID()

        Description copied from interface: `[ServiceContext](ServiceContext.html#getCalendarID\(\))`

        Gets the calendar ID, which is used to calculate date in that calendar.

        Specified by:

        `[getCalendarID](ServiceContext.html#getCalendarID\(\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        Returns:

        the Calendar ID

        See Also:

        -   `#setCalendar(String)`

    -   ### setCalendarID

        public void setCalendarID([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") calendarID)

        Description copied from interface: `[ServiceContext](ServiceContext.html#setCalendarID\(java.lang.String\))`

        Sets the ID of the calendar, which is used to calculate date in that calendar.

        Specified by:

        `[setCalendarID](ServiceContext.html#setCalendarID\(java.lang.String\))` in interface `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

        See Also:

        -   `#getCalendar()`

    -   ### getEngineCredentials

        public com.appian.komodo.api.EngineCredentials getEngineCredentials(com.appiancorp.kougar.services.ServiceConnection svcConn)

        Returns the credentials to be used for calls with the specified `KougarConnection`. The connection may be configured to pass full credentials, or not.

        Specified by:

        `[getEngineCredentials](KougarServiceContext.html#getEngineCredentials\(com.appiancorp.kougar.services.ServiceConnection\))` in interface `[KougarServiceContext](KougarServiceContext.html "interface in com.appiancorp.services")`

        Parameters:

        `svcConn` - the connection for which we need the credentials

        Returns:

        an `Object` representing the credentials.

    -   ### getAppianSession

        public com.appiancorp.core.expr.portable.common.Session getAppianSession()

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Specified by:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#toString\(\) "class or interface in java.security")` in interface `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`