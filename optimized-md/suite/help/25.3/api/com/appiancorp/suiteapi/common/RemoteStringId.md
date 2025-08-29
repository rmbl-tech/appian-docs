---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/RemoteStringId.html
original_path: api/com/appiancorp/suiteapi/common/RemoteStringId.html
version: "25.3"
title: "Interface RemoteStringId"
page_id: "api/com/appiancorp/suiteapi/common/RemoteStringId"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface RemoteStringId

All Superinterfaces:

`[LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common")`

* * *

public interface RemoteStringId extends [LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common")

This bean represents the remote identifier of an object. The remote identifier is used to identify an object outside the scope of one application instance. The `id` property represents the local identifier of the object within the scope of the specified application instance. When the `id`property is valid within the current application instance, the `instanceId` property may be `null`. Remote identifiers are used when the application instance that owns the object cannot be assumed unique, e.g. in replicated and synchronized application instances.

See Also:

-   [`LocalStringId`](LocalStringId.html "interface in com.appiancorp.suiteapi.common")

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getInstanceId](#getInstanceId\(\))()`

    Returns the instance identifier of the applicaiton owning this object.

    `void`

    `[setInstanceId](#setInstanceId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the instance identifier of the application owning this object.

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common")

    `[getStringId](LocalStringId.html#getStringId\(\)), [setStringId](LocalStringId.html#setStringId\(java.lang.String\))`

-   ## Method Details

    -   ### getInstanceId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getInstanceId()

        Returns the instance identifier of the applicaiton owning this object.

        Returns:

        the instance identifier of the application owning this object, `null` if the object is only locally identified.

        See Also:

        -   [`setInstanceId(Long)`](#setInstanceId\(java.lang.Long\))

    -   ### setInstanceId

        void setInstanceId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the instance identifier of the application owning this object.

        Parameters:

        `id_` - the instance identifier.

        See Also:

        -   [`getInstanceId()`](#getInstanceId\(\))