---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/type/system/ListViewItem.html
original_path: api/com/appiancorp/type/system/ListViewItem.html
version: "25.3"
---

Package [com.appiancorp.type.system](package-summary.html)

# Class ListViewItem

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.type.system.ListViewItem

* * *

@GwtCompatible public class ListViewItem extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

A ListViewItem contains an image, a title, a timestamp, and details. The image object can either be of type `UserRef` or of type `DocumentRef`.

The timestamp object is used to convey information about when the data that is represented by the ListViewItem was created or modified.

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static enum` 

    `[ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system")`

    An enumeration used as keys for the fields of a [`ListViewItem`](ListViewItem.html "class in com.appiancorp.type.system").

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ListViewItem](#%3Cinit%3E\(java.lang.Object,java.lang.String,java.lang.String\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") image, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details)`

    Constructs a new ListViewItem using the given image, title, and details.

    `[ListViewItem](#%3Cinit%3E\(java.lang.Object,java.lang.String,java.lang.String,java.sql.Timestamp\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") image, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)`

    Constructs a new ListViewItem with the given image, title, details, and timestamp.

    `[ListViewItem](#%3Cinit%3E\(java.lang.String,java.lang.String,java.sql.Timestamp\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)`

    Constructs a new ListViewItem with the given title, details, and timestamp of when this ListViewItem was created.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static com.google.common.base.Equivalence<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")>`

    `[equalDataCheck](#equalDataCheck\(\))()`

    Returns an Equivalence object that can be used to determine if two ListViewItem objects are equal.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDetails](#getDetails\(\))()`

    Returns the details of this ListViewItem.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getImage](#getImage\(\))()`

    Returns the ListViewItem image.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimestamp](#getTimestamp\(\))()`

    Returns the timestamp of this ListViewItem.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTitle](#getTitle\(\))()`

    Returns the title of this ListViewItem.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.type.system.ListViewItem.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### ListViewItem

        public ListViewItem([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") image, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details)

        Constructs a new ListViewItem using the given image, title, and details. The timestamp of this ListViewItem will be null. The Image object for a ListViewItem can be either a com.appiancorp.type.refs.DocumentRef, or a com.appiancorp.type.refs.UserRef.

        Parameters:

        `image` - a `DocumentRef` or `UserRef` that represents the underlying data. The document must be an image and will be cropped to on display. The user's avatar will be used.

        `title` - a short name for the item

        `details` - additional details about the item

    -   ### ListViewItem

        public ListViewItem([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)

        Constructs a new ListViewItem with the given title, details, and timestamp of when this ListViewItem was created. The image of this ListViewItem will be null.

        Parameters:

        `title` - a short name for the item

        `details` - additional details about the item

        `timestamp` - the timestamp of when the data was created or last modified

    -   ### ListViewItem

        public ListViewItem([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") image, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp)

        Constructs a new ListViewItem with the given image, title, details, and timestamp. The Image object for a ListViewItem can be either a com.appiancorp.type.refs.DocumentRef, or a com.appiancorp.type.refs.UserRef.

        Parameters:

        `image` - a `DocumentRef` or `UserRef` that represents the underlying data. The document must be an image and will be cropped to on display. The user's avatar will be used.

        `title` - a short name for the item

        `details` - additional details about the item

        `timestamp` - the timestamp of when the data was created or last modified

-   ## Method Details

    -   ### getImage

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getImage()

        Returns the ListViewItem image. This image can be either a com.appiancorp.type.refs.DocumentRef, or a com.appiancorp.type.refs.UserRef.

        Returns:

        the ListViewItem image

    -   ### getTitle

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTitle()

        Returns the title of this ListViewItem.

        Returns:

        the ListViewItem title

    -   ### getDetails

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDetails()

        Returns the details of this ListViewItem.

        Returns:

        the ListViewItem details

    -   ### getTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimestamp()

        Returns the timestamp of this ListViewItem.

        Returns:

        the ListViewItem timestamp

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equalDataCheck

        public static com.google.common.base.Equivalence<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")\> equalDataCheck()

        Returns an Equivalence object that can be used to determine if two ListViewItem objects are equal. This Equivalence objects equivalent(ListViewItem lvi1, ListViewItem lvi2) should be used instead of equals().

        Returns:

        an Equivalent object that can be used to determine if ListViewItems are equivalent