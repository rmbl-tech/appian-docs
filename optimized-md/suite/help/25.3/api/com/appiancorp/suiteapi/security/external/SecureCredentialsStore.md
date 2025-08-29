---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/security/external/SecureCredentialsStore.html
original_path: api/com/appiancorp/suiteapi/security/external/SecureCredentialsStore.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.security.external](package-summary.html)

# Interface SecureCredentialsStore

* * *

public interface SecureCredentialsStore

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getSystemSecuredValues](#getSystemSecuredValues\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalSystemUniqueKey)`

    Returns a map of the system-wide keys and values for the external system identified by the given key; the values are stored in the map in unencrypted form

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getUserSecuredValues](#getUserSecuredValues\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalSystemUniqueKey)`

    Returns a map of keys and values for the external system identified by the given key for the current user; the values are stored in the map in unencrypted form.

-   ## Method Details

    -   ### getSystemSecuredValues

        [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getSystemSecuredValues([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalSystemUniqueKey) throws [InsufficientPrivilegesException](../../../exceptions/InsufficientPrivilegesException.html "class in com.appiancorp.exceptions"), [ObjectNotFoundException](../../../exceptions/ObjectNotFoundException.html "class in com.appiancorp.exceptions")

        Returns a map of the system-wide keys and values for the external system identified by the given key; the values are stored in the map in unencrypted form

        Parameters:

        `externalSystemUniqueKey` -

        Throws:

        `[InsufficientPrivilegesException](../../../exceptions/InsufficientPrivilegesException.html "class in com.appiancorp.exceptions")`

        `[ObjectNotFoundException](../../../exceptions/ObjectNotFoundException.html "class in com.appiancorp.exceptions")`

    -   ### getUserSecuredValues

        [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getUserSecuredValues([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalSystemUniqueKey) throws [InsufficientPrivilegesException](../../../exceptions/InsufficientPrivilegesException.html "class in com.appiancorp.exceptions"), [ObjectNotFoundException](../../../exceptions/ObjectNotFoundException.html "class in com.appiancorp.exceptions")

        Returns a map of keys and values for the external system identified by the given key for the current user; the values are stored in the map in unencrypted form.

        Parameters:

        `externalSystemUniqueKey` -

        Throws:

        `[InsufficientPrivilegesException](../../../exceptions/InsufficientPrivilegesException.html "class in com.appiancorp.exceptions")`

        `[ObjectNotFoundException](../../../exceptions/ObjectNotFoundException.html "class in com.appiancorp.exceptions")`