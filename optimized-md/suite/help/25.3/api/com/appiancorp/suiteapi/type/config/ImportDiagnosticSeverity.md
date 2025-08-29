---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/config/ImportDiagnosticSeverity.html
original_path: api/com/appiancorp/suiteapi/type/config/ImportDiagnosticSeverity.html
version: "25.3"
title: "Class ImportDiagnosticSeverity"
page_id: "api/com/appiancorp/suiteapi/type/config/ImportDiagnosticSeverity"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type.config](package-summary.html)

# Class ImportDiagnosticSeverity

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.type.config.ImportDiagnosticSeverity

* * *

public final class ImportDiagnosticSeverity extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Represents the severity of an import diagnostic. Possible values are INFORMATION, WARNING, ERROR and FATAL.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[ERROR](#ERROR)`

    The Error literal value.

    `static final [ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config")`

    `[ERROR_LITERAL](#ERROR_LITERAL)`

    The Error literal object.

    `static final int`

    `[FATAL](#FATAL)`

    The Fatal literal value.

    `static final [ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config")`

    `[FATAL_LITERAL](#FATAL_LITERAL)`

    The Fatal literal object.

    `static final int`

    `[INFORMATION](#INFORMATION)`

    The Information literal value.

    `static final [ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config")`

    `[INFORMATION_LITERAL](#INFORMATION_LITERAL)`

    The Information literal object.

    `static final int`

    `[WARNING](#WARNING)`

    The Warning literal value.

    `static final [ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config")`

    `[WARNING_LITERAL](#WARNING_LITERAL)`

    The Warning literal object.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config")`

    `[get](#get\(int\))(int value_)`

    Returns the literal with the given integer value.

    `int`

    `[getValue](#getValue\(\))()`

    Gets the value representing the severity.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### FATAL

        public static final int FATAL

        The Fatal literal value.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.type.config.ImportDiagnosticSeverity.FATAL)

    -   ### ERROR

        public static final int ERROR

        The Error literal value.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.type.config.ImportDiagnosticSeverity.ERROR)

    -   ### WARNING

        public static final int WARNING

        The Warning literal value.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.type.config.ImportDiagnosticSeverity.WARNING)

    -   ### INFORMATION

        public static final int INFORMATION

        The Information literal value.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.type.config.ImportDiagnosticSeverity.INFORMATION)

    -   ### FATAL\_LITERAL

        public static final [ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") FATAL\_LITERAL

        The Fatal literal object.

    -   ### ERROR\_LITERAL

        public static final [ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") ERROR\_LITERAL

        The Error literal object.

    -   ### WARNING\_LITERAL

        public static final [ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") WARNING\_LITERAL

        The Warning literal object.

    -   ### INFORMATION\_LITERAL

        public static final [ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") INFORMATION\_LITERAL

        The Information literal object.

-   ## Method Details

    -   ### getValue

        public int getValue()

        Gets the value representing the severity.

        Returns:

        the value representing the severity

    -   ### get

        public static [ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") get(int value\_)

        Returns the literal with the given integer value.

        Parameters:

        `value_` - an integer value

        Returns:

        the literal object with the given integer value, or null none exists

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`