---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessOptions.html
original_path: api/com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessOptions.html
version: "25.3"
title: "Class AuditHistoryProcessOptions"
page_id: "api/com/appiancorp/suiteapi/process/history/options/AuditHistoryProcessOptions"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.history.options](package-summary.html)

# Class AuditHistoryProcessOptions

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.history.options.AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")

com.appiancorp.suiteapi.process.history.options.AuditHistoryProcessOptions

* * *

public class AuditHistoryProcessOptions extends [AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")

AuditHistoryProcessOptions

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

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessId](#getProcessId\(\))()`

    `[ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### getServiceContext

        public [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") getServiceContext()

    -   ### getProcessId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessId()

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

    -   ### getMaxJsonByteSize

        public long getMaxJsonByteSize()

        Description copied from class: `[AuditHistoryOptions](AuditHistoryOptions.html#getMaxJsonByteSize\(\))`

        Maximum JSON byte size helps prevent creating row data with excessively large payloads (e.g., a process variable array with excessively large size) from throwing OOM in being created.

        Specified by:

        `[getMaxJsonByteSize](AuditHistoryOptions.html#getMaxJsonByteSize\(\))` in class `[AuditHistoryOptions](AuditHistoryOptions.html "class in com.appiancorp.suiteapi.process.history.options")`

        Returns:

        Maximum JSON byte size, used for internal audit history rows