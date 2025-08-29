---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/NodeActionProcessModelResult.html
original_path: api/com/appiancorp/suiteapi/process/NodeActionProcessModelResult.html
version: "25.3"
title: "Class NodeActionProcessModelResult"
page_id: "api/com/appiancorp/suiteapi/process/NodeActionProcessModelResult"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class NodeActionProcessModelResult

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.NodeActionProcessModelResult

* * *

public class NodeActionProcessModelResult extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

NodeActionProcessModelResult represents the result of a node action, e.g., starting a node as a task, in the context of a process model.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[NodeActionProcessModelResult](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[NodeActionProcessResult](NodeActionProcessResult.html "class in com.appiancorp.suiteapi.process")[]`

    `[getActions](#getActions\(\))()`

    Actions taken on each affected process of this process model, only set for visible process models.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getIgnoredNodeUuids](#getIgnoredNodeUuids\(\))()`

    Ignored UUIDs are set only for invisible process models.

    `[NodeActionProcessResult](NodeActionProcessResult.html "class in com.appiancorp.suiteapi.process")`

    `[getNodeActionProcessResult](#getNodeActionProcessResult\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessModelId](#getProcessModelId\(\))()`

    Process model id acted upon.

    `boolean`

    `[isProcessModelVisible](#isProcessModelVisible\(\))()`

    Is the process model visible according to the user's privilege and if the process model is enabled.

    `void`

    `[setActions](#setActions\(com.appiancorp.suiteapi.process.NodeActionProcessResult%5B%5D\))([NodeActionProcessResult](NodeActionProcessResult.html "class in com.appiancorp.suiteapi.process")[] actions)`

    Actions taken on each affected process of this process model, only set for visible process models.

    `void`

    `[setIgnoredNodeUuids](#setIgnoredNodeUuids\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] ignoredNodeUuids)`

    Ignored UUIDs are set only for invisible process models.

    `void`

    `[setProcessModelId](#setProcessModelId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId)`

    Process model id acted upon.

    `void`

    `[setProcessModelVisible](#setProcessModelVisible\(boolean\))(boolean processModelVisible)`

    Is the process model visible according to the user's privilege and if the process model is enabled.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Convert this object to String for debugging purposes.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### NodeActionProcessModelResult

        public NodeActionProcessModelResult()

-   ## Method Details

    -   ### getProcessModelId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessModelId()

        Process model id acted upon.

    -   ### setProcessModelId

        public void setProcessModelId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId)

        Process model id acted upon.

    -   ### isProcessModelVisible

        public boolean isProcessModelVisible()

        Is the process model visible according to the user's privilege and if the process model is enabled. If false, then no actions will be set.

    -   ### setProcessModelVisible

        public void setProcessModelVisible(boolean processModelVisible)

        Is the process model visible according to the user's privilege and if the process model is enabled. If false, then no actions will be set.

    -   ### getActions

        public [NodeActionProcessResult](NodeActionProcessResult.html "class in com.appiancorp.suiteapi.process")\[\] getActions()

        Actions taken on each affected process of this process model, only set for visible process models. Actions will be null if there were no processes to affect or the process model is invisible.

    -   ### setActions

        public void setActions([NodeActionProcessResult](NodeActionProcessResult.html "class in com.appiancorp.suiteapi.process")\[\] actions)

        Actions taken on each affected process of this process model, only set for visible process models.

    -   ### getIgnoredNodeUuids

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getIgnoredNodeUuids()

        Ignored UUIDs are set only for invisible process models.

    -   ### setIgnoredNodeUuids

        public void setIgnoredNodeUuids([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] ignoredNodeUuids)

        Ignored UUIDs are set only for invisible process models.

    -   ### getNodeActionProcessResult

        public [NodeActionProcessResult](NodeActionProcessResult.html "class in com.appiancorp.suiteapi.process") getNodeActionProcessResult([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)

        Parameters:

        `processId` -

        Returns:

        the NodeActionProcessResult of the given processId, or null if not found

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Convert this object to String for debugging purposes.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`