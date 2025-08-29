---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/LocalizedAppianRuntimeException.LocalizedAppianException.html
original_path: api/com/appiancorp/exceptions/LocalizedAppianRuntimeException.LocalizedAppianException.html
version: "25.3"
title: "Class LocalizedAppianRuntimeException.LocalizedAppianException"
page_id: "api/com/appiancorp/exceptions/LocalizedAppianRuntimeException.LocalizedAppianException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.exceptions](package-summary.html)

# Class LocalizedAppianRuntimeException.LocalizedAppianException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.exceptions.LocalizedAppianRuntimeException.LocalizedAppianException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Enclosing class:

[LocalizedAppianRuntimeException](LocalizedAppianRuntimeException.html "class in com.appiancorp.exceptions")

* * *

public static class LocalizedAppianRuntimeException.LocalizedAppianException extends [AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

See Also:

-   [Serialized Form](../../../serialized-form.html#com.appiancorp.exceptions.LocalizedAppianRuntimeException.LocalizedAppianException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[LocalizedAppianException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.AppianException,java.util.Locale\))([AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") delegate, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedMessage](#getLocalizedMessage\(\))()`

    The default implementation is equivalent to calling [`AppianException.getLocalizedMessage(Locale)`](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)) with `Locale.US` as argument.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedMessage](#getLocalizedMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    Returns this exception's message representation.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedTitle](#getLocalizedTitle\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    Returns this exception's title representation.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessage](#getMessage\(\))()`

    The default implementation is equivalent to calling [`AppianException.getLocalizedMessage()`](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(\))

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCode](../suiteapi/common/exceptions/AppianException.html#getErrorCode\(\)), [getErrorCodeArguments](../suiteapi/common/exceptions/AppianException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../suiteapi/common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../suiteapi/common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [toString](../suiteapi/common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### LocalizedAppianException

        public LocalizedAppianException([AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") delegate, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

-   ## Method Details

    -   ### getMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessage()

        Description copied from class: `[AppianException](../suiteapi/common/exceptions/AppianException.html#getMessage\(\))`

        The default implementation is equivalent to calling [`AppianException.getLocalizedMessage()`](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(\))

        Overrides:

        `[getMessage](../suiteapi/common/exceptions/AppianException.html#getMessage\(\))` in class `[AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getLocalizedMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedMessage()

        Description copied from class: `[AppianException](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(\))`

        The default implementation is equivalent to calling [`AppianException.getLocalizedMessage(Locale)`](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)) with `Locale.US` as argument. Please note that the error message filtering logic in https://issues.appian.com/browse/AN-274235 depends on this default behavior. Please contact Portals Foundations before changing this default behavior.

        Overrides:

        `[getLocalizedMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(\))` in class `[AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getLocalizedMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Description copied from class: `[AppianException](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\))`

        Returns this exception's message representation. This method should be used whenever the message is to be displayed to the end user. The default representation does not include any error code information because this may be rendered in different ways across the application. If needed, the exception's error code can be retrieved from [`AppianException.getErrorCode()`](../suiteapi/common/exceptions/AppianException.html#getErrorCode\(\)).

        Overrides:

        `[getLocalizedMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\))` in class `[AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        Parameters:

        `locale` - message's locale

        Returns:

        this exception's message representation

        See Also:

        -   [`AppianException.toString()`](../suiteapi/common/exceptions/AppianException.html#toString\(\))

    -   ### getLocalizedTitle

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedTitle([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Description copied from class: `[AppianException](../suiteapi/common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\))`

        Returns this exception's title representation. This method should be used whenever the title is to be displayed to the end user. The default representation does not include any error code information because this may be rendered in different ways across the application. If needed, the exception's error code can be retrieved from [`AppianException.getErrorCode()`](../suiteapi/common/exceptions/AppianException.html#getErrorCode\(\)).

        Overrides:

        `[getLocalizedTitle](../suiteapi/common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\))` in class `[AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        Parameters:

        `locale` - title's locale

        Returns:

        this exception's title representation

        See Also:

        -   [`AppianException.toString()`](../suiteapi/common/exceptions/AppianException.html#toString\(\))