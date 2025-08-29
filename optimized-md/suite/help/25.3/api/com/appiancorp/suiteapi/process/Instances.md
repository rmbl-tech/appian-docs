---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Instances.html
original_path: api/com/appiancorp/suiteapi/process/Instances.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Instances

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.Instances

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Instances extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Class defines how many instances of the node will be created. The number to be spawned can be specified as a constant, value of process variable, length of an Array type process variable, number of assignee in the assignment pool or by an expression.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Instances)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[SPAWN_COUNT_ASSIGNEE_COUNT](#SPAWN_COUNT_ASSIGNEE_COUNT)`

    Number of spawned instances should be equal to the number of possible assignees in the assignment pool.

    `static final int`

    `[SPAWN_COUNT_CONSTANT](#SPAWN_COUNT_CONSTANT)`

    Number of spawned instances is specified using a constant.

    `static final int`

    `[SPAWN_COUNT_EXPRESSION](#SPAWN_COUNT_EXPRESSION)`

    Number of spawned instances is specified using an expression.

    `static final int`

    `[SPAWN_COUNT_PV_LENGTH](#SPAWN_COUNT_PV_LENGTH)`

    Number of spawned instances is specified as number of values in a Process Variable of type multiple elements (eg Array, Vector).

    `static final int`

    `[SPAWN_COUNT_PV_VALUE](#SPAWN_COUNT_PV_VALUE)`

    Number of spawned instances is specified using a process variable, whose value evaluates to a number

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Instances](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExpression](#getExpression\(\))()`

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getInstanceType](#getInstanceType\(\))()`

    `boolean`

    `[getNextSpawnNew](#getNextSpawnNew\(\))()`

    Returns whether multiple instances of nodes should be created.

    `void`

    `[setExpression](#setExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression_)`

    Sets the expression about how to spawn multiple instances of node.

    `void`

    `[setInstanceType](#setInstanceType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") instanceType_)`

    Sets how the number of instances is specified.

    `void`

    `[setNextSpawnNew](#setNextSpawnNew\(boolean\))(boolean nextSpawnType_)`

    Sets Whether many instances of nodes should be created

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Generates an XML representation of this object (including all child objects).

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends the XML representation of the `Instances` to the given buffer.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### SPAWN\_COUNT\_CONSTANT

        public static final int SPAWN\_COUNT\_CONSTANT

        Number of spawned instances is specified using a constant.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Instances.SPAWN_COUNT_CONSTANT)

    -   ### SPAWN\_COUNT\_PV\_VALUE

        public static final int SPAWN\_COUNT\_PV\_VALUE

        Number of spawned instances is specified using a process variable, whose value evaluates to a number

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Instances.SPAWN_COUNT_PV_VALUE)

    -   ### SPAWN\_COUNT\_PV\_LENGTH

        public static final int SPAWN\_COUNT\_PV\_LENGTH

        Number of spawned instances is specified as number of values in a Process Variable of type multiple elements (eg Array, Vector).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Instances.SPAWN_COUNT_PV_LENGTH)

    -   ### SPAWN\_COUNT\_ASSIGNEE\_COUNT

        public static final int SPAWN\_COUNT\_ASSIGNEE\_COUNT

        Number of spawned instances should be equal to the number of possible assignees in the assignment pool.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Instances.SPAWN_COUNT_ASSIGNEE_COUNT)

    -   ### SPAWN\_COUNT\_EXPRESSION

        public static final int SPAWN\_COUNT\_EXPRESSION

        Number of spawned instances is specified using an expression.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Instances.SPAWN_COUNT_EXPRESSION)

-   ## Constructor Details

    -   ### Instances

        public Instances()

-   ## Method Details

    -   ### getExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExpression()

        Returns:

        the expression that specifies the how the instances of nodes are to be spawned

    -   ### setExpression

        public void setExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression\_)

        Sets the expression about how to spawn multiple instances of node.

    -   ### getInstanceType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getInstanceType()

        Returns:

        how the instances of node are to be spawned. It is one of the SPAWN\_COUNT\_XXX Constants.

    -   ### setInstanceType

        public void setInstanceType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") instanceType\_)

        Sets how the number of instances is specified.

        See Also:

        -   [`SPAWN_COUNT_CONSTANT`](#SPAWN_COUNT_CONSTANT)
        -   [`SPAWN_COUNT_PV_VALUE`](#SPAWN_COUNT_PV_VALUE)
        -   [`SPAWN_COUNT_PV_LENGTH`](#SPAWN_COUNT_PV_LENGTH)
        -   [`SPAWN_COUNT_ASSIGNEE_COUNT`](#SPAWN_COUNT_ASSIGNEE_COUNT)
        -   [`SPAWN_COUNT_EXPRESSION`](#SPAWN_COUNT_EXPRESSION)

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(\))`

        Generates an XML representation of this object (including all child objects). A typical implementation is to create a new `StringBuilder` and call `toXML( StringBuilder )` on it.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        converts this `Instances` to XML and returns it as a String

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Appends the XML representation of the `Instances` to the given buffer.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.

    -   ### getNextSpawnNew

        public boolean getNextSpawnNew()

        Returns whether multiple instances of nodes should be created.

        Returns:

        `true` if multiple instances are to be created, `false` otherwise.

    -   ### setNextSpawnNew

        public void setNextSpawnNew(boolean nextSpawnType\_)

        Sets Whether many instances of nodes should be created

        Parameters:

        `nextSpawnType_` - `true` if many instances of nodes are to spwaned, `false` otherwise.