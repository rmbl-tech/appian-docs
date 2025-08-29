---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Spawning.html
original_path: api/com/appiancorp/suiteapi/process/Spawning.html
version: "25.3"
title: "Class Spawning"
page_id: "api/com/appiancorp/suiteapi/process/Spawning"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Spawning

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.Spawning

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Spawning extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Nodes that are set to Spawn create multiple instances of themselves, when the process reaches that node. The number of nodes to be spawned is set using the Instances property. By default the nodes are executed in `EXEC_TYPE_SEQUENCE` but they can be configured to execute in `EXEC_TYPE_PARALLEL`. When the nodes are executed in parallel, how the flow if the process should continue also needs to be configured. There are four patterns available, which specify the behavior of the process flow then the nodes are executed in parallel. This class defines the spawning properties for a node.

See Also:

-   [`Instances`](Instances.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Spawning)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[EXEC_TYPE_PARALLEL](#EXEC_TYPE_PARALLEL)`

    Spawned nodes will be executed in parallel.

    `static final int`

    `[EXEC_TYPE_SEQUENTIAL](#EXEC_TYPE_SEQUENTIAL)`

    Spawned nodes will be executed in sequence.

    `static final int`

    `[PARALL_FLOW_COMPLEX_NODE](#PARALL_FLOW_COMPLEX_NODE)`

    The next node in the process is executed, only when the complex node expression evaluates to true.

    `static final int`

    `[PARALL_FLOW_RUN_ALL](#PARALL_FLOW_RUN_ALL)`

    When the spawned node are executing in parallel, the next node will be executed for all the spawned instances.

    `static final int`

    `[PARALL_FLOW_RUN_ONCE](#PARALL_FLOW_RUN_ONCE)`

    When the spawned nodes are executing in parallel, the next node in the process will be executed only once (for the spawned node instance that executes first).

    `static final int`

    `[PARALL_FLOW_WAIT_FOR_ALL](#PARALL_FLOW_WAIT_FOR_ALL)`

    When the spawned nodes are executing in parallel, the next node in the process is executed only when all the spawned instances have finished execution.

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Spawning](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getComplexNodeMergeExpression](#getComplexNodeMergeExpression\(\))()`

    Returns the expression that needs to be true when multiple instances of nodes are running in parallel and parallelMergeType is set to `PARALL_FLOW_COMPLEX_NODE`

    `[Instances](Instances.html "class in com.appiancorp.suiteapi.process")`

    `[getInstances](#getInstances\(\))()`

    Returns the `Instances` configuration.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getParallelMergeType](#getParallelMergeType\(\))()`

    Returns the merge property when the node instances are running in parallel.

    `boolean`

    `[isAllowMNIBatching](#isAllowMNIBatching\(\))()`

    Returns true if more than `ServerProcessCommonConfiguration#getMaxNodeInstances` nodes can be spawned in batches.

    `boolean`

    `[isParallelExecution](#isParallelExecution\(\))()`

    Returns true if the nodes will be executed in parallel.

    `void`

    `[setAllowMNIBatching](#setAllowMNIBatching\(boolean\))(boolean allowMNIBatching)`

    Sets if the MNI batching of more than `ServerProcessCommonConfiguration#getMaxNodeInstances` nodes is allowed

    `void`

    `[setComplexNodeMergeExpression](#setComplexNodeMergeExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") nmMergeExpression_)`

    Sets the expression that needs to be true when multiple instances of nodes are running in parallel and parallelMergeType is set to `PARALL_FLOW_COMPLEX_NODE`

    `void`

    `[setInstances](#setInstances\(com.appiancorp.suiteapi.process.Instances\))([Instances](Instances.html "class in com.appiancorp.suiteapi.process") instances_)`

    Sets the `Instances` configuration.

    `void`

    `[setParallelExecution](#setParallelExecution\(boolean\))(boolean executionType_)`

    Sets how the spawned nodes are executed.

    `void`

    `[setParallelMergeType](#setParallelMergeType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") parallelMergeType_)`

    Sets the merge property when the node instances are running in parallel.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Spawn instances equal to the difference in the number of elements in Process Variable array and the number of instances created in the previous execution.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object (including all child objects) to the given buffer.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### EXEC\_TYPE\_SEQUENTIAL

        public static final int EXEC\_TYPE\_SEQUENTIAL

        Spawned nodes will be executed in sequence.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Spawning.EXEC_TYPE_SEQUENTIAL)

    -   ### EXEC\_TYPE\_PARALLEL

        public static final int EXEC\_TYPE\_PARALLEL

        Spawned nodes will be executed in parallel.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Spawning.EXEC_TYPE_PARALLEL)

    -   ### PARALL\_FLOW\_RUN\_ALL

        public static final int PARALL\_FLOW\_RUN\_ALL

        When the spawned node are executing in parallel, the next node will be executed for all the spawned instances.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Spawning.PARALL_FLOW_RUN_ALL)

    -   ### PARALL\_FLOW\_RUN\_ONCE

        public static final int PARALL\_FLOW\_RUN\_ONCE

        When the spawned nodes are executing in parallel, the next node in the process will be executed only once (for the spawned node instance that executes first).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Spawning.PARALL_FLOW_RUN_ONCE)

    -   ### PARALL\_FLOW\_WAIT\_FOR\_ALL

        public static final int PARALL\_FLOW\_WAIT\_FOR\_ALL

        When the spawned nodes are executing in parallel, the next node in the process is executed only when all the spawned instances have finished execution.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Spawning.PARALL_FLOW_WAIT_FOR_ALL)

    -   ### PARALL\_FLOW\_COMPLEX\_NODE

        public static final int PARALL\_FLOW\_COMPLEX\_NODE

        The next node in the process is executed, only when the complex node expression evaluates to true.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Spawning.PARALL_FLOW_COMPLEX_NODE)

