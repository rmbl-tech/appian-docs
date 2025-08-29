---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Note.html
original_path: api/com/appiancorp/suiteapi/process/Note.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Note

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.Note

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Note extends [NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") implements [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

This class represents the Note that can be attached to ProcessModel, Process, ProcessNode or Task. This bean is used for communication between the Java and User Interface layers.

See Also:

-   [`Note`](Note.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Note)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_CANCELLED_PROCESS](#RESULT_CODE_CANCELLED_PROCESS)`

    Deprecated.

    Result Code constant representing Cancelled Process

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_CANCELLED_TASK](#RESULT_CODE_CANCELLED_TASK)`

    Deprecated.

    Result Code constant representing Cancelled Task

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_INVALID](#RESULT_CODE_INVALID)`

    Deprecated.

    Result Code constant representing Invalid Attachment

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_NO_PRIV](#RESULT_CODE_NO_PRIV)`

    Deprecated.

    Result Code constant representing Insufficient Privileges

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_SUCCESS](#RESULT_CODE_SUCCESS)`

    Deprecated.

    Result Code constant representing success

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_TOO_MANY_NOTES](#RESULT_CODE_TOO_MANY_NOTES)`

    Deprecated.

    Result Code constant representing configured Notes Limit Reached.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[RESULT_CODE_UNATTENDED_TASK](#RESULT_CODE_UNATTENDED_TASK)`

    Deprecated.

    Result Code constant representing Unattended Task

    ### Fields inherited from class com.appiancorp.suiteapi.process.[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")

    `[NOTE_TYPE_DELETED](NoteMetadata.html#NOTE_TYPE_DELETED), [NOTE_TYPE_EXCEPTION](NoteMetadata.html#NOTE_TYPE_EXCEPTION), [NOTE_TYPE_NORMAL](NoteMetadata.html#NOTE_TYPE_NORMAL), [NOTE_TYPE_REASSIGN_TASK](NoteMetadata.html#NOTE_TYPE_REASSIGN_TASK), [NOTE_TYPE_REJECT_TASK](NoteMetadata.html#NOTE_TYPE_REJECT_TASK), [SORT_BY_AUTHOR](NoteMetadata.html#SORT_BY_AUTHOR), [SORT_BY_CONTENT](NoteMetadata.html#SORT_BY_CONTENT), [SORT_BY_CREATE_DATE](NoteMetadata.html#SORT_BY_CREATE_DATE), [SORT_BY_ID](NoteMetadata.html#SORT_BY_ID), [SORT_BY_LOCATION](NoteMetadata.html#SORT_BY_LOCATION), [SORT_BY_TYPE](NoteMetadata.html#SORT_BY_TYPE), [SORT_BY_UPDATE_DATE](NoteMetadata.html#SORT_BY_UPDATE_DATE)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Note](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Deprecated.

    This method is called to populate the AppianTypeCache for [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") that are referenced in `Note`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getContent](#getContent\(\))()`

    Deprecated.

    Returns the String contents of the `Note`.

    `void`

    `[setContent](#setContent\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") content_)`

    Deprecated.

    Sets the String contents of `Note`.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Deprecated.

    Returns an XML representation of the `Note`

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Deprecated.

    Appends the XML representation of the `Note` to the given buffer.

    ### Methods inherited from class com.appiancorp.suiteapi.process.[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")

    `[getAttachedTo](NoteMetadata.html#getAttachedTo\(\)), [getAuthor](NoteMetadata.html#getAuthor\(\)), [getCreateTimestamp](NoteMetadata.html#getCreateTimestamp\(\)), [getId](NoteMetadata.html#getId\(\)), [getLocation](NoteMetadata.html#getLocation\(\)), [getPermissions](NoteMetadata.html#getPermissions\(\)), [getType](NoteMetadata.html#getType\(\)), [getTypeAsString](NoteMetadata.html#getTypeAsString\(\)), [getUpdateTimestamp](NoteMetadata.html#getUpdateTimestamp\(\)), [setAttachedTo](NoteMetadata.html#setAttachedTo\(com.appiancorp.suiteapi.common.LocalObject\)), [setAuthor](NoteMetadata.html#setAuthor\(java.lang.String\)), [setCreateTimestamp](NoteMetadata.html#setCreateTimestamp\(java.sql.Timestamp\)), [setId](NoteMetadata.html#setId\(java.lang.Long\)), [setLocation](NoteMetadata.html#setLocation\(java.lang.String\)), [setPermissions](NoteMetadata.html#setPermissions\(com.appiancorp.suiteapi.process.NotePermissions\)), [setType](NoteMetadata.html#setType\(java.lang.Integer\)), [setUpdateTimestamp](NoteMetadata.html#setUpdateTimestamp\(java.sql.Timestamp\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### RESULT\_CODE\_SUCCESS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_SUCCESS

        Deprecated.

        Result Code constant representing success

    -   ### RESULT\_CODE\_NO\_PRIV

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_NO\_PRIV

        Deprecated.

        Result Code constant representing Insufficient Privileges

    -   ### RESULT\_CODE\_INVALID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_INVALID

        Deprecated.

        Result Code constant representing Invalid Attachment

    -   ### RESULT\_CODE\_TOO\_MANY\_NOTES

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_TOO\_MANY\_NOTES

        Deprecated.

        Result Code constant representing configured Notes Limit Reached.

    -   ### RESULT\_CODE\_CANCELLED\_TASK

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_CANCELLED\_TASK

        Deprecated.

        Result Code constant representing Cancelled Task

    -   ### RESULT\_CODE\_CANCELLED\_PROCESS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_CANCELLED\_PROCESS

        Deprecated.

        Result Code constant representing Cancelled Process

    -   ### RESULT\_CODE\_UNATTENDED\_TASK

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") RESULT\_CODE\_UNATTENDED\_TASK

        Deprecated.

        Result Code constant representing Unattended Task

-   ## Constructor Details

    -   ### Note

        public Note()

        Deprecated.

-   ## Method Details

    -   ### getContent

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getContent()

        Deprecated.

        Returns the String contents of the `Note`.

        Returns:

        String contents of `Note`

    -   ### setContent

        public void setContent([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") content\_)

        Deprecated.

        Sets the String contents of `Note`.

        Parameters:

        `content_` - note contents to set.

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Deprecated.

        Returns an XML representation of the `Note`

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        String value of XML representation of `Note`

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Deprecated.

        Appends the XML representation of the `Note` to the given buffer.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - StringBuffer to add the XML representation of `Note`

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Deprecated.

        This method is called to populate the AppianTypeCache for [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") that are referenced in `Note`

        Specified by:

        `[fillInAppianTypes](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - cache of Appian-typed objects.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Deprecated.

        Overrides:

        `[toString](NoteMetadata.html#toString\(\))` in class `[NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")`