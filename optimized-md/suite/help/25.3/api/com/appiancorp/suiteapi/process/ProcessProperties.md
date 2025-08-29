---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessProperties.html
original_path: api/com/appiancorp/suiteapi/process/ProcessProperties.html
version: "25.3"
title: "Class ProcessProperties"
page_id: "api/com/appiancorp/suiteapi/process/ProcessProperties"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessProperties

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.ProcessProperties

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ProcessSummary](ProcessSummary.html "class in com.appiancorp.suiteapi.process")`

* * *

public class ProcessProperties extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

Holds the properties of a process.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessProperties)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessProperties](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[getDepth](#getDepth\(\))()`

    Retrieves the process depth

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getInitiator](#getInitiator\(\))()`

    Retrieves the process initiator

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[getPriority](#getPriority\(\))()`

    Retrieves the priority of the process.

    `void`

    `[setDepth](#setDepth\(int\))(int depth_)`

    Sets the process initiator

    `void`

    `[setInitiator](#setInitiator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") initiator_)`

    Sets the process initiator

    `void`

    `[setPriority](#setPriority\(com.appiancorp.suiteapi.process.Priority\))([Priority](Priority.html "class in com.appiancorp.suiteapi.process") priority_)`

    Sets the priority of the process

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the `Identity`.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessProperties

        public ProcessProperties()

-   ## Method Details

    -   ### getPriority

        public [Priority](Priority.html "class in com.appiancorp.suiteapi.process") getPriority()

        Retrieves the priority of the process. Priority can be changed due to in flight modification of the process.

        Returns:

        the priority

    -   ### setPriority

        public void setPriority([Priority](Priority.html "class in com.appiancorp.suiteapi.process") priority\_)

        Sets the priority of the process

        Parameters:

        `priority_` - the priority of the process

        See Also:

        -   [`getPriority()`](#getPriority\(\))

    -   ### getInitiator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getInitiator()

        Retrieves the process initiator

        Returns:

        the user who started the process

    -   ### setInitiator

        public void setInitiator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") initiator\_)

        Sets the process initiator

        Parameters:

        `initiator_` - user who started the process

    -   ### getDepth

        public int getDepth()

        Retrieves the process depth

        Returns:

        the current process depth

    -   ### setDepth

        public void setDepth(int depth\_)

        Sets the process initiator

        Parameters:

        `depth_` - the depth of the process

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Description copied from class: `[Identity](../common/Identity.html#toString\(\))`

        Returns a string representation of the `Identity`. In general, the toString method returns a string that "textually represents" this object.

        Overrides:

        `[toString](../common/Identity.html#toString\(\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        String representation of the object