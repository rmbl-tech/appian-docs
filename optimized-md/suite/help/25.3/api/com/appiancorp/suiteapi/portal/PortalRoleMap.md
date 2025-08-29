---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/PortalRoleMap.html
original_path: api/com/appiancorp/suiteapi/portal/PortalRoleMap.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class PortalRoleMap

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.common.PublicRoleMap](../common/PublicRoleMap.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.common.AEVRoleMap](../common/AEVRoleMap.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.portal.PortalRoleMap

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

Direct Known Subclasses:

`[PageRoleMap](PageRoleMap.html "class in com.appiancorp.suiteapi.portal")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class PortalRoleMap extends [AEVRoleMap](../common/AEVRoleMap.html "class in com.appiancorp.suiteapi.common")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Holds information about users and groups fulfilling administrator, editor and viewer roles for pages and portlets.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.portal.PortalRoleMap)

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[Map.Entry](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util")<[K](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang"),[V](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.common.[AEVRoleMap](../common/AEVRoleMap.html "class in com.appiancorp.suiteapi.common")

    `[EDITOR](../common/AEVRoleMap.html#EDITOR), [VIEWER](../common/AEVRoleMap.html#VIEWER)`

    ### Fields inherited from class com.appiancorp.suiteapi.common.[PublicRoleMap](../common/PublicRoleMap.html "class in com.appiancorp.suiteapi.common")

    `[ADMINISTRATOR](../common/PublicRoleMap.html#ADMINISTRATOR), [TYPE_GROUP](../common/PublicRoleMap.html#TYPE_GROUP), [TYPE_USER](../common/PublicRoleMap.html#TYPE_USER)`

    ### Fields inherited from class com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[AGGREGATE_SECURITY_KEY](../common/RoleMap.html#AGGREGATE_SECURITY_KEY), [SECURITY_KEY](../common/RoleMap.html#SECURITY_KEY), [TYPE_AGGREGATE_GROUP](../common/RoleMap.html#TYPE_AGGREGATE_GROUP), [TYPE_AGGREGATE_USER](../common/RoleMap.html#TYPE_AGGREGATE_USER), [TYPE_GROUP_UUIDS](../common/RoleMap.html#TYPE_GROUP_UUIDS), [TYPE_USER_UUIDS](../common/RoleMap.html#TYPE_USER_UUIDS)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PortalRoleMap](#%3Cinit%3E\(\))()`

    Deprecated.

     

    `[PortalRoleMap](#%3Cinit%3E\(com.appiancorp.suiteapi.common.RoleMap\))([RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common") roleMap)`

    Deprecated.

     

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.common.[AEVRoleMap](../common/AEVRoleMap.html "class in com.appiancorp.suiteapi.common")

    `[addEditorGroups](../common/AEVRoleMap.html#addEditorGroups\(java.lang.Long%5B%5D\)), [addEditors](../common/AEVRoleMap.html#addEditors\(java.lang.String%5B%5D\)), [addViewerGroups](../common/AEVRoleMap.html#addViewerGroups\(java.lang.Long%5B%5D\)), [addViewers](../common/AEVRoleMap.html#addViewers\(java.lang.String%5B%5D\)), [getEditorGroups](../common/AEVRoleMap.html#getEditorGroups\(\)), [getEditors](../common/AEVRoleMap.html#getEditors\(\)), [getViewerGroups](../common/AEVRoleMap.html#getViewerGroups\(\)), [getViewers](../common/AEVRoleMap.html#getViewers\(\)), [removeEditorGroups](../common/AEVRoleMap.html#removeEditorGroups\(java.lang.Long%5B%5D\)), [removeEditors](../common/AEVRoleMap.html#removeEditors\(java.lang.String%5B%5D\)), [removeViewerGroups](../common/AEVRoleMap.html#removeViewerGroups\(java.lang.Long%5B%5D\)), [removeViewers](../common/AEVRoleMap.html#removeViewers\(java.lang.String%5B%5D\)), [setEditorGroups](../common/AEVRoleMap.html#setEditorGroups\(java.lang.Long%5B%5D\)), [setEditors](../common/AEVRoleMap.html#setEditors\(java.lang.String%5B%5D\)), [setViewerGroups](../common/AEVRoleMap.html#setViewerGroups\(java.lang.Long%5B%5D\)), [setViewers](../common/AEVRoleMap.html#setViewers\(java.lang.String%5B%5D\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[PublicRoleMap](../common/PublicRoleMap.html "class in com.appiancorp.suiteapi.common")

    `[addAdministratorGroups](../common/PublicRoleMap.html#addAdministratorGroups\(java.lang.Long%5B%5D\)), [addAdministrators](../common/PublicRoleMap.html#addAdministrators\(java.lang.String%5B%5D\)), [getAdministratorGroups](../common/PublicRoleMap.html#getAdministratorGroups\(\)), [getAdministrators](../common/PublicRoleMap.html#getAdministrators\(\)), [removeAdministratorGroups](../common/PublicRoleMap.html#removeAdministratorGroups\(java.lang.Long%5B%5D\)), [removeAdministrators](../common/PublicRoleMap.html#removeAdministrators\(java.lang.String%5B%5D\)), [setAdministratorGroups](../common/PublicRoleMap.html#setAdministratorGroups\(java.lang.Long%5B%5D\)), [setAdministrators](../common/PublicRoleMap.html#setAdministrators\(java.lang.String%5B%5D\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[addActorsToRole](../common/RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [addActorsToRole](../common/RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [clear](../common/RoleMap.html#clear\(\)), [containsActors](../common/RoleMap.html#containsActors\(\)), [containsKey](../common/RoleMap.html#containsKey\(java.lang.Object\)), [containsValue](../common/RoleMap.html#containsValue\(java.lang.Object\)), [entrySet](../common/RoleMap.html#entrySet\(\)), [equals](../common/RoleMap.html#equals\(java.lang.Object\)), [get](../common/RoleMap.html#get\(java.lang.Object\)), [getActorsInRole](../common/RoleMap.html#getActorsInRole\(java.lang.String,java.lang.String\)), [getAggregateSecurity](../common/RoleMap.html#getAggregateSecurity\(\)), [getAllGroupIds](../common/RoleMap.html#getAllGroupIds\(\)), [getAllUsernames](../common/RoleMap.html#getAllUsernames\(\)), [getRole](../common/RoleMap.html#getRole\(java.lang.String\)), [getRoleNames](../common/RoleMap.html#getRoleNames\(\)), [getRoles](../common/RoleMap.html#getRoles\(\)), [getSecurity](../common/RoleMap.html#getSecurity\(\)), [hashCode](../common/RoleMap.html#hashCode\(\)), [init](../common/RoleMap.html#init\(com.appiancorp.suiteapi.common.RoleMap\)), [isEmpty](../common/RoleMap.html#isEmpty\(\)), [keySet](../common/RoleMap.html#keySet\(\)), [mergeWith](../common/RoleMap.html#mergeWith\(com.appiancorp.suiteapi.common.RoleMap\)), [put](../common/RoleMap.html#put\(java.lang.Object,java.lang.Object\)), [putAll](../common/RoleMap.html#putAll\(java.util.Map\)), [remove](../common/RoleMap.html#remove\(java.lang.Object\)), [removeActorsFromRole](../common/RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [removeActorsFromRole](../common/RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [removeAllRoles](../common/RoleMap.html#removeAllRoles\(\)), [setActorsInRole](../common/RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [setActorsInRole](../common/RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [setAggregateSecurity](../common/RoleMap.html#setAggregateSecurity\(java.lang.Integer\)), [setRole](../common/RoleMap.html#setRole\(com.appiancorp.suiteapi.common.Role\)), [setRoles](../common/RoleMap.html#setRoles\(com.appiancorp.suiteapi.common.Role%5B%5D\)), [setRoles](../common/RoleMap.html#setRoles\(java.util.Collection\)), [setSecurity](../common/RoleMap.html#setSecurity\(java.lang.Integer\)), [size](../common/RoleMap.html#size\(\)), [toString](../common/RoleMap.html#toString\(\)), [toXML](../common/RoleMap.html#toXML\(\)), [toXML](../common/RoleMap.html#toXML\(java.lang.StringBuilder\)), [values](../common/RoleMap.html#values\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[compute](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#compute\(K,java.util.function.BiFunction\) "class or interface in java.util"), [computeIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfAbsent\(K,java.util.function.Function\) "class or interface in java.util"), [computeIfPresent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfPresent\(K,java.util.function.BiFunction\) "class or interface in java.util"), [forEach](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#forEach\(java.util.function.BiConsumer\) "class or interface in java.util"), [getOrDefault](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#getOrDefault\(java.lang.Object,V\) "class or interface in java.util"), [merge](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#merge\(K,V,java.util.function.BiFunction\) "class or interface in java.util"), [putIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#putIfAbsent\(K,V\) "class or interface in java.util"), [remove](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#remove\(java.lang.Object,java.lang.Object\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V,V\) "class or interface in java.util"), [replaceAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replaceAll\(java.util.function.BiFunction\) "class or interface in java.util")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### PortalRoleMap

        public PortalRoleMap()

        Deprecated.

    -   ### PortalRoleMap

        public PortalRoleMap([RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common") roleMap)

        Deprecated.