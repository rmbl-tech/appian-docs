---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/HistoryRecord.ProcessModelInfo.html
original_path: api/com/appiancorp/suiteapi/process/HistoryRecord.ProcessModelInfo.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class HistoryRecord.ProcessModelInfo

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.HistoryRecord.ProcessModelInfo

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process")>`

Enclosing class:

[HistoryRecord](HistoryRecord.html "class in com.appiancorp.suiteapi.process")

* * *

public static class HistoryRecord.ProcessModelInfo extends [LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common") implements [Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process")\>

Information about a process model, including id, version, name and uuid.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.HistoryRecord.ProcessModelInfo)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessModelInfo](#%3Cinit%3E\(\))()`

    Creates a ProcessModelInfo with all fields null.

    `[ProcessModelInfo](#%3Cinit%3E\(java.lang.Long,com.appiancorp.suiteapi.common.LocaleString,java.lang.String,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Creates a ProcessModelInfo with the given id, name, version and uuid.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[compareTo](#compareTo\(com.appiancorp.suiteapi.process.HistoryRecord.ProcessModelInfo\))([HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process") other)`

    Compare against another ProcessModelInfo.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)`

    Returns whether the `LocalizedIdentity` been passed is equal to this `LocalizedIdentity`.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Gets the process model's universally unique identifier (uuid).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getVersion](#getVersion\(\))()`

    Gets the process model version.

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns a hash code value for the object.

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Sets the process model's universally unique identifier (uuid).

    `void`

    `[setVersion](#setVersion\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version)`

    Sets the process model version.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

    `[getId](../common/LocalizedIdentity.html#getId\(\)), [getIds](../common/LocalizedIdentity.html#getIds\(com.appiancorp.suiteapi.common.LocalizedIdentity%5B%5D\)), [getName](../common/LocalizedIdentity.html#getName\(\)), [setId](../common/LocalizedIdentity.html#setId\(java.lang.Long\)), [setName](../common/LocalizedIdentity.html#setName\(com.appiancorp.suiteapi.common.LocaleString\)), [toString](../common/LocalizedIdentity.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessModelInfo

        public ProcessModelInfo()

        Creates a ProcessModelInfo with all fields null.

    -   ### ProcessModelInfo

        public ProcessModelInfo([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Creates a ProcessModelInfo with the given id, name, version and uuid.

        Parameters:

        `id` - the process model's id

        `name` - the process model's name

        `version` - the process model's version

        `uuid` - the process model's uuid

-   ## Method Details

    -   ### getVersion

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getVersion()

        Gets the process model version. See [`AbstractProcessModel.getVersion()`](AbstractProcessModel.html#getVersion\(\)).

        Returns:

        the process model version (e.g. "1.0")

    -   ### setVersion

        public void setVersion([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version)

        Sets the process model version. See [`AbstractProcessModel.setVersion(String)`](AbstractProcessModel.html#setVersion\(java.lang.String\)).

        Parameters:

        `version` - the process model version (e.g. "1.0")

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Gets the process model's universally unique identifier (uuid).

        Returns:

        the uuid

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Sets the process model's universally unique identifier (uuid).

        Parameters:

        `uuid` - the uuid

    -   ### hashCode

        public int hashCode()

        Description copied from class: `[LocalizedIdentity](../common/LocalizedIdentity.html#hashCode\(\))`

        Returns a hash code value for the object. This method is supported for the benefit of hashtables such as those provided by [`Hashtable`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Hashtable.html "class or interface in java.util").

        Overrides:

        `[hashCode](../common/LocalizedIdentity.html#hashCode\(\))` in class `[LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        a hash code value for this object

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)

        Description copied from class: `[LocalizedIdentity](../common/LocalizedIdentity.html#equals\(java.lang.Object\))`

        Returns whether the `LocalizedIdentity` been passed is equal to this `LocalizedIdentity`.

        Overrides:

        `[equals](../common/LocalizedIdentity.html#equals\(java.lang.Object\))` in class `[LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")`

        Parameters:

        `o` - the reference object with which to compare.

        Returns:

        `true` if both objects are equal, otherwise `false`

    -   ### compareTo

        public int compareTo([HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process") other)

        Compare against another ProcessModelInfo.

        Specified by:

        `[compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html#compareTo\(T\) "class or interface in java.lang")` in interface `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process")>`

        Parameters:

        `other` -

        Returns: