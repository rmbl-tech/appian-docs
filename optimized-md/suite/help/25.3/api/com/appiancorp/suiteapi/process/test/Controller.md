---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/test/Controller.html
original_path: api/com/appiancorp/suiteapi/process/test/Controller.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.test](package-summary.html)

# Class Controller

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.test.Controller

Direct Known Subclasses:

`[ProcessController](ProcessController.html "class in com.appiancorp.suiteapi.process.test")`

* * *

public class Controller extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Controller is the root of the controller objects that allow the automatic control of processes and their tasks.

For most purposes, use the TaskController directly.

Controller itself only provides logging abilities available at the object level, rather than just the system level. It only retains the logs generated within the Controllers themselves, not the general logging done by other objects in the system.

This allows not only logging the control information, but also retrieving it for use by the controlling Java code. The information may then be displayed in its own manner.

See Also:

-   [`TaskController`](TaskController.html "class in com.appiancorp.suiteapi.process.test")
-   [`ProcessController`](ProcessController.html "class in com.appiancorp.suiteapi.process.test")

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static final class` 

    `[Controller.ControllerException](Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test")`

    ControllerException This exception is thrown for controller errors.

    `static class` 

    `[Controller.LogElement](Controller.LogElement.html "class in com.appiancorp.suiteapi.process.test")`

    LogElement The object log is composed of LogElements.

    `static enum` 

    `[Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test")`

    LogLevel enumeration supported by Controller logging.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected long`

    `[defaultDuration](#defaultDuration)`

    `protected [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent")`

    `[defaultTimeUnit](#defaultTimeUnit)`

    `protected [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Controller.LogElement](Controller.LogElement.html "class in com.appiancorp.suiteapi.process.test")>`

    `[log](#log)`

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

    `protected [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test")`

    `[logLevel](#logLevel)`

    `protected boolean`

    `[logToLogger](#logToLogger)`

    `protected final com.appiancorp.common.performance.Performance`

    `[performance](#performance)`

    `protected [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services")`

    `[sc](#sc)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Controller](#%3Cinit%3E\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Construct an Controller for the given ServiceContext.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[clearLog](#clearLog\(\))()`

    Clear the retrievable log.

    `void`

    `[enableLogToLogger](#enableLogToLogger\(boolean\))(boolean state)`

    Set whether logging should be done to the logger (Log4J) as well as recorded.

    `void`

    `[enablePerformanceLogging](#enablePerformanceLogging\(boolean\))(boolean state)`

    Enable or disable performance logging, regardless of logging settings.

    `[Controller.LogElement](Controller.LogElement.html "class in com.appiancorp.suiteapi.process.test")[]`

    `[getLog](#getLog\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPerformanceSummary](#getPerformanceSummary\(\))()`

    Get a textual performance summary.

    `protected void`

    `[log](#log\(com.appiancorp.suiteapi.process.test.Controller.LogLevel,java.lang.String\))([Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") logLevel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)`

    Record the log messages in this Controller's log and send it to the external (e.g., log4j) logger.

    `void`

    `[setLogLevel](#setLogLevel\(com.appiancorp.suiteapi.process.test.Controller.LogLevel\))([Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") logLevel)`

    Set desired logging level.

    `void`

    `[setTimeout](#setTimeout\(long,java.util.concurrent.TimeUnit\))(long duration, [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent") timeUnit)`

    Set default timeout duration for Controller methods, if explicit duration and timeUnit parameters are not passed to a method.

    `protected void`

    `[yieldWithLog](#yieldWithLog\(long,java.util.concurrent.TimeUnit,java.lang.String\))(long duration, [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent") timeUnit, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)`

    Yield for the given time, logging a delay message at LogLevel.INFO.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

    -   ### performance

        protected final com.appiancorp.common.performance.Performance performance

    -   ### sc

        protected [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc

    -   ### log

        protected [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Controller.LogElement](Controller.LogElement.html "class in com.appiancorp.suiteapi.process.test")\> log

    -   ### logLevel

        protected [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") logLevel

    -   ### logToLogger

        protected boolean logToLogger

    -   ### defaultDuration

        protected long defaultDuration

    -   ### defaultTimeUnit

        protected [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent") defaultTimeUnit

-   ## Constructor Details

    -   ### Controller

        public Controller([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc)

        Construct an Controller for the given ServiceContext.

        Parameters:

        `sc` -

        `activityId` -

-   ## Method Details

    -   ### setTimeout

        public void setTimeout(long duration, [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent") timeUnit)

        Set default timeout duration for Controller methods, if explicit duration and timeUnit parameters are not passed to a method. Methods that use the timeout will have a variation with explicit timeout and with implicit default timeout. If always running on a slow or fast system, then modifying the Controller's default timeout using this method may be appropriate. If controlling a slow or fast process or task, then passing the explicit duration and timeUnit parameters may be most appropriate. The default for Controller is 5000 of TimeUnit.MILLISECONDS.

        Parameters:

        `duration` -

        `timeUnit` -

    -   ### setLogLevel

        public void setLogLevel([Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") logLevel)

        Set desired logging level. The log levels of the Controller defaults to LogLevel.INFO.

        Parameters:

        `logLevel` -

    -   ### enableLogToLogger

        public void enableLogToLogger(boolean state)

        Set whether logging should be done to the logger (Log4J) as well as recorded. Note: this controls only logging from the Controller classes.

        Parameters:

        `state` - true to log controller messages to logger; true by default

    -   ### clearLog

        public void clearLog()

        Clear the retrievable log.

    -   ### log

        protected void log([Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") logLevel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)

        Record the log messages in this Controller's log and send it to the external (e.g., log4j) logger. If a log message is done at LogLevel.DISABLED, then it is sent to the external logger at DEBUG level; this is never done by the Appian Controller objects.

        Parameters:

        `logLevel` - of the message; this is compared against the Controller's log level to see if the log should be done.

        `message` - the textual log message

    -   ### getLog

        public [Controller.LogElement](Controller.LogElement.html "class in com.appiancorp.suiteapi.process.test")\[\] getLog()

        Returns:

        log recorded by this Controller session

    -   ### getPerformanceSummary

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPerformanceSummary()

        Get a textual performance summary. Performance logging must be enabled for this to return data.

        Returns:

        human readable performance summary collected by the controller, including timings and iterations of calls made by the Controller

    -   ### enablePerformanceLogging

        public void enablePerformanceLogging(boolean state)

        Enable or disable performance logging, regardless of logging settings. Performance logging is enabled by the logger's (log4j's) perf.controller attribute in log4j.properties by default. This method override the logger's property setting.

        Parameters:

        `state` - true to enable, false to disable

    -   ### yieldWithLog

        protected void yieldWithLog(long duration, [TimeUnit](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/TimeUnit.html "class or interface in java.util.concurrent") timeUnit, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)

        Yield for the given time, logging a delay message at LogLevel.INFO.

        Parameters:

        `duration` - time in timeUnits

        `timeUnit` - meaning of timeUnit

        `message` - to include in log message