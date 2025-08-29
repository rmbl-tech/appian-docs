---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/administration/AdminConsolePermissions.html
original_path: api/com/appiancorp/suiteapi/administration/AdminConsolePermissions.html
version: "25.3"
title: "Class AdminConsolePermissions"
page_id: "api/com/appiancorp/suiteapi/administration/AdminConsolePermissions"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.administration](package-summary.html)

# Class AdminConsolePermissions

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.administration.AdminConsolePermissions

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class AdminConsolePermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

This class pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

Contains the privileges related to the Administration Console.

See Also:

-   [`AdminConsoleRoleMap`](AdminConsoleRoleMap.html "class in com.appiancorp.suiteapi.administration")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.administration.AdminConsolePermissions)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AdminConsolePermissions](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[isEdit](#isEdit\(\))()`

    Deprecated.

    Indicates whether the user can edit Administration Console security settings.

    `boolean`

    `[isView](#isView\(\))()`

    Deprecated.

    Indicates whether the user can enter the Administration Console.

    `void`

    `[setEdit](#setEdit\(boolean\))(boolean edit_)`

    Deprecated.

    Sets whether the user can edit Administration Console security settings.

    `void`

    `[setView](#setView\(boolean\))(boolean view_)`

    Deprecated.

    Sets whether the user can enter the Administration Console.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AdminConsolePermissions

        public AdminConsolePermissions()

        Deprecated.

-   ## Method Details

    -   ### isEdit

        public boolean isEdit()

        Deprecated.

        Indicates whether the user can edit Administration Console security settings.

        Returns:

        `true` if the user can edit console security settings, `false` otherwise

    -   ### setEdit

        public void setEdit(boolean edit\_)

        Deprecated.

        Sets whether the user can edit Administration Console security settings.

        Parameters:

        `edit_` - `true` if the user can edit console security settings, `false` otherwise

    -   ### isView

        public boolean isView()

        Deprecated.

        Indicates whether the user can enter the Administration Console. If `true`, within the product they will be able also to create adminisitration pages, and view administration pages (they will only be able to view pages that they have permission to view through the page role maps of the pages).

        Returns:

        `true` if the user can do this, `false` otherwise

    -   ### setView

        public void setView(boolean view\_)

        Deprecated.

        Sets whether the user can enter the Administration Console. If `true`, within the product they will be able also to create adminisitration pages, and view administration pages (they will only be able to view pages that they have permission to view through the page role maps of the pages).

        Parameters:

        `view_` - `true` if the user can do this, `false` otherwise