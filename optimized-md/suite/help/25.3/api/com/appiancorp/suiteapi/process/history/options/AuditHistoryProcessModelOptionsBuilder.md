---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessModelOptionsBuilder.html
original_path: api/com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessModelOptionsBuilder.html
version: "25.3"
title: "Class AuditHistoryProcessModelOptionsBuilder"
page_id: "api/com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessModelOptionsBuilder"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.history.options](package-summary.html)

# Class AuditHistoryProcessModelOptionsBuilder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.history.options.AuditHistoryOptionsBuilder](AuditHistoryOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")

com.appiancorp.suiteapi.process.history.options.AuditHistoryProcessModelOptionsBuilder

* * *

public class AuditHistoryProcessModelOptionsBuilder extends [AuditHistoryOptionsBuilder](AuditHistoryOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")

AuditHistoryProcessModelOptionsBuilder

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[allowProcessId](#allowProcessId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)`

    The process id of process audit history to be searched for return.

    `[AuditHistoryProcessModelOptions](AuditHistoryProcessModelOptions.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[build](#build\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getProcessIdsInKafkaHistory](#getProcessIdsInKafkaHistory\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getProcessIdsInKEngineHistory](#getProcessIdsInKEngineHistory\(\))()`

    `[AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[setLocale](#setLocale\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    `[AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[setMaximumTimestamp](#setMaximumTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)`

    The maximum timestamp of process audit history to be searched for return.

    `[AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[setMaximumTransientBatchSize](#setMaximumTransientBatchSize\(int\))(int maximumTransientBatchSize)`

    Maximum transient batch size, used for internal batching purposes when a source does not support streaming.

    `[AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[setMaxJsonByteSize](#setMaxJsonByteSize\(long\))(long maxJsonByteSize)`

    Maximum JSON byte size helps prevent creating row data with excessively large payloads (e.g., a process variable array with excessively large size) from throwing OOM in being created.

    `[AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[setMinimumTimestamp](#setMinimumTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)`

    The minimum timestamp of process audit history to be searched for return.

    `[AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

    `[setProcessIds](#setProcessIds\(java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")> processIds)`

    The process ids of process audit history to be searched for return.

    ### Methods inherited from class com.appiancorp.suiteapi.process.history.options.[AuditHistoryOptionsBuilder](AuditHistoryOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")

    `[process](AuditHistoryOptionsBuilder.html#process\(com.appiancorp.services.ServiceContext,java.lang.Long\)), [processModel](AuditHistoryOptionsBuilder.html#processModel\(com.appiancorp.services.ServiceContext,java.lang.Long\)), [processModel](AuditHistoryOptionsBuilder.html#processModel\(com.appiancorp.services.ServiceContext,java.lang.Long,java.util.Set\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### setLocale

        public [AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") setLocale([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Parameters:

        `locale` - for casting purposes (e.g., timestamp to String)

        Returns:

        AuditHistoryProcessModelOptionsBuilder to continue building

    -   ### setMinimumTimestamp

        public [AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") setMinimumTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)

        The minimum timestamp of process audit history to be searched for return.

        Parameters:

        `timestamp` -

        Returns:

        AuditHistoryProcessModelOptionsBuilder to continue building

    -   ### setMaximumTimestamp

        public [AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") setMaximumTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)

        The maximum timestamp of process audit history to be searched for return.

        Parameters:

        `timestamp` -

        Returns:

        AuditHistoryProcessModelOptionsBuilder to continue building

    -   ### setMaximumTransientBatchSize

        public [AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") setMaximumTransientBatchSize(int maximumTransientBatchSize)

        Maximum transient batch size, used for internal batching purposes when a source does not support streaming.

        Parameters:

        `maximumTransientBatchSize` -

        Returns:

        AuditHistoryProcessModelOptionsBuilder to continue building

    -   ### setMaxJsonByteSize

        public [AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") setMaxJsonByteSize(long maxJsonByteSize)

        Maximum JSON byte size helps prevent creating row data with excessively large payloads (e.g., a process variable array with excessively large size) from throwing OOM in being created.

        Parameters:

        `maxJsonByteSize` - currently only unsigned values less than Integer.MAX\_VALUE are applied; must be >=AuditHistoryOptions.MINIMUM\_SIZE\_FOR\_MAX\_JSON\_BYTE\_SIZE or IllegalArgumentException

        Returns:

        AuditHistoryProcessModelOptionsBuilder to continue building

    -   ### allowProcessId

        public [AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") allowProcessId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId)

        The process id of process audit history to be searched for return.

        Parameters:

        `processId` -

        Returns:

        AuditHistoryProcessModelOptionsBuilder to continue building

    -   ### setProcessIds

        public [AuditHistoryProcessModelOptionsBuilder](AuditHistoryProcessModelOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options") setProcessIds([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> processIds)

        The process ids of process audit history to be searched for return.

        Parameters:

        `processIds` -

        Returns:

        AuditHistoryProcessModelOptionsBuilder to continue building

    -   ### build

        public [AuditHistoryProcessModelOptions](AuditHistoryProcessModelOptions.html "class in com.appiancorp.suiteapi.process.history.options") build()

        Specified by:

        `[build](AuditHistoryOptionsBuilder.html#build\(\))` in class `[AuditHistoryOptionsBuilder](AuditHistoryOptionsBuilder.html "class in com.appiancorp.suiteapi.process.history.options")`

        Returns:

        AuditHistoryProcessModelOptions fully built

    -   ### getProcessIdsInKafkaHistory

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getProcessIdsInKafkaHistory()

        Returns:

        array of process ids for this process model, which have process history stored in Kafka

    -   ### getProcessIdsInKEngineHistory

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getProcessIdsInKEngineHistory()

        Returns:

        array of process ids for this process model, which have process history stored in K Engine history (not yet migrated to Kafka, permanently in K, doing dryrun to Kakfa, or currently migrating to Kafka)