---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/GlobalStringId.html
original_path: api/com/appiancorp/suiteapi/common/GlobalStringId.html
version: "25.3"
title: "Interface GlobalStringId"
page_id: "api/com/appiancorp/suiteapi/common/GlobalStringId"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface GlobalStringId

All Superinterfaces:

`[LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common")`

* * *

public interface GlobalStringId extends [LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common")

This bean is used to identify an object with `String` Id both locally and remotely. The local identifier is immediately available through the LocalStringId interface, whereas the remote identifier is available through `RemoteStringId` interface. The remote identifier may be null if the object can only be identified locally.

See Also:

-   [`LocalStringId`](LocalStringId.html "interface in com.appiancorp.suiteapi.common")
-   [`RemoteStringId`](RemoteStringId.html "interface in com.appiancorp.suiteapi.common")

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[RemoteStringId](RemoteStringId.html "interface in com.appiancorp.suiteapi.common")`

    `[getRemoteId](#getRemoteId\(\))()`

    Returns the remote id of this object's instance identifier, `null` if the object is only locally identified.

    `void`

    `[setRemoteStringId](#setRemoteStringId\(com.appiancorp.suiteapi.common.RemoteStringId\))([RemoteStringId](RemoteStringId.html "interface in com.appiancorp.suiteapi.common") id_)`

    Sets this object's remote identifier.

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common")

    `[getStringId](LocalStringId.html#getStringId\(\)), [setStringId](LocalStringId.html#setStringId\(java.lang.String\))`

-   ## Method Details

    -   ### getRemoteId

        [RemoteStringId](RemoteStringId.html "interface in com.appiancorp.suiteapi.common") getRemoteId()

        Returns the remote id of this object's instance identifier, `null` if the object is only locally identified.

        Returns:

        the remote id

    -   ### setRemoteStringId

        void setRemoteStringId([RemoteStringId](RemoteStringId.html "interface in com.appiancorp.suiteapi.common") id\_)

        Sets this object's remote identifier.

        Parameters:

        `id_` - Remote Id to set

        See Also:

        -   [`getRemoteId()`](#getRemoteId\(\))