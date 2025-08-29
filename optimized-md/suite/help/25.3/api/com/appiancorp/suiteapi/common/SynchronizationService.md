---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/SynchronizationService.html
original_path: api/com/appiancorp/suiteapi/common/SynchronizationService.html
version: "25.3"
title: "Interface SynchronizationService"
page_id: "api/com/appiancorp/suiteapi/common/SynchronizationService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface SynchronizationService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface SynchronizationService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

This interface and all of the methods defined within are obsolete and will be removed in a future release.

This interface contains methods used when running multiple instances of Appian applications and sychronizing some or all data between them. Currently, these methods are only implemented for discussion forums. All of these method take a parameter indicating the type of object that is being queried about or manipulated. The proper value for type can be obtained from [`ObjectTypeMapping`](ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

See Also:

-   [`ObjectTypeMapping`](ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")
-   [`Forum`](../forums/Forum.html "class in com.appiancorp.suiteapi.forums")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[doesRemoteIDExist$UPDATES](#doesRemoteIDExist$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getNextRemoteId$UPDATES](#getNextRemoteId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setRemoteId$UPDATES](#setRemoteId$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[doesRemoteIDExist](#doesRemoteIDExist\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeOfObject_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") remoteId_)`

    Deprecated.

    Determine whether a remote id exists.

    `[RemoteId](RemoteId.html "interface in com.appiancorp.suiteapi.common")`

    `[getNextRemoteId](#getNextRemoteId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeOfObject_)`

    Deprecated.

    Get the next available remote id.

    `void`

    `[setRemoteId](#setRemoteId\(java.lang.Long,java.lang.Long,java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeOfObject_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") localId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newInstanceId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") remoteId_)`

    Deprecated.

    Set the remote id of a target object.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### setRemoteId$UPDATES

        static final boolean setRemoteId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.SynchronizationService.setRemoteId$UPDATES)

    -   ### doesRemoteIDExist$UPDATES

        static final boolean doesRemoteIDExist$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.SynchronizationService.doesRemoteIDExist$UPDATES)

    -   ### getNextRemoteId$UPDATES

        static final boolean getNextRemoteId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.SynchronizationService.getNextRemoteId$UPDATES)

-   ## Method Details

    -   ### setRemoteId

        void setRemoteId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeOfObject\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") localId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newInstanceId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") remoteId\_)

        Deprecated.

        Set the remote id of a target object. Only succeeds if the object's remote id is currently `null`.

        Parameters:

        `typeOfObject_` - The type of the target object.

        `localId_` - The local id of the target object.

        `newInstanceId_` - The instance id to be assigned to the target object.

        `remoteId_` - The remote id to be assigned to the target object.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### doesRemoteIDExist

        boolean doesRemoteIDExist([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeOfObject\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") remoteId\_)

        Deprecated.

        Determine whether a remote id exists. The implied instance id is that of the instance within which this code runs.

        Parameters:

        `typeOfObject_` - The type of the object.

        `remoteId_` - The remote ID for which to check.

        Returns:

        `true` if the remote id already exists; `false` otherwise.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getNextRemoteId

        [RemoteId](RemoteId.html "interface in com.appiancorp.suiteapi.common") getNextRemoteId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeOfObject\_)

        Deprecated.

        Get the next available remote id. The implied instance id is that of the instance within which this code runs.

        Parameters:

        `typeOfObject_` - The type of the object.

        Returns:

        The next available remote ID for the type of object specified.

        Throws:

        `ServiceException` - if any system-level error occurs