---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/UploadStatistics.html
original_path: api/com/appiancorp/suiteapi/collaboration/UploadStatistics.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Class UploadStatistics

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.collaboration.UploadStatistics

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class UploadStatistics extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")

This class represents a fragment of an upload-related query.

Copyright: Copyright (c) 2002, 2003

Company: Appian Corporation

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.collaboration.UploadStatistics)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UploadStatistics](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCommunityName](#getCommunityName\(\))()`

    Returns the value of the community name

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDocumentExtension](#getDocumentExtension\(\))()`

    Gets the value of the document extension

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Gets the ID of this `UploadStatistics` object

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getKnowledgeCenterName](#getKnowledgeCenterName\(\))()`

    Gets the value of the name of the knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfDocumentsUploaded](#getNumberOfDocumentsUploaded\(\))()`

    Gets the value of the number of documents uploaded

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfUploads](#getNumberOfUploads\(\))()`

    Gets the value of the number of uploads

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getUploadDate](#getUploadDate\(\))()`

    Gets the value of the date of the upload

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUploadDayOfWeek](#getUploadDayOfWeek\(\))()`

    Gets the value of the day of the week of the upload

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUploadHourOfDay](#getUploadHourOfDay\(\))()`

    Gets the value of the hour of the day of the upload

    `void`

    `[setCommunityName](#setCommunityName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") commname)`

    Sets the value of the community name

    `void`

    `[setDocumentExtension](#setDocumentExtension\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ext)`

    Sets the value of the document extension

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Sets the ID of this `UploadStatistics` object

    `void`

    `[setKnowledgeCenterName](#setKnowledgeCenterName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") kcname)`

    Sets the value of the name of the knowledge center

    `void`

    `[setNumberOfDocumentsUploaded](#setNumberOfDocumentsUploaded\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)`

    Sets the value of the number of documents uploaded

    `void`

    `[setNumberOfUploads](#setNumberOfUploads\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)`

    Sets the value of the number of uploads

    `void`

    `[setUploadDate](#setUploadDate\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") uldate)`

    Sets the value of the date of the upload

    `void`

    `[setUploadDayOfWeek](#setUploadDayOfWeek\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") udow)`

    Sets the value of the day of the week of the upload

    `void`

    `[setUploadHourOfDay](#setUploadHourOfDay\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") uhod)`

    Sets the value of the hour of the day of the upload

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### UploadStatistics

        public UploadStatistics()

-   ## Method Details

    -   ### getCommunityName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCommunityName()

        Returns the value of the community name

        Returns:

        the value of the community name

    -   ### getDocumentExtension

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDocumentExtension()

        Gets the value of the document extension

        Returns:

        the value of the document extension

    -   ### getKnowledgeCenterName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getKnowledgeCenterName()

        Gets the value of the name of the knowledge center

        Returns:

        the value of the name of the knowledge center

    -   ### getNumberOfDocumentsUploaded

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfDocumentsUploaded()

        Gets the value of the number of documents uploaded

        Returns:

        the value of the number of documents uploaded

    -   ### getNumberOfUploads

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfUploads()

        Gets the value of the number of uploads

        Returns:

        the value of the number of uploads

    -   ### getUploadDate

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getUploadDate()

        Gets the value of the date of the upload

        Returns:

        the value of the date of the upload

    -   ### getUploadDayOfWeek

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUploadDayOfWeek()

        Gets the value of the day of the week of the upload

        Returns:

        a number representing the day of the week

    -   ### getUploadHourOfDay

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUploadHourOfDay()

        Gets the value of the hour of the day of the upload

        Returns:

        a number representing the hour of the day (in 24h format)

    -   ### setCommunityName

        public void setCommunityName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") commname)

        Sets the value of the community name

        Parameters:

        `commname` - the value of the community name

    -   ### setDocumentExtension

        public void setDocumentExtension([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ext)

        Sets the value of the document extension

        Parameters:

        `ext` - the value of the document extension

    -   ### setKnowledgeCenterName

        public void setKnowledgeCenterName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") kcname)

        Sets the value of the name of the knowledge center

        Parameters:

        `kcname` - the value of the name of the knowledge center

    -   ### setNumberOfDocumentsUploaded

        public void setNumberOfDocumentsUploaded([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)

        Sets the value of the number of documents uploaded

        Parameters:

        `num` - the value of the number of documents uploaded

    -   ### setNumberOfUploads

        public void setNumberOfUploads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)

        Sets the value of the number of uploads

        Parameters:

        `num` - the value of the number of uploads

    -   ### setUploadDate

        public void setUploadDate([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") uldate)

        Sets the value of the date of the upload

        Parameters:

        `uldate` - the value of the date of the upload

    -   ### setUploadDayOfWeek

        public void setUploadDayOfWeek([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") udow)

        Sets the value of the day of the week of the upload

        Parameters:

        `udow` - a number representing the day of the week

    -   ### setUploadHourOfDay

        public void setUploadHourOfDay([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") uhod)

        Sets the value of the hour of the day of the upload

        Parameters:

        `uhod` - a number representing the hour of the day (in 24h format)

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Gets the ID of this `UploadStatistics` object

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the ID of this `UploadStatistics` object

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

        Sets the ID of this `UploadStatistics` object

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `id` - the ID of this `UploadStatistics` object

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone() throws [CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Throws:

        `[CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")`