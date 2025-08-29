---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/ContentRoleSet.html
original_path: api/com/appiancorp/suiteapi/content/ContentRoleSet.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class ContentRoleSet

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.common.RoleSet](../common/RoleSet.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.content.ContentRoleSet

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ContentRoleSet extends [RoleSet](../common/RoleSet.html "class in com.appiancorp.suiteapi.common")

This class represents the access permissions for a Content item.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.content.ContentRoleSet)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ContentRoleSet](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[getAdministrator](#getAdministrator\(\))()`

    Returns true if you have the [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) role.

    `boolean`

    `[getAuthor](#getAuthor\(\))()`

    Returns true if you have the [`ContentRoleMap.AUTHOR`](ContentRoleMap.html#AUTHOR) role.

    `boolean`

    `[getCanAdministrate](#getCanAdministrate\(\))()`

    Returns true if you have the [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) role.

    `boolean`

    `[getCanEdit](#getCanEdit\(\))()`

    Returns true if you have the [`ContentRoleMap.AUTHOR`](ContentRoleMap.html#AUTHOR) or [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) role.

    `boolean`

    `[getCanView](#getCanView\(\))()`

    Returns true if you have the [`ContentRoleMap.READER`](ContentRoleMap.html#READER), [`ContentRoleMap.AUTHOR`](ContentRoleMap.html#AUTHOR), or [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) roles.

    `boolean`

    `[getNoAccess](#getNoAccess\(\))()`

    Returns true if you have no roles.

    `boolean`

    `[getReader](#getReader\(\))()`

    Returns true if you have the [`ContentRoleMap.READER`](ContentRoleMap.html#READER) role.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[RoleSet](../common/RoleSet.html "class in com.appiancorp.suiteapi.common")

    `[getRoles](../common/RoleSet.html#getRoles\(\)), [hasRole](../common/RoleSet.html#hasRole\(java.lang.String\)), [setRoles](../common/RoleSet.html#setRoles\(java.lang.String%5B%5D\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\)), [toString](../common/Identity.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ContentRoleSet

        public ContentRoleSet()

-   ## Method Details

    -   ### getAuthor

        public boolean getAuthor()

        Returns true if you have the [`ContentRoleMap.AUTHOR`](ContentRoleMap.html#AUTHOR) role.

        Returns:

        true if you have the [`ContentRoleMap.AUTHOR`](ContentRoleMap.html#AUTHOR) role.

    -   ### getAdministrator

        public boolean getAdministrator()

        Returns true if you have the [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) role.

        Returns:

        true if you have the [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) role.

    -   ### getReader

        public boolean getReader()

        Returns true if you have the [`ContentRoleMap.READER`](ContentRoleMap.html#READER) role.

        Returns:

        true if you have the [`ContentRoleMap.READER`](ContentRoleMap.html#READER) role.

    -   ### getNoAccess

        public boolean getNoAccess()

        Returns true if you have no roles.

        Returns:

        true if you have no roles.

    -   ### getCanEdit

        public boolean getCanEdit()

        Returns true if you have the [`ContentRoleMap.AUTHOR`](ContentRoleMap.html#AUTHOR) or [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) role.

        Returns:

        true if you have the [`ContentRoleMap.AUTHOR`](ContentRoleMap.html#AUTHOR) or [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) role.

    -   ### getCanAdministrate

        public boolean getCanAdministrate()

        Returns true if you have the [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) role.

        Returns:

        true if you have the [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) role.

    -   ### getCanView

        public boolean getCanView()

        Returns true if you have the [`ContentRoleMap.READER`](ContentRoleMap.html#READER), [`ContentRoleMap.AUTHOR`](ContentRoleMap.html#AUTHOR), or [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) roles.

        Returns:

        true if you have the [`ContentRoleMap.READER`](ContentRoleMap.html#READER), [`ContentRoleMap.AUTHOR`](ContentRoleMap.html#AUTHOR), or [`ContentRoleMap.ADMINISTRATOR`](ContentRoleMap.html#ADMINISTRATOR) roles.