-   ## Constructor Details

    -   ### Spawning

        public Spawning()

-   ## Method Details

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Spawn instances equal to the difference in the number of elements in Process Variable array and the number of instances created in the previous execution.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        The XML representation of this object.

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(java.lang.StringBuilder\))`

        Appends an XML representation of this object (including all child objects) to the given buffer. Override for performance.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.

    -   ### isParallelExecution

        public boolean isParallelExecution()

        Returns true if the nodes will be executed in parallel.

        See Also:

        -   [`EXEC_TYPE_PARALLEL`](#EXEC_TYPE_PARALLEL)
        -   [`EXEC_TYPE_SEQUENTIAL`](#EXEC_TYPE_SEQUENTIAL)

    -   ### setParallelExecution

        public void setParallelExecution(boolean executionType\_)

        Sets how the spawned nodes are executed. The nodes can either be executed in parallel (all nodes execute at the same time) or in sequence.

        Parameters:

        `executionType_` - true if the nodes are set to execute in parallel

        See Also:

        -   [`EXEC_TYPE_PARALLEL`](#EXEC_TYPE_PARALLEL)
        -   [`EXEC_TYPE_SEQUENTIAL`](#EXEC_TYPE_SEQUENTIAL)

    -   ### isAllowMNIBatching

        public boolean isAllowMNIBatching()

        Returns true if more than `ServerProcessCommonConfiguration#getMaxNodeInstances` nodes can be spawned in batches.

    -   ### setAllowMNIBatching

        public void setAllowMNIBatching(boolean allowMNIBatching)

        Sets if the MNI batching of more than `ServerProcessCommonConfiguration#getMaxNodeInstances` nodes is allowed

        Parameters:

        `_allowMNIBatching` - true if the nodes are set to execute in parallel

    -   ### getInstances

        public [Instances](Instances.html "class in com.appiancorp.suiteapi.process") getInstances()

        Returns the `Instances` configuration.

        Returns:

        instances object

    -   ### setInstances

        public void setInstances([Instances](Instances.html "class in com.appiancorp.suiteapi.process") instances\_)

        Sets the `Instances` configuration.

        Parameters:

        `instances_` - instances object

    -   ### getComplexNodeMergeExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getComplexNodeMergeExpression()

        Returns the expression that needs to be true when multiple instances of nodes are running in parallel and parallelMergeType is set to `PARALL_FLOW_COMPLEX_NODE`

        Returns:

        String representing the expression

    -   ### setComplexNodeMergeExpression

        public void setComplexNodeMergeExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") nmMergeExpression\_)

        Sets the expression that needs to be true when multiple instances of nodes are running in parallel and parallelMergeType is set to `PARALL_FLOW_COMPLEX_NODE`

        Parameters:

        `nmMergeExpression_` - String representing the expression

    -   ### getParallelMergeType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getParallelMergeType()

        Returns the merge property when the node instances are running in parallel.

        Returns:

        Integer representing parallel merge type

        See Also:

        -   [`PARALL_FLOW_RUN_ONCE`](#PARALL_FLOW_RUN_ONCE)
        -   [`PARALL_FLOW_COMPLEX_NODE`](#PARALL_FLOW_COMPLEX_NODE)
        -   [`PARALL_FLOW_RUN_ALL`](#PARALL_FLOW_RUN_ALL)
        -   [`PARALL_FLOW_WAIT_FOR_ALL`](#PARALL_FLOW_WAIT_FOR_ALL)

    -   ### setParallelMergeType

        public void setParallelMergeType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") parallelMergeType\_)

        Sets the merge property when the node instances are running in parallel.

        Parameters:

        `parallelMergeType_` - integer representing parallel merge

        See Also:

        -   [`getParallelMergeType()`](#getParallelMergeType\(\))