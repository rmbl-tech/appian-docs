---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/upgrade/ProcessUpgrade.html
original_path: api/com/appiancorp/suiteapi/process/upgrade/ProcessUpgrade.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.upgrade](package-summary.html)

# Class ProcessUpgrade

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade

All Implemented Interfaces:

`[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")>`

* * *

public class ProcessUpgrade extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")\>

The outcome of an attempted upgrade of a process.

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static enum` 

    `[ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")`

    Represents the outcome of an attempted upgrade of a process.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessUpgrade](#%3Cinit%3E\(\))()`

    Creates a blank instance.

    `[ProcessUpgrade](#%3Cinit%3E\(java.lang.Long,com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade.Outcome\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId, [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") outcome)`

    Creates an instance with the specified process id and result code.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[compareTo](#compareTo\(com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade\))([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade") o)`

    Compares the specified object with this UpgradeProcessResult for order.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)`

    Compares the specified object with this one for equality.

    `[ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")`

    `[getOutcome](#getOutcome\(\))()`

    Gets the result code indicating the outcome of the attempted upgrade.

    `static [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")[]`

    `[getOutcomes](#getOutcomes\(com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade%5B%5D\))([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")[] upgrades)`

    Extracts the outcomes from the specified ProcessUpgrade objects.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessId](#getProcessId\(\))()`

    Gets the id of the process.

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getProcessIds](#getProcessIds\(com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade%5B%5D\))([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")[] upgrades)`

    Extracts the process ids from the specified ProcessUpgrade objects.

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getProcessIdsWithOutcome](#getProcessIdsWithOutcome\(com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade%5B%5D,com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade.Outcome...\))([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")[] upgrades, [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")... outcomes)`

    Extracts process ids from the specified ProcessUpgrade objects, filtering for those processes whose upgrade had one of the specified outcomes.

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns a hash code for the object.

    `boolean`

    `[isProcessInactive](#isProcessInactive\(\))()`

    Gets whether the process is inactive after the upgrade.

    `void`

    `[setOutcome](#setOutcome\(com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade.Outcome\))([ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") outcome)`

    Sets the result code indicating the outcome of the attempted upgrade.

    `void`

    `[setProcessId](#setProcessId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)`

    Sets the id of the process.

    `void`

    `[setProcessInactive](#setProcessInactive\(boolean\))(boolean isProcessInactive)`

    Sets whether the process is inactive after the upgrade.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessUpgrade

        public ProcessUpgrade()

        Creates a blank instance.

    -   ### ProcessUpgrade

        public ProcessUpgrade([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId, [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") outcome)

        Creates an instance with the specified process id and result code.

        Parameters:

        `processId` - the id of the process

        `outcome` - the code indicating the outcome of the attempted upgrade

-   ## Method Details

    -   ### setProcessId

        public void setProcessId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)

        Sets the id of the process.

        Parameters:

        `processId` - the id of the process

    -   ### getProcessId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessId()

        Gets the id of the process.

        Returns:

        the id of the process

    -   ### setProcessInactive

        public void setProcessInactive(boolean isProcessInactive)

        Sets whether the process is inactive after the upgrade. A process can become inactive during an upgrade if the only active tasks before the upgrade were instances of nodes that are not present in the target process model, since these tasks would be canceled during the upgrade.

        Parameters:

        `isProcessInactive` - whether the process is inactive

    -   ### isProcessInactive

        public boolean isProcessInactive()

        Gets whether the process is inactive after the upgrade. A process can become inactive during an upgrade if the only active tasks before the upgrade were instances of nodes that are not present in the target process model, since these tasks would be canceled during the upgrade. Note that this method will return false for ProcessUpgrade objects returned from [`ProcessExecutionService.upgradeProcesses(Long, String, Long[])`](../ProcessExecutionService.html#upgradeProcesses\(java.lang.Long,java.lang.String,java.lang.Long%5B%5D\)) and [`ProcessExecutionService.upgradeProcesses(Long, String, Long, String[])`](../ProcessExecutionService.html#upgradeProcesses\(java.lang.Long,java.lang.String,java.lang.Long,java.lang.String%5B%5D\)) for all outcomes other than [`ProcessUpgrade.Outcome.SUCCESS`](ProcessUpgrade.Outcome.html#SUCCESS). The processes may indeed be inactive for other outcomes, but this will not be checked.

        Returns:

        whether the process is inactive

    -   ### setOutcome

        public void setOutcome([ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") outcome)

        Sets the result code indicating the outcome of the attempted upgrade.

        Parameters:

        `outcome` - the outcome

    -   ### getOutcome

        public [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") getOutcome()

        Gets the result code indicating the outcome of the attempted upgrade.

    -   ### getOutcomes

        public static [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")\[\] getOutcomes([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")\[\] upgrades)

        Extracts the outcomes from the specified ProcessUpgrade objects.

        Parameters:

        `results` - the ProcessUpgrade objects from which to extract the outcomes

        Returns:

        the extracted outcomes

    -   ### getProcessIds

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getProcessIds([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")\[\] upgrades)

        Extracts the process ids from the specified ProcessUpgrade objects.

        Parameters:

        `upgrades` - the ProcessUpgrade objects from which to extract the process ids

        Returns:

        the extracted process ids

    -   ### getProcessIdsWithOutcome

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getProcessIdsWithOutcome([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")\[\] upgrades, [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")... outcomes)

        Extracts process ids from the specified ProcessUpgrade objects, filtering for those processes whose upgrade had one of the specified outcomes.

        Parameters:

        `upgrades` - the ProcessUpgrade objects from which to extract the process ids

        `outcomes` - the outcomes to filter for

        Returns:

        the extracted process ids

    -   ### compareTo

        public int compareTo([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade") o)

        Compares the specified object with this UpgradeProcessResult for order. Order is determined by comparing their process ids.

        Specified by:

        `[compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html#compareTo\(T\) "class or interface in java.lang")` in interface `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")>`

        Parameters:

        `o` - the object to compare with this one

        Returns:

        a negative integer, zero, or a positive integer as this object is less than, equal to, or greater than the specified object

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)

        Compares the specified object with this one for equality. Returns true if and only if the specified object is also an UpgradeProcessResult and both have the same process id.

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Parameters:

        `o` - the object to be compared for equality with this UpgradeProcessResult

        Returns:

        true if the specified object is equal to this UpgradeProcessResult

    -   ### hashCode

        public int hashCode()

        Returns a hash code for the object.

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`