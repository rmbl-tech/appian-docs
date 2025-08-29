---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/config/ImportDiagnosticUtils.html
original_path: api/com/appiancorp/suiteapi/type/config/ImportDiagnosticUtils.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.type.config](package-summary.html)

# Class ImportDiagnosticUtils

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.type.config.ImportDiagnosticUtils

* * *

public final class ImportDiagnosticUtils extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAllMessages](#getAllMessages\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D,java.util.Locale\))([ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics_, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Gets the messages that were generated during the import for all levels of `serverity_`

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getMessages](#getMessages\(com.appiancorp.suiteapi.type.config.ImportDiagnosticSeverity,com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D,java.util.Locale\))([ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") severity_, [ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics_, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Gets the messages that were generated during the import for the level of `serverity_` specified

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### getMessages

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getMessages([ImportDiagnosticSeverity](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config") severity\_, [ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics\_, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Gets the messages that were generated during the import for the level of `serverity_` specified

        Parameters:

        `severity_` - The severity level of messages. This is one of ``[`ImportDiagnosticSeverity`](ImportDiagnosticSeverity.html "class in com.appiancorp.suiteapi.type.config").XXX_LITERAL`` constants, where XXX could be FATAL, ERROR, WARNING or INFORMATION

        `diagnostics_` - An array of [`ImportDiagnostic`](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config") generated during import

        `locale_` - The locale to use when localizing the message

        Returns:

        messages generated during the import for a particular severity

    -   ### getAllMessages

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAllMessages([ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics\_, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Gets the messages that were generated during the import for all levels of `serverity_`

        Parameters:

        `diagnostics_` - An array of [`ImportDiagnostic`](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config") generated during import

        `locale_` - The locale to use when localizing the message

        Returns:

        messages generated during the import for all severities