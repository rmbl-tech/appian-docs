---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/NoteMetadata.html
original_path: api/com/appiancorp/suiteapi/process/NoteMetadata.html
version: "25.3"
title: "Class NoteMetadata"
page_id: "api/com/appiancorp/suiteapi/process/NoteMetadata"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class NoteMetadata

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.NoteMetadata

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[Note](Note.html "class in com.appiancorp.suiteapi.process")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class NoteMetadata extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

This class represents the Note that can be attached to ProcessModel, Process, ProcessNode or Task. This bean should only be used for communication between the Java and Database layers.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.NoteMetadata)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_TYPE_DELETED](#NOTE_TYPE_DELETED)`

    Deprecated.

    Constant representing the DELETED NoteMetadata type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_TYPE_EXCEPTION](#NOTE_TYPE_EXCEPTION)`

    Deprecated.

    Constant representing the Note added on exception type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_TYPE_NORMAL](#NOTE_TYPE_NORMAL)`

    Deprecated.

    Constant representing the NORMAL NoteMetadata type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_TYPE_REASSIGN_TASK](#NOTE_TYPE_REASSIGN_TASK)`

    Deprecated.

    Constant representing the REASSIGN\_TASK NoteMetadata type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOTE_TYPE_REJECT_TASK](#NOTE_TYPE_REJECT_TASK)`

    Deprecated.

    Constant representing the REJECT\_TASK NoteMetadata type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_AUTHOR](#SORT_BY_AUTHOR)`

    Deprecated.

    Constant representing sorting by NoteMetadata author field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CONTENT](#SORT_BY_CONTENT)`

    Deprecated.

    Constant representing sorting by NoteMetadata contents field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATE_DATE](#SORT_BY_CREATE_DATE)`

    Deprecated.

    Constant representing sorting by NoteMetadata createTimestamp field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

    Constant representing sorting by NoteMetadata ID field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LOCATION](#SORT_BY_LOCATION)`

    Deprecated.

    Constant representing sorting by NoteMetadata location(Where note is saved) field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TYPE](#SORT_BY_TYPE)`

    Deprecated.

    Constant representing sorting by NoteMetadata Type field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_UPDATE_DATE](#SORT_BY_UPDATE_DATE)`

    Deprecated.

    Constant representing sorting by NoteMetadata updateTimestamp field

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[NoteMetadata](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")`

    `[getAttachedTo](#getAttachedTo\(\))()`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAuthor](#getAuthor\(\))()`

    Deprecated.

     

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getCreateTimestamp](#getCreateTimestamp\(\))()`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocation](#getLocation\(\))()`

    Deprecated.

     

    `[NotePermissions](NotePermissions.html "class in com.appiancorp.suiteapi.process")`

    `[getPermissions](#getPermissions\(\))()`

    Deprecated.

     

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Deprecated.

     

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTypeAsString](#getTypeAsString\(\))()`

    Deprecated.

     

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getUpdateTimestamp](#getUpdateTimestamp\(\))()`

    Deprecated.

     

    `void`

    `[setAttachedTo](#setAttachedTo\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") attachedTo_)`

    Deprecated.

    Sets the LocalObject that the Note is attached to.

    `void`

    `[setAuthor](#setAuthor\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_)`

    Deprecated.

    Sets the author of the Note

    `void`

    `[setCreateTimestamp](#setCreateTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") createTimestamp_)`

    Deprecated.

    Sets the creation timestamp of Note

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Sets the Id of Note Object

    `void`

    `[setLocation](#setLocation\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") location_)`

    Deprecated.

    Sets the location where note contents are stored.

    `void`

    `[setPermissions](#setPermissions\(com.appiancorp.suiteapi.process.NotePermissions\))([NotePermissions](NotePermissions.html "class in com.appiancorp.suiteapi.process") permissions_)`

    Deprecated.

    Sets the Note permissions

    `void`

    `[setType](#setType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_)`

    Deprecated.

    Sets the type of Note

    `void`

    `[setUpdateTimestamp](#setUpdateTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") updateTimestamp_)`

    Deprecated.

    Sets the timestamp when Note was updated.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Deprecated.

     

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

        Constant representing sorting by NoteMetadata ID field

    -   ### SORT\_BY\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TYPE

        Deprecated.

        Constant representing sorting by NoteMetadata Type field

    -   ### SORT\_BY\_CREATE\_DATE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATE\_DATE

        Deprecated.

        Constant representing sorting by NoteMetadata createTimestamp field

    -   ### SORT\_BY\_UPDATE\_DATE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_UPDATE\_DATE

        Deprecated.

        Constant representing sorting by NoteMetadata updateTimestamp field

    -   ### SORT\_BY\_AUTHOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_AUTHOR

        Deprecated.

        Constant representing sorting by NoteMetadata author field

    -   ### SORT\_BY\_LOCATION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LOCATION

        Deprecated.

        Constant representing sorting by NoteMetadata location(Where note is saved) field

    -   ### SORT\_BY\_CONTENT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CONTENT

        Deprecated.

        Constant representing sorting by NoteMetadata contents field

    -   ### NOTE\_TYPE\_NORMAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_TYPE\_NORMAL

        Deprecated.

        Constant representing the NORMAL NoteMetadata type

    -   ### NOTE\_TYPE\_REASSIGN\_TASK

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_TYPE\_REASSIGN\_TASK

        Deprecated.

        Constant representing the REASSIGN\_TASK NoteMetadata type

    -   ### NOTE\_TYPE\_REJECT\_TASK

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_TYPE\_REJECT\_TASK

        Deprecated.

        Constant representing the REJECT\_TASK NoteMetadata type

    -   ### NOTE\_TYPE\_DELETED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_TYPE\_DELETED

        Deprecated.

        Constant representing the DELETED NoteMetadata type

    -   ### NOTE\_TYPE\_EXCEPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOTE\_TYPE\_EXCEPTION

        Deprecated.

        Constant representing the Note added on exception type

-   ## Constructor Details

    -   ### NoteMetadata

        public NoteMetadata()

        Deprecated.

-   ## Method Details

    -   ### getAttachedTo

        public [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") getAttachedTo()

        Deprecated.

        Returns:

        Returns the LocalObject that the note is attached to. It can either be ProcessModel, Process, Node or Task

    -   ### setAttachedTo

        public void setAttachedTo([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") attachedTo\_)

        Deprecated.

        Sets the LocalObject that the Note is attached to.

        Parameters:

        `attachedTo_` - The attachedTo to set.

    -   ### getAuthor

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAuthor()

        Deprecated.

        Returns:

        Returns the author, who added this note.

    -   ### setAuthor

        public void setAuthor([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_)

        Deprecated.

        Sets the author of the Note

        Parameters:

        `author_` - author to set.

    -   ### getCreateTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getCreateTimestamp()

        Deprecated.

        Returns:

        Returns the timestamp when the Note was created.

    -   ### setCreateTimestamp

        public void setCreateTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") createTimestamp\_)

        Deprecated.

        Sets the creation timestamp of Note

        Parameters:

        `createTimestamp_` - Note creation timestamp.

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Returns:

        Returns the Id of Note Object.

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        Sets the Id of Note Object

        Parameters:

        `id_` - ID to set.

    -   ### getLocation

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocation()

        Deprecated.

        Returns:

        Returns the location where the Note contents are stored.

    -   ### setLocation

        public void setLocation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") location\_)

        Deprecated.

        Sets the location where note contents are stored.

        Parameters:

        `location_` - Note location to set.

    -   ### getPermissions

        public [NotePermissions](NotePermissions.html "class in com.appiancorp.suiteapi.process") getPermissions()

        Deprecated.

        Returns:

        Returns the Note permissions

    -   ### setPermissions

        public void setPermissions([NotePermissions](NotePermissions.html "class in com.appiancorp.suiteapi.process") permissions\_)

        Deprecated.

        Sets the Note permissions

        Parameters:

        `permissions_` - permissions to set.

    -   ### getType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getType()

        Deprecated.

        Returns:

        Returns the type of Note which can be any one of the NOTE\_TYPE\_XXX constants

    -   ### setType

        public void setType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_)

        Deprecated.

        Sets the type of Note

        Parameters:

        `type_` - type to set.

    -   ### getUpdateTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getUpdateTimestamp()

        Deprecated.

        Returns:

        Returns the timestamp when Note was updated

    -   ### setUpdateTimestamp

        public void setUpdateTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") updateTimestamp\_)

        Deprecated.

        Sets the timestamp when Note was updated.

        Parameters:

        `updateTimestamp_` - Note update timestamp to set.

    -   ### getTypeAsString

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTypeAsString()

        Deprecated.

        Returns:

        Returns the Note type As String representation.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Deprecated.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`