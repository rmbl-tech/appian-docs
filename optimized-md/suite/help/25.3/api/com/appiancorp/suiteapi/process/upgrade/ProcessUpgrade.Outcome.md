---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/upgrade/ProcessUpgrade.Outcome.html
original_path: api/com/appiancorp/suiteapi/process/upgrade/ProcessUpgrade.Outcome.html
version: "25.3"
title: "Enum Class ProcessUpgrade.Outcome"
page_id: "api/com/appiancorp/suiteapi/process/upgrade/ProcessUpgrade.Outcome"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.upgrade](package-summary.html)

# Enum Class ProcessUpgrade.Outcome

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")\>

com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade.Outcome

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")>`, `[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant")`

Enclosing class:

[ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")

* * *

public static enum ProcessUpgrade.Outcome extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")\>

Represents the outcome of an attempted upgrade of a process.

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[Enum.EnumDesc](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang") extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")>>`

-   ## Enum Constant Summary

    Enum Constants

    Enum Constant

    Description

    `[INCOMPATIBLE_PVS](#INCOMPATIBLE_PVS)`

    Indicates that the process could not be updated because its process variables were not compatible with those of the target model.

    `[INSUFFICIENT_PRIVILEGES](#INSUFFICIENT_PRIVILEGES)`

    Indicates that the process could not be updated because the user performing the upgrade did not have sufficient privileges.

    `[INVALID_PROCESS](#INVALID_PROCESS)`

    Indicates that the process id was invalid.

    `[INVALID_STATE](#INVALID_STATE)`

    Indicates that the process could not be updated because it was not in a state in which upgrade is allowed.

    `[MODEL_TOO_OLD](#MODEL_TOO_OLD)`

    Indicates that the process could not be upgraded because it is too old.

    `[PROCESS_LOCKED](#PROCESS_LOCKED)`

    Indicates that the process could not be updated because it was locked by another user.

    `[SAME_MODEL](#SAME_MODEL)`

    Indicates that the process did not need to be upgraded because it was already using the target process model.

    `[SUCCESS](#SUCCESS)`

    Indicates a successful upgrade.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getText](#getText\(\))()`

    Gets a short textual representation of the Outcome.

    `boolean`

    `[isSuccessfulUpgrade](#isSuccessfulUpgrade\(\))()`

    Gets whether the outcome represents a successful upgrade.

    `static [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")`

    `[valueOf](#valueOf\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Returns the enum constant of this class with the specified name.

    `static [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")[]`

    `[values](#values\(\))()`

    Returns an array containing the constants of this enum class, in the order they are declared.

    ### Methods inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#clone\(\) "class or interface in java.lang"), [compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#compareTo\(E\) "class or interface in java.lang"), [describeConstable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#describeConstable\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#finalize\(\) "class or interface in java.lang"), [getDeclaringClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#getDeclaringClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#hashCode\(\) "class or interface in java.lang"), [name](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#name\(\) "class or interface in java.lang"), [ordinal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#ordinal\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#toString\(\) "class or interface in java.lang"), [valueOf](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#valueOf\(java.lang.Class,java.lang.String\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Enum Constant Details

    -   ### SUCCESS

        public static final [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") SUCCESS

        Indicates a successful upgrade.

    -   ### SAME\_MODEL

        public static final [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") SAME\_MODEL

        Indicates that the process did not need to be upgraded because it was already using the target process model.

    -   ### INVALID\_PROCESS

        public static final [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") INVALID\_PROCESS

        Indicates that the process id was invalid.

    -   ### INSUFFICIENT\_PRIVILEGES

        public static final [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") INSUFFICIENT\_PRIVILEGES

        Indicates that the process could not be updated because the user performing the upgrade did not have sufficient privileges.

    -   ### INVALID\_STATE

        public static final [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") INVALID\_STATE

        Indicates that the process could not be updated because it was not in a state in which upgrade is allowed.

    -   ### PROCESS\_LOCKED

        public static final [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") PROCESS\_LOCKED

        Indicates that the process could not be updated because it was locked by another user.

    -   ### INCOMPATIBLE\_PVS

        public static final [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") INCOMPATIBLE\_PVS

        Indicates that the process could not be updated because its process variables were not compatible with those of the target model.

    -   ### MODEL\_TOO\_OLD

        public static final [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") MODEL\_TOO\_OLD

        Indicates that the process could not be upgraded because it is too old. Only processes started from process model versions created on Appian 5.6 or later can be upgraded in bulk.

-   ## Method Details

    -   ### values

        public static [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade")\[\] values()

        Returns an array containing the constants of this enum class, in the order they are declared.

        Returns:

        an array containing the constants of this enum class, in the order they are declared

    -   ### valueOf

        public static [ProcessUpgrade.Outcome](ProcessUpgrade.Outcome.html "enum class in com.appiancorp.suiteapi.process.upgrade") valueOf([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Returns the enum constant of this class with the specified name. The string must match _exactly_ an identifier used to declare an enum constant in this class. (Extraneous whitespace characters are not permitted.)

        Parameters:

        `name` - the name of the enum constant to be returned.

        Returns:

        the enum constant with the specified name

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if this enum class has no constant with the specified name

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is null

    -   ### isSuccessfulUpgrade

        public boolean isSuccessfulUpgrade()

        Gets whether the outcome represents a successful upgrade.

        Returns:

        true if the outcome is either SUCCESS or SAME\_MODEL, false otherwise

    -   ### getText

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getText()

        Gets a short textual representation of the Outcome.

        Returns:

        text representing the Outcome