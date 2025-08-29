---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessModelOptions.html
original_path: api/com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessModelOptions.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.history.options](package-summary.html)

# Class AuditHistoryProcessModelOptions

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.history.options.AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")

com.appiancorp.suiteapi.process.history.options.AuditHistoryProcessModelOptions

* * *

public class AuditHistoryProcessModelOptions extends [AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")

AuditHistoryProcessModelOptions

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.history.options.[AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")

    `[DEFAULT_SIZE_FOR_MAX_JSON_BYTE_SIZE](AuditHistoryOptions.html#DEFAULT_SIZE_FOR_MAX_JSON_BYTE_SIZE), [DEFAULT_SIZE_FOR_MAXIMUM_TRANSIENT_BATCH_SIZE](AuditHistoryOptions.html#DEFAULT_SIZE_FOR_MAXIMUM_TRANSIENT_BATCH_SIZE), [MINIMUM_SIZE_FOR_MAX_JSON_BYTE_SIZE](AuditHistoryOptions.html#MINIMUM_SIZE_FOR_MAX_JSON_BYTE_SIZE), [MINIMUM_SIZE_FOR_MAXIMUM_TRANSIENT_BATCH_SIZE](AuditHistoryOptions.html#MINIMUM_SIZE_FOR_MAXIMUM_TRANSIENT_BATCH_SIZE)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getLocale](#getLocale\(\))()`

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getMaximum](#getMaximum\(\))()`

    `int`

    `[getMaximumTransientBatchSize](#getMaximumTransientBatchSize\(\))()`

    `long`

    `[getMaxJsonByteSize](#getMaxJsonByteSize\(\))()`

    Maximum JSON byte size helps prevent creating row data with excessively large payloads (e.g., a process variable array with excessively large size) from throwing OOM in being created.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getMinimum](#getMinimum\(\))()`

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")>`

    `[getProcessIds](#getProcessIds\(\))()`

    The process ids of process audit history to be searched for return.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getProcessIdsInKafkaHistory](#getProcessIdsInKafkaHistory\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getProcessIdsInKEngineHistory](#getProcessIdsInKEngineHistory\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessModelId](#getProcessModelId\(\))()`

    `[ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### getProcessModelId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessModelId()

    -   ### getProcessIds

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> getProcessIds()

        The process ids of process audit history to be searched for return.

        Returns:

        Set

    -   ### getServiceContext

        public [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") getServiceContext()

    -   ### getLocale

        public [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getLocale()

        Specified by:

        `[getLocale](AuditHistoryOptions.html#getLocale\(\))` in class `[AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")`

    -   ### getMinimum

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getMinimum()

        Specified by:

        `[getMinimum](AuditHistoryOptions.html#getMinimum\(\))` in class `[AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")`

    -   ### getMaximum

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getMaximum()

        Specified by:

        `[getMaximum](AuditHistoryOptions.html#getMaximum\(\))` in class `[AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")`

    -   ### getMaximumTransientBatchSize

        public int getMaximumTransientBatchSize()

        Specified by:

        `[getMaximumTransientBatchSize](AuditHistoryOptions.html#getMaximumTransientBatchSize\(\))` in class `[AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")`

    -   ### getProcessIdsInKafkaHistory

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getProcessIdsInKafkaHistory()

        Returns:

        array of process ids for this process model, which have process history stored in Kafka

    -   ### getProcessIdsInKEngineHistory

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getProcessIdsInKEngineHistory()

        Returns:

        array of process ids for this process model, which have process history stored in K Engine history (not yet migrated to Kafka, permanently in K, doing dryrun to Kakfa, or currently migrating to Kafka)

    -   ### getMaxJsonByteSize

        public long getMaxJsonByteSize()

        Maximum JSON byte size helps prevent creating row data with excessively large payloads (e.g., a process variable array with excessively large size) from throwing OOM in being created.

        Specified by:

        `[getMaxJsonByteSize](AuditHistoryOptions.html#getMaxJsonByteSize\(\))` in class `[AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")`

        Returns:

        long