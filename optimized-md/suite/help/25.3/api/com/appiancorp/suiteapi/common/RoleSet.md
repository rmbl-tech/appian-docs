---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/RoleSet.html
original_path: api/com/appiancorp/suiteapi/common/RoleSet.html
version: "25.3"
title: "Class RoleSet"
page_id: "api/com/appiancorp/suiteapi/common/RoleSet"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class RoleSet

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.common.RoleSet

All Implemented Interfaces:

`[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ContentRoleSet](../content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content")`

* * *

public class RoleSet extends [Identity](Identity.html "class in com.appiancorp.suiteapi.common")

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.RoleSet)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[RoleSet](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getRoles](#getRoles\(\))()`

    `boolean`

    `[hasRole](#hasRole\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") roleName_)`

    `void`

    `[setRoles](#setRoles\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] roles_)`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](Identity.html#equals\(java.lang.Object\)), [getId](Identity.html#getId\(\)), [getName](Identity.html#getName\(\)), [getUuid](Identity.html#getUuid\(\)), [hashCode](Identity.html#hashCode\(\)), [setId](Identity.html#setId\(java.lang.Long\)), [setName](Identity.html#setName\(java.lang.String\)), [setUuid](Identity.html#setUuid\(java.lang.String\)), [toString](Identity.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### RoleSet

        public RoleSet()

-   ## Method Details

    -   ### setRoles

        public void setRoles([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] roles\_)

    -   ### getRoles

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getRoles()

    -   ### hasRole

        public boolean hasRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") roleName\_)