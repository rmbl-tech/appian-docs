---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/WebServiceContextFactory.html
original_path: api/com/appiancorp/services/WebServiceContextFactory.html
version: "25.3"
---

Package [com.appiancorp.services](package-summary.html)

# Class WebServiceContextFactory

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.services.ServiceContextFactory](ServiceContextFactory.html "class in com.appiancorp.services")

com.appiancorp.services.WebServiceContextFactory

* * *

public class WebServiceContextFactory extends [ServiceContextFactory](ServiceContextFactory.html "class in com.appiancorp.services")

Used to manufacture the `ServiceContext` used within the product and in other web applications.

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.services.[ServiceContextFactory](ServiceContextFactory.html "class in com.appiancorp.services")

    `[ADMIN_USERNAME](ServiceContextFactory.html#ADMIN_USERNAME)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[WebServiceContextFactory](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q_)`

    Gets the [`ServiceContext`](ServiceContext.html "interface in com.appiancorp.services") associated with the user data in the `HttpServletRequest`'s `HttpSession`.

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(javax.servlet.http.HttpServletRequest,com.appiancorp.services.ASLIdentity\))(javax.servlet.http.HttpServletRequest q_, com.appiancorp.services.ASLIdentity id_)`

    Gets the `ServiceContext` for the request and `ASLIdentity`.

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(javax.servlet.http.HttpServletRequest,java.lang.String,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)`

    Get the `ServiceContext` for the request and username.

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(javax.servlet.http.HttpSession\))(javax.servlet.http.HttpSession session_)`

    Gets the `ASLIdentity` from the session and gets a service context for it.

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(javax.servlet.http.HttpSession,com.appiancorp.services.ASLIdentity,java.lang.String\))(javax.servlet.http.HttpSession session_, com.appiancorp.services.ASLIdentity id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)`

    Gets the `ServiceContext` for the session and `ASLIdentity`.

    ### Methods inherited from class com.appiancorp.services.[ServiceContextFactory](ServiceContextFactory.html "class in com.appiancorp.services")

    `[areI18nSettingsPopulated](ServiceContextFactory.html#areI18nSettingsPopulated\(com.appiancorp.services.ServiceContext\)), [createEscalatedServiceContext](ServiceContextFactory.html#createEscalatedServiceContext\(com.appiancorp.services.ServiceContext,java.lang.String\)), [createEscalatedServiceContext](ServiceContextFactory.html#createEscalatedServiceContext\(java.lang.String,java.lang.String\)), [getAdministratorServiceContext](ServiceContextFactory.html#getAdministratorServiceContext\(\)), [getAdministratorServiceContextForMigration](ServiceContextFactory.html#getAdministratorServiceContextForMigration\(\)), [getAdministratorUser](ServiceContextFactory.html#getAdministratorUser\(\)), [getServiceContext](ServiceContextFactory.html#getServiceContext\(com.appiancorp.services.ASLIdentity\)), [getServiceContext](ServiceContextFactory.html#getServiceContext\(java.lang.String\)), [getUser](ServiceContextFactory.html#getUser\(java.lang.String\)), [populateServiceContextI18nSettings](ServiceContextFactory.html#populateServiceContextI18nSettings\(com.appiancorp.services.ServiceContext\)), [populateServiceContextI18nSettings](ServiceContextFactory.html#populateServiceContextI18nSettings\(com.appiancorp.services.ServiceContext,java.util.Locale\)), [populateServiceContextI18nSettings](ServiceContextFactory.html#populateServiceContextI18nSettings\(com.appiancorp.services.ServiceContext,java.util.Locale,boolean\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### WebServiceContextFactory

        public WebServiceContextFactory()

-   ## Method Details

    -   ### getServiceContext

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") getServiceContext(javax.servlet.http.HttpServletRequest q\_)

        Gets the [`ServiceContext`](ServiceContext.html "interface in com.appiancorp.services") associated with the user data in the `HttpServletRequest`'s `HttpSession`. If there is no `ServiceContext` associated with the user data, it creates a new `WebServiceContext` for the web session. If there is no user data in the `HttpSession`, it returns `null`.

        Parameters:

        `q_` - the request

        Returns:

        the service context

    -   ### getServiceContext

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") getServiceContext(javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)

        Get the `ServiceContext` for the request and username. If the request has a context associated with it and the context's username is the same as the username passed in, returns the context. If the context's username is different or no context exists, return a new `WebServiceContext`.

        Parameters:

        `q_` - the request

        `username_` - the web user's username

        `grantorUsername` - the name of the user granting privilege escalation

        Returns:

        the context

    -   ### getServiceContext

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") getServiceContext(javax.servlet.http.HttpServletRequest q\_, com.appiancorp.services.ASLIdentity id\_)

        Gets the `ServiceContext` for the request and `ASLIdentity`. If the request has a context associated with it and the context's username is the same as the username associated with the `ASLIdentity` argument, returns the context. If the context's username is different or no context exists, return a new `WebServiceContext`.

        Parameters:

        `q_` - the request

        `id_` - the `ASLIdentity`

        Returns:

        the context

    -   ### getServiceContext

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") getServiceContext(javax.servlet.http.HttpSession session\_)

        Gets the `ASLIdentity` from the session and gets a service context for it. If there is no `ASLIdentity` in the session, returns `null`.

        Parameters:

        `session_` - the session

        Returns:

        the context

    -   ### getServiceContext

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") getServiceContext(javax.servlet.http.HttpSession session\_, com.appiancorp.services.ASLIdentity id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)

        Gets the `ServiceContext` for the session and `ASLIdentity`. If the session has a context associated with it and the context's username is the same as the username associated with the `ASLIdentity` argument, returns the context. If the context's username is different or no context exists, return a new `WebServiceContext`.

        Parameters:

        `session_` - the session

        `id` - the `ASLIdentity`

        `grantorUsername` -

        Returns:

        the context