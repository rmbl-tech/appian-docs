---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/package-tree.html
original_path: api/com/appiancorp/services/package-tree.html
version: "25.3"
title: "Hierarchy For Package com.appiancorp.services"
page_id: "api/com/appiancorp/services/package-tree"
section: "Class Hierarchy"
tags: ["appian","docs","v25.3"]
---


# Hierarchy For Package com.appiancorp.services

Package Hierarchies:

-   [All Packages](../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   com.appiancorp.services.[AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services") (implements com.appiancorp.services.AuthorizationInterceptorProvider, com.appiancorp.services.[KougarServiceContext](KougarServiceContext.html "interface in com.appiancorp.services"), com.appiancorp.security.auth.SecurityContext)
        -   com.appiancorp.services.[UserServiceContext](UserServiceContext.html "class in com.appiancorp.services")
            -   com.appiancorp.services.[EscalatedServiceContext](EscalatedServiceContext.html "class in com.appiancorp.services")
        -   com.appiancorp.services.[WebServiceContext](WebServiceContext.html "class in com.appiancorp.services")
    -   com.appiancorp.services.[ServiceContextFactory](ServiceContextFactory.html "class in com.appiancorp.services")
        -   com.appiancorp.services.[WebServiceContextFactory](WebServiceContextFactory.html "class in com.appiancorp.services")

## Interface Hierarchy

-   java.security.[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")
    -   com.appiancorp.services.[ServiceContext](ServiceContext.html "interface in com.appiancorp.services") (also extends com.appiancorp.asl3.servicefw.connect.ServiceContext)
        -   com.appiancorp.services.[KougarServiceContext](KougarServiceContext.html "interface in com.appiancorp.services")
-   com.appiancorp.services.[Service](Service.html "interface in com.appiancorp.services")
    -   com.appiancorp.services.[ContextSensitiveSingletonService](ContextSensitiveSingletonService.html "interface in com.appiancorp.services")
-   com.appiancorp.asl3.servicefw.connect.ServiceContext
    -   com.appiancorp.services.[ServiceContext](ServiceContext.html "interface in com.appiancorp.services") (also extends java.security.[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security"))
        -   com.appiancorp.services.[KougarServiceContext](KougarServiceContext.html "interface in com.appiancorp.services")