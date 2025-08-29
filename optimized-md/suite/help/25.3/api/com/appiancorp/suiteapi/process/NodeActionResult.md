---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/NodeActionResult.html
original_path: api/com/appiancorp/suiteapi/process/NodeActionResult.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class NodeActionResult

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.NodeActionResult

* * *

public class NodeActionResult extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

NodeActionResult contains all the results of NodeActions, e.g., starting a node as a task, grouped initially by process model. It also contains all the node UUIDs that were invalid, not found on any process execution engine.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[NodeActionResult](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[NodeActionProcessModelResult](NodeActionProcessModelResult.html "class in com.appiancorp.suiteapi.process")[]`

    `[getActionsPerProcessModel](#getActionsPerProcessModel\(\))()`

    The list of actions taken per process model.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getInvalidNodeUuids](#getInvalidNodeUuids\(\))()`

    The list of nodeUuids that were requested, but that were invalid.

    `[NodeActionProcessModelResult](NodeActionProcessModelResult.html "class in com.appiancorp.suiteapi.process")`

    `[getNodeActionProcessModelResult](#getNodeActionProcessModelResult\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId)`

    `[NodeActionProcessResult](NodeActionProcessResult.html "class in com.appiancorp.suiteapi.process")`

    `[getNodeActionProcessResult](#getNodeActionProcessResult\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)`

    Search through this object's NodeActionProcessModelResults to find the one with the given process id.

    `void`

    `[setActionsPerProcessModel](#setActionsPerProcessModel\(com.appiancorp.suiteapi.process.NodeActionProcessModelResult%5B%5D\))([NodeActionProcessModelResult](NodeActionProcessModelResult.html "class in com.appiancorp.suiteapi.process")[] actionsPerProcessModel)`

    The list of actions taken per process model.

    `void`

    `[setInvalidNodeUuids](#setInvalidNodeUuids\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] invalidNodeUuids)`

    The list of nodeUuids that were requested, but that were invalid.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Convert this object to String for debugging purposes.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### NodeActionResult

        public NodeActionResult()

-   ## Method Details

    -   ### getInvalidNodeUuids

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getInvalidNodeUuids()

        The list of nodeUuids that were requested, but that were invalid.

    -   ### setInvalidNodeUuids

        public void setInvalidNodeUuids([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] invalidNodeUuids)

        The list of nodeUuids that were requested, but that were invalid.

    -   ### getActionsPerProcessModel

        public [NodeActionProcessModelResult](NodeActionProcessModelResult.html "class in com.appiancorp.suiteapi.process")\[\] getActionsPerProcessModel()

        The list of actions taken per process model.

    -   ### setActionsPerProcessModel

        public void setActionsPerProcessModel([NodeActionProcessModelResult](NodeActionProcessModelResult.html "class in com.appiancorp.suiteapi.process")\[\] actionsPerProcessModel)

        The list of actions taken per process model.

    -   ### getNodeActionProcessModelResult

        public [NodeActionProcessModelResult](NodeActionProcessModelResult.html "class in com.appiancorp.suiteapi.process") getNodeActionProcessModelResult([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId)

        Parameters:

        `processModelId` -

        Returns:

        the NodeActionProcessModelResult of the given processModelId, or null if not found

    -   ### getNodeActionProcessResult

        public [NodeActionProcessResult](NodeActionProcessResult.html "class in com.appiancorp.suiteapi.process") getNodeActionProcessResult([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)

        Search through this object's NodeActionProcessModelResults to find the one with the given process id.

        Parameters:

        `processId` -

        Returns:

        the NodeActionProcessResult of the given processId, or null if not found

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Convert this object to String for debugging purposes.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`