---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/history/CompleteValue.html
original_path: api/com/appiancorp/suiteapi/process/history/CompleteValue.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.history](package-summary.html)

# Class CompleteValue

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.history.CompleteValue

* * *

public final class CompleteValue extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

CompleteValue Some AuditHistoryRows will have PartialValues, others will have CompleteValues. The first row of a given value for a domain!key in a process context will always be a CompleteValue, but subsequent rows may be PartialValues, which may then be applied \_in order\_ to the previous CompleteValue to yield another CompleteValue.

See Also:

-   [`PartialValue`](PartialValue.html "class in com.appiancorp.suiteapi.process.history")

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[CompleteValue](#%3Cinit%3E\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type") typedValue)`

    Construct a CompleteValue from a TypedValue.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[getTypedValue](#getTypedValue\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### CompleteValue

        public CompleteValue([TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type") typedValue)

        Construct a CompleteValue from a TypedValue.

        Parameters:

        `typedValue` -

-   ## Method Details

    -   ### getTypedValue

        public [TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type") getTypedValue()

        Returns:

        the TypedValue representing this row's value

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        this result String is subject to change