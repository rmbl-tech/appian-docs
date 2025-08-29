---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/InvalidNavigationItemException.html
original_path: api/com/appiancorp/suiteapi/applications/InvalidNavigationItemException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.applications](package-summary.html)

# Class InvalidNavigationItemException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.suiteapi.applications.InvalidNavigationItemException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class InvalidNavigationItemException extends [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown whenever an invalid ApplicationNavigationItem element is found. The error code contains the specific information of the fault that was triggered.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.applications.InvalidNavigationItemException)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected [ErrorCode](../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[errorCode](#errorCode)`

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[errorCodeArguments](#errorCodeArguments)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[InvalidNavigationItemException](#%3Cinit%3E\(\))()`

    `[InvalidNavigationItemException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode\))([ErrorCode](../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode)`

    `[InvalidNavigationItemException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.String%5B%5D\))([ErrorCode](../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] errorCodeArguments)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ErrorCode](../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    Gets the error code associated with this exception.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getErrorCodeArguments](#getErrorCodeArguments\(\))()`

    Gets the arguments that must be used to render this exception's message representation.

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCodeArguments](../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../common/exceptions/AppianException.html#getMessage\(\)), [toString](../common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### errorCode

        protected [ErrorCode](../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

    -   ### errorCodeArguments

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments

-   ## Constructor Details

    -   ### InvalidNavigationItemException

        public InvalidNavigationItemException()

    -   ### InvalidNavigationItemException

        public InvalidNavigationItemException([ErrorCode](../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode)

    -   ### InvalidNavigationItemException

        public InvalidNavigationItemException([ErrorCode](../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] errorCodeArguments)

-   ## Method Details

    -   ### getErrorCodeArguments

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getErrorCodeArguments()

        Description copied from class: `[AppianException](../common/exceptions/AppianException.html#getErrorCodeArguments\(\))`

        Gets the arguments that must be used to render this exception's message representation. Subclasses should override this method to return specific arguments. The default implementation returns a length 1 array containing the message as returned by the parent class of AppianException. This method is only called when [`AppianException.getErrorCodeArguments(Locale)`](../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)) hasn't been overwritten.

        Overrides:

        `[getErrorCodeArguments](../common/exceptions/AppianException.html#getErrorCodeArguments\(\))` in class `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        Returns:

        the arguments of the error code tied to this exception

        See Also:

        -   [`ErrorCode.GENERIC_ERROR`](../common/exceptions/ErrorCode.html#GENERIC_ERROR)

    -   ### getErrorCode

        public [ErrorCode](../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") getErrorCode()

        Description copied from class: `[AppianException](../common/exceptions/AppianException.html#getErrorCode\(\))`

        Gets the error code associated with this exception. Subclasses should override this method to return specific error codes. The default implementation returns APNX-1-0000-000 (ErrorCode.GENERIC\_ERROR).

        Overrides:

        `[getErrorCode](../common/exceptions/AppianException.html#getErrorCode\(\))` in class `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        See Also:

        -   [`ErrorCode.GENERIC_ERROR`](../common/exceptions/ErrorCode.html#GENERIC_ERROR)