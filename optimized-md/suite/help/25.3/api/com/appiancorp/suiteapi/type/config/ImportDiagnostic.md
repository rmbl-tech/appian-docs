---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/config/ImportDiagnostic.html
original_path: api/com/appiancorp/suiteapi/type/config/ImportDiagnostic.html
version: "25.3"
title: "Class ImportDiagnostic"
page_id: "api/com/appiancorp/suiteapi/type/config/ImportDiagnostic"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type.config](package-summary.html)

# Class ImportDiagnostic

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.type.config.ImportDiagnostic

Direct Known Subclasses:

`[ExceptionImportDiagnostic](ExceptionImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")`, `[ValidationImportDiagnostic](ValidationImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")`

* * *

public abstract class ImportDiagnostic extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Import diagnostics are generated during the import of data types to provide details on any issues or problems that are encountered during the import.

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[ImportDiagnostic](#%3Cinit%3E\(com.appiancorp.suiteapi.type.config.ImportDiagnosticSeverity\))([ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") severity)`

    Creates an instance with the given severity.

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj_)`

    `abstract [AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    `abstract [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessage](#getMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Returns a localized message providing details on the diagnostic

    `[ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config")`

    `[getSeverity](#getSeverity\(\))()`

    Returns the [`ImportDiagnosticSeverity`](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") of the diagnostic

    `int`

    `[hashCode](#hashCode\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ImportDiagnostic

        protected ImportDiagnostic([ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") severity)

        Creates an instance with the given severity.

        Parameters:

        `severity` - the severity associated with the diagnostic

-   ## Method Details

    -   ### getMessage

        public abstract [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Returns a localized message providing details on the diagnostic

        Parameters:

        `locale_` - the [`Locale`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") used to localize the message

        Returns:

        the localized message

    -   ### getErrorCode

        public abstract [AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") getErrorCode()

    -   ### getSeverity

        public [ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") getSeverity()

        Returns the [`ImportDiagnosticSeverity`](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") of the diagnostic

        Returns:

        the severity

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj\_)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`