---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/ContextSensitiveSingletonService.html
original_path: api/com/appiancorp/services/ContextSensitiveSingletonService.html
version: "25.3"
title: "Interface ContextSensitiveSingletonService"
page_id: "api/com/appiancorp/services/ContextSensitiveSingletonService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.services](package-summary.html)

# Interface ContextSensitiveSingletonService

All Superinterfaces:

`[Service](Service.html "interface in com.appiancorp.services")`

All Known Subinterfaces:

`[ApplicationService](../suiteapi/applications/ApplicationService.html "interface in com.appiancorp.suiteapi.applications")`, `[GlobalizationService](../suiteapi/portal/GlobalizationService.html "interface in com.appiancorp.suiteapi.portal")`, `[GroupService](../suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")`, `[GroupTypeService](../suiteapi/personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")`, `[PortalNotificationService](../suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")`, `[ProcessDesignService](../suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")`, `[TypeService](../suiteapi/type/TypeService.html "interface in com.appiancorp.suiteapi.type")`, `[UserProfileService](../suiteapi/personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")`, `[UserService](../suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")`

* * *

public interface ContextSensitiveSingletonService extends [Service](Service.html "interface in com.appiancorp.services")

Marks a singleton service as context-sensitive, meaning that the service will have a `ServiceContextProvider` associated with it.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[CONFIGURE_METHOD_NAME](#CONFIGURE_METHOD_NAME)`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `void`

    `[configureContextSensitiveSingletonService](#configureContextSensitiveSingletonService\(com.appiancorp.services.spring.ServiceContextProvider,com.appiancorp.services.AuthorizationInterceptorProvider\))(com.appiancorp.services.spring.ServiceContextProvider scp, com.appiancorp.services.AuthorizationInterceptorProvider aip)`

    Configures the service.

-   ## Field Details

    -   ### CONFIGURE\_METHOD\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") CONFIGURE\_METHOD\_NAME

        See Also:

        -   [Constant Field Values](../../../constant-values.html#com.appiancorp.services.ContextSensitiveSingletonService.CONFIGURE_METHOD_NAME)

-   ## Method Details

    -   ### configureContextSensitiveSingletonService

        void configureContextSensitiveSingletonService(com.appiancorp.services.spring.ServiceContextProvider scp, com.appiancorp.services.AuthorizationInterceptorProvider aip)

        Configures the service. This method is automatically called whenever a context-sensitive singleton service is obtained from the service framework.

        Parameters:

        `scp` - the service context provider

        `aip` - the authorization interceptor provider