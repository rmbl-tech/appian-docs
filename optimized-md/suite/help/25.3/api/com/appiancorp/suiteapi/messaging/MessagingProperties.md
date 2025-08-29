---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/MessagingProperties.html
original_path: api/com/appiancorp/suiteapi/messaging/MessagingProperties.html
version: "25.3"
title: "Class MessagingProperties"
page_id: "api/com/appiancorp/suiteapi/messaging/MessagingProperties"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.messaging](package-summary.html)

# Class MessagingProperties

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.messaging.MessagingProperties

* * *

public class MessagingProperties extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Contains the values pulled out of messaging.properties. Also contains the keys that should be used in messaging.properties.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[DEFAULT_EMAIL_ATTACHMENT_FOLDER_ID](#DEFAULT_EMAIL_ATTACHMENT_FOLDER_ID)`

    The default e-mail attachments folder ID (the Temporary Documents folder).

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DEFAULT_EMAIL_ATTACHMENT_FOLDER_NAME](#DEFAULT_EMAIL_ATTACHMENT_FOLDER_NAME)`

    The name of the e-mail attachments folder ID (Temporary Documents by default).

    `static final boolean`

    `[JMS_INSTALLED](#JMS_INSTALLED)`

    Whether JMS is installed (determines whether the Topic is selectable in the Send Message dialog).

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[MessagingProperties](#%3Cinit%3E\(\))()`

-   ## Method Summary

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### JMS\_INSTALLED

        public static final boolean JMS\_INSTALLED

        Whether JMS is installed (determines whether the Topic is selectable in the Send Message dialog).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.MessagingProperties.JMS_INSTALLED)

    -   ### DEFAULT\_EMAIL\_ATTACHMENT\_FOLDER\_ID

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") DEFAULT\_EMAIL\_ATTACHMENT\_FOLDER\_ID

        The default e-mail attachments folder ID (the Temporary Documents folder).

    -   ### DEFAULT\_EMAIL\_ATTACHMENT\_FOLDER\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DEFAULT\_EMAIL\_ATTACHMENT\_FOLDER\_NAME

        The name of the e-mail attachments folder ID (Temporary Documents by default).

-   ## Constructor Details

    -   ### MessagingProperties

        public MessagingProperties()