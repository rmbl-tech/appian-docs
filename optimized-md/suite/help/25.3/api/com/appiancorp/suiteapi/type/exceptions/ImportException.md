---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/exceptions/ImportException.html
original_path: api/com/appiancorp/suiteapi/type/exceptions/ImportException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.type.exceptions](package-summary.html)

# Class ImportException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

[com.appiancorp.exceptions.AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

com.appiancorp.suiteapi.type.exceptions.ImportException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[InvalidXsdException](../config/xsd/exceptions/InvalidXsdException.html "class in com.appiancorp.suiteapi.type.config.xsd.exceptions")`, `[UnsupportedXsdException](../config/xsd/exceptions/UnsupportedXsdException.html "class in com.appiancorp.suiteapi.type.config.xsd.exceptions")`, `[XsdImportEcoreSaveException](../config/xsd/exceptions/XsdImportEcoreSaveException.html "class in com.appiancorp.suiteapi.type.config.xsd.exceptions")`

* * *

public class ImportException extends [AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

Thrown when a new type could not be imported.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.type.exceptions.ImportException)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[_errorCode](#_errorCode)`

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[_errorCodeArguments](#_errorCodeArguments)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ImportException](#%3Cinit%3E\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D,com.appiancorp.suiteapi.common.exceptions.ErrorCode\))([ImportDiagnostic](../config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics_, [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode_)`

    Constructs a new exception with the specified error code and import diagnostics.

    `[ImportException](#%3Cinit%3E\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object%5B%5D\))([ImportDiagnostic](../config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics_, [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] errorCodeArguments_)`

    Constructs a new exception with the specified error code and import diagnostics.

    `[ImportException](#%3Cinit%3E\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object%5B%5D,java.lang.Throwable\))([ImportDiagnostic](../config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics_, [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] errorCodeArguments_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause_)`

    Constructs a new exception with the specified error code and import diagnostics.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ImportDiagnostic](../config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[]`

    `[getDiagnostics](#getDiagnostics\(\))()`

    Retrieves the diagnostics that were generated during the attempted import.

    `[ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    Gets the error code associated with this exception.

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getErrorCodeArguments](#getErrorCodeArguments\(\))()`

    Gets the arguments that must be used to render this exception's message representation.

    `boolean`

    `[hasSameErrorCodeAndArguments](#hasSameErrorCodeAndArguments\(com.appiancorp.suiteapi.type.exceptions.ImportException\))([ImportException](ImportException.html "class in com.appiancorp.suiteapi.type.exceptions") e)`

    Checks whether the specified `ImportException` has the same error code and error code arguments as this object.

    `void`

    `[setDiagnostics](#setDiagnostics\(com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D\))([ImportDiagnostic](../config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics_)`

    Sets the diagnostics that are associated with the ImportException.

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../common/exceptions/AppianException.html#getMessage\(\)), [toString](../../common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### \_errorCode

        protected [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") \_errorCode

    -   ### \_errorCodeArguments

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] \_errorCodeArguments

-   ## Constructor Details

    -   ### ImportException

        public ImportException([ImportDiagnostic](../config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics\_, [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode\_)

        Constructs a new exception with the specified error code and import diagnostics. The cause is not initialized, and may subsequently be initialized by a call to Throwable.initCause(java.lang.Throwable)

        Parameters:

        `diagnostics_` - the diagnostics that were generated during the attempted import

        `errorCode_` - the [`ErrorCode`](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") associated with the exception

    -   ### ImportException

        public ImportException([ImportDiagnostic](../config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics\_, [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments\_)

        Constructs a new exception with the specified error code and import diagnostics. The cause is not initialized, and may subsequently be initialized by a call to Throwable.initCause(java.lang.Throwable)

        Parameters:

        `diagnostics_` - the diagnostics that were generated during the attempted import

        `errorCode_` - the [`ErrorCode`](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") associated with the exception

        `errorCodeArguments_` - the arguments that must be used to render this exception's message representation

    -   ### ImportException

        public ImportException([ImportDiagnostic](../config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics\_, [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments\_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause\_)

        Constructs a new exception with the specified error code and import diagnostics.

        Parameters:

        `diagnostics_` - the diagnostics that were generated during the attempted import

        `errorCode_` - the [`ErrorCode`](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") associated with the exception

        `errorCodeArguments_` - the arguments that must be used to render this exception's message representation

        `cause_` - the cause (which is saved for later retrieval by the Throwable.getCause() method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.)

-   ## Method Details

    -   ### getErrorCode

        public [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") getErrorCode()

        Gets the error code associated with this exception.

        Overrides:

        `[getErrorCode](../../common/exceptions/AppianException.html#getErrorCode\(\))` in class `[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        See Also:

        -   [`ErrorCode.GENERIC_ERROR`](../../common/exceptions/ErrorCode.html#GENERIC_ERROR)

    -   ### getErrorCodeArguments

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getErrorCodeArguments()

        Gets the arguments that must be used to render this exception's message representation.

        Overrides:

        `[getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(\))` in class `[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        Returns:

        the arguments of the error code tied to this exception

        See Also:

        -   [`ErrorCode.GENERIC_ERROR`](../../common/exceptions/ErrorCode.html#GENERIC_ERROR)

    -   ### hasSameErrorCodeAndArguments

        public boolean hasSameErrorCodeAndArguments([ImportException](ImportException.html "class in com.appiancorp.suiteapi.type.exceptions") e)

        Checks whether the specified `ImportException` has the same error code and error code arguments as this object.

        Parameters:

        `e` - an `ImportException` instance

        Returns:

        true if the same, false otherwise

    -   ### getDiagnostics

        public [ImportDiagnostic](../config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] getDiagnostics()

        Retrieves the diagnostics that were generated during the attempted import.

        Returns:

        the diagnostics

    -   ### setDiagnostics

        public void setDiagnostics([ImportDiagnostic](../config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics\_)

        Sets the diagnostics that are associated with the ImportException.

        Parameters:

        `diagnostics_` - the diagnostics that were generated during the attempted import