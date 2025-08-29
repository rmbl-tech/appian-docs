---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/GroupTypeUsedByRulesException.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/GroupTypeUsedByRulesException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common.exceptions](package-summary.html)

# Class GroupTypeUsedByRulesException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

[com.appiancorp.exceptions.AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

[com.appiancorp.suiteapi.common.exceptions.GroupsExtantException](GroupsExtantException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.suiteapi.common.exceptions.GroupTypeUsedByRulesException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class GroupTypeUsedByRulesException extends [GroupsExtantException](GroupsExtantException.html "class in com.appiancorp.suiteapi.common.exceptions")

Exception indicating that the attempted action could not completed because a `GroupType` involved in the action is being used by a rule. For instance, attempting to delete a group type that is also used by a rule would throw this exception.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.common.exceptions.GroupTypeUsedByRulesException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[GroupTypeUsedByRulesException](#%3Cinit%3E\(\))()`

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCode](AppianException.html#getErrorCode\(\)), [getErrorCodeArguments](AppianException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](AppianException.html#getMessage\(\)), [toString](AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### GroupTypeUsedByRulesException

        public GroupTypeUsedByRulesException()