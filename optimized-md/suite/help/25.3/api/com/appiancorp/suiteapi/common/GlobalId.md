---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/GlobalId.html
original_path: api/com/appiancorp/suiteapi/common/GlobalId.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface GlobalId

All Superinterfaces:

`[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

All Known Implementing Classes:

`[DiscussionThread](../forums/DiscussionThread.html "class in com.appiancorp.suiteapi.forums")`, `[Forum](../forums/Forum.html "class in com.appiancorp.suiteapi.forums")`, `[Message](../forums/Message.html "class in com.appiancorp.suiteapi.forums")`

* * *

public interface GlobalId extends [LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")

This bean is used to identify an object with `Long` Id both locally and remotely. The local identifier is immediately available through the LocalId interface, whereas the remote identifier is available through the `RemoteId` interface. The remote identifier may be `null` if the object can only be identified locally.

See Also:

-   [`LocalId`](LocalId.html "interface in com.appiancorp.suiteapi.common")
-   [`RemoteId`](RemoteId.html "interface in com.appiancorp.suiteapi.common")

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[RemoteId](RemoteId.html "interface in com.appiancorp.suiteapi.common")`

    `[getRemoteId](#getRemoteId\(\))()`

    Returns the `RemoteId` of this object's instance identifier, `null` if the object is only locally identified.

    `void`

    `[setRemoteId](#setRemoteId\(com.appiancorp.suiteapi.common.RemoteId\))([RemoteId](RemoteId.html "interface in com.appiancorp.suiteapi.common") id_)`

    Sets this object's remote identifier.

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")

    `[getId](LocalId.html#getId\(\)), [setId](LocalId.html#setId\(java.lang.Long\))`

-   ## Method Details

    -   ### getRemoteId

        [RemoteId](RemoteId.html "interface in com.appiancorp.suiteapi.common") getRemoteId()

        Returns the `RemoteId` of this object's instance identifier, `null` if the object is only locally identified.

        Returns:

        Object's remote Id.

        See Also:

        -   [`setRemoteId(RemoteId)`](#setRemoteId\(com.appiancorp.suiteapi.common.RemoteId\))

    -   ### setRemoteId

        void setRemoteId([RemoteId](RemoteId.html "interface in com.appiancorp.suiteapi.common") id\_)

        Sets this object's remote identifier.

        Parameters:

        `id_` - remove Id to set

        See Also:

        -   [`getRemoteId()`](#getRemoteId\(\))