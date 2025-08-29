---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Attachment.html
original_path: api/com/appiancorp/suiteapi/process/Attachment.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Attachment

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.Attachment

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Attachment extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

Bean used to represent the Process/Task attachment. This bean is used to communicate between the database and Java.

See Also:

-   [`AttachmentMediator`](AttachmentMediator.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Attachment)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[Attachment.NamedUrl](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process")`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[INVALID_ATTACHMENT](#INVALID_ATTACHMENT)`

    `static final int`

    `[NO_PERMISSION](#NO_PERMISSION)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ATTACHED_BY](#SORT_BY_ATTACHED_BY)`

    Constant representing sorting by Attachment AttachedBy field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_COMMENT](#SORT_BY_COMMENT)`

    Constant representing sorting by Attachment comment field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_ATTACHED](#SORT_BY_DATE_ATTACHED)`

    Constant representing sorting by Attachment DateAttached field

    `static final int`

    `[VALID](#VALID)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Attachment](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAttachedBy](#getAttachedBy\(\))()`

    Returns the username of user creating the attachment.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAttachedDocumentSubType](#getAttachedDocumentSubType\(\))()`

    Returns the extension of attached document in case of document attachment.

    `[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")`

    `[getAttachedObject](#getAttachedObject\(\))()`

    Returns the LocalObject used as attachment.

    `[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")`

    `[getAttachedTo](#getAttachedTo\(\))()`

    Returns the LocalObject that the attachment is attached to.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getAttachedToGuiId](#getAttachedToGuiId\(\))()`

    `[Attachment.NamedUrl](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process")`

    `[getAttachedUrl](#getAttachedUrl\(\))()`

    Returns the NamedUrl representing an external url attachment.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getComment](#getComment\(\))()`

    Returns the comments for the attachment.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateAttached](#getDateAttached\(\))()`

    Returns the timestamp for attachment creation.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEncodedComment](#getEncodedComment\(\))()`

    Returns a URLEncoded comments in accordance with UTF-8 encoding scheme.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns the Id of attachment

    `[AttachmentPermissions](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process")`

    `[getPermissions](#getPermissions\(\))()`

    Returns the permissions for attachment

    `void`

    `[setAttachedBy](#setAttachedBy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attachedBy_)`

    Sets the username of user creating the attachment.

    `void`

    `[setAttachedDocumentSubType](#setAttachedDocumentSubType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attachedDocumentSubType_)`

    Sets the extension of document in case of document attachment.

    `void`

    `[setAttachedObject](#setAttachedObject\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") attachedObject_)`

    Sets the LocalObject used as attachment.

    `void`

    `[setAttachedTo](#setAttachedTo\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") attachedTo_)`

    Sets the LocalObject that the attachment is attached.

    `void`

    `[setAttachedToGuiId](#setAttachedToGuiId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") attachedToGuiId_)`

    `void`

    `[setAttachedUrl](#setAttachedUrl\(com.appiancorp.suiteapi.process.Attachment.NamedUrl\))([Attachment.NamedUrl](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") attachedUrl_)`

    Sets the NamedUrl Object representing an external url attachment.

    `void`

    `[setComment](#setComment\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") comment_)`

    Sets the comments for attachment

    `void`

    `[setDateAttached](#setDateAttached\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dateAttached_)`

    Sets the attachment creation Timestamp.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the attachment Id.

    `void`

    `[setPermissions](#setPermissions\(com.appiancorp.suiteapi.process.AttachmentPermissions\))([AttachmentPermissions](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process") permissions_)`

    Sets the attachment permissions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    converts the process model to xml as a string

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this model to the given buffer.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### SORT\_BY\_DATE\_ATTACHED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_ATTACHED

        Constant representing sorting by Attachment DateAttached field

    -   ### SORT\_BY\_ATTACHED\_BY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ATTACHED\_BY

        Constant representing sorting by Attachment AttachedBy field

    -   ### SORT\_BY\_COMMENT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_COMMENT

        Constant representing sorting by Attachment comment field

    -   ### NO\_PERMISSION

        public static final int NO\_PERMISSION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Attachment.NO_PERMISSION)

    -   ### INVALID\_ATTACHMENT

        public static final int INVALID\_ATTACHMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Attachment.INVALID_ATTACHMENT)

    -   ### VALID

        public static final int VALID

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Attachment.VALID)

