---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ActivityProperties.html
original_path: api/com/appiancorp/suiteapi/process/ActivityProperties.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ActivityProperties

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.ActivityProperties

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ActivityProperties extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Container for the properties of an activity. This bean holds references to the task properties, process properties, and process model properties for a task, the process it is in, and the model for that process.

See Also:

-   [`ProcessModelProperties`](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")
-   [`ProcessProperties`](ProcessProperties.html "class in com.appiancorp.suiteapi.process")
-   [`TaskProperties`](TaskProperties.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ActivityProperties)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ActivityProperties](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModelProperties](#getProcessModelProperties\(\))()`

    Gets the properties of the underlying ProcessModel of process to which this activity is part of.

    `[ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessProperties](#getProcessProperties\(\))()`

    Gets the properties of process to which this activity belongs to.

    `[TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getTaskProperties](#getTaskProperties\(\))()`

    Gets the properties of task

    `void`

    `[setProcessModelProperties](#setProcessModelProperties\(com.appiancorp.suiteapi.process.ProcessModelProperties\))([ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") processModelProperties_)`

    Sets the properties of underlying ProcessModel of process to which this task belongs to

    `void`

    `[setProcessProperties](#setProcessProperties\(com.appiancorp.suiteapi.process.ProcessProperties\))([ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process") processProperties_)`

    Sets the properties of process to which this activity belongs to

    `void`

    `[setTaskProperties](#setTaskProperties\(com.appiancorp.suiteapi.process.TaskProperties\))([TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process") taskProperties_)`

    Sets the properties of task

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns the String representation of the `ActivityProperties`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ActivityProperties

        public ActivityProperties()

-   ## Method Details

    -   ### getProcessModelProperties

        public [ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") getProcessModelProperties()

        Gets the properties of the underlying ProcessModel of process to which this activity is part of.

        Returns:

        the properties of process model

    -   ### setProcessModelProperties

        public void setProcessModelProperties([ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") processModelProperties\_)

        Sets the properties of underlying ProcessModel of process to which this task belongs to

        Parameters:

        `processModelProperties_` - `ProcessModelProperties` to set

    -   ### getProcessProperties

        public [ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process") getProcessProperties()

        Gets the properties of process to which this activity belongs to.

        Returns:

        properties of process

    -   ### setProcessProperties

        public void setProcessProperties([ProcessProperties](ProcessProperties.html "class in com.appiancorp.suiteapi.process") processProperties\_)

        Sets the properties of process to which this activity belongs to

        Parameters:

        `processProperties_` - `ProcessProperties` to set

    -   ### getTaskProperties

        public [TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process") getTaskProperties()

        Gets the properties of task

        Returns:

        properties of task

    -   ### setTaskProperties

        public void setTaskProperties([TaskProperties](TaskProperties.html "class in com.appiancorp.suiteapi.process") taskProperties\_)

        Sets the properties of task

        Parameters:

        `taskProperties_` - `TaskProperties` to set

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Returns the String representation of the `ActivityProperties`

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`