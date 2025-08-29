---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/PartialValue.html
original_path: api/com/appiancorp/suiteapi/process/history/PartialValue.html
version: "25.3"
title: "Class PartialValue"
page_id: "api/com/appiancorp/suiteapi/process/history/PartialValue"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.history](package-summary.html)

# Class PartialValue

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.history.PartialValue

* * *

public final class PartialValue extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

PartialValue A PartialValue contains instructions to modify another value, such as changing particular fields or array elements, done in this way to save storage space. It is not meaningful by itself. Apply this PartialValue onto an existing CompleteValue, yielding another CompleteValue. Some AuditHistoryRows will have PartialValues, others will have CompleteValues. The first row of a given value for a domain!key in a process context will always be a CompleteValue, but subsequent rows may be PartialValues, which may then be applied \_in order\_ to the previous CompleteValue to yield another CompleteValue.

See Also:

-   [`CompleteValue`](CompleteValue.html "class in com.appiancorp.suiteapi.process.history")

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[CompleteValue](CompleteValue.html "class in com.appiancorp.suiteapi.process.history")`

    `[apply](#apply\(com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.process.history.CompleteValue\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [CompleteValue](CompleteValue.html "class in com.appiancorp.suiteapi.process.history") completeValue)`

    apply this PartialValue to a previous CompleteValue, yielding the previous CompleteValue with the differences implied by this PartialValue applied.

    `[CompleteValue](CompleteValue.html "class in com.appiancorp.suiteapi.process.history")`

    `[apply](#apply\(com.appiancorp.suiteapi.process.history.CompleteValue\))([CompleteValue](CompleteValue.html "class in com.appiancorp.suiteapi.process.history") completeValue)`

    apply this PartialValue to a previous CompleteValue, yielding the previous CompleteValue with the differences implied by this PartialValue applied.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### apply

        public [CompleteValue](CompleteValue.html "class in com.appiancorp.suiteapi.process.history") apply([CompleteValue](CompleteValue.html "class in com.appiancorp.suiteapi.process.history") completeValue)

        apply this PartialValue to a previous CompleteValue, yielding the previous CompleteValue with the differences implied by this PartialValue applied.

        Parameters:

        `completeValue` -

        Returns:

    -   ### apply

        public [CompleteValue](CompleteValue.html "class in com.appiancorp.suiteapi.process.history") apply([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, [CompleteValue](CompleteValue.html "class in com.appiancorp.suiteapi.process.history") completeValue)

        apply this PartialValue to a previous CompleteValue, yielding the previous CompleteValue with the differences implied by this PartialValue applied.

        Parameters:

        `serviceContext` - (could be used for Locale in casting dates and times to String)

        `completeValue` -

        Returns:

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        this result String is subject to change