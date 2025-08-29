---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/package-tree.html
original_path: api/com/appiancorp/suiteapi/process/framework/package-tree.html
version: "25.3"
title: "Hierarchy For Package com.appiancorp.suiteapi.process.framework"
page_id: "api/com/appiancorp/suiteapi/process/framework/package-tree"
section: "Class Hierarchy"
tags: ["appian","docs","v25.3"]
---


# Hierarchy For Package com.appiancorp.suiteapi.process.framework

Package Hierarchies:

-   [All Packages](../../../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   com.appiancorp.suiteapi.process.framework.[AbstractActivity](AbstractActivity.html "class in com.appiancorp.suiteapi.process.framework") (implements com.appiancorp.suiteapi.process.framework.[SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework"))
    -   com.appiancorp.suiteapi.process.framework.[ActivityExecutionMetadata](ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.process.framework.[AppianSmartService](AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework")
    -   com.appiancorp.suiteapi.process.framework.[EmptyActivityParameterHelper](EmptyActivityParameterHelper.html "class in com.appiancorp.suiteapi.process.framework") (implements com.appiancorp.suiteapi.process.framework.[ActivityParameterHelper](ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework"))
    -   com.appiancorp.suiteapi.process.framework.[SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")
    -   com.appiancorp.suiteapi.process.framework.[StrutsMessageHolder](StrutsMessageHolder.html "class in com.appiancorp.suiteapi.process.framework") (implements com.appiancorp.suiteapi.process.framework.[MessageHolder](MessageHolder.html "interface in com.appiancorp.suiteapi.process.framework"))
    -   java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   java.lang.[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")
            -   com.appiancorp.suiteapi.process.framework.[ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")
                -   com.appiancorp.suiteapi.process.framework.[HandledActivityExecutionException](HandledActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")
                -   com.appiancorp.suiteapi.process.framework.[RetryableActivityExecutionException](RetryableActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework") (implements com.appiancorp.suiteapi.common.exceptions.[Retryable](../../common/exceptions/Retryable.html "interface in com.appiancorp.suiteapi.common.exceptions"))

## Interface Hierarchy

-   com.appiancorp.suiteapi.process.framework.[MessageContainer](MessageContainer.html "interface in com.appiancorp.suiteapi.process.framework")
-   com.appiancorp.suiteapi.process.framework.[MessageHolder](MessageHolder.html "interface in com.appiancorp.suiteapi.process.framework")
-   java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")
    -   com.appiancorp.suiteapi.process.framework.[ActivityParameterHelper](ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework")
-   com.appiancorp.suiteapi.process.framework.[SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")

## Annotation Interface Hierarchy

-   com.appiancorp.suiteapi.process.framework.[Attended](Attended.html "annotation interface in com.appiancorp.suiteapi.process.framework") (implements java.lang.annotation.[Annotation](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Annotation.html "class or interface in java.lang.annotation"))
-   com.appiancorp.suiteapi.process.framework.[Input](Input.html "annotation interface in com.appiancorp.suiteapi.process.framework") (implements java.lang.annotation.[Annotation](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Annotation.html "class or interface in java.lang.annotation"))
-   com.appiancorp.suiteapi.process.framework.[Order](Order.html "annotation interface in com.appiancorp.suiteapi.process.framework") (implements java.lang.annotation.[Annotation](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Annotation.html "class or interface in java.lang.annotation"))
-   com.appiancorp.suiteapi.process.framework.[Unattended](Unattended.html "annotation interface in com.appiancorp.suiteapi.process.framework") (implements java.lang.annotation.[Annotation](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Annotation.html "class or interface in java.lang.annotation"))

## Enum Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<E> (implements java.lang.[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<T>, java.lang.constant.[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant"), java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.process.framework.[Editable](Editable.html "enum class in com.appiancorp.suiteapi.process.framework")
        -   com.appiancorp.suiteapi.process.framework.[Required](Required.html "enum class in com.appiancorp.suiteapi.process.framework")