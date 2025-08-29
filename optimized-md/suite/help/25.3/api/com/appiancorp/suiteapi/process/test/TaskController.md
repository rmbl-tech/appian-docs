---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/test/TaskController.html
original_path: api/com/appiancorp/suiteapi/process/test/TaskController.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.test](package-summary.html)

# Class TaskController

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.test.Controller](Controller.html "class in com.appiancorp.suiteapi.process.test")

[com.appiancorp.suiteapi.process.test.ProcessController](ProcessController.html "class in com.appiancorp.suiteapi.process.test")

com.appiancorp.suiteapi.process.test.TaskController

* * *

public class TaskController extends [ProcessController](ProcessController.html "class in com.appiancorp.suiteapi.process.test")

TaskController enables testing processes with attended tasks via program automation.

TaskController provides simplified access to find a task within a recursive process tree, and it provides simplified execution of such task once found.

Example:

 TaskController session = TaskController.initialize(currentServiceContext, processId);
 TaskDetails taskDetails = session.expect("MyNode\*");
 if (taskDetails != null) {
   session.execute(new ActivityClassParameter\[\] {new ActivityClassParameter(
     "myparam", AppianTypeLong.STRING, "Hello")});
 }
 session.expect("Order Number \*");
 if (taskDetails != null) {
   session.execute(new ActivityClassParameter\[\] {new ActivityClassParameter(
     "otherparam", AppianTypeLong.STRING, "Goodbye")});
 }

Call session.getLog() to get log of actions taken; use session.setLogLevel() to tune the amount of information.

Call session.getPerformanceSummary() for a textual description of performance timings.

