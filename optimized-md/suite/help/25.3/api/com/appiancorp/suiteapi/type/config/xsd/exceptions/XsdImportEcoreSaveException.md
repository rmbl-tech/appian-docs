---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/config/xsd/exceptions/XsdImportEcoreSaveException.html
original_path: api/com/appiancorp/suiteapi/type/config/xsd/exceptions/XsdImportEcoreSaveException.html
version: "25.3"
title: "Class XsdImportEcoreSaveException"
page_id: "api/com/appiancorp/suiteapi/type/config/xsd/exceptions/XsdImportEcoreSaveException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type.config.xsd.exceptions](package-summary.html)

# Class XsdImportEcoreSaveException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

[com.appiancorp.exceptions.AppianException](../../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

[com.appiancorp.suiteapi.type.exceptions.ImportException](../../../exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")

com.appiancorp.suiteapi.type.config.xsd.exceptions.XsdImportEcoreSaveException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class XsdImportEcoreSaveException extends [ImportException](../../../exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")

See Also:

-   [Serialized Form](../../../../../../../serialized-form.html#com.appiancorp.suiteapi.type.config.xsd.exceptions.XsdImportEcoreSaveException)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.type.exceptions.[ImportException](../../../exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")

    `[_errorCode](../../../exceptions/ImportException.html#_errorCode), [_errorCodeArguments](../../../exceptions/ImportException.html#_errorCodeArguments)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[XsdImportEcoreSaveException](#%3Cinit%3E\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D,java.lang.Exception\))([ImportDiagnostic](../../ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics, [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") cause)`

    `[XsdImportEcoreSaveException](#%3Cinit%3E\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D,java.util.List\))([ImportDiagnostic](../../ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ValidationItem](../../../../common/ValidationItem.html "class in com.appiancorp.suiteapi.common")> validationErrors)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getErrorCodeArguments](#getErrorCodeArguments\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    If this exception was caused by validation errors, returns the localized validation codes.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ValidationItem](../../../../common/ValidationItem.html "class in com.appiancorp.suiteapi.common")>`

    `[getValidationErrors](#getValidationErrors\(\))()`

    Returns the validation errors that caused this exception.

    ### Methods inherited from class com.appiancorp.suiteapi.type.exceptions.[ImportException](../../../exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")

    `[getDiagnostics](../../../exceptions/ImportException.html#getDiagnostics\(\)), [getErrorCode](../../../exceptions/ImportException.html#getErrorCode\(\)), [getErrorCodeArguments](../../../exceptions/ImportException.html#getErrorCodeArguments\(\)), [hasSameErrorCodeAndArguments](../../../exceptions/ImportException.html#hasSameErrorCodeAndArguments\(com.appiancorp.suiteapi.type.exceptions.ImportException\)), [setDiagnostics](../../../exceptions/ImportException.html#setDiagnostics\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCodeArgumentsAsStringArray](../../../../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../../../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../../../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../../../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../../../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../../../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../../../common/exceptions/AppianException.html#getMessage\(\)), [toString](../../../../common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### XsdImportEcoreSaveException

        public XsdImportEcoreSaveException([ImportDiagnostic](../../ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics, [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") cause)

    -   ### XsdImportEcoreSaveException

        public XsdImportEcoreSaveException([ImportDiagnostic](../../ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ValidationItem](../../../../common/ValidationItem.html "class in com.appiancorp.suiteapi.common")\> validationErrors)

-   ## Method Details

    -   ### getValidationErrors

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ValidationItem](../../../../common/ValidationItem.html "class in com.appiancorp.suiteapi.common")\> getValidationErrors()

        Returns the validation errors that caused this exception. If the list is empty, it means that this exception was not caused by validation errors, but rather an exception, which can be retrieved using [`Throwable.getCause()`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang").

    -   ### getErrorCodeArguments

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getErrorCodeArguments([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        If this exception was caused by validation errors, returns the localized validation codes. If this exception was caused by another exception, returns the localized message of the cause exception (or just the message, if the cause exception is not an [`AppianException`](../../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")/[`AppianRuntimeException`](../../../../common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")).

        Overrides:

        `[getErrorCodeArguments](../../../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\))` in class `[AppianException](../../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        Parameters:

        `locale` - arguments' locale

        Returns:

        the arguments of the error code tied to this exception