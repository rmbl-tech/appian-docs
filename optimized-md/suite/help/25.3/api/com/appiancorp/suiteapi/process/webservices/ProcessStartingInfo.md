---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/webservices/ProcessStartingInfo.html
original_path: api/com/appiancorp/suiteapi/process/webservices/ProcessStartingInfo.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.webservices](package-summary.html)

# Class ProcessStartingInfo

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.webservices.ProcessStartingInfo

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessStartingInfo extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Bean for process starting info

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.webservices.ProcessStartingInfo)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessStartingInfo](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ProcessVariable](../ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getParameters](#getParameters\(\))()`

    Gets the parameters for the process model

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessModelId](#getProcessModelId\(\))()`

    Gets the process model id

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessModelServiceName](#getProcessModelServiceName\(\))()`

    Gets the process model service name

    `void`

    `[setParameters](#setParameters\(com.appiancorp.suiteapi.process.ProcessVariable%5B%5D\))([ProcessVariable](../ProcessVariable.html "class in com.appiancorp.suiteapi.process")[] parameters_)`

    Sets the parameters for the process model

    `void`

    `[setProcessModelId](#setProcessModelId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Sets the process model id

    `void`

    `[setProcessModelServiceName](#setProcessModelServiceName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelServiceName_)`

    Sets the process model service name

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessStartingInfo

        public ProcessStartingInfo()

-   ## Method Details

    -   ### getParameters

        public [ProcessVariable](../ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getParameters()

        Gets the parameters for the process model

        Returns:

        the parameters for the process model

    -   ### setParameters

        public void setParameters([ProcessVariable](../ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] parameters\_)

        Sets the parameters for the process model

        Parameters:

        `parameters_` - the parameters for the process model to set

        See Also:

        -   [`getParameters()`](#getParameters\(\))

    -   ### getProcessModelId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessModelId()

        Gets the process model id

        Returns:

        the process model id

    -   ### setProcessModelId

        public void setProcessModelId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_)

        Sets the process model id

        Parameters:

        `processModelId_` - the process model is to set

        See Also:

        -   [`getProcessModelId()`](#getProcessModelId\(\))

    -   ### getProcessModelServiceName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessModelServiceName()

        Gets the process model service name

        Returns:

        the process model service name

    -   ### setProcessModelServiceName

        public void setProcessModelServiceName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelServiceName\_)

        Sets the process model service name

        Parameters:

        `processModelServiceName_` - the process model service name to set

        See Also:

        -   [`getProcessModelServiceName()`](#getProcessModelServiceName\(\))