---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/portlets/links/OutOfLinkTypesException.html
original_path: api/com/appiancorp/suiteapi/portal/portlets/links/OutOfLinkTypesException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal.portlets.links](package-summary.html)

# Class OutOfLinkTypesException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

[com.appiancorp.exceptions.AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

com.appiancorp.suiteapi.portal.portlets.links.OutOfLinkTypesException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class OutOfLinkTypesException extends [AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Exception that is thrown if the user tries to create or register a new link type and the maximum number of link types have already been created.

See Also:

-   [Serialized Form](../../../../../../serialized-form.html#com.appiancorp.suiteapi.portal.portlets.links.OutOfLinkTypesException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[OutOfLinkTypesException](#%3Cinit%3E\(\))()`

    Deprecated.

    Constructs a new exception with `null` as its detail message.

    `[OutOfLinkTypesException](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    Deprecated.

    Constructs a new exception with the specified detail message.

    `[OutOfLinkTypesException](#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t_)`

    Deprecated.

    Constructs a new exception with the specified detail message and cause.

    `[OutOfLinkTypesException](#%3Cinit%3E\(java.lang.Throwable\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t_)`

    Deprecated.

    Constructs a new exception with the specified cause and a detail message of (cause==null ?

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCode](../../../common/exceptions/AppianException.html#getErrorCode\(\)), [getErrorCodeArguments](../../../common/exceptions/AppianException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../../../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../../common/exceptions/AppianException.html#getMessage\(\)), [toString](../../../common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### OutOfLinkTypesException

        public OutOfLinkTypesException()

        Deprecated.

        Constructs a new exception with `null` as its detail message. The cause is not initialized, and may subsequently be initialized by a call to Throwable.initCause(java.lang.Throwable)

    -   ### OutOfLinkTypesException

        public OutOfLinkTypesException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_)

        Deprecated.

        Constructs a new exception with the specified detail message. The cause is not initialized, and may subsequently be initialized by a call to Throwable.initCause(java.lang.Throwable)

        Parameters:

        `message_` - the detail message. The detail message is saved for later retrieval by the Throwable.getMessage() method

    -   ### OutOfLinkTypesException

        public OutOfLinkTypesException([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t\_)

        Deprecated.

        Constructs a new exception with the specified cause and a detail message of (cause==null ? null : cause.toString()) (which typically contains the class and detail message of cause). This constructor is useful for exceptions that are little more than wrappers for other throwables (for example, PrivilegedActionException)

        Parameters:

        `t_` - the cause (which is saved for later retrieval by the Throwable.getCause() method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.)

    -   ### OutOfLinkTypesException

        public OutOfLinkTypesException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t\_)

        Deprecated.

        Constructs a new exception with the specified detail message and cause. Note that the detail message associated with cause is not automatically incorporated in this exception's detail message.

        Parameters:

        `message_` - the detail message. The detail message is saved for later retrieval by the Throwable.getMessage() method

        `t_` - the cause (which is saved for later retrieval by the Throwable.getCause() method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.)