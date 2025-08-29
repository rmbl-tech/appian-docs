---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/exceptions/ServiceException.html
original_path: api/com/appiancorp/services/exceptions/ServiceException.html
version: "25.3"
---

Package [com.appiancorp.services.exceptions](package-summary.html)

# Class ServiceException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[java.lang.RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")

com.appiancorp.asl3.servicefw.connect.ServiceException

com.appiancorp.services.exceptions.ServiceException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[UnsupportedServiceException](UnsupportedServiceException.html "class in com.appiancorp.services.exceptions")`

* * *

public class ServiceException extends com.appiancorp.asl3.servicefw.connect.ServiceException

This is an unchecked exception which occurs whenever there are unforeseen problems in execution of a request served through Appian Standard Library (ASL).

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.services.exceptions.ServiceException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ServiceException](#%3Cinit%3E\(\))()`

    Constructs a new `ServiceException` with empty detail message.

    `[ServiceException](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") msg_)`

    Constructs a `ServiceException` with the specified detail message.

    `[ServiceException](#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") msg_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause_)`

    Constructs a new `ServiceException` with the specified detail message and cause.

    `[ServiceException](#%3Cinit%3E\(java.lang.Throwable\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause_)`

    Constructs a new ServiceException with the specified cause and a detail message of (cause==null ?

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomMessage](#getCustomMessage\(\))()`

    This method creates a string representation of custom exception message by appending the calling method, method parameters and calling class.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessage](#getMessage\(\))()`

    Returns the string representation of exception message.

    `void`

    `[setRequest](#setRequest\(java.lang.reflect.Method,java.lang.Object%5B%5D\))([Method](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/reflect/Method.html "class or interface in java.lang.reflect") m_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] p_)`

    This method stores the `Method` and the parameters of the calling fuction.

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getLocalizedMessage](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getLocalizedMessage\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#toString\(\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ServiceException

        public ServiceException()

        Constructs a new `ServiceException` with empty detail message.

    -   ### ServiceException

        public ServiceException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") msg\_)

        Constructs a `ServiceException` with the specified detail message.

        Parameters:

        `msg_` - the detail message

    -   ### ServiceException

        public ServiceException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") msg\_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause\_)

        Constructs a new `ServiceException` with the specified detail message and cause.

        Parameters:

        `msg_` - the detail message (which is saved for later retrieval by the `Throwable.getMessage()` method).

        `cause_` - the cause (which is saved for later retrieval by the `Throwable.getCause()` method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.)

    -   ### ServiceException

        public ServiceException([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause\_)

        Constructs a new ServiceException with the specified cause and a detail message of (cause==null ? null : cause.toString()) (which typically contains the class and detail message of cause). This constructor is useful for exceptions that are little more than wrappers for other throwables

        Parameters:

        `cause_` - the cause (which is saved for later retrieval by the `Throwable.getCause()` method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.)

-   ## Method Details

    -   ### setRequest

        public void setRequest([Method](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/reflect/Method.html "class or interface in java.lang.reflect") m\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] p\_)

        This method stores the `Method` and the parameters of the calling fuction. This method and parameters are later used to create a custom exception message.

        Overrides:

        `setRequest` in class `com.appiancorp.asl3.servicefw.connect.ServiceException`

        Parameters:

        `m_` - calling method

        `p_` - parameter array of all parameters for calling method

        See Also:

        -   [`getCustomMessage()`](#getCustomMessage\(\))

    -   ### getMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessage()

        Returns the string representation of exception message.

        Overrides:

        `getMessage` in class `com.appiancorp.asl3.servicefw.connect.ServiceException`

        Returns:

        the string representation of exception message.

    -   ### getCustomMessage

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomMessage()

        This method creates a string representation of custom exception message by appending the calling method, method parameters and calling class.

        Overrides:

        `getCustomMessage` in class `com.appiancorp.asl3.servicefw.connect.ServiceException`

        Returns:

        String representation of the custom exception message