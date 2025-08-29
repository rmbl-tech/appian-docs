---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/package-summary.html
original_path: api/com/appiancorp/services/package-summary.html
version: "25.3"
---

# Package com.appiancorp.services

* * *

package com.appiancorp.services

-   Related Packages

    Package

    Description

    [com.appiancorp.services.exceptions](exceptions/package-summary.html)

-   All Classes and InterfacesInterfacesClasses

    Class

    Description

    [AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")

    Represents a service context for use with the service framework.

    [ContextSensitiveSingletonService](ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    Marks a singleton service as context-sensitive, meaning that the service will have a `ServiceContextProvider` associated with it.

    [EscalatedServiceContext](EscalatedServiceContext.html "class in com.appiancorp.services")

    An EscalatedServiceContext is used to strongly-type mark methods that require privilege escalation.

    [KougarServiceContext](KougarServiceContext.html "interface in com.appiancorp.services")

    For Kougar connections, this should be used instead of ServiceContext.

    [Service](Service.html "interface in com.appiancorp.services")

    This is a marker interface for a Kougar service.

    [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")

    The context used to borrow services from the service provider.

    [ServiceContextFactory](ServiceContextFactory.html "class in com.appiancorp.services")

    Provides utility methods for creating new service contexts.

    [UserServiceContext](UserServiceContext.html "class in com.appiancorp.services")

    UserServiceContext can be used to request services explicitly in standalone applications.

    [WebServiceContext](WebServiceContext.html "class in com.appiancorp.services")

    Represents a service context that was obtained from the [`WebServiceContextFactory`](WebServiceContextFactory.html "class in com.appiancorp.services") by sending it a session or request.

    [WebServiceContextFactory](WebServiceContextFactory.html "class in com.appiancorp.services")

    Used to manufacture the `ServiceContext` used within the product and in other web applications.