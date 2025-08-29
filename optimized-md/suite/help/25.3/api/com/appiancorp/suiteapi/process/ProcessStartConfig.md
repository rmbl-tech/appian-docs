---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessStartConfig.html
original_path: api/com/appiancorp/suiteapi/process/ProcessStartConfig.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessStartConfig

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.ProcessStartConfig

* * *

public class ProcessStartConfig extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Specifies options and configurations that control behavior when starting a process.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessStartConfig](#%3Cinit%3E\(\))()`

    Instantiate a `ProcessStartConfig` using default values for all configurations.

    `[ProcessStartConfig](#%3Cinit%3E\(com.appiancorp.suiteapi.process.ProcessVariable%5B%5D\))([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[] processParameters)`

    Instantiate a `ProcessStartConfig` with the given process parameters.

    `[ProcessStartConfig](#%3Cinit%3E\(com.appiancorp.suiteapi.process.ProcessVariable%5B%5D,java.lang.String,java.lang.Long\))([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[] processParameters, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelVersion, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId)`

    Instantiate a `ProcessStartConfig` with the given process parameters, process model version and priority id.

    `[ProcessStartConfig](#%3Cinit%3E\(com.appiancorp.suiteapi.process.ProcessVariable%5B%5D,java.lang.String,java.lang.Long,int\))([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[] processParameters, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelVersion, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId, int depth)`

    Instantiate a `ProcessStartConfig` with the given process parameters, process model version and priority id.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[getDepth](#getDepth\(\))()`

    Get the depth of the current process

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPriorityId](#getPriorityId\(\))()`

    Get the priority id to use when starting the process.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessModelVersion](#getProcessModelVersion\(\))()`

    Get the process model version to use when starting the process.

    `[ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessParameters](#getProcessParameters\(\))()`

    Get the process parameters that will be used when starting the process.

    `void`

    `[setDepth](#setDepth\(int\))(int depth)`

    Set the current process depth

    `void`

    `[setPriorityId](#setPriorityId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId)`

    Set the priority id to use when starting the process.

    `void`

    `[setProcessModelVersion](#setProcessModelVersion\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelVersion)`

    Set the process model version to use when starting the process.

    `void`

    `[setProcessParameters](#setProcessParameters\(com.appiancorp.suiteapi.process.ProcessVariable%5B%5D\))([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[] processParameters)`

    Set the process parameters to use when starting the process.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessStartConfig

        public ProcessStartConfig()

        Instantiate a `ProcessStartConfig` using default values for all configurations.

    -   ### ProcessStartConfig

        public ProcessStartConfig([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] processParameters)

        Instantiate a `ProcessStartConfig` with the given process parameters. Default values will be used for all other configurations.

        Parameters:

        `processParameters` - The process parameters to use when starting the process. The following fields must be populated for each `ProcessVariable` object: `name`, `value`, `instanceType`.

    -   ### ProcessStartConfig

        public ProcessStartConfig([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] processParameters, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelVersion, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId)

        Instantiate a `ProcessStartConfig` with the given process parameters, process model version and priority id.

        Parameters:

        `processParameters` - The process parameters to use when starting the process. The following fields must be populated for each `ProcessVariable` object: `name`, `value`, `instanceType`.

        `processModelVersion` - The process model version to use when starting the process (use [`AbstractProcessModel.LATEST_PUBLISHED_VERSION`](AbstractProcessModel.html#LATEST_PUBLISHED_VERSION) to start the latest published version of the model)

        `priorityId` - The priority id to use when starting the process (null means use the default).

    -   ### ProcessStartConfig

        public ProcessStartConfig([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] processParameters, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelVersion, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId, int depth)

        Instantiate a `ProcessStartConfig` with the given process parameters, process model version and priority id.

        Parameters:

        `processParameters` - The process parameters to use when starting the process. The following fields must be populated for each `ProcessVariable` object: `name`, `value`, `instanceType`.

        `processModelVersion` - The process model version to use when starting the process (use [`AbstractProcessModel.LATEST_PUBLISHED_VERSION`](AbstractProcessModel.html#LATEST_PUBLISHED_VERSION) to start the latest published version of the model)

        `priorityId` - The priority id to use when starting the process (null means use the default).

        `depth` - The current subprocess depth. Top level is 0

-   ## Method Details

    -   ### getPriorityId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPriorityId()

        Get the priority id to use when starting the process. Defaults to null, which means use the default priority id.

        Returns:

        the priority id

    -   ### setPriorityId

        public void setPriorityId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") priorityId)

        Set the priority id to use when starting the process.

        Parameters:

        `priorityId` - the priority id (null means use the default)

    -   ### getProcessModelVersion

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessModelVersion()

        Get the process model version to use when starting the process. Defaults to the latest published version if not set.

        Returns:

        the process model version

    -   ### setProcessModelVersion

        public void setProcessModelVersion([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelVersion)

        Set the process model version to use when starting the process.

        Parameters:

        `processModelVersion` - the process model version (use [`AbstractProcessModel.LATEST_PUBLISHED_VERSION`](AbstractProcessModel.html#LATEST_PUBLISHED_VERSION) to start the latest published version of the model)

    -   ### getProcessParameters

        public [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getProcessParameters()

        Get the process parameters that will be used when starting the process.

        Returns:

        the process parameters

    -   ### setProcessParameters

        public void setProcessParameters([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] processParameters)

        Set the process parameters to use when starting the process. If using a process variable of an Appian type, do not set the value to that object but instead to the corresponding primitive. For instance, do not assign a User process variable a `User` object. Instead, assign that process variable a `String` containing the username. Likewise, assign a process variable of type Group should be assigned a `Long`, etc. The exception to this rule is the People type. Process variables of type People should be assigned a `LocalObject`. Only the values are used for passed parameters, not expressions; expressions must be set on the process model at design time.

        Parameters:

        `processParameters` - The following fields must be populated for each `ProcessVariable` object: `name`, `value`, `instanceType`

    -   ### getDepth

        public int getDepth()

        Get the depth of the current process

        Returns:

        the current depth

    -   ### setDepth

        public void setDepth(int depth)

        Set the current process depth

        Parameters:

        `depth` - the current process depth