---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/exceptions/InvalidRejectionStateException.html
original_path: api/com/appiancorp/suiteapi/content/exceptions/InvalidRejectionStateException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content.exceptions](package-summary.html)

# Class InvalidRejectionStateException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

[com.appiancorp.exceptions.AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

com.appiancorp.suiteapi.content.exceptions.InvalidRejectionStateException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class InvalidRejectionStateException extends [AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

This exception may be thrown by [`ContentService.rejectVersion(Long, Integer)`](../ContentService.html#rejectVersion\(java.lang.Long,java.lang.Integer\))

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.content.exceptions.InvalidRejectionStateException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[InvalidRejectionStateException](#%3Cinit%3E\(\))()`

    `[InvalidRejectionStateException](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    `[InvalidRejectionStateException](#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t_)`

    `[InvalidRejectionStateException](#%3Cinit%3E\(java.lang.Throwable\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") message_)`

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCode](../../common/exceptions/AppianException.html#getErrorCode\(\)), [getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../common/exceptions/AppianException.html#getMessage\(\)), [toString](../../common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### InvalidRejectionStateException

        public InvalidRejectionStateException()

    -   ### InvalidRejectionStateException

        public InvalidRejectionStateException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_)

    -   ### InvalidRejectionStateException

        public InvalidRejectionStateException([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") message\_)

    -   ### InvalidRejectionStateException

        public InvalidRejectionStateException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t\_)