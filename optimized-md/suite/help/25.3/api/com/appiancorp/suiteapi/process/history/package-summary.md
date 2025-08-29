---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/package-summary.html
original_path: api/com/appiancorp/suiteapi/process/history/package-summary.html
version: "25.3"
---

# Package com.appiancorp.suiteapi.process.history

* * *

package com.appiancorp.suiteapi.process.history

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.process](../package-summary.html)

    [com.appiancorp.suiteapi.process.history.options](options/package-summary.html)

-   All Classes and InterfacesClassesEnum ClassesExceptions

    Class

    Description

    [AuditHistory](AuditHistory.html "class in com.appiancorp.suiteapi.process.history")

    AuditHistory Audit Process History allows reading the process history of live processes and processes deleted, but still archived in Kafka.

    [AuditHistoryException](AuditHistoryException.html "class in com.appiancorp.suiteapi.process.history")

    AuditHistoryException

    [AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")

    AuditHistoryRow AuditHistoryRow represents one row of audit log process history.

    [AuditHistoryRowConstants](AuditHistoryRowConstants.html "enum class in com.appiancorp.suiteapi.process.history")

    AuditHistoryRowConstants The domain!

    [AuditInfo](AuditInfo.html "class in com.appiancorp.suiteapi.process.history")

    AuditInfo Information about the audit history returned.

    [CompleteValue](CompleteValue.html "class in com.appiancorp.suiteapi.process.history")

    CompleteValue Some AuditHistoryRows will have PartialValues, others will have CompleteValues.

    [PartialValue](PartialValue.html "class in com.appiancorp.suiteapi.process.history")

    PartialValue A PartialValue contains instructions to modify another value, such as changing particular fields or array elements, done in this way to save storage space.

    [UserUuidTransformation](UserUuidTransformation.html "class in com.appiancorp.suiteapi.process.history")

    UserUuidTransformation As process audit history returns users in user UUID form, this allows those user UUIDs to be transformed into usernames.

    [UserUuidTransformation.Action](UserUuidTransformation.Action.html "enum class in com.appiancorp.suiteapi.process.history")