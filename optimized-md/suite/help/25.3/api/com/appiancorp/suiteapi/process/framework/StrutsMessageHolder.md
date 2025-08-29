---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/StrutsMessageHolder.html
original_path: api/com/appiancorp/suiteapi/process/framework/StrutsMessageHolder.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Class StrutsMessageHolder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.framework.StrutsMessageHolder

All Implemented Interfaces:

`[MessageHolder](MessageHolder.html "interface in com.appiancorp.suiteapi.process.framework")`

* * *

public class StrutsMessageHolder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [MessageHolder](MessageHolder.html "interface in com.appiancorp.suiteapi.process.framework")

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[StrutsMessageHolder](#%3Cinit%3E\(java.lang.String,javax.servlet.http.HttpServletRequest\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle_, javax.servlet.http.HttpServletRequest q_)`

    Constructs a message holder that uses the given resource bundle to lookup message keys.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addError](#addError\(com.appiancorp.web.framework.kernel.main.ActionMessage\))(com.appiancorp.web.framework.kernel.main.ActionMessage error_)`

    Adds an error to the request using the default bundle for this Action.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### StrutsMessageHolder

        public StrutsMessageHolder([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle\_, javax.servlet.http.HttpServletRequest q\_)

        Constructs a message holder that uses the given resource bundle to lookup message keys.

-   ## Method Details

    -   ### addError

        public void addError(com.appiancorp.web.framework.kernel.main.ActionMessage error\_)

        Adds an error to the request using the default bundle for this Action. Bundles are associated to actions by the package of the concrete action class.

        Specified by:

        `[addError](MessageHolder.html#addError\(com.appiancorp.web.framework.kernel.main.ActionMessage\))` in interface `[MessageHolder](MessageHolder.html "interface in com.appiancorp.suiteapi.process.framework")`

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the error

        `error_` - the `ActionError` representing the error