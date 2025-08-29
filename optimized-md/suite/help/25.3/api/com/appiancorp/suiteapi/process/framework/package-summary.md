---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/package-summary.html
original_path: api/com/appiancorp/suiteapi/process/framework/package-summary.html
version: "25.3"
title: "Package com.appiancorp.suiteapi.process.framework"
page_id: "api/com/appiancorp/suiteapi/process/framework/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.suiteapi.process.framework

* * *

package com.appiancorp.suiteapi.process.framework

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.process](../package-summary.html)

-   All Classes and InterfacesInterfacesClassesEnum ClassesExceptionsAnnotation Interfaces

    Class

    Description

    [AbstractActivity](AbstractActivity.html "class in com.appiancorp.suiteapi.process.framework")

    Abstract class to be subclassed when implementing a Java execution environment activity.

    [ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")

    This is an Exception wrapper, which is used by Activity classes to inform about error conditions while running the activity.

    [ActivityExecutionMetadata](ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework")

    Metadata attributes of an activity that are needed during its execution.

    [ActivityParameterHelper](ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework")

    Classes that implement this interface provide additional functionality for passing parameters to and receiving parameters from a user interface.

    [AppianSmartService](AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework")

    Abstract class to extend when creating a custom smart service.

    [Attended](Attended.html "annotation interface in com.appiancorp.suiteapi.process.framework")

    [Editable](Editable.html "enum class in com.appiancorp.suiteapi.process.framework")

    [EmptyActivityParameterHelper](EmptyActivityParameterHelper.html "class in com.appiancorp.suiteapi.process.framework")

    This class provides default, do-nothing implementations of all `ActivityParameterHelper` methods.

    [HandledActivityExecutionException](HandledActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")

    [Input](Input.html "annotation interface in com.appiancorp.suiteapi.process.framework")

    The @Input annotation is an optional annotation for smart service setter methods that allows for additional input behaviors to be described.

    [MessageContainer](MessageContainer.html "interface in com.appiancorp.suiteapi.process.framework")

    Container populated with error messages by the `validate` or `onSave` methods in a smart service class that extends [`AppianSmartService`](AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework").

    [MessageHolder](MessageHolder.html "interface in com.appiancorp.suiteapi.process.framework")

    Interface to hold error messages.

    [Order](Order.html "annotation interface in com.appiancorp.suiteapi.process.framework")

    This annotation is used for specifying the order in which the inputs and outputs of the Smart Service should appear in the data tab.

    [Required](Required.html "enum class in com.appiancorp.suiteapi.process.framework")

    Declares whether the input parameter is required.

    [RetryableActivityExecutionException](RetryableActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")

    An [`ActivityExecutionException`](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework") that is transient.

    [SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")

    Wrapper for `ActivityReturnVariable` that enforces non-null value, and contains only getters so that users cannot change the values.

    [SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")

    Context available to Smart Service at runtime.

    [StrutsMessageHolder](StrutsMessageHolder.html "class in com.appiancorp.suiteapi.process.framework")

    [Unattended](Unattended.html "annotation interface in com.appiancorp.suiteapi.process.framework")