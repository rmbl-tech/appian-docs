---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/config/ValidationImportDiagnostic.html
original_path: api/com/appiancorp/suiteapi/type/config/ValidationImportDiagnostic.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.type.config](package-summary.html)

# Class ValidationImportDiagnostic

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.type.config.ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")

com.appiancorp.suiteapi.type.config.ValidationImportDiagnostic

* * *

public class ValidationImportDiagnostic extends [ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")

An ImportDiagnostic that has an associated [`ValidationItem`](../../common/ValidationItem.html "class in com.appiancorp.suiteapi.common").

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ValidationImportDiagnostic](#%3Cinit%3E\(com.appiancorp.suiteapi.type.config.ImportDiagnosticSeverity,com.appiancorp.suiteapi.common.ValidationItem\))([ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") severity, [ValidationItem](../../common/ValidationItem.html "class in com.appiancorp.suiteapi.common") validationItem)`

    Creates an instance with the given severity and ValidationItem.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj_)`

    `[AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessage](#getMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Returns a localized message providing details on the diagnostic

    `[ValidationItem](../../common/ValidationItem.html "class in com.appiancorp.suiteapi.common")`

    `[getValidationItem](#getValidationItem\(\))()`

    Returns the validation item containing the message and code of the the diagnostic.

    `int`

    `[hashCode](#hashCode\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.type.config.[ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")

    `[getSeverity](ImportDiagnostic.html#getSeverity\(\)), [toString](ImportDiagnostic.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ValidationImportDiagnostic

        public ValidationImportDiagnostic([ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") severity, [ValidationItem](../../common/ValidationItem.html "class in com.appiancorp.suiteapi.common") validationItem)

        Creates an instance with the given severity and ValidationItem.

        Parameters:

        `severity` - the severity of the diagnostic

        `validationItem` - a ValidationItem that provides more information about the diagnostic

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

    -   ### getValidationItem

        public [ValidationItem](../../common/ValidationItem.html "class in com.appiancorp.suiteapi.common") getValidationItem()

        Returns the validation item containing the message and code of the the diagnostic.

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