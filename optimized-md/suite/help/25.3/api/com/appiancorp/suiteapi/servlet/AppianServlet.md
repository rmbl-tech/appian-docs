---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/servlet/AppianServlet.html
original_path: api/com/appiancorp/suiteapi/servlet/AppianServlet.html
version: "25.3"
title: "Class AppianServlet"
page_id: "api/com/appiancorp/suiteapi/servlet/AppianServlet"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.servlet](package-summary.html)

# Class AppianServlet

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

javax.servlet.GenericServlet

javax.servlet.http.HttpServlet

com.appiancorp.suiteapi.servlet.AppianServlet

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `javax.servlet.Servlet`, `javax.servlet.ServletConfig`

* * *

public abstract class AppianServlet extends javax.servlet.http.HttpServlet

Abstract servlet class that provide inject functionality. To have services injected into servlets, plugin servlets will be written to extend this class and add @Inject annotation for the services to be injected.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.servlet.AppianServlet)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AppianServlet](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[init](#init\(\))()`

    servlet init() method that locates the web application context and autowires services with @Inject annotations.

    ### Methods inherited from class javax.servlet.http.HttpServlet

    `doDelete, doGet, doHead, doOptions, doPost, doPut, doTrace, getLastModified, service, service`

    ### Methods inherited from class javax.servlet.GenericServlet

    `destroy, getInitParameter, getInitParameterNames, getServletConfig, getServletContext, getServletInfo, getServletName, init, log, log`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AppianServlet

        public AppianServlet()

-   ## Method Details

    -   ### init

        public void init() throws javax.servlet.ServletException

        servlet init() method that locates the web application context and autowires services with @Inject annotations. Note that the \`init()\` method on the AppianServlet class initializes the injectors.

        Overrides:

        `init` in class `javax.servlet.GenericServlet`

        Throws:

        `javax.servlet.ServletException`