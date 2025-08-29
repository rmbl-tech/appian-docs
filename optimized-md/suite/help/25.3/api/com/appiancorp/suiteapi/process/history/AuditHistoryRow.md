---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/AuditHistoryRow.html
original_path: api/com/appiancorp/suiteapi/process/history/AuditHistoryRow.html
version: "25.3"
title: "Class AuditHistoryRow"
page_id: "api/com/appiancorp/suiteapi/process/history/AuditHistoryRow"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.history](package-summary.html)

# Class AuditHistoryRow

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.history.AuditHistoryRow

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")>`

* * *

public abstract class AuditHistoryRow extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")\>, [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

AuditHistoryRow AuditHistoryRow represents one row of audit log process history. There are no setters on this bean.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.history.AuditHistoryRow)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[completeOrPartialValue](#completeOrPartialValue)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[dom](#dom)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DOMAIN_PROCESS_PROPERTY](#DOMAIN_PROCESS_PROPERTY)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DOMAIN_PROCESS_VARIABLE](#DOMAIN_PROCESS_VARIABLE)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DOMAIN_TASK_PROPERTY](#DOMAIN_TASK_PROPERTY)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[key](#key)`

    `protected [LocaleString](../../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[name](#name)`

    `protected [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[order](#order)`

    `protected [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[processId](#processId)`

    `protected [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[processModelId](#processModelId)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[processModelUuid](#processModelUuid)`

    `protected [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[taskId](#taskId)`

    `protected [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[timestamp](#timestamp)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[username](#username)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[userUuid](#userUuid)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AuditHistoryRow](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected int`

    `[compareTimestamp](#compareTimestamp\(com.appiancorp.suiteapi.process.history.AuditHistoryRow\))([AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history") compareAgainst)`

    Comparison is based on timestamp, which is the secondary sort.

    `int`

    `[compareTo](#compareTo\(com.appiancorp.suiteapi.process.history.AuditHistoryRow\))([AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history") compareAgainst)`

    Comparison is based on order, with secondary sort of timestamp.

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[determineCompleteOrPartialValue](#determineCompleteOrPartialValue\(\))()`

    `abstract void`

    `[gatherUserUuids](#gatherUserUuids\(java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> setOfUuids)`

    Gather the user UUIDs in this AuditHistoryRow, from both the user performing the action and the values, adding them to the provided Set.

    `[Optional](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Optional.html "class or interface in java.util")<[CompleteValue](CompleteValue.html "class in com.appiancorp.suiteapi.process.history")>`

    `[getCompleteValue](#getCompleteValue\(\))()`

    The value for a row may be either 'complete' or 'partial'.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDom](#getDom\(\))()`

    dom!

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDomKey](#getDomKey\(\))()`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDomKeyCaseSensitive](#getDomKeyCaseSensitive\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getKey](#getKey\(\))()`

    dom!

    `[LocaleString](../../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getName](#getName\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")>`

    `[getNameLocales](#getNameLocales\(\))()`

    `[Optional](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Optional.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getOptionalProcessModelUuid](#getOptionalProcessModelUuid\(\))()`

    `[Optional](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Optional.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")>`

    `[getOptionalTaskId](#getOptionalTaskId\(\))()`

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOrder](#getOrder\(\))()`

    `[Optional](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Optional.html "class or interface in java.util")<[PartialValue](PartialValue.html "class in com.appiancorp.suiteapi.process.history")>`

    `[getPartialValue](#getPartialValue\(\))()`

    The value for a row may be either 'complete' or 'partial'.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessId](#getProcessId\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessModelId](#getProcessModelId\(\))()`

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimestamp](#getTimestamp\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUser](#getUser\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUsername](#getUsername\(\))()`

    `abstract void`

    `[setTimestamp](#setTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)`

    `abstract void`

    `[setUsername](#setUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### DOMAIN\_PROCESS\_VARIABLE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DOMAIN\_PROCESS\_VARIABLE

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.history.AuditHistoryRow.DOMAIN_PROCESS_VARIABLE)

    -   ### DOMAIN\_PROCESS\_PROPERTY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DOMAIN\_PROCESS\_PROPERTY

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.history.AuditHistoryRow.DOMAIN_PROCESS_PROPERTY)

    -   ### DOMAIN\_TASK\_PROPERTY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DOMAIN\_TASK\_PROPERTY

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.history.AuditHistoryRow.DOMAIN_TASK_PROPERTY)

    -   ### userUuid

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userUuid

    -   ### username

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username

    -   ### timestamp

        protected [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp

    -   ### order

        protected [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") order

    -   ### dom

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dom

    -   ### key

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key

    -   ### name

        protected [LocaleString](../../common/LocaleString.html "class in com.appiancorp.suiteapi.common") name

    -   ### processModelUuid

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid

    -   ### processModelId

        protected [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId

    -   ### processId

        protected [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId

    -   ### taskId

        protected [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId

    -   ### completeOrPartialValue

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") completeOrPartialValue

-   ## Constructor Details

    -   ### AuditHistoryRow

        public AuditHistoryRow()

-   ## Method Details

    -   ### getUser

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUser()

        Returns:

        user UUID that performed this row's action; an empty "" indicates it was performed by the system.

    -   ### getUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUsername()

        Returns:

        username that performed this row's action

    -   ### setUsername

        public abstract void setUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)

        Parameters:

        `username` - for updating by UserUuidMapper

    -   ### getTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimestamp()

        Returns:

        timestamp at which this row's action was recorded

    -   ### setTimestamp

        public abstract void setTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)

        Parameters:

        `timestamp` - for updating timestamp for history row, added due to java 17 introspector issues

    -   ### getOrder

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOrder()

        Returns:

        order of this row within its process, allows disambiguation at same timestamp

    -   ### getDom

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDom()

        dom!key is the row identifier within the process context.

        Returns:

        domain of the identifier modified in this row (e.g., DOMAIN\_\*); domains are case insensitive, may be returned in any mix of upper- and lower-case, i.e., use equalsIgnoreCase() when comparing.

    -   ### getKey

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getKey()

        dom!key is the row identifier within the process context.

        Returns:

        key of the identifier modified in this row, unique within combination of domain and process context; keys are case insensitive, may be returned in any mix of upper- and lower-case, i.e., use equalsIgnoreCase() when comparing.

    -   ### getDomKeyCaseSensitive

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDomKeyCaseSensitive()

        Returns:

        dom!key, or key if dom is null or "" (the default domain), using dom!key as given by dom and key

    -   ### getDomKey

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDomKey()

        Returns:

        dom!key in lowercase, or key if dom is null or "" (the default domain); this is an appropriate key within process id context for a Set to build a PartialValue to CompleteValue.

    -   ### getName

        public [LocaleString](../../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getName()

        Returns:

        name of this row's object, as a LocaleString; can use it to determine the Locales available, and get just that locale. Can use getName(Locale) directly if only one Locale is required.

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Parameters:

        `locale` -

        Returns:

        name of this row's object, in the given Locale or the first available

    -   ### getNameLocales

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")\> getNameLocales()

        Returns:

        Locales in which this row's name is defined (may be empty for names insensitive to Locale)

    -   ### getProcessId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessId()

        Returns:

        row's process id

    -   ### getProcessModelId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessModelId()

        Returns:

        row's process model id

    -   ### getOptionalProcessModelUuid

        public [Optional](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Optional.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getOptionalProcessModelUuid()

        Returns:

        row's process model UUID, if set

    -   ### getOptionalTaskId

        public [Optional](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Optional.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> getOptionalTaskId()

        Returns:

        row's task id, if available (not available in process level row actions, but typically set for "tp" domain rows)

    -   ### determineCompleteOrPartialValue

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") determineCompleteOrPartialValue()

    -   ### getCompleteValue

        public [Optional](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Optional.html "class or interface in java.util")<[CompleteValue](CompleteValue.html "class in com.appiancorp.suiteapi.process.history")\> getCompleteValue()

        The value for a row may be either 'complete' or 'partial'. The first row of a given domain!key for a given process context will be complete. After that, rows may be either complete or partial. If partial, then the partial must be applied to the previous complete in order to yield another complete value. To do so, track the existing CompleteValue for that domain!key in the process context. This tracking is not necessary if not wanting to obtain the completed values.

        Returns:

        CompleteValue if available

    -   ### getPartialValue

        public [Optional](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Optional.html "class or interface in java.util")<[PartialValue](PartialValue.html "class in com.appiancorp.suiteapi.process.history")\> getPartialValue()

        The value for a row may be either 'complete' or 'partial'. The first row of a given domain!key for a given process context will be complete. After that, rows may be either complete or partial. If partial, then the partial must be applied to the previous complete in order to yield another complete value. To do so, track the existing CompleteValue for that domain!key in the process context. This tracking is not necessary if not wanting to obtain the completed values.

        Returns:

        PartialValue, if possible, which may be applied to a previous CompleteValue for the same dom!key in the same process id context

    -   ### compareTo

        public int compareTo([AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history") compareAgainst)

        Comparison is based on order, with secondary sort of timestamp. Notably, the only time that order is identical is in the case of divergent processes, where we reset a kdb back to an earlier version, causing the history to be inconsistent without the resiliency provided in ProcessHistoryKafkaReader.

        Specified by:

        `[compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html#compareTo\(T\) "class or interface in java.lang")` in interface `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")>`

        Parameters:

        `compareAgainst` -

        Returns:

        0 if equal, less than 0 if this is before compareAgainst, greater than 0 if this is after compareAgainst

    -   ### compareTimestamp

        protected int compareTimestamp([AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history") compareAgainst)

        Comparison is based on timestamp, which is the secondary sort.

        Parameters:

        `compareAgainst` -

        Returns:

        0 if equal, less than 0 if this is before compareAgainst, greater than 0 if this is after compareAgainst

    -   ### gatherUserUuids

        public abstract void gatherUserUuids([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> setOfUuids)

        Gather the user UUIDs in this AuditHistoryRow, from both the user performing the action and the values, adding them to the provided Set.

        Parameters:

        `setOfUuids` -