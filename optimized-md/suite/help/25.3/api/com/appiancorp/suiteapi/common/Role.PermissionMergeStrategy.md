---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/Role.PermissionMergeStrategy.html
original_path: api/com/appiancorp/suiteapi/common/Role.PermissionMergeStrategy.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface Role.PermissionMergeStrategy

Enclosing class:

[Role](Role.html "class in com.appiancorp.suiteapi.common")

* * *

public static interface Role.PermissionMergeStrategy

Takes a set of existing permissions and a set of new permissions and decides how to combine them into a result set. Uses hashCode/equals for set operations. Implementors of this interface should not modify the input sets. Instead, return a new set or a set that represents a new view of the inputs.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `<T> [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<T>`

    `[apply](#apply\(java.util.Set,java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<T> existingPermissions, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<T> newPermissions)`

-   ## Method Details

    -   ### apply

        <T> [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<T> apply([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<T> existingPermissions, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<T> newPermissions)