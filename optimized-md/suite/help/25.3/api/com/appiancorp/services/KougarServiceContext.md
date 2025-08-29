---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/KougarServiceContext.html
original_path: api/com/appiancorp/services/KougarServiceContext.html
version: "25.3"
title: "Interface KougarServiceContext"
page_id: "api/com/appiancorp/services/KougarServiceContext"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.services](package-summary.html)

# Interface KougarServiceContext

All Superinterfaces:

`[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`, `com.appiancorp.asl3.servicefw.connect.ServiceContext`, `[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

All Known Implementing Classes:

`[AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")`, `[EscalatedServiceContext](EscalatedServiceContext.html "class in com.appiancorp.services")`, `[UserServiceContext](UserServiceContext.html "class in com.appiancorp.services")`, `[WebServiceContext](WebServiceContext.html "class in com.appiancorp.services")`

* * *

public interface KougarServiceContext extends [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")

For Kougar connections, this should be used instead of ServiceContext.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `com.appian.komodo.api.EngineCredentials`

    `[getEngineCredentials](#getEngineCredentials\(com.appiancorp.kougar.services.ServiceConnection\))(com.appiancorp.kougar.services.ServiceConnection svcConn)`

    Returns the credentials to be used for calls with the specified `KougarConnection`.

    ### Methods inherited from interface java.security.[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#equals\(java.lang.Object\) "class or interface in java.security"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#hashCode\(\) "class or interface in java.security"), [implies](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#implies\(javax.security.auth.Subject\) "class or interface in java.security"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#toString\(\) "class or interface in java.security")`

    ### Methods inherited from interface com.appiancorp.services.[ServiceContext](ServiceContext.html "interface in com.appiancorp.services")

    `[addService](ServiceContext.html#addService\(java.lang.String,java.lang.Object\)), [getAttribute](ServiceContext.html#getAttribute\(java.lang.String\)), [getCalendarID](ServiceContext.html#getCalendarID\(\)), [getIdentity](ServiceContext.html#getIdentity\(\)), [getLocale](ServiceContext.html#getLocale\(\)), [getName](ServiceContext.html#getName\(\)), [getService](ServiceContext.html#getService\(java.lang.String\)), [getTimeZone](ServiceContext.html#getTimeZone\(\)), [isDesignatedForMigration](ServiceContext.html#isDesignatedForMigration\(\)), [isRtl](ServiceContext.html#isRtl\(\)), [removeAttribute](ServiceContext.html#removeAttribute\(java.lang.String\)), [removeService](ServiceContext.html#removeService\(java.lang.String\)), [setAttribute](ServiceContext.html#setAttribute\(java.lang.String,java.lang.Object\)), [setCalendarID](ServiceContext.html#setCalendarID\(java.lang.String\)), [setLocale](ServiceContext.html#setLocale\(java.util.Locale\)), [setTimeZone](ServiceContext.html#setTimeZone\(java.util.TimeZone\))`

-   ## Method Details

    -   ### getEngineCredentials

        com.appian.komodo.api.EngineCredentials getEngineCredentials(com.appiancorp.kougar.services.ServiceConnection svcConn) throws [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Returns the credentials to be used for calls with the specified `KougarConnection`.

        Parameters:

        `svcConn` - the connection for which we need the credentials

        Returns:

        an `EngineCredentials` object representing the credentials

        Throws:

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`