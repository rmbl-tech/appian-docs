---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/TaskProperties.html
original_path: api/com/appiancorp/suiteapi/process/TaskProperties.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class TaskProperties

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.TaskProperties

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[TaskSummary](TaskSummary.html "class in com.appiancorp.suiteapi.process")`

* * *

public class TaskProperties extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Holds the properties of a task.

See Also:

-   [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.TaskProperties)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TaskProperties](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Return the description of the task.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayName](#getDisplayName\(\))()`

    Returns the display name of the task (ie the name of the task that should be displayed to the user on the UI).

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[getPriority](#getPriority\(\))()`

    Returns the priority of the task.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Returns the UUID of the object.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description_)`

    See [`getDescription()`](#getDescription\(\)).

    `void`

    `[setDisplayName](#setDisplayName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName_)`

    See [`getDisplayName()`](#getDisplayName\(\)).

    `void`

    `[setPriority](#setPriority\(com.appiancorp.suiteapi.process.Priority\))([Priority](Priority.html "class in com.appiancorp.suiteapi.process") priority_)`

    See [`getPriority()`](#getPriority\(\)).

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    See [`getUuid()`](#getUuid\(\)).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns the task properties as a string of the following format: " id=%getId()% name=%getName()% desc=%getDescription()% displayName=%geDisplayName%" (the methods between the % signs are the getters that are called to get the properties before returning them in the string).

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TaskProperties

        public TaskProperties()

-   ## Method Details

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Return the description of the task.

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description\_)

        See [`getDescription()`](#getDescription\(\)).

    -   ### getDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayName()

        Returns the display name of the task (ie the name of the task that should be displayed to the user on the UI).

    -   ### setDisplayName

        public void setDisplayName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName\_)

        See [`getDisplayName()`](#getDisplayName\(\)).

    -   ### getPriority

        public [Priority](Priority.html "class in com.appiancorp.suiteapi.process") getPriority()

        Returns the priority of the task.

    -   ### setPriority

        public void setPriority([Priority](Priority.html "class in com.appiancorp.suiteapi.process") priority\_)

        See [`getPriority()`](#getPriority\(\)).

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Returns the task properties as a string of the following format: " id=%getId()% name=%getName()% desc=%getDescription()% displayName=%geDisplayName%" (the methods between the % signs are the getters that are called to get the properties before returning them in the string).

        Overrides:

        `[toString](../common/Identity.html#toString\(\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        String representation of the object

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Description copied from class: `[Identity](../common/Identity.html#getUuid\(\))`

        Returns the UUID of the object.

        Overrides:

        `[getUuid](../common/Identity.html#getUuid\(\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        the UUID of the task. The UUID is assigned when a process model is saved and published.

        See Also:

        -   [`Identity.setUuid(String)`](../common/Identity.html#setUuid\(java.lang.String\))

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        See [`getUuid()`](#getUuid\(\)).

        Overrides:

        `[setUuid](../common/Identity.html#setUuid\(java.lang.String\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Parameters:

        `uuid` - UUID to set

        See Also:

        -   [`Identity.getUuid()`](../common/Identity.html#getUuid\(\))