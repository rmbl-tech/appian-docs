---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/ExceptionUtil.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/ExceptionUtil.html
version: "25.3"
title: "Class ExceptionUtil"
page_id: "api/com/appiancorp/suiteapi/common/exceptions/ExceptionUtil"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common.exceptions](package-summary.html)

# Class ExceptionUtil

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.exceptions.ExceptionUtil

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class ExceptionUtil extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Deprecated.

use individual method replacements

This class exists to remove gwt-incompatible code from Appian exception classes. A super-sourced version of this class will throw exceptions instead of implementing these methods.
This allows us to use the exception types, without depending on unusable code paths that are never used by the client.

-   ## Method Summary

    All MethodsStatic MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `static boolean`

    `[isAssignableFrom](#isAssignableFrom\(java.lang.Class,java.lang.Class\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> to, [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> from)`

    Deprecated.

    see Class.isAssignableFrom

    `static boolean`

    `[isDelegateInstanceOf](#isDelegateInstanceOf\(com.appiancorp.suiteapi.common.exceptions.AppianRuntimeException,java.lang.Class\))([AppianRuntimeException](AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") e, [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")> targetExcepionClass)`

    Deprecated.

    see AppianRuntimeException's isDelegateInstanceOf

    `static void`

    `[printStackTrace](#printStackTrace\(java.lang.Throwable,java.io.PrintWriter\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t, [PrintWriter](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/PrintWriter.html "class or interface in java.io") p)`

    Deprecated.

    see Throwable.printStackTrace

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### isAssignableFrom

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static boolean isAssignableFrom([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> to, [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> from)

        Deprecated.

        see Class.isAssignableFrom

        Is Class to assignable from Class from?

        Parameters:

        `to` -

        `from` -

        Returns:

    -   ### printStackTrace

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void printStackTrace([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t, [PrintWriter](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/PrintWriter.html "class or interface in java.io") p)

        Deprecated.

        see Throwable.printStackTrace

        Print the stack trace of Throwable t to PrintWriter p

        Parameters:

        `t` -

        `p` -

    -   ### isDelegateInstanceOf

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static boolean isDelegateInstanceOf([AppianRuntimeException](AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") e, [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")\> targetExcepionClass)

        Deprecated.

        see AppianRuntimeException's isDelegateInstanceOf

        Is the AppianException delegate of AppianRuntimeException e assignable from Class targetExcepionClass?

        Parameters:

        `e` -

        `targetExcepionClass` -

        Returns: