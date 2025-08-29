---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/options/AuditHistoryOptionsBuilder.html
original_path: api/com/appiancorp/suiteapi/process/history/options/AuditHistoryOptionsBuilder.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.history.options](package-summary.html)

# Class AuditHistoryOptionsBuilder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.history.options.AuditHistoryOptionsBuilder

Direct Known Subclasses:

`[AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`, `[AuditHistoryProcessOptionsBuilder](AuditHistoryProcessOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

* * *

public abstract class AuditHistoryOptionsBuilder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

AuditHistoryOptionsBuilder

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AuditHistoryOptionsBuilder](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `abstract [AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[build](#build\(\))()`

    `static [AuditHistoryProcessOptionsBuilder](AuditHistoryProcessOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[process](#process\(com.appiancorp.services.ServiceContext,java.lang.Long\))([ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)`

    Option builder to read audit history for the given process id

    `static [AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[processModel](#processModel\(com.appiancorp.services.ServiceContext,java.lang.Long\))([ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId)`

    Option builder to read audit history for the given process model

    `static [AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[processModel](#processModel\(com.appiancorp.services.ServiceContext,java.lang.Long,java.util.Set\))([ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")> processIds)`

    Option builder to read audit history for the given process model and process ids

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AuditHistoryOptionsBuilder

        public AuditHistoryOptionsBuilder()

-   ## Method Details

    -   ### processModel

        public static [AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") processModel([ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> processIds)

        Option builder to read audit history for the given process model and process ids

        Parameters:

        `serviceContext` -

        `processModelId` -

        `processIds` -

        Returns:

        AuditHistoryProcessModelOptionsBuilder

    -   ### processModel

        public static [AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") processModel([ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId)

        Option builder to read audit history for the given process model

        Parameters:

        `serviceContext` -

        `processModelId` -

        Returns:

        AuditHistoryProcessModelOptionsBuilder

    -   ### process

        public static [AuditHistoryProcessOptionsBuilder](AuditHistoryProcessOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") process([ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)

        Option builder to read audit history for the given process id

        Parameters:

        `serviceContext` -

        `processId` -

        Returns:

        AuditHistoryProcessOptionsBuilder

    -   ### build

        public abstract [AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options") build()