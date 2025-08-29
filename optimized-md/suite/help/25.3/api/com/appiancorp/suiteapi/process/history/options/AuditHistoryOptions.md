---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/options/AuditHistoryOptions.html
original_path: api/com/appiancorp/suiteapi/process/history/options/AuditHistoryOptions.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.history.options](package-summary.html)

# Class AuditHistoryOptions

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.history.options.AuditHistoryOptions

Direct Known Subclasses:

`[AuditHistoryProcessModelOptions](AuditHistoryProcessModelOptions.html "class in com.appiancorp.suiteapi.process.history.options")`, `[AuditHistoryProcessOptions](AuditHistoryProcessOptions.html "class in com.appiancorp.suiteapi.process.history.options")`

* * *

public abstract class AuditHistoryOptions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

AuditHistoryOptions

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final long`

    `[DEFAULT_SIZE_FOR_MAX_JSON_BYTE_SIZE](#DEFAULT_SIZE_FOR_MAX_JSON_BYTE_SIZE)`

    Default size for maximum JSON byte size of a single process history row, by default at Long.MAX\_VALUE to indicate no maximum.

    `static final int`

    `[DEFAULT_SIZE_FOR_MAXIMUM_TRANSIENT_BATCH_SIZE](#DEFAULT_SIZE_FOR_MAXIMUM_TRANSIENT_BATCH_SIZE)`

    `static final int`

    `[MINIMUM_SIZE_FOR_MAX_JSON_BYTE_SIZE](#MINIMUM_SIZE_FOR_MAX_JSON_BYTE_SIZE)`

    Minimum size that may be set for maxJsonByteSize.

    `static final int`

    `[MINIMUM_SIZE_FOR_MAXIMUM_TRANSIENT_BATCH_SIZE](#MINIMUM_SIZE_FOR_MAXIMUM_TRANSIENT_BATCH_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AuditHistoryOptions](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `abstract [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getLocale](#getLocale\(\))()`

    `abstract [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getMaximum](#getMaximum\(\))()`

    `abstract int`

    `[getMaximumTransientBatchSize](#getMaximumTransientBatchSize\(\))()`

    `abstract long`

    `[getMaxJsonByteSize](#getMaxJsonByteSize\(\))()`

    Maximum JSON byte size helps prevent creating row data with excessively large payloads (e.g., a process variable array with excessively large size) from throwing OOM in being created.

    `abstract [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getMinimum](#getMinimum\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### MINIMUM\_SIZE\_FOR\_MAXIMUM\_TRANSIENT\_BATCH\_SIZE

        public static final int MINIMUM\_SIZE\_FOR\_MAXIMUM\_TRANSIENT\_BATCH\_SIZE

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.process.history.options.AuditHistoryOptions.MINIMUM_SIZE_FOR_MAXIMUM_TRANSIENT_BATCH_SIZE)

    -   ### DEFAULT\_SIZE\_FOR\_MAXIMUM\_TRANSIENT\_BATCH\_SIZE

        public static final int DEFAULT\_SIZE\_FOR\_MAXIMUM\_TRANSIENT\_BATCH\_SIZE

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.process.history.options.AuditHistoryOptions.DEFAULT_SIZE_FOR_MAXIMUM_TRANSIENT_BATCH_SIZE)

    -   ### MINIMUM\_SIZE\_FOR\_MAX\_JSON\_BYTE\_SIZE

        public static final int MINIMUM\_SIZE\_FOR\_MAX\_JSON\_BYTE\_SIZE

        Minimum size that may be set for maxJsonByteSize.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.process.history.options.AuditHistoryOptions.MINIMUM_SIZE_FOR_MAX_JSON_BYTE_SIZE)

    -   ### DEFAULT\_SIZE\_FOR\_MAX\_JSON\_BYTE\_SIZE

        public static final long DEFAULT\_SIZE\_FOR\_MAX\_JSON\_BYTE\_SIZE

        Default size for maximum JSON byte size of a single process history row, by default at Long.MAX\_VALUE to indicate no maximum. No maximum being set can cause OutOfMemoryErrors during reads.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.process.history.options.AuditHistoryOptions.DEFAULT_SIZE_FOR_MAX_JSON_BYTE_SIZE)

-   ## Constructor Details

    -   ### AuditHistoryOptions

        public AuditHistoryOptions()

-   ## Method Details

    -   ### getLocale

        public abstract [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getLocale()

    -   ### getMinimum

        public abstract [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getMinimum()

    -   ### getMaximum

        public abstract [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getMaximum()

    -   ### getMaximumTransientBatchSize

        public abstract int getMaximumTransientBatchSize()

    -   ### getMaxJsonByteSize

        public abstract long getMaxJsonByteSize()

        Maximum JSON byte size helps prevent creating row data with excessively large payloads (e.g., a process variable array with excessively large size) from throwing OOM in being created.

        Returns:

        long