-   ## Constructor Details

    -   ### Attachment

        public Attachment()

-   ## Method Details

    -   ### getAttachedBy

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAttachedBy()

        Returns the username of user creating the attachment.

        Returns:

        username

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Appends an XML representation of this model to the given buffer.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Description copied from interface: `[AppianTypeHolder](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))`

        If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache. Later, the cache will populate itself with the display strings that correspond to all of its ids, such as "Human Resources" for group 9.

        Specified by:

        `[fillInAppianTypes](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - cache of Appian-typed objects.

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        converts the process model to xml as a string

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        The XML representation of this object.

    -   ### setAttachedBy

        public void setAttachedBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attachedBy\_)

        Sets the username of user creating the attachment.

        Parameters:

        `attachedBy_` - username to set.

    -   ### getAttachedObject

        public [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") getAttachedObject()

        Returns the LocalObject used as attachment.

        Returns:

        LocalObject representing Appian Object.

    -   ### setAttachedObject

        public void setAttachedObject([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") attachedObject\_)

        Sets the LocalObject used as attachment.

        Parameters:

        `attachedObject_` - LocalObject.

    -   ### getAttachedTo

        public [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") getAttachedTo()

        Returns the LocalObject that the attachment is attached to.

        Returns:

        LocalObject representing attachedTo Object.

    -   ### setAttachedTo

        public void setAttachedTo([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") attachedTo\_)

        Sets the LocalObject that the attachment is attached.

        Parameters:

        `attachedTo_` - attachedTo LocalObject

    -   ### getAttachedToGuiId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getAttachedToGuiId()

        Returns:

        Returns the attachedToGuiId.

    -   ### setAttachedToGuiId

        public void setAttachedToGuiId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") attachedToGuiId\_)

        Parameters:

        `attachedToGuiId_` - The attachedToGuiId to set.

    -   ### getAttachedUrl

        public [Attachment.NamedUrl](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") getAttachedUrl()

        Returns the NamedUrl representing an external url attachment.

        Returns:

        NamedUrl Object

    -   ### setAttachedUrl

        public void setAttachedUrl([Attachment.NamedUrl](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") attachedUrl\_)

        Sets the NamedUrl Object representing an external url attachment.

        Parameters:

        `attachedUrl_` - NamedUrl Object representing an external url.

    -   ### getComment

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getComment()

        Returns the comments for the attachment.

        Returns:

        comments.

    -   ### setComment

        public void setComment([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") comment\_)

        Sets the comments for attachment

        Parameters:

        `comment_` - Comments to set.

    -   ### getDateAttached

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateAttached()

        Returns the timestamp for attachment creation.

        Returns:

        attachment creation Timestamp

    -   ### setDateAttached

        public void setDateAttached([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dateAttached\_)

        Sets the attachment creation Timestamp.

        Parameters:

        `dateAttached_` - Timestamp to set.

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Returns the Id of attachment

        Returns:

        attachment Id

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the attachment Id.

        Parameters:

        `id_` - attachment id to set.

    -   ### getPermissions

        public [AttachmentPermissions](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process") getPermissions()

        Returns the permissions for attachment

        Returns:

        attachment permissions

    -   ### setPermissions

        public void setPermissions([AttachmentPermissions](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process") permissions\_)

        Sets the attachment permissions

        Parameters:

        `permissions_` - attachment permissions to set.

    -   ### getAttachedDocumentSubType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAttachedDocumentSubType()

        Returns the extension of attached document in case of document attachment.

        Returns:

        document extension

    -   ### setAttachedDocumentSubType

        public void setAttachedDocumentSubType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attachedDocumentSubType\_)

        Sets the extension of document in case of document attachment.

        Parameters:

        `attachedDocumentSubType_` - extension of document.

    -   ### getEncodedComment

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEncodedComment()

        Returns a URLEncoded comments in accordance with UTF-8 encoding scheme.

        Returns:

        URLEncoded attachment comments