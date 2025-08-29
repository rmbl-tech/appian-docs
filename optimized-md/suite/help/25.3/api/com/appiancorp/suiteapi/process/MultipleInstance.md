---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/MultipleInstance.html
original_path: api/com/appiancorp/suiteapi/process/MultipleInstance.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class MultipleInstance

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.MultipleInstance

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class MultipleInstance extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

The class includes the multiple instance execution configuration of the node. Multiple instances of nodes can be executed because of Spawning and Recurrence.

See Also:

-   [`Spawning`](Spawning.html "class in com.appiancorp.suiteapi.process")
-   [`Recurrence`](Recurrence.html "class in com.appiancorp.suiteapi.process")
-   [`RecurrenceInstance`](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.MultipleInstance)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[MultipleInstance](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[Recurrence](Recurrence.html "class in com.appiancorp.suiteapi.process")`

    `[getRecurrence](#getRecurrence\(\))()`

    `[RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process")`

    `[getRecurrenceInstance](#getRecurrenceInstance\(\))()`

    `[Spawning](Spawning.html "class in com.appiancorp.suiteapi.process")`

    `[getSpawning](#getSpawning\(\))()`

    `void`

    `[setRecurrence](#setRecurrence\(com.appiancorp.suiteapi.process.Recurrence\))([Recurrence](Recurrence.html "class in com.appiancorp.suiteapi.process") recurrenceConfiguration_)`

    Sets the recurrence configuration of the node

    `void`

    `[setRecurrenceInstance](#setRecurrenceInstance\(com.appiancorp.suiteapi.process.RecurrenceInstance\))([RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process") rec_)`

    Sets the `RecurrenceInstance` configuration of the node.

    `void`

    `[setSpawning](#setSpawning\(com.appiancorp.suiteapi.process.Spawning\))([Spawning](Spawning.html "class in com.appiancorp.suiteapi.process") spawningConfiguration_)`

    Sets the spawning configuration of the node.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### MultipleInstance

        public MultipleInstance()

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### getRecurrence

        public [Recurrence](Recurrence.html "class in com.appiancorp.suiteapi.process") getRecurrence()

        Returns:

        Returns the recurrence configuration of the node. Null if the node is not set to recur.

    -   ### setRecurrence

        public void setRecurrence([Recurrence](Recurrence.html "class in com.appiancorp.suiteapi.process") recurrenceConfiguration\_)

        Sets the recurrence configuration of the node

    -   ### getSpawning

        public [Spawning](Spawning.html "class in com.appiancorp.suiteapi.process") getSpawning()

        Returns:

        Returns the `Spawning` configuration of the node. Null if the node is not set to spawn.

    -   ### setSpawning

        public void setSpawning([Spawning](Spawning.html "class in com.appiancorp.suiteapi.process") spawningConfiguration\_)

        Sets the spawning configuration of the node. Null if the node is not set to spawn.

    -   ### getRecurrenceInstance

        public [RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process") getRecurrenceInstance()

        Returns:

        `RecurrenceInstance` information of the node. Null if no instance configuration set.

    -   ### setRecurrenceInstance

        public void setRecurrenceInstance([RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process") rec\_)

        Sets the `RecurrenceInstance` configuration of the node.