---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/ApplicationNotFoundException.html
original_path: api/com/appiancorp/suiteapi/applications/ApplicationNotFoundException.html
version: "25.3"
title: "Class ApplicationNotFoundException"
page_id: "api/com/appiancorp/suiteapi/applications/ApplicationNotFoundException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.applications](package-summary.html)

# Class ApplicationNotFoundException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.suiteapi.applications.ApplicationNotFoundException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ApplicationNotFoundException extends [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception thrown by the Service whenever an Application ID does not match any object stored in the database

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.applications.ApplicationNotFoundException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ApplicationNotFoundException](#%3Cinit%3E\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    A constructor for the `ApplicationNotFoundException` which generates an error code message that includes the ID of the Application which was attempted to be retrieved

    `[ApplicationNotFoundException](#%3Cinit%3E\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids)`

    The default constructor for the `ApplicationNotFoundException` which generates an error code message that includes the IDs of the Applications which were attempted to be retrieved

    `[ApplicationNotFoundException](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier)`

    A constructor for the `ApplicationNotFoundException` which generates an error code message that includes the URL identifier of the Application which was attempted to be retrieved

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")`

    `[getApplicationNotFoundExceptionByUuid](#getApplicationNotFoundExceptionByUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    A factory for the `ApplicationNotFoundException` which generates an error code message that includes the UUID identifier of the Application which was attempted to be retrieved

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCode](../common/exceptions/AppianException.html#getErrorCode\(\)), [getErrorCodeArguments](../common/exceptions/AppianException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../common/exceptions/AppianException.html#getMessage\(\)), [toString](../common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ApplicationNotFoundException

        public ApplicationNotFoundException([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

        A constructor for the `ApplicationNotFoundException` which generates an error code message that includes the ID of the Application which was attempted to be retrieved

        Parameters:

        `id` - The application ID that was retrieved

    -   ### ApplicationNotFoundException

        public ApplicationNotFoundException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier)

        A constructor for the `ApplicationNotFoundException` which generates an error code message that includes the URL identifier of the Application which was attempted to be retrieved

        Parameters:

        `urlIdentifier` - The application URL identifier that was retrieved

    -   ### ApplicationNotFoundException

        public ApplicationNotFoundException([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids)

        The default constructor for the `ApplicationNotFoundException` which generates an error code message that includes the IDs of the Applications which were attempted to be retrieved

        Parameters:

        `id` - The application IDs that was retrieved

-   ## Method Details

    -   ### getApplicationNotFoundExceptionByUuid

        public static [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications") getApplicationNotFoundExceptionByUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        A factory for the `ApplicationNotFoundException` which generates an error code message that includes the UUID identifier of the Application which was attempted to be retrieved

        Parameters:

        `uuid` - The application UUID identifier that was retrieved