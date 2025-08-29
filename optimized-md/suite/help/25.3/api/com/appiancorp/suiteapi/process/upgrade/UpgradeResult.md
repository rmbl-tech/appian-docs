---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/upgrade/UpgradeResult.html
original_path: api/com/appiancorp/suiteapi/process/upgrade/UpgradeResult.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.upgrade](package-summary.html)

# Class UpgradeResult

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.upgrade.UpgradeResult

* * *

public class UpgradeResult extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

Represents the result of the attempted upgrade of a set of processes.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UpgradeResult](#%3Cinit%3E\(com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade%5B%5D\))([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")[] results)`

    Creates an instance containing the specified results.

    `[UpgradeResult](#%3Cinit%3E\(java.util.Collection\))([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<[ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")> results)`

    Creates an instance containing the specified results.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")[]`

    `[getResults](#getResults\(\))()`

    Gets the contained per-process upgrade results.

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang"),[ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")>`

    `[getResultsByProcessId](#getResultsByProcessId\(\))()`

    Gets the contained ProcessUpgrade objects, mapped by process id.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### UpgradeResult

        public UpgradeResult([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")\[\] results)

        Creates an instance containing the specified results.

        Parameters:

        `results` - the individual results (per process) of the attempted upgrade of a set of processes

    -   ### UpgradeResult

        public UpgradeResult([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<[ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")\> results)

        Creates an instance containing the specified results.

        Parameters:

        `results` - the individual results (per process) of the attempted upgrade of a set of processes

-   ## Method Details

    -   ### getResults

        public [ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")\[\] getResults()

        Gets the contained per-process upgrade results.

        Returns:

        the individual results (per process) of the attempted upgrade of the set of processes

    -   ### getResultsByProcessId

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang"),[ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")\> getResultsByProcessId()

        Gets the contained ProcessUpgrade objects, mapped by process id.

        Returns:

        a Map of process id to ProcessUpgrade