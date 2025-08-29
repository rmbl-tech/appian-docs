---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/AuditInfo.html
original_path: api/com/appiancorp/suiteapi/process/history/AuditInfo.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.history](package-summary.html)

# Class AuditInfo

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.history.AuditInfo

* * *

public class AuditInfo extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

AuditInfo Information about the audit history returned.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AuditInfo](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `long`

    `[getErrorCount](#getErrorCount\(\))()`

    `boolean`

    `[isReadTimedOut](#isReadTimedOut\(\))()`

    `void`

    `[setErrorCount](#setErrorCount\(long\))(long errorCount)`

    `void`

    `[setReadTimedOut](#setReadTimedOut\(boolean\))(boolean state)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AuditInfo

        public AuditInfo()

-   ## Method Details

    -   ### isReadTimedOut

        public boolean isReadTimedOut()

        Returns:

        if the read timed out, so not necessarily all information returned

    -   ### setReadTimedOut

        public void setReadTimedOut(boolean state)

    -   ### getErrorCount

        public long getErrorCount()

        Returns:

        the count of errors that did not prevent the read from completing (see log)

    -   ### setErrorCount

        public void setErrorCount(long errorCount)