As this extends ProcessController and Controller, all ProcessController and Controller capabilities are available.

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class com.appiancorp.suiteapi.process.test.[Controller](Controller.html "class in com.appiancorp.suiteapi.process.test")

    `[Controller.ControllerException](Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test"), [Controller.LogElement](Controller.LogElement.html "class in com.appiancorp.suiteapi.process.test"), [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test")`

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.test.[ProcessController](ProcessController.html "class in com.appiancorp.suiteapi.process.test")

    `[targetProcessId](ProcessController.html#targetProcessId)`

    ### Fields inherited from class com.appiancorp.suiteapi.process.test.[Controller](Controller.html "class in com.appiancorp.suiteapi.process.test")

    `[defaultDuration](Controller.html#defaultDuration), [defaultTimeUnit](Controller.html#defaultTimeUnit), [log](Controller.html#log), [LOG](Controller.html#LOG), [logLevel](Controller.html#logLevel), [logToLogger](Controller.html#logToLogger), [performance](Controller.html#performance), [sc](Controller.html#sc)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[TaskDetails](../TaskDetails.html "class in com.appiancorp.suiteapi.process")`

    `[execute](#execute\(com.appiancorp.suiteapi.process.TaskProperties,long,java.util.concurrent.TimeUnit,com.appiancorp.suiteapi.process.ActivityClassParameter...\))([TaskProperties](../TaskProperties.html "class in com.appiancorp.suiteapi.process") taskProperties, long duration, [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent") timeUnit, [ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")... inputs)`

    Executes a given task

    `[TaskDetails](../TaskDetails.html "class in com.appiancorp.suiteapi.process")`

    `[execute](#execute\(com.appiancorp.suiteapi.process.TaskProperties,com.appiancorp.suiteapi.process.ActivityClassParameter...\))([TaskProperties](../TaskProperties.html "class in com.appiancorp.suiteapi.process") taskProperties, [ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")... inputs)`

    Executes a given task

    `[TaskSummary](../TaskSummary.html "class in com.appiancorp.suiteapi.process")[]`

    `[expect](#expect\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") taskNameRegEx)`

    Examine tasks to find a task name that matches taskNameRegEx.

    `[TaskSummary](../TaskSummary.html "class in com.appiancorp.suiteapi.process")[]`

    `[expect](#expect\(java.lang.String,long,java.util.concurrent.TimeUnit,java.lang.Integer...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") taskNameRegEx, long duration, [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent") timeUnit, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")... requiredStatus)`

    Examine tasks to find a task name that matches taskNameRegEx.

    `[TaskSummary](../TaskSummary.html "class in com.appiancorp.suiteapi.process")[]`

    `[expect](#expect\(java.lang.String,java.lang.Integer...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") taskNameRegEx, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")... requiredStatus)`

    Examine tasks to find a task name that matches taskNameRegEx.

    `static [TaskController](TaskController.html "class in com.appiancorp.suiteapi.process.test")`

    `[initialize](#initialize\(com.appiancorp.services.ServiceContext,java.lang.Long\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") targetProcessId)`

    Generate a TaskController from the given targetProcessId and its recursive children.

    `static [TaskController](TaskController.html "class in com.appiancorp.suiteapi.process.test")`

    `[initialize](#initialize\(com.appiancorp.services.ServiceContext,java.lang.Long,java.lang.Long%5B%5D,boolean\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") targetProcessId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] excludeProcessIds, boolean recursive)`

    Generate a TaskController from the given targetProcessId, and its recursive children if requested, excluding the excludeProcessId if set.

    ### Methods inherited from class com.appiancorp.suiteapi.process.test.[ProcessController](ProcessController.html "class in com.appiancorp.suiteapi.process.test")

    `[concludeProcess](ProcessController.html#concludeProcess\(\)), [concludeProcess](ProcessController.html#concludeProcess\(long,java.util.concurrent.TimeUnit\)), [startProcess](ProcessController.html#startProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessVariable%5B%5D\))`

    ### Methods inherited from class com.appiancorp.suiteapi.process.test.[Controller](Controller.html "class in com.appiancorp.suiteapi.process.test")

    `[clearLog](Controller.html#clearLog\(\)), [enableLogToLogger](Controller.html#enableLogToLogger\(boolean\)), [enablePerformanceLogging](Controller.html#enablePerformanceLogging\(boolean\)), [getLog](Controller.html#getLog\(\)), [getPerformanceSummary](Controller.html#getPerformanceSummary\(\)), [log](Controller.html#log\(com.appiancorp.suiteapi.process.test.Controller.LogLevel,java.lang.String\)), [setLogLevel](Controller.html#setLogLevel\(com.appiancorp.suiteapi.process.test.Controller.LogLevel\)), [setTimeout](Controller.html#setTimeout\(long,java.util.concurrent.TimeUnit\)), [yieldWithLog](Controller.html#yieldWithLog\(long,java.util.concurrent.TimeUnit,java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### initialize

        public static [TaskController](TaskController.html "class in com.appiancorp.suiteapi.process.test") initialize([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") targetProcessId) throws [InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Generate a TaskController from the given targetProcessId and its recursive children.

        Parameters:

        `sc` - ServiceContext under which this will execute

        `targetProcessId` - in which to find the task

        Returns:

        TaskController

        Throws:

        `[InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if targetProcessId is invalid

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if access to targetProcessId is not allowed

    -   ### initialize

        public static [TaskController](TaskController.html "class in com.appiancorp.suiteapi.process.test") initialize([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") targetProcessId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] excludeProcessIds, boolean recursive) throws [InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Generate a TaskController from the given targetProcessId, and its recursive children if requested, excluding the excludeProcessId if set.

        Parameters:

        `sc` - ServiceContext under which this will execute

        `targetProcessId` - in which to find the task

        `excludeProcessIds` - will not find the task in the given excluded process ids, useful for recursive to exclude self or other specific process ids

        `recursive` - if true will search subprocesses recursively for matching task

        Returns:

        TaskController

        Throws:

        `[InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if targetProcessId is invalid

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if access to targetProcessId is not allowed

    -   ### expect

        public [TaskSummary](../TaskSummary.html "class in com.appiancorp.suiteapi.process")\[\] expect([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") taskNameRegEx) throws [InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")

        Examine tasks to find a task name that matches taskNameRegEx. The TaskController session object is updated with TaskSummary if found.

        Parameters:

        `taskNameRegEx` - regex to match. Use Pattern.quote(taskNameRegEx) for an exact match, Pattern.quote(taskNameRegEx)+"\*" for startsWith.

        Returns:

        TaskSummary matching taskNameRegEx or null if not found; activityId needed for execute is set if and only if TaskSummary is returned.

        Throws:

        `[InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")` - if timeout occurs

    -   ### expect

        public [TaskSummary](../TaskSummary.html "class in com.appiancorp.suiteapi.process")\[\] expect([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") taskNameRegEx, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")... requiredStatus) throws [InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")

        Examine tasks to find a task name that matches taskNameRegEx. The TaskController session object is updated with TaskSummary if found.

        Parameters:

        `taskNameRegEx` - regex to match. Use Pattern.quote(taskNameRegEx) for an exact match, Pattern.quote(taskNameRegEx)+"\*" for startsWith.

        `requiredStatus` - will only return TaskSummary for tasks that have one of these requiredStatus; null allows any status including null; empty allows TASK\_STATUS\_ASSIGNED or TASK\_STATUS\_ACCEPTED, the two states under which an attended task may be executed.

        Returns:

        TaskSummary matching taskNameRegEx or null if not found; activityId needed for execute is set if and only if TaskSummary is returned.

        Throws:

        `[InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")` - if timeout occurs

    -   ### expect

        public [TaskSummary](../TaskSummary.html "class in com.appiancorp.suiteapi.process")\[\] expect([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") taskNameRegEx, long duration, [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent") timeUnit, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")... requiredStatus) throws [InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")

        Examine tasks to find a task name that matches taskNameRegEx. The TaskSummary session object is returned if found.

        Parameters:

        `taskNameRegEx` - regex to match. Use Pattern.quote(taskNameRegEx) for an exact match, Pattern.quote(taskNameRegEx)+"\*" for startsWith.

        `duration` - 0 is no timeout, >0 is time in timeUnit it will fail with Timeout for no task matches.

        `timeUnit` - unit for duration

        `requiredStatus` - will only return TaskSummary for tasks that have one of these requiredStatus; null allows any status including null; empty allows TASK\_STATUS\_ASSIGNED or TASK\_STATUS\_ACCEPTED, the two states under which an attended task may be executed.

        Returns:

        TaskSummary matching taskNameRegEx or null if not found; activityId needed for execute is set if and only if TaskSummary is returned.

        Throws:

        `[InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")` - if timeout occurs

    -   ### execute

        public [TaskDetails](../TaskDetails.html "class in com.appiancorp.suiteapi.process") execute([TaskProperties](../TaskProperties.html "class in com.appiancorp.suiteapi.process") taskProperties, [ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")... inputs) throws [InvalidActivityException](../exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [ArchivedProcessException](../exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidActivityClassParameterException](../exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPriorityException](../../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidExpressionException](../../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [TaskNavigationException](../exceptions/TaskNavigationException.html "class in com.appiancorp.suiteapi.process.exceptions"), [Controller.ControllerException](Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")

        Executes a given task

        1.  Accepts the current task.
        2.  If the current user could not accept the task because the current user is not an assignee, but the current user could complete if reassigned, then the task will be reassigned then accepted.
        3.  If the task is not successfully accepted, then an IllegalArgumentException is thrown.
        4.  If the task is a subprocess task, then the subprocess's input map is set to the given inputs. If the task is not a subprocess task, then the inputs are mapped by name to the task's expected inputs.
        5.  Saves the mapped activity parameters.
        6.  Advances to the next attended task.

        The default Controller duration and timeUnit will be used; it will fail with TimeoutException if it cannot accept and execute the task in the given time.

        Parameters:

        `TaskProperties` - (note, TaskSummary as returned by expect extends TaskProperties and will typically be the TaskProperties passed here)

        `inputs` - If the task matches a subprocess task, these are the subprocess parameters. If the task matches any other task, then the names are mapped to the names in task's parameters.

        Returns:

        TaskDetails of subsequent attended request if available, null otherwise.

        Throws:

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidActivityException](../exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[InvalidOperationException](../../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidStateException](../../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidActivityClassParameterException](../exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")`

        `[TaskNavigationException](../exceptions/TaskNavigationException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[InvalidExpressionException](../../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[StorageLimitException](../../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidPriorityException](../../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[ArchivedProcessException](../exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")`

        `[Controller.ControllerException](Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test")`

        `[IllegalStateException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalStateException.html "class or interface in java.lang")` - if activityId was not set by expect

    -   ### execute

        public [TaskDetails](../TaskDetails.html "class in com.appiancorp.suiteapi.process") execute([TaskProperties](../TaskProperties.html "class in com.appiancorp.suiteapi.process") taskProperties, long duration, [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent") timeUnit, [ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")... inputs) throws [InvalidActivityException](../exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [ArchivedProcessException](../exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [Controller.ControllerException](Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test"), [TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent"), [InvalidActivityClassParameterException](../exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPriorityException](../../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidExpressionException](../../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [TaskNavigationException](../exceptions/TaskNavigationException.html "class in com.appiancorp.suiteapi.process.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Executes a given task

        1.  Accepts the current task.
        2.  If the current user could not accept the task because the current user is not an assignee, but the current user could complete if reassigned, then the task will be reassigned then accepted.
        3.  If the task is not successfully accepted, then an IllegalArgumentException is thrown.
        4.  If the task is a subprocess task, then the subprocess's input map is set to the given inputs. If the task is not a subprocess task, then the inputs are mapped by name to the task's expected inputs.
        5.  Saves the mapped activity parameters.
        6.  Advances to the next attended task.

        Parameters:

        `TaskProperties` - (note, TaskSummary as returned by expect extends TaskProperties and will typically be the TaskProperties passed here)

        `inputs` - If the task matches a subprocess task, these are the subprocess parameters. If the task matches any other task, then the names are mapped to the names in task's parameters.

        `duration` - 0 is no timeout, >0 is time in timeUnit; it will fail with TimeoutException if it cannot accept and execute the task in the given time.

        `timeUnit` - unit for duration

        Returns:

        TaskDetails of subsequent attended request if available, null otherwise.

        Throws:

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidActivityException](../exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[InvalidOperationException](../../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidStateException](../../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidUserException](../../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidActivityClassParameterException](../exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")`

        `[TaskNavigationException](../exceptions/TaskNavigationException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[InvalidExpressionException](../../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[StorageLimitException](../../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidPriorityException](../../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[ArchivedProcessException](../exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[TimeoutException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeoutException.html "class or interface in java.util.concurrent")`

        `[Controller.ControllerException](Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test")`

        `[IllegalStateException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalStateException.html "class or interface in java.lang")` - if activityId was not set by expect