---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/TaskUrlService.html
original_path: api/com/appiancorp/suiteapi/process/TaskUrlService.html
version: "25.3"
title: "Class TaskUrlService"
page_id: "api/com/appiancorp/suiteapi/process/TaskUrlService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class TaskUrlService

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.TaskUrlService

All Implemented Interfaces:

`com.appiancorp.common.service.UrlService`

* * *

public class TaskUrlService extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.common.service.UrlService

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TaskUrlService](#%3Cinit%3E\(com.appiancorp.common.config.LegacyServiceProvider,com.appiancorp.core.expr.portable.validation.opaqueid.PortableOpaqueUrlBuilder\))(com.appiancorp.common.config.LegacyServiceProvider legacyServiceProvider, com.appiancorp.core.expr.portable.validation.opaqueid.PortableOpaqueUrlBuilder opaqueUrlBuilder)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFullUrl](#getFullUrl\(long\))(long resourceId)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getOpaqueUri](#getOpaqueUri\(long\))(long resourceId)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TaskUrlService

        public TaskUrlService(com.appiancorp.common.config.LegacyServiceProvider legacyServiceProvider, com.appiancorp.core.expr.portable.validation.opaqueid.PortableOpaqueUrlBuilder opaqueUrlBuilder)

-   ## Method Details

    -   ### getOpaqueUri

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getOpaqueUri(long resourceId)

        Specified by:

        `getOpaqueUri` in interface `com.appiancorp.common.service.UrlService`

    -   ### getFullUrl

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFullUrl(long resourceId)

        Specified by:

        `getFullUrl` in interface `com.appiancorp.common.service.UrlService`