---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessage.html
original_path: api/com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessage.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal.portlets.groupmessage](package-summary.html)

# Class GroupMessage

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessage

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class GroupMessage extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

The Group Message channel and code will be removed in a future release.

See Also:

-   [Serialized Form](../../../../../../serialized-form.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessage)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[DEFAULT_BATCH_SIZE](#DEFAULT_BATCH_SIZE)`

    Deprecated.

     

    `static final int`

    `[DEFAULT_EXPIRATION_DAYS](#DEFAULT_EXPIRATION_DAYS)`

    Deprecated.

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[GroupMessage](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getExpirationDate](#getExpirationDate\(\))()`

    Deprecated.

    Get the expiration date of this message.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    Get this message's id.

    `[Link](../links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")`

    `[getLink](#getLink\(\))()`

    Deprecated.

    Get the `Link` associated with this message.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessage](#getMessage\(\))()`

    Deprecated.

    Get the body of this message.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getUpdateDate](#getUpdateDate\(\))()`

    Deprecated.

    Get the date this message was last updated.

    `void`

    `[setExpirationDate](#setExpirationDate\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") expirationDate_)`

    Deprecated.

    Set the expiration date of this message.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Set this message's id.

    `void`

    `[setLink](#setLink\(com.appiancorp.suiteapi.portal.portlets.links.Link\))([Link](../links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") link_)`

    Deprecated.

    Set the `Link` associated with this message.

    `void`

    `[setMessage](#setMessage\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    Deprecated.

    Set the body of this message.

    `void`

    `[setUpdateDate](#setUpdateDate\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") updateDate_)`

    Deprecated.

    Set the date this message was last updated.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### DEFAULT\_BATCH\_SIZE

        public static final int DEFAULT\_BATCH\_SIZE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessage.DEFAULT_BATCH_SIZE)

    -   ### DEFAULT\_EXPIRATION\_DAYS

        public static final int DEFAULT\_EXPIRATION\_DAYS

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessage.DEFAULT_EXPIRATION_DAYS)

-   ## Constructor Details

    -   ### GroupMessage

        public GroupMessage()

        Deprecated.

-   ## Method Details

    -   ### getExpirationDate

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getExpirationDate()

        Deprecated.

        Get the expiration date of this message.

        Returns:

        The expiration date.

    -   ### setExpirationDate

        public void setExpirationDate([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") expirationDate\_)

        Deprecated.

        Set the expiration date of this message.

        Parameters:

        `expirationDate_` - The expiration date.

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Get this message's id.

        Returns:

        The id.

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        Set this message's id.

        Parameters:

        `id_` - The id.

    -   ### getLink

        public [Link](../links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") getLink()

        Deprecated.

        Get the `Link` associated with this message.

        Returns:

        The link.

    -   ### setLink

        public void setLink([Link](../links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") link\_)

        Deprecated.

        Set the `Link` associated with this message.

        Parameters:

        `link_` - The link.

    -   ### getMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessage()

        Deprecated.

        Get the body of this message.

        Returns:

        The message body.

    -   ### setMessage

        public void setMessage([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_)

        Deprecated.

        Set the body of this message.

        Parameters:

        `message_` - The message body.

    -   ### getUpdateDate

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getUpdateDate()

        Deprecated.

        Get the date this message was last updated.

        Returns:

        The update date.

    -   ### setUpdateDate

        public void setUpdateDate([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") updateDate\_)

        Deprecated.

        Set the date this message was last updated.

        Parameters:

        `updateDate_` - The update date.