---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/NodeActionProcessResult.html
original_path: api/com/appiancorp/suiteapi/process/NodeActionProcessResult.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class NodeActionProcessResult

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.NodeActionProcessResult

* * *

public class NodeActionProcessResult extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

NodeActionProcessResult represents the result of a node action, e.g., starting a node as a task, in the context of a process.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[nodeIds](#nodeIds)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[nodeNames](#nodeNames)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[nodeUuids](#nodeUuids)`

    `protected [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[resultCodes](#resultCodes)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[NodeActionProcessResult](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getNodeIds](#getNodeIds\(\))()`

    The id of the node.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getNodeNames](#getNodeNames\(\))()`

    The name of the affected nodes, localized if appropriate.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getNodeUuids](#getNodeUuids\(\))()`

    The uuid of the node.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessId](#getProcessId\(\))()`

    The process id affected by the action.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getResultCodes](#getResultCodes\(\))()`

    The result code from the action.

    `void`

    `[setNodeIds](#setNodeIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] nodeIds)`

    The id of the node.

    `void`

    `[setNodeNames](#setNodeNames\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] nodeNames)`

    The name of the affected nodes, localized if appropriate.

    `void`

    `[setNodeUuids](#setNodeUuids\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] nodeUuids)`

    The uuid of the node.

    `void`

    `[setProcessId](#setProcessId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)`

    The process id affected by the action.

    `void`

    `[setResultCodes](#setResultCodes\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] resultCodes)`

    The result code from the action.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Convert this object to String for debugging purposes.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### nodeUuids

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] nodeUuids

    -   ### nodeIds

        protected [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] nodeIds

    -   ### nodeNames

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] nodeNames

    -   ### resultCodes

        protected [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] resultCodes

-   ## Constructor Details

    -   ### NodeActionProcessResult

        public NodeActionProcessResult()

-   ## Method Details

    -   ### getNodeUuids

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getNodeUuids()

        The uuid of the node.

    -   ### setNodeUuids

        public void setNodeUuids([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] nodeUuids)

        The uuid of the node.

    -   ### getNodeIds

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getNodeIds()

        The id of the node.

    -   ### setNodeIds

        public void setNodeIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] nodeIds)

        The id of the node.

    -   ### getNodeNames

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getNodeNames()

        The name of the affected nodes, localized if appropriate.

    -   ### setNodeNames

        public void setNodeNames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] nodeNames)

        The name of the affected nodes, localized if appropriate.

    -   ### getResultCodes

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getResultCodes()

        The result code from the action.

        See Also:

        -   [`ProcessExecutionService.RESULT_CODE_SUCCESS`](ProcessExecutionService.html#RESULT_CODE_SUCCESS)
        -   [`ProcessExecutionService.RESULT_CODE_INVALID_OPERATION`](ProcessExecutionService.html#RESULT_CODE_INVALID_OPERATION)

    -   ### setResultCodes

        public void setResultCodes([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] resultCodes)

        The result code from the action.

        See Also:

        -   [`ProcessExecutionService.RESULT_CODE_SUCCESS`](ProcessExecutionService.html#RESULT_CODE_SUCCESS)
        -   [`ProcessExecutionService.RESULT_CODE_INVALID_OPERATION`](ProcessExecutionService.html#RESULT_CODE_INVALID_OPERATION)

    -   ### getProcessId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessId()

        The process id affected by the action.

    -   ### setProcessId

        public void setProcessId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)

        The process id affected by the action.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Convert this object to String for debugging purposes.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`