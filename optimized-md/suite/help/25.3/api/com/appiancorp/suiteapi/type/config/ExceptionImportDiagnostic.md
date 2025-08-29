---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/config/ExceptionImportDiagnostic.html
original_path: api/com/appiancorp/suiteapi/type/config/ExceptionImportDiagnostic.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.type.config](package-summary.html)

# Class ExceptionImportDiagnostic

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.type.config.ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")

com.appiancorp.suiteapi.type.config.ExceptionImportDiagnostic

* * *

public class ExceptionImportDiagnostic extends [ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")

An ImportDiagnostic that has an associated [`AppianException`](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ExceptionImportDiagnostic](#%3Cinit%3E\(com.appiancorp.suiteapi.type.config.ImportDiagnosticSeverity,com.appiancorp.exceptions.AppianException\))([ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") severity, [AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions") exception)`

    Creates an instance with the given severity and AppianException.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj_)`

    `[AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    `[AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

    `[getException](#getException\(\))()`

    Gets the exception associated with the diagnostic.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessage](#getMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Returns a localized message providing details on the diagnostic

    `int`

    `[hashCode](#hashCode\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.type.config.[ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")

    `[getSeverity](ImportDiagnostic.html#getSeverity\(\)), [toString](ImportDiagnostic.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ExceptionImportDiagnostic

        public ExceptionImportDiagnostic([ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") severity, [AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions") exception)

        Creates an instance with the given severity and AppianException.

        Parameters:

        `severity` - the severity

        `exception` - the exception to be associated with the diagnostic

-   ## Method Details

    -   ### getMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Returns a localized message providing details on the diagnostic

        Specified by:

        `[getMessage](ImportDiagnostic.html#getMessage\(java.util.Locale\))` in class `[ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")`

        Parameters:

        `locale` - the [`Locale`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") used to localize the message

        Returns:

        the localized message

    -   ### getException

        public [AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions") getException()

        Gets the exception associated with the diagnostic.

        Returns:

        the exception

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj\_)

        Overrides:

        `[equals](ImportDiagnostic.html#equals\(java.lang.Object\))` in class `[ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](ImportDiagnostic.html#hashCode\(\))` in class `[ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")`

    -   ### getErrorCode

        public [AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") getErrorCode()

        Specified by:

        `[getErrorCode](ImportDiagnostic.html#getErrorCode\(\))` in class `[ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")`