---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/Notification.html
original_path: api/com/appiancorp/suiteapi/portal/Notification.html
version: "25.3"
title: "Class Notification"
page_id: "api/com/appiancorp/suiteapi/portal/Notification"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class Notification

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.Notification

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Notification extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

The Notification functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Holds information about a notification received by the Portal from the notification framework.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.portal.Notification)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_APPLICATION](#SORT_BY_APPLICATION)`

    Deprecated.

    A constant sort property for notification - sort by application

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_APPLICATION_ICON](#SORT_BY_APPLICATION_ICON)`

    Deprecated.

    A constant sort property for notification - sort by application icon

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ATTRIBUTES](#SORT_BY_ATTRIBUTES)`

    Deprecated.

    A constant sort property for notification - sort by attributes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

    A constant sort property for notification - sort by id

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NOTIFICATION_TYPE](#SORT_BY_NOTIFICATION_TYPE)`

    Deprecated.

    A constant sort property for notification - sort by notifcation type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PAGE_RENDERER](#SORT_BY_PAGE_RENDERER)`

    Deprecated.

    A constant sort property for notification - sort by page renderer

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_READ](#SORT_BY_READ)`

    Deprecated.

    A constant sort property for notification - sort by read status

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_STRING_RENDERER](#SORT_BY_STRING_RENDERER)`

    Deprecated.

    A constant sort property for notification - sort by string renderer

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TIMESTAMP](#SORT_BY_TIMESTAMP)`

    Deprecated.

    A constant sort property for notification - sort by timestamp

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TYPE_ICON](#SORT_BY_TYPE_ICON)`

    Deprecated.

    A constant sort property for notification - sort by type icon

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Notification](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplication](#getApplication\(\))()`

    Deprecated.

    the name of the application that generated this notification

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationIcon](#getApplicationIcon\(\))()`

    Deprecated.

    the uri of an icon representing the application that generated this notification

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getAttributes](#getAttributes\(\))()`

    Deprecated.

    a map of name-value attributes that are specific for each notification type

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    the unique identifier of this notification

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getIds](#getIds\(com.appiancorp.suiteapi.portal.Notification%5B%5D\))([Notification](Notification.html "class in com.appiancorp.suiteapi.portal")[] notifs)`

    Deprecated.

    Get the ids (as a Long array) from an array of Notification objects.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getNotificationType](#getNotificationType\(\))()`

    Deprecated.

    the type of notification

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPageRenderer](#getPageRenderer\(\))()`

    Deprecated.

    the uri to call to render this notification as an html page

    `boolean`

    `[getRead](#getRead\(\))()`

    Deprecated.

    Has the notification been read?

    `static int`

    `[getSortProperty](#getSortProperty\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute_)`

    Deprecated.

    Gets the (zero-based) index of the sort property referred to by the given attribute.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStringRenderer](#getStringRenderer\(\))()`

    Deprecated.

    the uri to call to render this notification as a single line of text

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimestamp](#getTimestamp\(\))()`

    Deprecated.

    the time at which this notification was generated

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTypeIcon](#getTypeIcon\(\))()`

    Deprecated.

    the uri of an icon representing the type of this notification

    `void`

    `[setApplication](#setApplication\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)`

    Deprecated.

    see [`getApplication()`](#getApplication\(\))

    `void`

    `[setApplicationIcon](#setApplicationIcon\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)`

    Deprecated.

    see [`getApplicationIcon()`](#getApplicationIcon\(\))

    `void`

    `[setAttributes](#setAttributes\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") p)`

    Deprecated.

    see [`getAttributes()`](#getAttributes\(\))

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p)`

    Deprecated.

    see [`getId()`](#getId\(\))

    `void`

    `[setNotificationType](#setNotificationType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)`

    Deprecated.

    see [`getNotificationType()`](#getNotificationType\(\))

    `void`

    `[setPageRenderer](#setPageRenderer\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)`

    Deprecated.

    see [`getPageRenderer()`](#getPageRenderer\(\))

    `void`

    `[setRead](#setRead\(boolean\))(boolean r)`

    Deprecated.

    see [`getRead()`](#getRead\(\))

    `void`

    `[setStringRenderer](#setStringRenderer\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)`

    Deprecated.

    see [`getStringRenderer()`](#getStringRenderer\(\))

    `void`

    `[setTimestamp](#setTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") p)`

    Deprecated.

    see [`getTimestamp()`](#getTimestamp\(\))

    `void`

    `[setTypeIcon](#setTypeIcon\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)`

    Deprecated.

    see [`getTypeIcon()`](#getTypeIcon\(\))

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_READ

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_READ

        Deprecated.

        A constant sort property for notification - sort by read status

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

        A constant sort property for notification - sort by id

    -   ### SORT\_BY\_TIMESTAMP

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TIMESTAMP

        Deprecated.

        A constant sort property for notification - sort by timestamp

    -   ### SORT\_BY\_ATTRIBUTES

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ATTRIBUTES

        Deprecated.

        A constant sort property for notification - sort by attributes

    -   ### SORT\_BY\_APPLICATION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_APPLICATION

        Deprecated.

        A constant sort property for notification - sort by application

    -   ### SORT\_BY\_NOTIFICATION\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NOTIFICATION\_TYPE

        Deprecated.

        A constant sort property for notification - sort by notifcation type

    -   ### SORT\_BY\_STRING\_RENDERER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_STRING\_RENDERER

        Deprecated.

        A constant sort property for notification - sort by string renderer

    -   ### SORT\_BY\_PAGE\_RENDERER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PAGE\_RENDERER

        Deprecated.

        A constant sort property for notification - sort by page renderer

    -   ### SORT\_BY\_APPLICATION\_ICON

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_APPLICATION\_ICON

        Deprecated.

        A constant sort property for notification - sort by application icon

    -   ### SORT\_BY\_TYPE\_ICON

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TYPE\_ICON

        Deprecated.

        A constant sort property for notification - sort by type icon

-   ## Constructor Details

    -   ### Notification

        public Notification()

        Deprecated.

-   ## Method Details

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p)

        Deprecated.

        see [`getId()`](#getId\(\))

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        the unique identifier of this notification

    -   ### setApplication

        public void setApplication([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)

        Deprecated.

        see [`getApplication()`](#getApplication\(\))

    -   ### getApplication

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplication()

        Deprecated.

        the name of the application that generated this notification

    -   ### setNotificationType

        public void setNotificationType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)

        Deprecated.

        see [`getNotificationType()`](#getNotificationType\(\))

    -   ### getNotificationType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getNotificationType()

        Deprecated.

        the type of notification

    -   ### setTimestamp

        public void setTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") p)

        Deprecated.

        see [`getTimestamp()`](#getTimestamp\(\))

    -   ### getTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimestamp()

        Deprecated.

        the time at which this notification was generated

    -   ### setStringRenderer

        public void setStringRenderer([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)

        Deprecated.

        see [`getStringRenderer()`](#getStringRenderer\(\))

    -   ### getStringRenderer

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStringRenderer()

        Deprecated.

        the uri to call to render this notification as a single line of text

    -   ### setPageRenderer

        public void setPageRenderer([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)

        Deprecated.

        see [`getPageRenderer()`](#getPageRenderer\(\))

    -   ### getPageRenderer

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPageRenderer()

        Deprecated.

        the uri to call to render this notification as an html page

    -   ### setApplicationIcon

        public void setApplicationIcon([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)

        Deprecated.

        see [`getApplicationIcon()`](#getApplicationIcon\(\))

    -   ### getApplicationIcon

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationIcon()

        Deprecated.

        the uri of an icon representing the application that generated this notification

    -   ### setTypeIcon

        public void setTypeIcon([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)

        Deprecated.

        see [`getTypeIcon()`](#getTypeIcon\(\))

    -   ### getTypeIcon

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTypeIcon()

        Deprecated.

        the uri of an icon representing the type of this notification

    -   ### setAttributes

        public void setAttributes([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") p)

        Deprecated.

        see [`getAttributes()`](#getAttributes\(\))

    -   ### getAttributes

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getAttributes()

        Deprecated.

        a map of name-value attributes that are specific for each notification type

    -   ### setRead

        public void setRead(boolean r)

        Deprecated.

        see [`getRead()`](#getRead\(\))

    -   ### getRead

        public boolean getRead()

        Deprecated.

        Has the notification been read?

    -   ### getSortProperty

        public static int getSortProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute\_)

        Deprecated.

        Gets the (zero-based) index of the sort property referred to by the given attribute.

        Parameters:

        `attribute_` - the name of a property of this bean

        Returns:

        the index on which to sort, or SORT\_BY\_TIMESTAMP if the attribute is not recognized.

    -   ### getIds

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getIds([Notification](Notification.html "class in com.appiancorp.suiteapi.portal")\[\] notifs)

        Deprecated.

        Get the ids (as a Long array) from an array of Notification objects.

        Parameters:

        `notifs` - an array of notifications

        Returns:

        an array of the same size as the given array, containing the ids of the given notifications