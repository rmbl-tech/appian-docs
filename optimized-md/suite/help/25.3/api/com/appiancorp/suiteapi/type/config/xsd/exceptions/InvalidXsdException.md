---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/config/xsd/exceptions/InvalidXsdException.html
original_path: api/com/appiancorp/suiteapi/type/config/xsd/exceptions/InvalidXsdException.html
version: "25.3"
title: "Class InvalidXsdException"
page_id: "api/com/appiancorp/suiteapi/type/config/xsd/exceptions/InvalidXsdException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type.config.xsd.exceptions](package-summary.html)

# Class InvalidXsdException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

[com.appiancorp.exceptions.AppianException](../../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

[com.appiancorp.suiteapi.type.exceptions.ImportException](../../../exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")

com.appiancorp.suiteapi.type.config.xsd.exceptions.InvalidXsdException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class InvalidXsdException extends [ImportException](../../../exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")

Thrown when an XML schema file being imported is found to be invalid.

See Also:

-   [Serialized Form](../../../../../../../serialized-form.html#com.appiancorp.suiteapi.type.config.xsd.exceptions.InvalidXsdException)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.type.exceptions.[ImportException](../../../exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")

    `[_errorCode](../../../exceptions/ImportException.html#_errorCode), [_errorCodeArguments](../../../exceptions/ImportException.html#_errorCodeArguments)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[InvalidXsdException](#%3Cinit%3E\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D,com.appiancorp.suiteapi.common.exceptions.ErrorCode\))([ImportDiagnostic](../../ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics_, [ErrorCode](../../../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode_)`

    Creates an instance with the given diagnostics and error code.

    `[InvalidXsdException](#%3Cinit%3E\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.String...\))([ImportDiagnostic](../../ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics_, [ErrorCode](../../../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errorCodeArguments_)`

    Creates an instance with the given diagnostics, error code and error code arguments.

    `[InvalidXsdException](#%3Cinit%3E\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.String%5B%5D,java.lang.Throwable\))([ImportDiagnostic](../../ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics_, [ErrorCode](../../../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] errorCodeArguments_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause_)`

    Creates an instance with the given diagnostics, error code, error code arguments and cause

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.type.exceptions.[ImportException](../../../exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")

    `[getDiagnostics](../../../exceptions/ImportException.html#getDiagnostics\(\)), [getErrorCode](../../../exceptions/ImportException.html#getErrorCode\(\)), [getErrorCodeArguments](../../../exceptions/ImportException.html#getErrorCodeArguments\(\)), [hasSameErrorCodeAndArguments](../../../exceptions/ImportException.html#hasSameErrorCodeAndArguments\(com.appiancorp.suiteapi.type.exceptions.ImportException\)), [setDiagnostics](../../../exceptions/ImportException.html#setDiagnostics\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCodeArguments](../../../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../../../../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../../../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../../../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../../../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../../../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../../../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../../../common/exceptions/AppianException.html#getMessage\(\)), [toString](../../../../common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### InvalidXsdException

        public InvalidXsdException([ImportDiagnostic](../../ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics\_, [ErrorCode](../../../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode\_)

        Creates an instance with the given diagnostics and error code.

        Parameters:

        `diagnostics_` - the import diagnostics generated when attempting to import the XML schema file

        `errorCode_` - the error code associated with the exception

    -   ### InvalidXsdException

        public InvalidXsdException([ImportDiagnostic](../../ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics\_, [ErrorCode](../../../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errorCodeArguments\_)

        Creates an instance with the given diagnostics, error code and error code arguments.

        Parameters:

        `diagnostics_` - the import diagnostics generated when attempting to import the XML schema file

        `errorCode_` - the error code associated with the exception

        `errorCodeArguments_` - the arguments that serve as text replacements in the error message

    -   ### InvalidXsdException

        public InvalidXsdException([ImportDiagnostic](../../ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics\_, [ErrorCode](../../../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] errorCodeArguments\_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause\_)

        Creates an instance with the given diagnostics, error code, error code arguments and cause

        Parameters:

        `diagnostics_` - the import diagnostics generated when attempting to import the XML schema file

        `errorCode_` - the error code associated with the exception

        `errorCodeArguments_` - the arguments that serve as text replacements in the error message

        `cause_` - the cause (which is saved for later retrieval by the Throwable.getCause() method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.) \*