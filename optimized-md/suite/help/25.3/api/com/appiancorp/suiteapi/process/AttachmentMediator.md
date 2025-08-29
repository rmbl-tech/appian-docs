---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/AttachmentMediator.html
original_path: api/com/appiancorp/suiteapi/process/AttachmentMediator.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class AttachmentMediator

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.AttachmentMediator

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class AttachmentMediator extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Bean used to represent the Process/Task attachment. It is used to communicate between UI and Java layers.

See Also:

-   [`Attachment`](Attachment.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.AttachmentMediator)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AttachmentMediator](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getAttachedAtDesignTime](#getAttachedAtDesignTime\(\))()`

    Returns whether the LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") was attached at design time.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAttachedBy](#getAttachedBy\(\))()`

    Returns the `username` of user [`User`](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") who created the attachment.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAttachedDocumentSubType](#getAttachedDocumentSubType\(\))()`

    Returns the `extension` of attached document [`Document`](../collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration") in case of `Document` attachment.

    `[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")`

    `[getAttachedObject](#getAttachedObject\(\))()`

    Returns the attached LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common").

    `[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")`

    `[getAttachedTo](#getAttachedTo\(\))()`

    Returns the LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") that the attachment is attached to.

    `[Attachment.NamedUrl](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process")`

    `[getAttachedUrl](#getAttachedUrl\(\))()`

    Returns the NamedUrl Object [`Attachment.NamedUrl`](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") representing an attached external url.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getComment](#getComment\(\))()`

    Returns the comments added to the attachment.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateAttached](#getDateAttached\(\))()`

    Returns the date when the attachment was created.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayName](#getDisplayName\(\))()`

    Returns the display name for attachment.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEncodedComment](#getEncodedComment\(\))()`

    Returns a URLEncoded comments in accordance with UTF-8 encoding scheme.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns the id of attachment.

    `static [AttachmentMediator](AttachmentMediator.html "class in com.appiancorp.suiteapi.process")`

    `[getMediatorFromAttachment](#getMediatorFromAttachment\(com.appiancorp.suiteapi.process.Attachment\))([Attachment](Attachment.html "class in com.appiancorp.suiteapi.process") attachment_)`

    Converts an `Attachment` to AttachmentMediator [`AttachmentMediator`](AttachmentMediator.html "class in com.appiancorp.suiteapi.process") and returns an `AttachmentMediator`

    `[AttachmentPermissions](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process")`

    `[getPermissions](#getPermissions\(\))()`

    Returns the attachment permissions [`AttachmentPermissions`](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process")

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getProcessAttachment](#getProcessAttachment\(\))()`

    Returns whether the attachment is a process attachment or not.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Returns the string display of the type

    `void`

    `[setAttachedAtDesignTime](#setAttachedAtDesignTime\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") attachedAtDesignTime_)`

    Sets whether the LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") was attached at design time.

    `void`

    `[setAttachedBy](#setAttachedBy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attachedBy_)`

    Sets the `username` of user [`User`](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") creating the attachment.

    `void`

    `[setAttachedDocumentSubType](#setAttachedDocumentSubType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attachedDocumentSubType_)`

    Sets the `extension` of document [`Document`](../collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration") in case of `document` attachment.

    `void`

    `[setAttachedObject](#setAttachedObject\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") atachedObject_)`

    Sets the LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common").

    `void`

    `[setAttachedTo](#setAttachedTo\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") attachedTo_)`

    Sets the LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") that the attachment is attached to.

    `void`

    `[setAttachedUrl](#setAttachedUrl\(com.appiancorp.suiteapi.process.Attachment.NamedUrl\))([Attachment.NamedUrl](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") attachedUrl_)`

    Sets the NamedUrl object [`Attachment.NamedUrl`](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") representing an external url.

    `void`

    `[setComment](#setComment\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") comment_)`

    Sets the comments for the attachment been added.

    `void`

    `[setDateAttached](#setDateAttached\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dateAttached_)`

    Sets the date of creation for attachment

    `void`

    `[setDisplayName](#setDisplayName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName_)`

    Sets the display name for attachment.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the id of attachment.

    `void`

    `[setPermissions](#setPermissions\(com.appiancorp.suiteapi.process.AttachmentPermissions\))([AttachmentPermissions](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process") permissions_)`

    Sets the attachment permissions [`AttachmentPermissions`](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process")

    `void`

    `[setProcessAttachment](#setProcessAttachment\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isProcessAttachment_)`

    Sets whether the attachment is process attachment or not.

    `void`

    `[setType](#setType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type_)`

    Sets the string display of the type.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AttachmentMediator

        public AttachmentMediator()

-   ## Method Details

    -   ### getType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getType()

        Returns the string display of the type

        Returns:

        the string display of the type.

    -   ### setType

        public void setType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type\_)

        Sets the string display of the type.

        Parameters:

        `type_` - the string display of the type.

    -   ### getAttachedObject

        public [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") getAttachedObject()

        Returns the attached LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common").

        Returns:

        attached `LocalObject`.

    -   ### setAttachedObject

        public void setAttachedObject([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") atachedObject\_)

        Sets the LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common").

        Parameters:

        `atachedObject_` - `LocalObject` to set.

    -   ### getAttachedAtDesignTime

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getAttachedAtDesignTime()

        Returns whether the LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") was attached at design time.

        Returns:

        true if `LocalObject` was attached at design time, else false.

    -   ### setAttachedAtDesignTime

        public void setAttachedAtDesignTime([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") attachedAtDesignTime\_)

        Sets whether the LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") was attached at design time.

        Parameters:

        `attachedAtDesignTime_` - true if attaching at design time, else false.

    -   ### getAttachedBy

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAttachedBy()

        Returns the `username` of user [`User`](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") who created the attachment.

        Returns:

        `username`.

    -   ### setAttachedBy

        public void setAttachedBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attachedBy\_)

        Sets the `username` of user [`User`](../personalization/User.html "class in com.appiancorp.suiteapi.personalization") creating the attachment.

        Parameters:

        `attachedBy_` - `username` of `user`.

    -   ### getAttachedDocumentSubType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAttachedDocumentSubType()

        Returns the `extension` of attached document [`Document`](../collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration") in case of `Document` attachment.

        Returns:

        `document` `extension`.

    -   ### setAttachedDocumentSubType

        public void setAttachedDocumentSubType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attachedDocumentSubType\_)

        Sets the `extension` of document [`Document`](../collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration") in case of `document` attachment.

        Parameters:

        `attachedDocumentSubType_` - `extension` of document.

    -   ### getAttachedTo

        public [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") getAttachedTo()

        Returns the LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") that the attachment is attached to.

        Returns:

        AttachedTo `LocalObject`

    -   ### setAttachedTo

        public void setAttachedTo([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") attachedTo\_)

        Sets the LocalObject [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") that the attachment is attached to.

        Parameters:

        `attachedTo_` - `LocalObject`

    -   ### getAttachedUrl

        public [Attachment.NamedUrl](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") getAttachedUrl()

        Returns the NamedUrl Object [`Attachment.NamedUrl`](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") representing an attached external url.

        Returns:

        `NamedUrl` representing external url.

    -   ### setAttachedUrl

        public void setAttachedUrl([Attachment.NamedUrl](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") attachedUrl\_)

        Sets the NamedUrl object [`Attachment.NamedUrl`](Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") representing an external url.

        Parameters:

        `attachedUrl_` - `NamedUrl` Object to set.

    -   ### getComment

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getComment()

        Returns the comments added to the attachment.

        Returns:

        attachment comments.

    -   ### setComment

        public void setComment([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") comment\_)

        Sets the comments for the attachment been added.

        Parameters:

        `comment_` - comments to set.

    -   ### getDateAttached

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateAttached()

        Returns the date when the attachment was created.

        Returns:

        Returns attachment creation date.

    -   ### setDateAttached

        public void setDateAttached([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dateAttached\_)

        Sets the date of creation for attachment

        Parameters:

        `dateAttached_` - Creation date.

    -   ### getDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayName()

        Returns the display name for attachment.

        Returns:

        the display name.

    -   ### setDisplayName

        public void setDisplayName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName\_)

        Sets the display name for attachment.

        Parameters:

        `displayName_` - display name to set.

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Returns the id of attachment.

        Returns:

        Returns the attachment id.

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the id of attachment.

        Parameters:

        `id_` - attachment id to set.

    -   ### getProcessAttachment

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getProcessAttachment()

        Returns whether the attachment is a process attachment or not.

        Returns:

        true if the attachment is added to process else false.

    -   ### setProcessAttachment

        public void setProcessAttachment([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isProcessAttachment\_)

        Sets whether the attachment is process attachment or not.

        Parameters:

        `isProcessAttachment_` - true if attachment is process attachment, else false.

    -   ### getPermissions

        public [AttachmentPermissions](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process") getPermissions()

        Returns the attachment permissions [`AttachmentPermissions`](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process")

        Returns:

        permissions for attachment

    -   ### setPermissions

        public void setPermissions([AttachmentPermissions](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process") permissions\_)

        Sets the attachment permissions [`AttachmentPermissions`](AttachmentPermissions.html "class in com.appiancorp.suiteapi.process")

        Parameters:

        `permissions_` - attachment permissions

    -   ### getMediatorFromAttachment

        public static [AttachmentMediator](AttachmentMediator.html "class in com.appiancorp.suiteapi.process") getMediatorFromAttachment([Attachment](Attachment.html "class in com.appiancorp.suiteapi.process") attachment\_)

        Converts an `Attachment` to AttachmentMediator [`AttachmentMediator`](AttachmentMediator.html "class in com.appiancorp.suiteapi.process") and returns an `AttachmentMediator`

        Parameters:

        `attachment_` - `Attachment` to convert.

        Returns:

        `AttachmentMediator` Object

    -   ### getEncodedComment

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEncodedComment()

        Returns a URLEncoded comments in accordance with UTF-8 encoding scheme.

        Returns:

        URLEncoded attachment comments