---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/DownloadStatistics.html
original_path: api/com/appiancorp/suiteapi/collaboration/DownloadStatistics.html
version: "25.3"
title: "Class DownloadStatistics"
page_id: "api/com/appiancorp/suiteapi/collaboration/DownloadStatistics"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Class DownloadStatistics

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.collaboration.DownloadStatistics

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class DownloadStatistics extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This class represents a fragment of a download-related query.

Copyright: Copyright (c) 2002, 2003

Company: Appian Corporation

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.collaboration.DownloadStatistics)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[DownloadStatistics](#%3Cinit%3E\(\))()`

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

    `[getDocumentId](#getDocumentId\(\))()`

    Gets the value of the document ID

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDocumentName](#getDocumentName\(\))()`

    Gets the value of the document name

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDownloadDate](#getDownloadDate\(\))()`

    Gets the value of the download date

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDownloadDayOfWeek](#getDownloadDayOfWeek\(\))()`

    Gets the value of the downloaded day of the week

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDownloader](#getDownloader\(\))()`

    Gets the value of the username of the user who performed the download

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDownloadHourOfDay](#getDownloadHourOfDay\(\))()`

    Gets the value of the downloaded hour of the day

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Gets the ID of this `DownloadStatistics` object

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getKnowledgeCenterName](#getKnowledgeCenterName\(\))()`

    Gets the value of the name of the knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfDownloads](#getNumberOfDownloads\(\))()`

    Gets the value of the number of downloads

    `boolean`

    `[isDocumentSearchability](#isDocumentSearchability\(\))()`

    Gets whether the document is searchable

    `boolean`

    `[isFolderSearchability](#isFolderSearchability\(\))()`

    Gets whether the folder is searchable

    `boolean`

    `[isKnowledgeCenterSearchability](#isKnowledgeCenterSearchability\(\))()`

    Gets whether the knowledge center is searchable

    `void`

    `[setCommunityName](#setCommunityName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") commname_)`

    Sets the value of the community name

    `void`

    `[setDocumentExtension](#setDocumentExtension\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ext_)`

    Sets the value of the document extension

    `void`

    `[setDocumentId](#setDocumentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Sets the value of the unique ID of the document

    `void`

    `[setDocumentName](#setDocumentName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") docname_)`

    Sets the value of the name of the document

    `void`

    `[setDocumentSearchability](#setDocumentSearchability\(boolean\))(boolean b_)`

    Sets whther the document is searchable

    `void`

    `[setDownloadDate](#setDownloadDate\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dldate_)`

    Sets the value of the date of the download

    `void`

    `[setDownloadDayOfWeek](#setDownloadDayOfWeek\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") ddow_)`

    Sets the value of the day of the week of the download

    `void`

    `[setDownloader](#setDownloader\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") downloader_)`

    Sets the value of the username of the user who performed the download

    `void`

    `[setDownloadHourOfDay](#setDownloadHourOfDay\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dhod_)`

    Sets the value of the downloaded hour of the day

    `void`

    `[setFolderSearchability](#setFolderSearchability\(boolean\))(boolean b_)`

    Sets whether the folder is searchable

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the ID of this `DownloadStatistics` object

    `void`

    `[setKnowledgeCenterName](#setKnowledgeCenterName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") kcname_)`

    Sets the value of the name of the knowledge center

    `void`

    `[setKnowledgeCenterSearchability](#setKnowledgeCenterSearchability\(boolean\))(boolean b_)`

    Sets whether the knowledge center is searchable

    `void`

    `[setNumberOfDownloads](#setNumberOfDownloads\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Sets the value of the number of downloads

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### DownloadStatistics

        public DownloadStatistics()

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

    -   ### getDocumentId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDocumentId()

        Gets the value of the document ID

        Returns:

        the value of the document ID

    -   ### getDocumentName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDocumentName()

        Gets the value of the document name

        Returns:

        the value of the document name

    -   ### isDocumentSearchability

        public boolean isDocumentSearchability()

        Gets whether the document is searchable

        Returns:

        `true` if the document is searchable, `false` otherwise.

    -   ### getDownloadDate

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDownloadDate()

        Gets the value of the download date

        Returns:

        the value of the download date

    -   ### getDownloadDayOfWeek

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDownloadDayOfWeek()

        Gets the value of the downloaded day of the week

        Returns:

        a number representing the day of the week (1=Sun, 2=Mon, etc)

    -   ### getDownloadHourOfDay

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDownloadHourOfDay()

        Gets the value of the downloaded hour of the day

        Returns:

        a number representing the hour of the day (in 24h time)

    -   ### isFolderSearchability

        public boolean isFolderSearchability()

        Gets whether the folder is searchable

        Returns:

        `true` if the folder is searchable, `false` otherwise.

    -   ### getKnowledgeCenterName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getKnowledgeCenterName()

        Gets the value of the name of the knowledge center

        Returns:

        the value of the name of the knowledge center

    -   ### isKnowledgeCenterSearchability

        public boolean isKnowledgeCenterSearchability()

        Gets whether the knowledge center is searchable

        Returns:

        `true` if the knowledge center is searchable, `false` otherwise.

    -   ### getNumberOfDownloads

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfDownloads()

        Gets the value of the number of downloads

        Returns:

        the value of the number of downloads

    -   ### getDownloader

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDownloader()

        Gets the value of the username of the user who performed the download

        Returns:

        the value of the username of the user who performed the download

    -   ### setCommunityName

        public void setCommunityName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") commname\_)

        Sets the value of the community name

        Parameters:

        `commname_` - the value of the community name

    -   ### setDocumentExtension

        public void setDocumentExtension([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ext\_)

        Sets the value of the document extension

        Parameters:

        `ext_` - the value of the document extension

    -   ### setDocumentId

        public void setDocumentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_)

        Sets the value of the unique ID of the document

        Parameters:

        `doid_` - the value of the unique ID of the document

    -   ### setDocumentName

        public void setDocumentName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") docname\_)

        Sets the value of the name of the document

        Parameters:

        `docname_` - the value of the name of the document

    -   ### setDocumentSearchability

        public void setDocumentSearchability(boolean b\_)

        Sets whther the document is searchable

        Parameters:

        `b_` - `true` if the document is searchable; `false` otherwise

    -   ### setDownloadDate

        public void setDownloadDate([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dldate\_)

        Sets the value of the date of the download

        Parameters:

        `dldate_` - the value of the date of the download

    -   ### setDownloadDayOfWeek

        public void setDownloadDayOfWeek([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") ddow\_)

        Sets the value of the day of the week of the download

        Parameters:

        `ddow_` - a number representing the day of the week (1=Sun, 2=Mon, etc)

    -   ### setDownloadHourOfDay

        public void setDownloadHourOfDay([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dhod\_)

        Sets the value of the downloaded hour of the day

        Parameters:

        `dhod_` - a number representing the hour of the day (in 24h time)

    -   ### setFolderSearchability

        public void setFolderSearchability(boolean b\_)

        Sets whether the folder is searchable

        Parameters:

        `b_` - `true` if the folder is searchable, `false` otherwise

    -   ### setKnowledgeCenterName

        public void setKnowledgeCenterName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") kcname\_)

        Sets the value of the name of the knowledge center

        Parameters:

        `kcname_` - the name of the kc

    -   ### setKnowledgeCenterSearchability

        public void setKnowledgeCenterSearchability(boolean b\_)

        Sets whether the knowledge center is searchable

        Parameters:

        `b_` - `true` if the knowledge center is searchable, `false` otherwise

    -   ### setNumberOfDownloads

        public void setNumberOfDownloads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_)

        Sets the value of the number of downloads

        Parameters:

        `num_` - the value of the number of downloads

    -   ### setDownloader

        public void setDownloader([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") downloader\_)

        Sets the value of the username of the user who performed the download

        Parameters:

        `downloader_` - the value of the username of the user who performed the download

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Gets the ID of this `DownloadStatistics` object

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the ID of this `DownloadStatistics` object

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the ID of this `DownloadStatistics` object

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `id_` - the ID of this `DownloadStatistics` object

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone() throws [CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Throws:

        `[CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")`