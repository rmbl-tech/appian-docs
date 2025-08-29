---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/UserUuidTransformation.html
original_path: api/com/appiancorp/suiteapi/process/history/UserUuidTransformation.html
version: "25.3"
title: "Class UserUuidTransformation"
page_id: "api/com/appiancorp/suiteapi/process/history/UserUuidTransformation"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.history](package-summary.html)

# Class UserUuidTransformation

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.history.UserUuidTransformation

* * *

public final class UserUuidTransformation extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

UserUuidTransformation As process audit history returns users in user UUID form, this allows those user UUIDs to be transformed into usernames. This can be expensive (with calls to fetch usernames from their user UUIDs the first time they are encountered), so done optionally. Within the Consumer of AuditHistoryRow, keep an instance of this, and invoke usernameUuidTransformation on each AuditHistoryRow instance, but ONLY if you want the values to have their user UUIDs remapped to usernames.

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static enum` 

    `[UserUuidTransformation.Action](UserUuidTransformation.Action.html "enum class in com.appiancorp.suiteapi.process.history")`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UserUuidTransformation](#%3Cinit%3E\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[UserUuidTransformation.Action](UserUuidTransformation.Action.html "enum class in com.appiancorp.suiteapi.process.history")`

    `[usernameUuidTransformation](#usernameUuidTransformation\(com.appiancorp.suiteapi.process.history.AuditHistoryRow\))([AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history") auditHistoryRow)`

    Transform this auditHistoryRow's user UUID, and its CompleteValue or PartialValue's user UUIDS, into usernames.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### UserUuidTransformation

        public UserUuidTransformation([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext)

        Parameters:

        `serviceContext` - to be used to fetch user UUIDS into usernames

-   ## Method Details

    -   ### usernameUuidTransformation

        public [UserUuidTransformation.Action](UserUuidTransformation.Action.html "enum class in com.appiancorp.suiteapi.process.history") usernameUuidTransformation([AuditHistoryRow](AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history") auditHistoryRow)

        Transform this auditHistoryRow's user UUID, and its CompleteValue or PartialValue's user UUIDS, into usernames. Do not do this more than once to any given row, or it will attempt to transform usernames as if they were user UUIDs. This may involve calls to the Personalization engine (if POPULATED\_UUID is returned).

        Parameters:

        `auditHistoryRow` -

        Returns:

        Action.POPULATED\_UUID is a UUID was populated from other than cache, otherwise Action.NONE