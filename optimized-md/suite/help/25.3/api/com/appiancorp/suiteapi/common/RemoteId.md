---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/RemoteId.html
original_path: api/com/appiancorp/suiteapi/common/RemoteId.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface RemoteId

All Superinterfaces:

`[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public interface RemoteId extends [LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")

This bean represents the remote identifier of an object. The remote identifier is used to identify an object outside the scope of one application instance. The `id` property represents the local identifier of the object within the scope of the specified application instance. When the `id` property is valid within the current application instance, the `instanceId` property may be `null`. Remote identifiers are used when the application instance that owns the object cannot be assumed unique, e.g. in replicated and synchronized application instances.

See Also:

-   [`LocalId`](LocalId.html "interface in com.appiancorp.suiteapi.common")

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getInstanceId](#getInstanceId\(\))()`

    Returns the instance identifier of the application owning this object.

    `void`

    `[setInstanceId](#setInstanceId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the instance identifier of the application owning this object.

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")

    `[getId](LocalId.html#getId\(\)), [setId](LocalId.html#setId\(java.lang.Long\))`

-   ## Method Details

    -   ### getInstanceId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getInstanceId()

        Returns the instance identifier of the application owning this object.

        Returns:

        the instance identifier of the application owning this object, `null` if the object is only locally identified.

        See Also:

        -   [`setInstanceId(Long)`](#setInstanceId\(java.lang.Long\))

    -   ### setInstanceId

        void setInstanceId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the instance identifier of the application owning this object.

        Parameters:

        `id_` - The instance identifier

        See Also:

        -   [`getInstanceId()`](#getInstanceId\(\))