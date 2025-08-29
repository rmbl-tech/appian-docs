---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/test/ProcessController.html
original_path: api/com/appiancorp/suiteapi/process/test/ProcessController.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.test](package-summary.html)

# Class ProcessController

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.test.Controller](Controller.html "class in com.appiancorp.suiteapi.process.test")

com.appiancorp.suiteapi.process.test.ProcessController

Direct Known Subclasses:

`[TaskController](TaskController.html "class in com.appiancorp.suiteapi.process.test")`

* * *

public class ProcessController extends [Controller](Controller.html "class in com.appiancorp.suiteapi.process.test")

ProcessController provides simplified access for controlling a process.

This allows simplified access to starting and concluding a process under program control.

As this extends Controller, all Controller capabilities are available.

See Also:

-   [`TaskController`](TaskController.html "class in com.appiancorp.suiteapi.process.test")

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class com.appiancorp.suiteapi.process.test.[Controller](Controller.html "class in com.appiancorp.suiteapi.process.test")

    `[Controller.ControllerException](Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test"), [Controller.LogElement](Controller.LogElement.html "class in com.appiancorp.suiteapi.process.test"), [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test")`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[targetProcessId](#targetProcessId)`

    ### Fields inherited from class com.appiancorp.suiteapi.process.test.[Controller](Controller.html "class in com.appiancorp.suiteapi.process.test")

    `[defaultDuration](Controller.html#defaultDuration), [defaultTimeUnit](Controller.html#defaultTimeUnit), [log](Controller.html#log), [LOG](Controller.html#LOG), [logLevel](Controller.html#logLevel), [logToLogger](Controller.html#logToLogger), [performance](Controller.html#performance), [sc](Controller.html#sc)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessController](#%3Cinit%3E\(com.appiancorp.services.ServiceContext,java.lang.Long\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") targetProcessId)`

    Construct a ProcessController for the given ServiceContext.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[concludeProcess](#concludeProcess\(\))()`

    Conclude process will return whenever the target process is no longer active.

    `int`

    `[concludeProcess](#concludeProcess\(long,java.util.concurrent.TimeUnit\))(long duration, [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent") timeUnit)`

    Conclude process will return whenever the target process is no longer active.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[startProcess](#startProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariable%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [ProcessVariable](../ProcessVariable.html "class in com.appiancorp.suiteapi.process")[] pvs)`

    Start the given ProcessModel using the given ProcessVariables.

    ### Methods inherited from class com.appiancorp.suiteapi.process.test.[Controller](Controller.html "class in com.appiancorp.suiteapi.process.test")

    `[clearLog](Controller.html#clearLog\(\)), [enableLogToLogger](Controller.html#enableLogToLogger\(boolean\)), [enablePerformanceLogging](Controller.html#enablePerformanceLogging\(boolean\)), [getLog](Controller.html#getLog\(\)), [getPerformanceSummary](Controller.html#getPerformanceSummary\(\)), [log](Controller.html#log\(com.appiancorp.suiteapi.process.test.Controller.LogLevel,java.lang.String\)), [setLogLevel](Controller.html#setLogLevel\(com.appiancorp.suiteapi.process.test.Controller.LogLevel\)), [setTimeout](Controller.html#setTimeout\(long,java.util.concurrent.TimeUnit\)), [yieldWithLog](Controller.html#yieldWithLog\(long,java.util.concurrent.TimeUnit,java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### targetProcessId

        protected [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") targetProcessId

-   ## Constructor Details

    -   ### ProcessController

        public ProcessController([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") targetProcessId)

        Construct a ProcessController for the given ServiceContext.

        Parameters:

        `sc` -

        `activityId` -

-   ## Method Details

    -   ### startProcess

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") startProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [ProcessVariable](../ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] pvs) throws [InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Start the given ProcessModel using the given ProcessVariables.

        Parameters:

        `processModelId` -

        `pvs` -

        Returns:

        processId

        Throws:

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")`

        `[InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[StorageLimitException](../../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidStateException](../../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### concludeProcess

        public int concludeProcess() throws [InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [ArchivedProcessException](../exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")

        Conclude process will return whenever the target process is no longer active. This may be completed, an error status, etc. -- anything other than STATE\_ACTIVE. This method will timeout after this Controller's default timeout duration.

        Returns:

        process status; see ProcessSummary STATE\_x constants

        Throws:

        `[TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")`

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[ArchivedProcessException](../exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

    -   ### concludeProcess

        public int concludeProcess(long duration, [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent") timeUnit) throws [InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [ArchivedProcessException](../exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")

        Conclude process will return whenever the target process is no longer active. This may be completed, an error status, etc. -- anything other than STATE\_ACTIVE. This method will timeout after the given timeout duration.

        Parameters:

        `duration` -

        `timeUnit` -

        Returns:

        process status

        Throws:

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[ArchivedProcessException](../exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")`