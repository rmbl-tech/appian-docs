---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/Statistics.html
original_path: api/com/appiancorp/suiteapi/collaboration/Statistics.html
version: "25.3"
title: "Class Statistics"
page_id: "api/com/appiancorp/suiteapi/collaboration/Statistics"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Class Statistics

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.collaboration.Statistics

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class Statistics extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This class encapsulates the general usage statistics and patterns of the collaboration application.

Copyright: Copyright (c) 2002, 2003

Company: Appian Corporation

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.collaboration.Statistics)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Statistics](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getMegaBytesUsed](#getMegaBytesUsed\(\))()`

    Gets the total amount of physical disk space used by uploaded documents (not including versions).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfCommunityKnowledgeCenters](#getNumberOfCommunityKnowledgeCenters\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfDocuments](#getNumberOfDocuments\(\))()`

    Gets the total number of documents uploaded to the application

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfFolders](#getNumberOfFolders\(\))()`

    Gets the total number of folders created in the application

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfKnowledgeCenters](#getNumberOfKnowledgeCenters\(\))()`

    Gets the total number of knowledge centers in the collaboration application

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfUsers](#getNumberOfUsers\(\))()`

    `void`

    `[setMegaBytesUsed](#setMegaBytesUsed\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") mbytes)`

    Sets the total amount of physical disk space used by uploaded documents (not including versions)

    `void`

    `[setNumberOfCommunityKnowledgeCenters](#setNumberOfCommunityKnowledgeCenters\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfCommunityKnowledgeCenters)`

    `void`

    `[setNumberOfDocuments](#setNumberOfDocuments\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)`

    Sets the total number of documents uploaded to the application

    `void`

    `[setNumberOfFolders](#setNumberOfFolders\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)`

    Sets the total number of folders created in the application

    `void`

    `[setNumberOfKnowledgeCenters](#setNumberOfKnowledgeCenters\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)`

    Sets the total number of knowledge centers in the application

    `void`

    `[setNumberOfUsers](#setNumberOfUsers\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsers)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Statistics

        public Statistics()

-   ## Method Details

    -   ### getMegaBytesUsed

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getMegaBytesUsed()

        Gets the total amount of physical disk space used by uploaded documents (not including versions).

        Returns:

        the total amount of physical disk space used.

    -   ### getNumberOfDocuments

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfDocuments()

        Gets the total number of documents uploaded to the application

        Returns:

        the total number of documents uploaded to the application

    -   ### getNumberOfFolders

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfFolders()

        Gets the total number of folders created in the application

        Returns:

        the total number of folders created in the application

    -   ### getNumberOfKnowledgeCenters

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfKnowledgeCenters()

        Gets the total number of knowledge centers in the collaboration application

        Returns:

        the total number of knowledge centers in the collaboration application

    -   ### setMegaBytesUsed

        public void setMegaBytesUsed([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") mbytes)

        Sets the total amount of physical disk space used by uploaded documents (not including versions)

        Parameters:

        `mbytes` - the total amount of physical disk space

    -   ### setNumberOfDocuments

        public void setNumberOfDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)

        Sets the total number of documents uploaded to the application

        Parameters:

        `num` - the total number of documents uploaded to the application

    -   ### setNumberOfFolders

        public void setNumberOfFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)

        Sets the total number of folders created in the application

        Parameters:

        `num` - the total number of folders created in the application

    -   ### setNumberOfKnowledgeCenters

        public void setNumberOfKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)

        Sets the total number of knowledge centers in the application

        Parameters:

        `num` - the total number of knowledge centers in the application

    -   ### getNumberOfCommunityKnowledgeCenters

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfCommunityKnowledgeCenters()

        Returns:

        Returns the number of community knowledge centers.

    -   ### setNumberOfCommunityKnowledgeCenters

        public void setNumberOfCommunityKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfCommunityKnowledgeCenters)

        Parameters:

        `numberOfCommunityKnowledgeCenters` - The number of community knowledge centers to set.

    -   ### getNumberOfUsers

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfUsers()

        Returns:

        Returns the number of users who have logged in

    -   ### setNumberOfUsers

        public void setNumberOfUsers([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfUsers)

        Parameters:

        `numberOfUsers` - The number of users who have logged in to set

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone() throws [CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Throws:

        `[CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")`