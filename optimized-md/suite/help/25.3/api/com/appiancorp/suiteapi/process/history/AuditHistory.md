---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/AuditHistory.html
original_path: api/com/appiancorp/suiteapi/process/history/AuditHistory.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.history](package-summary.html)

# Class AuditHistory

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.history.AuditHistory

* * *

public final class AuditHistory extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

AuditHistory Audit Process History allows reading the process history of live processes and processes deleted, but still archived in Kafka. Example: AuditHistory.read(AuditHistory.process(123L), row -> System.out.println(row)); AuditHistory.read(AuditHistory.processModel(234L), row -> System.out.println(row));

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [AuditHistoryProcessOptionsBuilder](options/AuditHistoryProcessOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[process](#process\(com.appiancorp.services.ServiceContext,java.lang.Long\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)`

    Option builder to read audit history for the given process id

    `static [AuditHistoryProcessModelOptionsBuilder](options/AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[processModel](#processModel\(com.appiancorp.services.ServiceContext,java.lang.Long\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId)`

    Option builder to read audit history for the given process model

    `static [AuditHistoryProcessModelOptionsBuilder](options/AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[processModel](#processModel\(com.appiancorp.services.ServiceContext,java.lang.Long,java.util.Set\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")> processIds)`

    Option builder to read audit history for the given process model and process ids

    `static [AuditHistoryProcessModelOptionsBuilder](options/AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[processModel](#processModel\(com.appiancorp.services.ServiceContext,java.lang.String\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid)`

    Option builder to read audit history for the given process model

    `static [AuditInfo](AuditInfo.html "class in com.appiancorp.suiteapi.process.history")`

    `[read](#read\(com.appiancorp.suiteapi.process.history.options.AuditHistoryProcessModelOptionsBuilder,java.util.function.Consumer\))([AuditHistoryProcessModelOptionsBuilder](options/AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") processModelOptionsBuilder, [Consumer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/function/Consumer.html "class or interface in java.util.function")<? extends [AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")> consumer)`

    read audit history using the given options into the given Consumer.

    `static [AuditInfo](AuditInfo.html "class in com.appiancorp.suiteapi.process.history")`

    `[read](#read\(com.appiancorp.suiteapi.process.history.options.AuditHistoryProcessOptionsBuilder,java.util.function.Consumer\))([AuditHistoryProcessOptionsBuilder](options/AuditHistoryProcessOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") processOptionsBuilder, [Consumer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/function/Consumer.html "class or interface in java.util.function")<? extends [AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")> consumer)`

    read audit history using the given options into the given Consumer.

    `static [AuditInfo](AuditInfo.html "class in com.appiancorp.suiteapi.process.history")`

    `[readWithSubprocesses](#readWithSubprocesses\(com.appiancorp.suiteapi.process.history.options.AuditHistoryProcessModelOptionsBuilder,java.util.function.Consumer\))([AuditHistoryProcessModelOptionsBuilder](options/AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") processModelOptionsBuilder, [Consumer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/function/Consumer.html "class or interface in java.util.function")<? extends [AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")> consumer)`

    read audit history including all subprocesses using the given options into the given Consumer.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

-   ## Method Details

    -   ### process

        public static [AuditHistoryProcessOptionsBuilder](options/AuditHistoryProcessOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") process([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)

        Option builder to read audit history for the given process id

        Parameters:

        `serviceContext` -

        `processId` -

        Returns:

        AuditHistoryProcessOptionsBuilder

    -   ### read

        public static [AuditInfo](AuditInfo.html "class in com.appiancorp.suiteapi.process.history") read([AuditHistoryProcessOptionsBuilder](options/AuditHistoryProcessOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") processOptionsBuilder, [Consumer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/function/Consumer.html "class or interface in java.util.function")<? extends [AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")\> consumer) throws [InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [AuditHistoryException](AuditHistoryException.html "class in com.appiancorp.suiteapi.process.history")

        read audit history using the given options into the given Consumer.

        Parameters:

        `processOptionsBuilder` -

        `consumer` - (may be a lambda), invoked for each relevant read given processOptions

        Throws:

        `[InvalidProcessException](../exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[AuditHistoryException](AuditHistoryException.html "class in com.appiancorp.suiteapi.process.history")`

    -   ### processModel

        public static [AuditHistoryProcessModelOptionsBuilder](options/AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") processModel([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId)

        Option builder to read audit history for the given process model

        Parameters:

        `serviceContext` -

        `processModelId` -

        Returns:

        AuditHistoryProcessModelOptionsBuilder

    -   ### processModel

        public static [AuditHistoryProcessModelOptionsBuilder](options/AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") processModel([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid) throws [InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Option builder to read audit history for the given process model

        Parameters:

        `serviceContext` -

        `processModelUuid` -

        Returns:

        AuditHistoryProcessModelOptionsBuilder

        Throws:

        `[InvalidProcessModelException](../../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### processModel

        public static [AuditHistoryProcessModelOptionsBuilder](options/AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") processModel([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> processIds)

        Option builder to read audit history for the given process model and process ids

        Parameters:

        `serviceContext` -

        `processModelId` -

        `processIds` -

        Returns:

        AuditHistoryProcessModelOptionsBuilder

    -   ### read

        public static [AuditInfo](AuditInfo.html "class in com.appiancorp.suiteapi.process.history") read([AuditHistoryProcessModelOptionsBuilder](options/AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") processModelOptionsBuilder, [Consumer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/function/Consumer.html "class or interface in java.util.function")<? extends [AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")\> consumer) throws [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [AuditHistoryException](AuditHistoryException.html "class in com.appiancorp.suiteapi.process.history")

        read audit history using the given options into the given Consumer.

        Parameters:

        `processModelOptionsBuilder` -

        `consumer` - (may be a lambda), invoked for each relevant read given processModelOptions

        Throws:

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[AuditHistoryException](AuditHistoryException.html "class in com.appiancorp.suiteapi.process.history")`

    -   ### readWithSubprocesses

        public static [AuditInfo](AuditInfo.html "class in com.appiancorp.suiteapi.process.history") readWithSubprocesses([AuditHistoryProcessModelOptionsBuilder](options/AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") processModelOptionsBuilder, [Consumer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/function/Consumer.html "class or interface in java.util.function")<? extends [AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")\> consumer) throws [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [AuditHistoryException](AuditHistoryException.html "class in com.appiancorp.suiteapi.process.history")

        read audit history including all subprocesses using the given options into the given Consumer.

        Parameters:

        `processModelOptionsBuilder` -

        `consumer` - (may be a lambda), invoked for each relevant read given processModelOptions

        Throws:

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[AuditHistoryException](AuditHistoryException.html "class in com.appiancorp.suiteapi.process.history")`