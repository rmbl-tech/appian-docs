---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/ResultPageSizeException.html
original_path: api/com/appiancorp/exceptions/ResultPageSizeException.html
version: "25.3"
---

Package [com.appiancorp.exceptions](package-summary.html)

# Class ResultPageSizeException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

[com.appiancorp.suiteapi.process.exceptions.ResultPageSizeException](../suiteapi/process/exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

com.appiancorp.exceptions.ResultPageSizeException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ResultPageSizeException extends [ResultPageSizeException](../suiteapi/process/exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

See Also:

-   [Serialized Form](../../../serialized-form.html#com.appiancorp.exceptions.ResultPageSizeException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ResultPageSizeException](#%3Cinit%3E\(com.appiancorp.exceptions.Environment\))([Environment](Environment.html "enum class in com.appiancorp.exceptions") env)`

    `[ResultPageSizeException](#%3Cinit%3E\(java.lang.String,com.appiancorp.exceptions.Environment\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_, [Environment](Environment.html "enum class in com.appiancorp.exceptions") env)`

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.process.exceptions.[ResultPageSizeException](../suiteapi/process/exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

    `[getEnvironment](../suiteapi/process/exceptions/ResultPageSizeException.html#getEnvironment\(\)), [getErrorCode](../suiteapi/process/exceptions/ResultPageSizeException.html#getErrorCode\(\)), [getErrorCodeArguments](../suiteapi/process/exceptions/ResultPageSizeException.html#getErrorCodeArguments\(\)), [setEnvironment](../suiteapi/process/exceptions/ResultPageSizeException.html#setEnvironment\(com.appiancorp.exceptions.Environment\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCodeArguments](../suiteapi/common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../suiteapi/common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../suiteapi/common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../suiteapi/common/exceptions/AppianException.html#getMessage\(\)), [toString](../suiteapi/common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ResultPageSizeException

        public ResultPageSizeException([Environment](Environment.html "enum class in com.appiancorp.exceptions") env)

    -   ### ResultPageSizeException

        public ResultPageSizeException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_, [Environment](Environment.html "enum class in com.appiancorp.exceptions") env)