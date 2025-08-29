---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/BulkNodeOption.html
original_path: api/com/appiancorp/suiteapi/process/BulkNodeOption.html
version: "25.3"
title: "Enum Class BulkNodeOption"
page_id: "api/com/appiancorp/suiteapi/process/BulkNodeOption"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Enum Class BulkNodeOption

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")\>

com.appiancorp.suiteapi.process.BulkNodeOption

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")>`, `[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant")`

* * *

public enum BulkNodeOption extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")\>

BulkNodeOption This provides options to fine-tune the behavior of the bulk node process execution methods.

See Also:

-   [`ProcessExecutionService.startAllNodes(String[], Long[], BulkNodeOption...)`](ProcessExecutionService.html#startAllNodes\(java.lang.String%5B%5D,java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.BulkNodeOption...\))
-   [`ProcessExecutionService.restartAllNodes(String[], Long[], BulkNodeOption...)`](ProcessExecutionService.html#restartAllNodes\(java.lang.String%5B%5D,java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.BulkNodeOption...\))

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[Enum.EnumDesc](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang") extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")>>`

-   ## Enum Constant Summary

    Enum Constants

    Enum Constant

    Description

    `[ACTIVE_RECURRENCE_NODES_SKIPPED](#ACTIVE_RECURRENCE_NODES_SKIPPED)`

    This is the default behavior for Recurrence nodes.

    `[GATEWAY_NODES_SKIPPED](#GATEWAY_NODES_SKIPPED)`

    This is the default behavior for Gateway nodes.

    `[MNI_STARTS_FROM_BEGINNING](#MNI_STARTS_FROM_BEGINNING)`

    This is the default behavior for MNI nodes.

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")`

    `[valueOf](#valueOf\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Returns the enum constant of this class with the specified name.

    `static [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")[]`

    `[values](#values\(\))()`

    Returns an array containing the constants of this enum class, in the order they are declared.

    ### Methods inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#clone\(\) "class or interface in java.lang"), [compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#compareTo\(E\) "class or interface in java.lang"), [describeConstable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#describeConstable\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#finalize\(\) "class or interface in java.lang"), [getDeclaringClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#getDeclaringClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#hashCode\(\) "class or interface in java.lang"), [name](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#name\(\) "class or interface in java.lang"), [ordinal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#ordinal\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#toString\(\) "class or interface in java.lang"), [valueOf](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#valueOf\(java.lang.Class,java.lang.String\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Enum Constant Details

    -   ### MNI\_STARTS\_FROM\_BEGINNING

        public static final [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process") MNI\_STARTS\_FROM\_BEGINNING

        This is the default behavior for MNI nodes. When this option is active, a node with MNI (Multiple Node Instances) starts from the beginning. Example: If a node is currently repeated 100 times, but has only repeated 50 times so far, then it will do another 100 times when started from the beginning.

    -   ### ACTIVE\_RECURRENCE\_NODES\_SKIPPED

        public static final [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process") ACTIVE\_RECURRENCE\_NODES\_SKIPPED

        This is the default behavior for Recurrence nodes. When this option is active, active recurrence nodes are skipped and thus will not be started or restarted.

    -   ### GATEWAY\_NODES\_SKIPPED

        public static final [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process") GATEWAY\_NODES\_SKIPPED

        This is the default behavior for Gateway nodes. When this option is active, gateway nodes (logic nodes, such as And and Or) are skipped and thus will not be started or restarted.

-   ## Method Details

    -   ### values

        public static [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process")\[\] values()

        Returns an array containing the constants of this enum class, in the order they are declared.

        Returns:

        an array containing the constants of this enum class, in the order they are declared

    -   ### valueOf

        public static [BulkNodeOption](BulkNodeOption.html "enum class in com.appiancorp.suiteapi.process") valueOf([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Returns the enum constant of this class with the specified name. The string must match _exactly_ an identifier used to declare an enum constant in this class. (Extraneous whitespace characters are not permitted.)

        Parameters:

        `name` - the name of the enum constant to be returned.

        Returns:

        the enum constant with the specified name

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if this enum class has no constant with the specified name

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is null