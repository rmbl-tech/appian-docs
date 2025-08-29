---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/NotePermissions.html
original_path: api/com/appiancorp/suiteapi/process/NotePermissions.html
version: "25.3"
title: "Class NotePermissions"
page_id: "api/com/appiancorp/suiteapi/process/NotePermissions"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class NotePermissions

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.NotePermissions

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class NotePermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

Permissions for the user on the `Note`

See Also:

-   [`Note`](Note.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.NotePermissions)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[NotePermissions](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[isDeletable](#isDeletable\(\))()`

    Deprecated.

    Returns whether the note can be deleted or not.

    `boolean`

    `[isUpdatable](#isUpdatable\(\))()`

    Deprecated.

    Returns whether the note can be updated or not.

    `void`

    `[setDeletable](#setDeletable\(boolean\))(boolean deletable_)`

    Deprecated.

    Sets whether the note can be deleted or not.

    `void`

    `[setUpdatable](#setUpdatable\(boolean\))(boolean updatable_)`

    Deprecated.

    Sets whether the note can be updated or not.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### NotePermissions

        public NotePermissions()

        Deprecated.

-   ## Method Details

    -   ### isDeletable

        public boolean isDeletable()

        Deprecated.

        Returns whether the note can be deleted or not.

        Returns:

        `true` if the note can be deleted, else `false`.

    -   ### setDeletable

        public void setDeletable(boolean deletable\_)

        Deprecated.

        Sets whether the note can be deleted or not.

        Parameters:

        `deletable_` - `true` if the note can be deleted, else `false`.

    -   ### isUpdatable

        public boolean isUpdatable()

        Deprecated.

        Returns whether the note can be updated or not.

        Returns:

        `true` if the note can be updated, else `false`.

    -   ### setUpdatable

        public void setUpdatable(boolean updatable\_)

        Deprecated.

        Sets whether the note can be updated or not.

        Parameters:

        `updatable_` - `true` if the note can be updated, else `false`.