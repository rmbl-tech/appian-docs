---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessException.html
original_path: api/com/appiancorp/suiteapi/process/ProcessException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.ProcessException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessException extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Contains metadata about an exception (error) that occurred while a process was executing.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessException](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ProcessExceptionType](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process")`

    `[getExceptionType](#getExceptionType\(\))()`

    Gets the type metadata for this exception.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getResolvedTime](#getResolvedTime\(\))()`

    Gets the tiem at which this exception was resolved.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getResolver](#getResolver\(\))()`

    Gets the user who resolved this exception.

    `boolean`

    `[isResolved](#isResolved\(\))()`

    Determines whether this exception has been resolved.

    `void`

    `[setExceptionType](#setExceptionType\(com.appiancorp.suiteapi.process.ProcessExceptionType\))([ProcessExceptionType](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") exceptionType_)`

    Sets the type metadata for this exception.

    `void`

    `[setResolvedTime](#setResolvedTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") resolvedTime_)`

    Sets the tiem at which this exception was resolved.

    `void`

    `[setResolver](#setResolver\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") resolver_)`

    Sets the user who resolved this exception.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessException

        public ProcessException()

-   ## Method Details

    -   ### getExceptionType

        public [ProcessExceptionType](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") getExceptionType()

        Gets the type metadata for this exception.

        Returns:

        the type of exception that occurred.

    -   ### setExceptionType

        public void setExceptionType([ProcessExceptionType](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") exceptionType\_)

        Sets the type metadata for this exception.

        Parameters:

        `exceptionType_` - the type of exception that occurred.

    -   ### isResolved

        public boolean isResolved()

        Determines whether this exception has been resolved.

        Returns:

        `true` if this exception has been resolved, `false` otherwise.

    -   ### getResolvedTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getResolvedTime()

        Gets the tiem at which this exception was resolved.

        Returns:

        the time at which this exception was resolved, or `null` if it has not yet been resolved.

    -   ### setResolvedTime

        public void setResolvedTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") resolvedTime\_)

        Sets the tiem at which this exception was resolved.

        Parameters:

        `resolvedTime_` - the time at which this exception was resolved, or `null` if it has not yet been resolved.

    -   ### getResolver

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getResolver()

        Gets the user who resolved this exception.

        Returns:

        the username of the person who resolved the exception, or `null` if the exception has not yet been resolved.

    -   ### setResolver

        public void setResolver([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") resolver\_)

        Sets the user who resolved this exception.

        Parameters:

        `resolver_` - the username of the person who resolved the exception, or `null` if the exception has not yet been resolved.