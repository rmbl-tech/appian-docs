---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/SmartServiceContext.html
original_path: api/com/appiancorp/suiteapi/process/framework/SmartServiceContext.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Interface SmartServiceContext

All Known Implementing Classes:

`[AbstractActivity](AbstractActivity.html "class in com.appiancorp.suiteapi.process.framework")`

* * *

public interface SmartServiceContext

Context available to Smart Service at runtime. This provides execution time information regarding the Process Model, User context, and Locale information.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[ActivityExecutionMetadata](ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework")`

    `[getMetadata](#getMetadata\(\))()`

    Returns the metadata associated with this execution, including properties related to the Process Model and Tasks.

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getPrimaryLocale](#getPrimaryLocale\(\))()`

    Returns the primary Locale of the Appian System.

    `[ProcessModelProperties](../ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModelProperties](#getProcessModelProperties\(\))()`

    `[ProcessProperties](../ProcessProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessProperties](#getProcessProperties\(\))()`

    `[TaskProperties](../TaskProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getTaskProperties](#getTaskProperties\(\))()`

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getUserLocale](#getUserLocale\(\))()`

    Returns the Locale of the User executing this Smart Service.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUsername](#getUsername\(\))()`

    Returns the User for whom this Smart Service is executing.

-   ## Method Details

    -   ### getMetadata

        [ActivityExecutionMetadata](ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework") getMetadata()

        Returns the metadata associated with this execution, including properties related to the Process Model and Tasks.

        Returns:

    -   ### getProcessModelProperties

        [ProcessModelProperties](../ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") getProcessModelProperties()

    -   ### getProcessProperties

        [ProcessProperties](../ProcessProperties.html "class in com.appiancorp.suiteapi.process") getProcessProperties()

    -   ### getTaskProperties

        [TaskProperties](../TaskProperties.html "class in com.appiancorp.suiteapi.process") getTaskProperties()

    -   ### getUsername

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUsername()

        Returns the User for whom this Smart Service is executing.

        See Also:

        -   [`getUserLocale()`](#getUserLocale\(\))

    -   ### getPrimaryLocale

        [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getPrimaryLocale()

        Returns the primary Locale of the Appian System.

        Returns:

        See Also:

        -   [`getUserLocale()`](#getUserLocale\(\))

    -   ### getUserLocale

        [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getUserLocale()

        Returns the Locale of the User executing this Smart Service.

        See Also:

        -   [`getUsername()`](#getUsername\(\))
        -   [`getPrimaryLocale()`](#getPrimaryLocale\(\))